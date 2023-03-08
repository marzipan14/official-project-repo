; ModuleID = '/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lmem.c'
source_filename = "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lmem.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lua_State = type { %union.GCObject*, i8, i8, i8, %struct.lua_TValue*, %struct.lua_TValue*, %struct.global_State*, %struct.CallInfo*, i32*, %struct.lua_TValue*, %struct.lua_TValue*, %struct.CallInfo*, %struct.CallInfo*, i32, i32, i16, i16, i8, i8, i32, i32, void (%struct.lua_State*, %struct.lua_Debug*)*, %struct.lua_TValue, %struct.lua_TValue, %union.GCObject*, %union.GCObject*, %struct.lua_longjmp*, i64 }
%struct.global_State = type { %struct.stringtable, i8* (i8*, i8*, i64, i64)*, i8*, i8, i8, i32, %union.GCObject*, %union.GCObject**, %union.GCObject*, %union.GCObject*, %union.GCObject*, %union.GCObject*, %struct.Mbuffer, i64, i64, i64, i64, i32, i32, i32 (%struct.lua_State*)*, %struct.lua_TValue, %struct.lua_State*, %struct.UpVal, [9 x %struct.Table*], [17 x %union.TString*] }
%struct.stringtable = type { %union.GCObject**, i32, i32 }
%struct.Mbuffer = type { i8*, i64, i64 }
%struct.UpVal = type { %union.GCObject*, i8, i8, %struct.lua_TValue*, %union.anon }
%union.anon = type { %struct.lua_TValue }
%struct.Table = type { %union.GCObject*, i8, i8, i8, i8, %struct.Table*, %struct.lua_TValue*, %struct.Node*, %struct.Node*, %union.GCObject*, i32 }
%struct.Node = type { %struct.lua_TValue, %union.TKey }
%union.TKey = type { %struct.anon.0 }
%struct.anon.0 = type { %union.Value, i32, %struct.Node* }
%union.Value = type { %union.GCObject* }
%union.TString = type { %struct.anon.1 }
%struct.anon.1 = type { %union.GCObject*, i8, i8, i8, i32, i64 }
%struct.CallInfo = type { %struct.lua_TValue*, %struct.lua_TValue*, %struct.lua_TValue*, i32*, i32, i32 }
%struct.lua_Debug = type { i32, i8*, i8*, i8*, i8*, i32, i32, i32, i32, [60 x i8], i32 }
%struct.lua_TValue = type { %union.Value, i32 }
%union.GCObject = type { %struct.lua_State }
%struct.lua_longjmp = type opaque

@.str = private unnamed_addr constant [39 x i8] c"memory allocation error: block too big\00", align 1
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define hidden i8* @luaM_growaux_(%struct.lua_State*, i8*, i32* nocapture, i64, i32, i8*) local_unnamed_addr #0 !dbg !12 {
  %7 = load i32, i32* %2, align 4, !dbg !357, !tbaa !359
  %8 = sdiv i32 %4, 2, !dbg !363
  %9 = icmp slt i32 %7, %8, !dbg !364
  br i1 %9, label %13, label %10, !dbg !365

; <label>:10:                                     ; preds = %6
  %11 = icmp slt i32 %7, %4, !dbg !366
  br i1 %11, label %17, label %12, !dbg !369

; <label>:12:                                     ; preds = %10
  tail call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %0, i8* %5) #3, !dbg !370
  br label %17, !dbg !370

; <label>:13:                                     ; preds = %6
  %14 = shl nsw i32 %7, 1, !dbg !371
  %15 = icmp sgt i32 %14, 4, !dbg !374
  %16 = select i1 %15, i32 %14, i32 4, !dbg !374
  br label %17

; <label>:17:                                     ; preds = %12, %10, %13
  %18 = phi i32 [ %16, %13 ], [ %4, %10 ], [ %4, %12 ], !dbg !375
  %19 = add nsw i32 %18, 1, !dbg !377
  %20 = sext i32 %19 to i64, !dbg !377
  %21 = udiv i64 -3, %3, !dbg !377
  %22 = icmp ult i64 %21, %20, !dbg !377
  br i1 %22, label %45, label %23, !dbg !377

; <label>:23:                                     ; preds = %17
  %24 = load i32, i32* %2, align 4, !dbg !377, !tbaa !359
  %25 = sext i32 %24 to i64, !dbg !377
  %26 = mul i64 %25, %3, !dbg !377
  %27 = sext i32 %18 to i64, !dbg !377
  %28 = mul i64 %27, %3, !dbg !377
  %29 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !392
  %30 = load %struct.global_State*, %struct.global_State** %29, align 8, !dbg !392, !tbaa !393
  %31 = getelementptr inbounds %struct.global_State, %struct.global_State* %30, i64 0, i32 1, !dbg !400
  %32 = load i8* (i8*, i8*, i64, i64)*, i8* (i8*, i8*, i64, i64)** %31, align 8, !dbg !400, !tbaa !401
  %33 = getelementptr inbounds %struct.global_State, %struct.global_State* %30, i64 0, i32 2, !dbg !406
  %34 = load i8*, i8** %33, align 8, !dbg !406, !tbaa !407
  %35 = tail call i8* %32(i8* %34, i8* %1, i64 %26, i64 %28) #3, !dbg !408
  %36 = icmp eq i8* %35, null, !dbg !409
  %37 = icmp ne i64 %28, 0, !dbg !411
  %38 = and i1 %37, %36, !dbg !412
  br i1 %38, label %39, label %40, !dbg !412

; <label>:39:                                     ; preds = %23
  tail call void @luaD_throw(%struct.lua_State* nonnull %0, i32 4) #3, !dbg !413
  br label %40, !dbg !413

; <label>:40:                                     ; preds = %23, %39
  %41 = getelementptr inbounds %struct.global_State, %struct.global_State* %30, i64 0, i32 14, !dbg !414
  %42 = load i64, i64* %41, align 8, !dbg !414, !tbaa !415
  %43 = sub i64 %28, %26, !dbg !416
  %44 = add i64 %43, %42, !dbg !417
  store i64 %44, i64* %41, align 8, !dbg !418, !tbaa !415
  br label %46, !dbg !377

; <label>:45:                                     ; preds = %17
  tail call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0)) #3, !dbg !426
  br label %46, !dbg !377

; <label>:46:                                     ; preds = %45, %40
  %47 = phi i8* [ %35, %40 ], [ null, %45 ], !dbg !377
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !427
  store i32 %18, i32* %2, align 4, !dbg !429, !tbaa !359
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !430
  ret i8* %47, !dbg !430
}

; Function Attrs: noredzone
declare hidden void @luaG_runerror(%struct.lua_State*, i8*, ...) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define hidden i8* @luaM_realloc_(%struct.lua_State*, i8*, i64, i64) local_unnamed_addr #0 !dbg !379 {
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !435
  %6 = load %struct.global_State*, %struct.global_State** %5, align 8, !dbg !435, !tbaa !393
  %7 = getelementptr inbounds %struct.global_State, %struct.global_State* %6, i64 0, i32 1, !dbg !437
  %8 = load i8* (i8*, i8*, i64, i64)*, i8* (i8*, i8*, i64, i64)** %7, align 8, !dbg !437, !tbaa !401
  %9 = getelementptr inbounds %struct.global_State, %struct.global_State* %6, i64 0, i32 2, !dbg !438
  %10 = load i8*, i8** %9, align 8, !dbg !438, !tbaa !407
  %11 = tail call i8* %8(i8* %10, i8* %1, i64 %2, i64 %3) #3, !dbg !439
  %12 = icmp eq i8* %11, null, !dbg !440
  %13 = icmp ne i64 %3, 0, !dbg !441
  %14 = and i1 %13, %12, !dbg !442
  br i1 %14, label %15, label %16, !dbg !442

; <label>:15:                                     ; preds = %4
  tail call void @luaD_throw(%struct.lua_State* nonnull %0, i32 4) #3, !dbg !443
  br label %16, !dbg !443

; <label>:16:                                     ; preds = %15, %4
  %17 = getelementptr inbounds %struct.global_State, %struct.global_State* %6, i64 0, i32 14, !dbg !444
  %18 = load i64, i64* %17, align 8, !dbg !444, !tbaa !415
  %19 = sub i64 %3, %2, !dbg !445
  %20 = add i64 %19, %18, !dbg !446
  store i64 %20, i64* %17, align 8, !dbg !447, !tbaa !415
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !448
  ret i8* %11, !dbg !448
}

; Function Attrs: noredzone nounwind
define hidden noalias i8* @luaM_toobig(%struct.lua_State*) local_unnamed_addr #0 !dbg !420 {
  tail call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0)) #3, !dbg !450
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !451
  ret i8* null, !dbg !451
}

; Function Attrs: noredzone
declare hidden void @luaD_throw(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }
attributes #4 = { nounwind }

!llvm.module.flags = !{!8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lmem.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !7}
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !5, line: 58, baseType: !6)
!5 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!6 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!8 = !{i32 2, !"Dwarf Version", i32 4}
!9 = !{i32 2, !"Debug Info Version", i32 3}
!10 = !{i32 1, !"wchar_size", i32 4}
!11 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!12 = distinct !DISubprogram(name: "luaM_growaux_", scope: !1, file: !1, line: 46, type: !13, isLocal: false, isDefinition: true, scopeLine: 47, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !342)
!13 = !DISubroutineType(types: !14)
!14 = !{!7, !15, !7, !167, !4, !93, !319}
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_State", file: !17, line: 50, baseType: !18)
!17 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lua.h", directory: "/root/.unikraft/apps/redis/build")
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lua_State", file: !19, line: 100, size: 1472, elements: !20)
!19 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lstate.h", directory: "/root/.unikraft/apps/redis/build")
!20 = !{!21, !217, !218, !219, !220, !222, !223, !281, !294, !295, !296, !297, !298, !299, !300, !301, !303, !304, !305, !306, !307, !308, !333, !334, !335, !336, !337, !340}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !18, file: !19, line: 101, baseType: !22, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "GCObject", file: !24, line: 36, baseType: !25)
!24 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lobject.h", directory: "/root/.unikraft/apps/redis/build")
!25 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "GCObject", file: !19, line: 136, size: 1472, elements: !26)
!26 = !{!27, !37, !59, !118, !213, !214, !215, !216}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "gch", scope: !25, file: !19, line: 137, baseType: !28, size: 128)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "GCheader", file: !24, line: 51, baseType: !29)
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GCheader", file: !24, line: 49, size: 128, elements: !30)
!30 = !{!31, !32, !36}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !29, file: !24, line: 50, baseType: !22, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !29, file: !24, line: 50, baseType: !33, size: 8, offset: 64)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "lu_byte", file: !34, line: 27, baseType: !35)
!34 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/llimits.h", directory: "/root/.unikraft/apps/redis/build")
!35 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !29, file: !24, line: 50, baseType: !33, size: 8, offset: 72)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "ts", scope: !25, file: !19, line: 138, baseType: !38, size: 192)
!38 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "TString", file: !24, line: 199, size: 192, elements: !39)
!39 = !{!40, !49}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !38, file: !24, line: 200, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "L_Umaxalign", file: !34, line: 47, baseType: !42)
!42 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !34, line: 47, size: 64, elements: !43)
!43 = !{!44, !46, !47}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !42, file: !34, line: 47, baseType: !45, size: 64)
!45 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !42, file: !34, line: 47, baseType: !7, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !42, file: !34, line: 47, baseType: !48, size: 64)
!48 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "tsv", scope: !38, file: !24, line: 206, baseType: !50, size: 192)
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !38, file: !24, line: 201, size: 192, elements: !51)
!51 = !{!52, !53, !54, !55, !56, !58}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !50, file: !24, line: 202, baseType: !22, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !50, file: !24, line: 202, baseType: !33, size: 8, offset: 64)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !50, file: !24, line: 202, baseType: !33, size: 8, offset: 72)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !50, file: !24, line: 203, baseType: !33, size: 8, offset: 80)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !50, file: !24, line: 204, baseType: !57, size: 32, offset: 96)
!57 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !50, file: !24, line: 205, baseType: !4, size: 64, offset: 128)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !25, file: !19, line: 139, baseType: !60, size: 320)
!60 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "Udata", file: !24, line: 215, size: 320, elements: !61)
!61 = !{!62, !63}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !60, file: !24, line: 216, baseType: !41, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "uv", scope: !60, file: !24, line: 222, baseType: !64, size: 320)
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !60, file: !24, line: 217, size: 320, elements: !65)
!65 = !{!66, !67, !68, !69, !116, !117}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !64, file: !24, line: 218, baseType: !22, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !64, file: !24, line: 218, baseType: !33, size: 8, offset: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !64, file: !24, line: 218, baseType: !33, size: 8, offset: 72)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "metatable", scope: !64, file: !24, line: 219, baseType: !70, size: 64, offset: 128)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Table", file: !24, line: 338, size: 512, elements: !72)
!72 = !{!73, !74, !75, !76, !77, !78, !79, !95, !113, !114, !115}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !71, file: !24, line: 339, baseType: !22, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !71, file: !24, line: 339, baseType: !33, size: 8, offset: 64)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !71, file: !24, line: 339, baseType: !33, size: 8, offset: 72)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !71, file: !24, line: 340, baseType: !33, size: 8, offset: 80)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "lsizenode", scope: !71, file: !24, line: 341, baseType: !33, size: 8, offset: 88)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "metatable", scope: !71, file: !24, line: 342, baseType: !70, size: 64, offset: 128)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "array", scope: !71, file: !24, line: 343, baseType: !80, size: 64, offset: 192)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "TValue", file: !24, line: 75, baseType: !82)
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lua_TValue", file: !24, line: 73, size: 128, elements: !83)
!83 = !{!84, !94}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !82, file: !24, line: 74, baseType: !85, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "Value", file: !24, line: 64, baseType: !86)
!86 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !24, line: 59, size: 64, elements: !87)
!87 = !{!88, !89, !90, !92}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !86, file: !24, line: 60, baseType: !22, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !86, file: !24, line: 61, baseType: !7, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !86, file: !24, line: 62, baseType: !91, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Number", file: !17, line: 99, baseType: !45)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !86, file: !24, line: 63, baseType: !93, size: 32)
!93 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !82, file: !24, line: 74, baseType: !93, size: 32, offset: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !71, file: !24, line: 344, baseType: !96, size: 64, offset: 256)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "Node", file: !24, line: 335, baseType: !98)
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Node", file: !24, line: 332, size: 320, elements: !99)
!99 = !{!100, !101}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "i_val", scope: !98, file: !24, line: 333, baseType: !81, size: 128)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "i_key", scope: !98, file: !24, line: 334, baseType: !102, size: 192, offset: 128)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "TKey", file: !24, line: 329, baseType: !103)
!103 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "TKey", file: !24, line: 323, size: 192, elements: !104)
!104 = !{!105, !112}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "nk", scope: !103, file: !24, line: 327, baseType: !106, size: 192)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !103, file: !24, line: 324, size: 192, elements: !107)
!107 = !{!108, !109, !110}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !106, file: !24, line: 325, baseType: !85, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !106, file: !24, line: 325, baseType: !93, size: 32, offset: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !106, file: !24, line: 326, baseType: !111, size: 64, offset: 128)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "tvk", scope: !103, file: !24, line: 328, baseType: !81, size: 128)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "lastfree", scope: !71, file: !24, line: 345, baseType: !96, size: 64, offset: 320)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "gclist", scope: !71, file: !24, line: 346, baseType: !22, size: 64, offset: 384)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "sizearray", scope: !71, file: !24, line: 347, baseType: !93, size: 32, offset: 448)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "env", scope: !64, file: !24, line: 220, baseType: !70, size: 64, offset: 192)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !64, file: !24, line: 221, baseType: !4, size: 64, offset: 256)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !25, file: !19, line: 140, baseType: !119, size: 448)
!119 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "Closure", file: !24, line: 309, size: 448, elements: !120)
!120 = !{!121, !141}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !119, file: !24, line: 310, baseType: !122, size: 448)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "CClosure", file: !24, line: 299, baseType: !123)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "CClosure", file: !24, line: 295, size: 448, elements: !124)
!124 = !{!125, !126, !127, !128, !129, !130, !131, !132, !137}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !123, file: !24, line: 296, baseType: !22, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !123, file: !24, line: 296, baseType: !33, size: 8, offset: 64)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !123, file: !24, line: 296, baseType: !33, size: 8, offset: 72)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "isC", scope: !123, file: !24, line: 296, baseType: !33, size: 8, offset: 80)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "nupvalues", scope: !123, file: !24, line: 296, baseType: !33, size: 8, offset: 88)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "gclist", scope: !123, file: !24, line: 296, baseType: !22, size: 64, offset: 128)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "env", scope: !123, file: !24, line: 296, baseType: !70, size: 64, offset: 192)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !123, file: !24, line: 297, baseType: !133, size: 64, offset: 256)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_CFunction", file: !17, line: 52, baseType: !134)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = !DISubroutineType(types: !136)
!136 = !{!93, !15}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "upvalue", scope: !123, file: !24, line: 298, baseType: !138, size: 128, offset: 320)
!138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 128, elements: !139)
!139 = !{!140}
!140 = !DISubrange(count: 1)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !119, file: !24, line: 311, baseType: !142, size: 384)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "LClosure", file: !24, line: 306, baseType: !143)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "LClosure", file: !24, line: 302, size: 384, elements: !144)
!144 = !{!145, !146, !147, !148, !149, !150, !151, !152, !193}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !143, file: !24, line: 303, baseType: !22, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !143, file: !24, line: 303, baseType: !33, size: 8, offset: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !143, file: !24, line: 303, baseType: !33, size: 8, offset: 72)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "isC", scope: !143, file: !24, line: 303, baseType: !33, size: 8, offset: 80)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "nupvalues", scope: !143, file: !24, line: 303, baseType: !33, size: 8, offset: 88)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "gclist", scope: !143, file: !24, line: 303, baseType: !22, size: 64, offset: 128)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "env", scope: !143, file: !24, line: 303, baseType: !70, size: 64, offset: 192)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !143, file: !24, line: 304, baseType: !153, size: 64, offset: 256)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Proto", file: !24, line: 231, size: 960, elements: !155)
!155 = !{!156, !157, !158, !159, !160, !164, !166, !168, !177, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !154, file: !24, line: 232, baseType: !22, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !154, file: !24, line: 232, baseType: !33, size: 8, offset: 64)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !154, file: !24, line: 232, baseType: !33, size: 8, offset: 72)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !154, file: !24, line: 233, baseType: !80, size: 64, offset: 128)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !154, file: !24, line: 234, baseType: !161, size: 64, offset: 192)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "Instruction", file: !34, line: 88, baseType: !163)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "lu_int32", file: !34, line: 18, baseType: !57)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !154, file: !24, line: 235, baseType: !165, size: 64, offset: 256)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "lineinfo", scope: !154, file: !24, line: 236, baseType: !167, size: 64, offset: 320)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "locvars", scope: !154, file: !24, line: 237, baseType: !169, size: 64, offset: 384)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "LocVar", file: !24, line: 262, size: 128, elements: !171)
!171 = !{!172, !175, !176}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "varname", scope: !170, file: !24, line: 263, baseType: !173, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "TString", file: !24, line: 207, baseType: !38)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "startpc", scope: !170, file: !24, line: 264, baseType: !93, size: 32, offset: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "endpc", scope: !170, file: !24, line: 265, baseType: !93, size: 32, offset: 96)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "upvalues", scope: !154, file: !24, line: 238, baseType: !178, size: 64, offset: 448)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !154, file: !24, line: 239, baseType: !173, size: 64, offset: 512)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "sizeupvalues", scope: !154, file: !24, line: 240, baseType: !93, size: 32, offset: 576)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "sizek", scope: !154, file: !24, line: 241, baseType: !93, size: 32, offset: 608)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "sizecode", scope: !154, file: !24, line: 242, baseType: !93, size: 32, offset: 640)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "sizelineinfo", scope: !154, file: !24, line: 243, baseType: !93, size: 32, offset: 672)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "sizep", scope: !154, file: !24, line: 244, baseType: !93, size: 32, offset: 704)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "sizelocvars", scope: !154, file: !24, line: 245, baseType: !93, size: 32, offset: 736)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "linedefined", scope: !154, file: !24, line: 246, baseType: !93, size: 32, offset: 768)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "lastlinedefined", scope: !154, file: !24, line: 247, baseType: !93, size: 32, offset: 800)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "gclist", scope: !154, file: !24, line: 248, baseType: !22, size: 64, offset: 832)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "nups", scope: !154, file: !24, line: 249, baseType: !33, size: 8, offset: 896)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "numparams", scope: !154, file: !24, line: 250, baseType: !33, size: 8, offset: 904)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "is_vararg", scope: !154, file: !24, line: 251, baseType: !33, size: 8, offset: 912)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "maxstacksize", scope: !154, file: !24, line: 252, baseType: !33, size: 8, offset: 920)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "upvals", scope: !143, file: !24, line: 305, baseType: !194, size: 64, offset: 320)
!194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !195, size: 64, elements: !139)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "UpVal", file: !24, line: 284, baseType: !197)
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "UpVal", file: !24, line: 274, size: 320, elements: !198)
!198 = !{!199, !200, !201, !202, !203}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !197, file: !24, line: 275, baseType: !22, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !197, file: !24, line: 275, baseType: !33, size: 8, offset: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !197, file: !24, line: 275, baseType: !33, size: 8, offset: 72)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !197, file: !24, line: 276, baseType: !80, size: 64, offset: 128)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !197, file: !24, line: 283, baseType: !204, size: 128, offset: 192)
!204 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !197, file: !24, line: 277, size: 128, elements: !205)
!205 = !{!206, !207}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !204, file: !24, line: 278, baseType: !81, size: 128)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !204, file: !24, line: 282, baseType: !208, size: 128)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !204, file: !24, line: 279, size: 128, elements: !209)
!209 = !{!210, !212}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !208, file: !24, line: 280, baseType: !211, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !208, file: !24, line: 281, baseType: !211, size: 64, offset: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "h", scope: !25, file: !19, line: 141, baseType: !71, size: 512)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !25, file: !19, line: 142, baseType: !154, size: 960)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "uv", scope: !25, file: !19, line: 143, baseType: !197, size: 320)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "th", scope: !25, file: !19, line: 144, baseType: !18, size: 1472)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !18, file: !19, line: 101, baseType: !33, size: 8, offset: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !18, file: !19, line: 101, baseType: !33, size: 8, offset: 72)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !18, file: !19, line: 102, baseType: !33, size: 8, offset: 80)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !18, file: !19, line: 103, baseType: !221, size: 64, offset: 128)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "StkId", file: !24, line: 193, baseType: !80)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !18, file: !19, line: 104, baseType: !221, size: 64, offset: 192)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "l_G", scope: !18, file: !19, line: 105, baseType: !224, size: 64, offset: 256)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "global_State", file: !19, line: 94, baseType: !226)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "global_State", file: !19, line: 68, size: 3456, elements: !227)
!227 = !{!228, !236, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !261, !263, !264, !265, !266, !267, !268, !269, !270, !272, !273, !277}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "strt", scope: !226, file: !19, line: 69, baseType: !229, size: 128)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "stringtable", file: !19, line: 42, baseType: !230)
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stringtable", file: !19, line: 38, size: 128, elements: !231)
!231 = !{!232, !234, !235}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !230, file: !19, line: 39, baseType: !233, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "nuse", scope: !230, file: !19, line: 40, baseType: !163, size: 32, offset: 64)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !230, file: !19, line: 41, baseType: !93, size: 32, offset: 96)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "frealloc", scope: !226, file: !19, line: 70, baseType: !237, size: 64, offset: 128)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Alloc", file: !17, line: 66, baseType: !238)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = !DISubroutineType(types: !240)
!240 = !{!7, !7, !7, !4, !4}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "ud", scope: !226, file: !19, line: 71, baseType: !7, size: 64, offset: 192)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "currentwhite", scope: !226, file: !19, line: 72, baseType: !33, size: 8, offset: 256)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "gcstate", scope: !226, file: !19, line: 73, baseType: !33, size: 8, offset: 264)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "sweepstrgc", scope: !226, file: !19, line: 74, baseType: !93, size: 32, offset: 288)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "rootgc", scope: !226, file: !19, line: 75, baseType: !22, size: 64, offset: 320)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "sweepgc", scope: !226, file: !19, line: 76, baseType: !233, size: 64, offset: 384)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "gray", scope: !226, file: !19, line: 77, baseType: !22, size: 64, offset: 448)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "grayagain", scope: !226, file: !19, line: 78, baseType: !22, size: 64, offset: 512)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "weak", scope: !226, file: !19, line: 79, baseType: !22, size: 64, offset: 576)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "tmudata", scope: !226, file: !19, line: 80, baseType: !22, size: 64, offset: 640)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "buff", scope: !226, file: !19, line: 81, baseType: !252, size: 192, offset: 704)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "Mbuffer", file: !253, line: 28, baseType: !254)
!253 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lzio.h", directory: "/root/.unikraft/apps/redis/build")
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Mbuffer", file: !253, line: 24, size: 192, elements: !255)
!255 = !{!256, !259, !260}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !254, file: !253, line: 25, baseType: !257, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !254, file: !253, line: 26, baseType: !4, size: 64, offset: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "buffsize", scope: !254, file: !253, line: 27, baseType: !4, size: 64, offset: 128)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "GCthreshold", scope: !226, file: !19, line: 82, baseType: !262, size: 64, offset: 896)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "lu_mem", file: !34, line: 20, baseType: !4)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "totalbytes", scope: !226, file: !19, line: 83, baseType: !262, size: 64, offset: 960)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "estimate", scope: !226, file: !19, line: 84, baseType: !262, size: 64, offset: 1024)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "gcdept", scope: !226, file: !19, line: 85, baseType: !262, size: 64, offset: 1088)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "gcpause", scope: !226, file: !19, line: 86, baseType: !93, size: 32, offset: 1152)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "gcstepmul", scope: !226, file: !19, line: 87, baseType: !93, size: 32, offset: 1184)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "panic", scope: !226, file: !19, line: 88, baseType: !133, size: 64, offset: 1216)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "l_registry", scope: !226, file: !19, line: 89, baseType: !81, size: 128, offset: 1280)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "mainthread", scope: !226, file: !19, line: 90, baseType: !271, size: 64, offset: 1408)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "uvhead", scope: !226, file: !19, line: 91, baseType: !196, size: 320, offset: 1472)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "mt", scope: !226, file: !19, line: 92, baseType: !274, size: 576, offset: 1792)
!274 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 576, elements: !275)
!275 = !{!276}
!276 = !DISubrange(count: 9)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "tmname", scope: !226, file: !19, line: 93, baseType: !278, size: 1088, offset: 2368)
!278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, size: 1088, elements: !279)
!279 = !{!280}
!280 = !DISubrange(count: 17)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "ci", scope: !18, file: !19, line: 106, baseType: !282, size: 64, offset: 320)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "CallInfo", file: !19, line: 55, baseType: !284)
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "CallInfo", file: !19, line: 48, size: 320, elements: !285)
!285 = !{!286, !287, !288, !289, !292, !293}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !284, file: !19, line: 49, baseType: !221, size: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !284, file: !19, line: 50, baseType: !221, size: 64, offset: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !284, file: !19, line: 51, baseType: !221, size: 64, offset: 128)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "savedpc", scope: !284, file: !19, line: 52, baseType: !290, size: 64, offset: 192)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !162)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "nresults", scope: !284, file: !19, line: 53, baseType: !93, size: 32, offset: 256)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "tailcalls", scope: !284, file: !19, line: 54, baseType: !93, size: 32, offset: 288)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "savedpc", scope: !18, file: !19, line: 107, baseType: !290, size: 64, offset: 384)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "stack_last", scope: !18, file: !19, line: 108, baseType: !221, size: 64, offset: 448)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !18, file: !19, line: 109, baseType: !221, size: 64, offset: 512)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "end_ci", scope: !18, file: !19, line: 110, baseType: !282, size: 64, offset: 576)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "base_ci", scope: !18, file: !19, line: 111, baseType: !282, size: 64, offset: 640)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "stacksize", scope: !18, file: !19, line: 112, baseType: !93, size: 32, offset: 704)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "size_ci", scope: !18, file: !19, line: 113, baseType: !93, size: 32, offset: 736)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "nCcalls", scope: !18, file: !19, line: 114, baseType: !302, size: 16, offset: 768)
!302 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "baseCcalls", scope: !18, file: !19, line: 115, baseType: !302, size: 16, offset: 784)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "hookmask", scope: !18, file: !19, line: 116, baseType: !33, size: 8, offset: 800)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "allowhook", scope: !18, file: !19, line: 117, baseType: !33, size: 8, offset: 808)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "basehookcount", scope: !18, file: !19, line: 118, baseType: !93, size: 32, offset: 832)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "hookcount", scope: !18, file: !19, line: 119, baseType: !93, size: 32, offset: 864)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "hook", scope: !18, file: !19, line: 120, baseType: !309, size: 64, offset: 896)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Hook", file: !17, line: 330, baseType: !310)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = !DISubroutineType(types: !312)
!312 = !{null, !15, !313}
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Debug", file: !17, line: 326, baseType: !315)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lua_Debug", file: !17, line: 346, size: 960, elements: !316)
!316 = !{!317, !318, !321, !322, !323, !324, !325, !326, !327, !328, !332}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !315, file: !17, line: 347, baseType: !93, size: 32)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !315, file: !17, line: 348, baseType: !319, size: 64, offset: 64)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!320 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !258)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "namewhat", scope: !315, file: !17, line: 349, baseType: !319, size: 64, offset: 128)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "what", scope: !315, file: !17, line: 350, baseType: !319, size: 64, offset: 192)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !315, file: !17, line: 351, baseType: !319, size: 64, offset: 256)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "currentline", scope: !315, file: !17, line: 352, baseType: !93, size: 32, offset: 320)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "nups", scope: !315, file: !17, line: 353, baseType: !93, size: 32, offset: 352)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "linedefined", scope: !315, file: !17, line: 354, baseType: !93, size: 32, offset: 384)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "lastlinedefined", scope: !315, file: !17, line: 355, baseType: !93, size: 32, offset: 416)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "short_src", scope: !315, file: !17, line: 356, baseType: !329, size: 480, offset: 448)
!329 = !DICompositeType(tag: DW_TAG_array_type, baseType: !258, size: 480, elements: !330)
!330 = !{!331}
!331 = !DISubrange(count: 60)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "i_ci", scope: !315, file: !17, line: 358, baseType: !93, size: 32, offset: 928)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "l_gt", scope: !18, file: !19, line: 121, baseType: !81, size: 128, offset: 960)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "env", scope: !18, file: !19, line: 122, baseType: !81, size: 128, offset: 1088)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "openupval", scope: !18, file: !19, line: 123, baseType: !22, size: 64, offset: 1216)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "gclist", scope: !18, file: !19, line: 124, baseType: !22, size: 64, offset: 1280)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "errorJmp", scope: !18, file: !19, line: 125, baseType: !338, size: 64, offset: 1344)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!339 = !DICompositeType(tag: DW_TAG_structure_type, name: "lua_longjmp", file: !19, line: 18, flags: DIFlagFwdDecl)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "errfunc", scope: !18, file: !19, line: 126, baseType: !341, size: 64, offset: 1408)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !5, line: 49, baseType: !48)
!342 = !{!343, !344, !345, !346, !347, !348, !349, !350}
!343 = !DILocalVariable(name: "L", arg: 1, scope: !12, file: !1, line: 46, type: !15)
!344 = !DILocalVariable(name: "block", arg: 2, scope: !12, file: !1, line: 46, type: !7)
!345 = !DILocalVariable(name: "size", arg: 3, scope: !12, file: !1, line: 46, type: !167)
!346 = !DILocalVariable(name: "size_elems", arg: 4, scope: !12, file: !1, line: 46, type: !4)
!347 = !DILocalVariable(name: "limit", arg: 5, scope: !12, file: !1, line: 47, type: !93)
!348 = !DILocalVariable(name: "errormsg", arg: 6, scope: !12, file: !1, line: 47, type: !319)
!349 = !DILocalVariable(name: "newblock", scope: !12, file: !1, line: 48, type: !7)
!350 = !DILocalVariable(name: "newsize", scope: !12, file: !1, line: 49, type: !93)
!351 = !DILocation(line: 46, column: 33, scope: !12)
!352 = !DILocation(line: 46, column: 42, scope: !12)
!353 = !DILocation(line: 46, column: 54, scope: !12)
!354 = !DILocation(line: 46, column: 67, scope: !12)
!355 = !DILocation(line: 47, column: 26, scope: !12)
!356 = !DILocation(line: 47, column: 45, scope: !12)
!357 = !DILocation(line: 50, column: 7, scope: !358)
!358 = distinct !DILexicalBlock(scope: !12, file: !1, line: 50, column: 7)
!359 = !{!360, !360, i64 0}
!360 = !{!"int", !361, i64 0}
!361 = !{!"omnipotent char", !362, i64 0}
!362 = !{!"Simple C/C++ TBAA"}
!363 = !DILocation(line: 50, column: 21, scope: !358)
!364 = !DILocation(line: 50, column: 13, scope: !358)
!365 = !DILocation(line: 50, column: 7, scope: !12)
!366 = !DILocation(line: 51, column: 15, scope: !367)
!367 = distinct !DILexicalBlock(scope: !368, file: !1, line: 51, column: 9)
!368 = distinct !DILexicalBlock(scope: !358, file: !1, line: 50, column: 25)
!369 = !DILocation(line: 51, column: 9, scope: !368)
!370 = !DILocation(line: 52, column: 7, scope: !367)
!371 = !DILocation(line: 56, column: 22, scope: !372)
!372 = distinct !DILexicalBlock(scope: !358, file: !1, line: 55, column: 8)
!373 = !DILocation(line: 49, column: 7, scope: !12)
!374 = !DILocation(line: 57, column: 9, scope: !372)
!375 = !DILocation(line: 0, scope: !376)
!376 = distinct !DILexicalBlock(scope: !372, file: !1, line: 57, column: 9)
!377 = !DILocation(line: 60, column: 14, scope: !12)
!378 = !DILocalVariable(name: "L", arg: 1, scope: !379, file: !1, line: 76, type: !15)
!379 = distinct !DISubprogram(name: "luaM_realloc_", scope: !1, file: !1, line: 76, type: !380, isLocal: false, isDefinition: true, scopeLine: 76, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !382)
!380 = !DISubroutineType(types: !381)
!381 = !{!7, !15, !7, !4, !4}
!382 = !{!378, !383, !384, !385, !386}
!383 = !DILocalVariable(name: "block", arg: 2, scope: !379, file: !1, line: 76, type: !7)
!384 = !DILocalVariable(name: "osize", arg: 3, scope: !379, file: !1, line: 76, type: !4)
!385 = !DILocalVariable(name: "nsize", arg: 4, scope: !379, file: !1, line: 76, type: !4)
!386 = !DILocalVariable(name: "g", scope: !379, file: !1, line: 77, type: !224)
!387 = !DILocation(line: 76, column: 33, scope: !379, inlinedAt: !388)
!388 = distinct !DILocation(line: 60, column: 14, scope: !12)
!389 = !DILocation(line: 76, column: 42, scope: !379, inlinedAt: !388)
!390 = !DILocation(line: 76, column: 56, scope: !379, inlinedAt: !388)
!391 = !DILocation(line: 76, column: 70, scope: !379, inlinedAt: !388)
!392 = !DILocation(line: 77, column: 21, scope: !379, inlinedAt: !388)
!393 = !{!394, !395, i64 32}
!394 = !{!"lua_State", !395, i64 0, !361, i64 8, !361, i64 9, !361, i64 10, !395, i64 16, !395, i64 24, !395, i64 32, !395, i64 40, !395, i64 48, !395, i64 56, !395, i64 64, !395, i64 72, !395, i64 80, !360, i64 88, !360, i64 92, !396, i64 96, !396, i64 98, !361, i64 100, !361, i64 101, !360, i64 104, !360, i64 108, !395, i64 112, !397, i64 120, !397, i64 136, !395, i64 152, !395, i64 160, !395, i64 168, !398, i64 176}
!395 = !{!"any pointer", !361, i64 0}
!396 = !{!"short", !361, i64 0}
!397 = !{!"lua_TValue", !361, i64 0, !360, i64 8}
!398 = !{!"long", !361, i64 0}
!399 = !DILocation(line: 77, column: 17, scope: !379, inlinedAt: !388)
!400 = !DILocation(line: 79, column: 16, scope: !379, inlinedAt: !388)
!401 = !{!402, !395, i64 16}
!402 = !{!"global_State", !403, i64 0, !395, i64 16, !395, i64 24, !361, i64 32, !361, i64 33, !360, i64 36, !395, i64 40, !395, i64 48, !395, i64 56, !395, i64 64, !395, i64 72, !395, i64 80, !404, i64 88, !398, i64 112, !398, i64 120, !398, i64 128, !398, i64 136, !360, i64 144, !360, i64 148, !395, i64 152, !397, i64 160, !395, i64 176, !405, i64 184, !361, i64 224, !361, i64 296}
!403 = !{!"stringtable", !395, i64 0, !360, i64 8, !360, i64 12}
!404 = !{!"Mbuffer", !395, i64 0, !398, i64 8, !398, i64 16}
!405 = !{!"UpVal", !395, i64 0, !361, i64 8, !361, i64 9, !395, i64 16, !361, i64 24}
!406 = !DILocation(line: 79, column: 29, scope: !379, inlinedAt: !388)
!407 = !{!402, !395, i64 24}
!408 = !DILocation(line: 79, column: 11, scope: !379, inlinedAt: !388)
!409 = !DILocation(line: 80, column: 13, scope: !410, inlinedAt: !388)
!410 = distinct !DILexicalBlock(scope: !379, file: !1, line: 80, column: 7)
!411 = !DILocation(line: 80, column: 30, scope: !410, inlinedAt: !388)
!412 = !DILocation(line: 80, column: 21, scope: !410, inlinedAt: !388)
!413 = !DILocation(line: 81, column: 5, scope: !410, inlinedAt: !388)
!414 = !DILocation(line: 83, column: 23, scope: !379, inlinedAt: !388)
!415 = !{!402, !398, i64 120}
!416 = !DILocation(line: 83, column: 34, scope: !379, inlinedAt: !388)
!417 = !DILocation(line: 83, column: 43, scope: !379, inlinedAt: !388)
!418 = !DILocation(line: 83, column: 17, scope: !379, inlinedAt: !388)
!419 = !DILocalVariable(name: "L", arg: 1, scope: !420, file: !1, line: 66, type: !15)
!420 = distinct !DISubprogram(name: "luaM_toobig", scope: !1, file: !1, line: 66, type: !421, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !423)
!421 = !DISubroutineType(types: !422)
!422 = !{!7, !15}
!423 = !{!419}
!424 = !DILocation(line: 66, column: 31, scope: !420, inlinedAt: !425)
!425 = distinct !DILocation(line: 60, column: 14, scope: !12)
!426 = !DILocation(line: 67, column: 3, scope: !420, inlinedAt: !425)
!427 = !DILocation(line: 0, scope: !12)
!428 = !DILocation(line: 48, column: 9, scope: !12)
!429 = !DILocation(line: 61, column: 9, scope: !12)
!430 = !DILocation(line: 62, column: 3, scope: !12)
!431 = !DILocation(line: 76, column: 33, scope: !379)
!432 = !DILocation(line: 76, column: 42, scope: !379)
!433 = !DILocation(line: 76, column: 56, scope: !379)
!434 = !DILocation(line: 76, column: 70, scope: !379)
!435 = !DILocation(line: 77, column: 21, scope: !379)
!436 = !DILocation(line: 77, column: 17, scope: !379)
!437 = !DILocation(line: 79, column: 16, scope: !379)
!438 = !DILocation(line: 79, column: 29, scope: !379)
!439 = !DILocation(line: 79, column: 11, scope: !379)
!440 = !DILocation(line: 80, column: 13, scope: !410)
!441 = !DILocation(line: 80, column: 30, scope: !410)
!442 = !DILocation(line: 80, column: 21, scope: !410)
!443 = !DILocation(line: 81, column: 5, scope: !410)
!444 = !DILocation(line: 83, column: 23, scope: !379)
!445 = !DILocation(line: 83, column: 34, scope: !379)
!446 = !DILocation(line: 83, column: 43, scope: !379)
!447 = !DILocation(line: 83, column: 17, scope: !379)
!448 = !DILocation(line: 84, column: 3, scope: !379)
!449 = !DILocation(line: 66, column: 31, scope: !420)
!450 = !DILocation(line: 67, column: 3, scope: !420)
!451 = !DILocation(line: 68, column: 3, scope: !420)
