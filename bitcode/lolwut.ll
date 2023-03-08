; ModuleID = '/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/lolwut.c'
source_filename = "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/lolwut.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.client = type { i64, i32, %struct.redisDb*, %struct.redisObject*, i8*, i64, i8*, i64, i32, %struct.redisObject**, %struct.redisCommand*, %struct.redisCommand*, i32, i32, i64, %struct.list*, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i64, i64, i8*, i64, i64, i64, i64, i64, [41 x i8], i32, [46 x i8], i32, %struct.multiState, i32, %struct.blockingState, i64, %struct.list*, %struct.dict*, %struct.list*, i8*, %struct.listNode*, i32, [16384 x i8] }
%struct.redisDb = type { %struct.dict*, %struct.dict*, %struct.dict*, %struct.dict*, %struct.dict*, i32, i64, %struct.list* }
%struct.redisObject = type { i32, i32, i8* }
%struct.redisCommand = type { i8*, {}*, i32, i8*, i32, i32* (%struct.redisCommand*, %struct.redisObject**, i32, i32*)*, i32, i32, i32, i64, i64 }
%struct.multiState = type { %struct.multiCmd*, i32, i32, i32, i64 }
%struct.multiCmd = type { %struct.redisObject**, i32, %struct.redisCommand* }
%struct.blockingState = type { i64, %struct.dict*, %struct.redisObject*, i64, %struct.redisObject*, %struct.redisObject*, i64, i64, i32, i32, i64, i8* }
%struct.dict = type { %struct.dictType*, i8*, [2 x %struct.dictht], i64, i64 }
%struct.dictType = type { i64 (i8*)*, i8* (i8*, i8*)*, i8* (i8*, i8*)*, i32 (i8*, i8*, i8*)*, void (i8*, i8*)*, void (i8*, i8*)* }
%struct.dictht = type { %struct.dictEntry**, i64, i64, i64 }
%struct.dictEntry = type { i8*, %union.anon, %struct.dictEntry* }
%union.anon = type { i8* }
%struct.list = type { %struct.listNode*, %struct.listNode*, i8* (i8*)*, void (i8*)*, i32 (i8*, i8*)*, i64 }
%struct.listNode = type { %struct.listNode*, %struct.listNode*, i8* }

@.str = private unnamed_addr constant [12 x i8] c"Redis ver. \00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"5.0.6\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local void @lolwutUnstableCommand(%struct.client*) local_unnamed_addr #0 !dbg !7 {
  %2 = tail call i8* @sdsnew(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0)) #3, !dbg !266
  %3 = tail call i8* @sdscat(i8* %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)) #3, !dbg !268
  %4 = tail call i8* @sdscatlen(i8* %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i64 1) #3, !dbg !269
  tail call void @addReplyBulkSds(%struct.client* %0, i8* %4) #3, !dbg !270
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !271
  ret void, !dbg !271
}

; Function Attrs: noredzone
declare dso_local i8* @sdsnew(i8*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i8* @sdscat(i8*, i8*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i8* @sdscatlen(i8*, i8*, i64) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @addReplyBulkSds(%struct.client*, i8*) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local void @lolwutCommand(%struct.client*) local_unnamed_addr #0 !dbg !272 {
  tail call void @lolwut5Command(%struct.client* %0) #3, !dbg !277
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !279
  ret void, !dbg !279
}

; Function Attrs: noredzone
declare dso_local void @lolwut5Command(%struct.client*) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/lolwut.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "lolwutUnstableCommand", scope: !1, file: !1, line: 42, type: !8, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !262)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "client", file: !12, line: 780, baseType: !13)
!12 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/server.h", directory: "/root/.unikraft/apps/redis/build")
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "client", file: !12, line: 723, size: 135360, elements: !14)
!14 = !{!15, !21, !23, !129, !140, !145, !150, !151, !152, !153, !155, !177, !178, !179, !180, !181, !182, !184, !185, !188, !189, !190, !191, !192, !193, !194, !195, !200, !201, !202, !203, !204, !205, !206, !207, !211, !212, !216, !217, !233, !234, !251, !252, !253, !254, !255, !256, !257, !258}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !13, file: !12, line: 724, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !17, line: 60, baseType: !18)
!17 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !19, line: 105, baseType: !20)
!19 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!20 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !13, file: !12, line: 725, baseType: !22, size: 32, offset: 64)
!22 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "db", scope: !13, file: !12, line: 726, baseType: !24, size: 64, offset: 128)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisDb", file: !12, line: 656, baseType: !26)
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisDb", file: !12, line: 647, size: 512, elements: !27)
!27 = !{!28, !93, !94, !95, !96, !97, !98, !100}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !26, file: !12, line: 648, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "dict", file: !31, line: 82, baseType: !32)
!31 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/dict.h", directory: "/root/.unikraft/apps/redis/build")
!32 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dict", file: !31, line: 76, size: 768, elements: !33)
!33 = !{!34, !60, !61, !91, !92}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !32, file: !31, line: 77, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictType", file: !31, line: 65, baseType: !37)
!37 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictType", file: !31, line: 58, size: 384, elements: !38)
!38 = !{!39, !45, !50, !51, !55, !59}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "hashFunction", scope: !37, file: !31, line: 59, baseType: !40, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DISubroutineType(types: !42)
!42 = !{!16, !43}
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "keyDup", scope: !37, file: !31, line: 60, baseType: !46, size: 64, offset: 64)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DISubroutineType(types: !48)
!48 = !{!49, !49, !43}
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "valDup", scope: !37, file: !31, line: 61, baseType: !46, size: 64, offset: 128)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "keyCompare", scope: !37, file: !31, line: 62, baseType: !52, size: 64, offset: 192)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DISubroutineType(types: !54)
!54 = !{!22, !49, !43, !43}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "keyDestructor", scope: !37, file: !31, line: 63, baseType: !56, size: 64, offset: 256)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DISubroutineType(types: !58)
!58 = !{null, !49, !49}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "valDestructor", scope: !37, file: !31, line: 64, baseType: !56, size: 64, offset: 320)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "privdata", scope: !32, file: !31, line: 78, baseType: !49, size: 64, offset: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "ht", scope: !32, file: !31, line: 79, baseType: !62, size: 512, offset: 128)
!62 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 512, elements: !89)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictht", file: !31, line: 74, baseType: !64)
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictht", file: !31, line: 69, size: 256, elements: !65)
!65 = !{!66, !86, !87, !88}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !64, file: !31, line: 70, baseType: !67, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictEntry", file: !31, line: 56, baseType: !70)
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictEntry", file: !31, line: 47, size: 192, elements: !71)
!71 = !{!72, !73, !84}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !70, file: !31, line: 48, baseType: !49, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !70, file: !31, line: 54, baseType: !74, size: 64, offset: 64)
!74 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !70, file: !31, line: 49, size: 64, elements: !75)
!75 = !{!76, !77, !78, !82}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !74, file: !31, line: 50, baseType: !49, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "u64", scope: !74, file: !31, line: 51, baseType: !16, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "s64", scope: !74, file: !31, line: 52, baseType: !79, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !17, line: 56, baseType: !80)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !19, line: 103, baseType: !81)
!81 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !74, file: !31, line: 53, baseType: !83, size: 64)
!83 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !70, file: !31, line: 55, baseType: !85, size: 64, offset: 128)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !64, file: !31, line: 71, baseType: !20, size: 64, offset: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "sizemask", scope: !64, file: !31, line: 72, baseType: !20, size: 64, offset: 128)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !64, file: !31, line: 73, baseType: !20, size: 64, offset: 192)
!89 = !{!90}
!90 = !DISubrange(count: 2)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "rehashidx", scope: !32, file: !31, line: 80, baseType: !81, size: 64, offset: 640)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "iterators", scope: !32, file: !31, line: 81, baseType: !20, size: 64, offset: 704)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !26, file: !12, line: 649, baseType: !29, size: 64, offset: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "blocking_keys", scope: !26, file: !12, line: 650, baseType: !29, size: 64, offset: 128)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "ready_keys", scope: !26, file: !12, line: 651, baseType: !29, size: 64, offset: 192)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "watched_keys", scope: !26, file: !12, line: 652, baseType: !29, size: 64, offset: 256)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !26, file: !12, line: 653, baseType: !22, size: 32, offset: 320)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "avg_ttl", scope: !26, file: !12, line: 654, baseType: !99, size: 64, offset: 384)
!99 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "defrag_later", scope: !26, file: !12, line: 655, baseType: !101, size: 64, offset: 448)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "list", file: !103, line: 54, baseType: !104)
!103 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/adlist.h", directory: "/root/.unikraft/apps/redis/build")
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list", file: !103, line: 47, size: 384, elements: !105)
!105 = !{!106, !115, !116, !120, !124, !128}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !104, file: !103, line: 48, baseType: !107, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "listNode", file: !103, line: 40, baseType: !109)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "listNode", file: !103, line: 36, size: 192, elements: !110)
!110 = !{!111, !113, !114}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !109, file: !103, line: 37, baseType: !112, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !109, file: !103, line: 38, baseType: !112, size: 64, offset: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !109, file: !103, line: 39, baseType: !49, size: 64, offset: 128)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !104, file: !103, line: 49, baseType: !107, size: 64, offset: 64)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "dup", scope: !104, file: !103, line: 50, baseType: !117, size: 64, offset: 128)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = !DISubroutineType(types: !119)
!119 = !{!49, !49}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !104, file: !103, line: 51, baseType: !121, size: 64, offset: 192)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = !DISubroutineType(types: !123)
!123 = !{null, !49}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !104, file: !103, line: 52, baseType: !125, size: 64, offset: 256)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = !DISubroutineType(types: !127)
!127 = !{!22, !49, !49}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !104, file: !103, line: 53, baseType: !20, size: 64, offset: 320)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !13, file: !12, line: 727, baseType: !130, size: 64, offset: 192)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "robj", file: !12, line: 622, baseType: !132)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisObject", file: !12, line: 614, size: 128, elements: !133)
!133 = !{!134, !136, !137, !138, !139}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !132, file: !12, line: 615, baseType: !135, size: 4, flags: DIFlagBitField, extraData: i64 0)
!135 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !132, file: !12, line: 616, baseType: !135, size: 4, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !132, file: !12, line: 617, baseType: !135, size: 24, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !132, file: !12, line: 620, baseType: !22, size: 32, offset: 32)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !132, file: !12, line: 621, baseType: !49, size: 64, offset: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "querybuf", scope: !13, file: !12, line: 728, baseType: !141, size: 64, offset: 256)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "sds", file: !142, line: 43, baseType: !143)
!142 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/sds.h", directory: "/root/.unikraft/apps/redis/build")
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!144 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "qb_pos", scope: !13, file: !12, line: 729, baseType: !146, size: 64, offset: 320)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !147, line: 40, baseType: !148)
!147 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !149, line: 129, baseType: !20)
!149 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!150 = !DIDerivedType(tag: DW_TAG_member, name: "pending_querybuf", scope: !13, file: !12, line: 730, baseType: !141, size: 64, offset: 384)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "querybuf_peak", scope: !13, file: !12, line: 734, baseType: !146, size: 64, offset: 448)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !13, file: !12, line: 735, baseType: !22, size: 32, offset: 512)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !13, file: !12, line: 736, baseType: !154, size: 64, offset: 576)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !13, file: !12, line: 737, baseType: !156, size: 64, offset: 640)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisCommand", file: !12, line: 1307, size: 640, elements: !158)
!158 = !{!159, !160, !163, !164, !165, !166, !172, !173, !174, !175, !176}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !157, file: !12, line: 1308, baseType: !143, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "proc", scope: !157, file: !12, line: 1309, baseType: !161, size: 64, offset: 64)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisCommandProc", file: !12, line: 1305, baseType: !8)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "arity", scope: !157, file: !12, line: 1310, baseType: !22, size: 32, offset: 128)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "sflags", scope: !157, file: !12, line: 1311, baseType: !143, size: 64, offset: 192)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !157, file: !12, line: 1312, baseType: !22, size: 32, offset: 256)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "getkeys_proc", scope: !157, file: !12, line: 1315, baseType: !167, size: 64, offset: 320)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisGetKeysProc", file: !12, line: 1306, baseType: !169)
!169 = !DISubroutineType(types: !170)
!170 = !{!171, !156, !154, !22, !171}
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "firstkey", scope: !157, file: !12, line: 1317, baseType: !22, size: 32, offset: 384)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "lastkey", scope: !157, file: !12, line: 1318, baseType: !22, size: 32, offset: 416)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "keystep", scope: !157, file: !12, line: 1319, baseType: !22, size: 32, offset: 448)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "microseconds", scope: !157, file: !12, line: 1320, baseType: !99, size: 64, offset: 512)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "calls", scope: !157, file: !12, line: 1320, baseType: !99, size: 64, offset: 576)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "lastcmd", scope: !13, file: !12, line: 737, baseType: !156, size: 64, offset: 704)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "reqtype", scope: !13, file: !12, line: 738, baseType: !22, size: 32, offset: 768)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "multibulklen", scope: !13, file: !12, line: 739, baseType: !22, size: 32, offset: 800)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "bulklen", scope: !13, file: !12, line: 740, baseType: !81, size: 64, offset: 832)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "reply", scope: !13, file: !12, line: 741, baseType: !101, size: 64, offset: 896)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "reply_bytes", scope: !13, file: !12, line: 742, baseType: !183, size: 64, offset: 960)
!183 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "sentlen", scope: !13, file: !12, line: 743, baseType: !146, size: 64, offset: 1024)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !13, file: !12, line: 745, baseType: !186, size: 64, offset: 1088)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !187, line: 34, baseType: !81)
!187 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uktime/include/uk/time_types.h", directory: "/root/.unikraft/apps/redis/build")
!188 = !DIDerivedType(tag: DW_TAG_member, name: "lastinteraction", scope: !13, file: !12, line: 746, baseType: !186, size: 64, offset: 1152)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "obuf_soft_limit_reached_time", scope: !13, file: !12, line: 747, baseType: !186, size: 64, offset: 1216)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !13, file: !12, line: 748, baseType: !22, size: 32, offset: 1280)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !13, file: !12, line: 749, baseType: !22, size: 32, offset: 1312)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "replstate", scope: !13, file: !12, line: 750, baseType: !22, size: 32, offset: 1344)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "repl_put_online_on_ack", scope: !13, file: !12, line: 751, baseType: !22, size: 32, offset: 1376)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "repldbfd", scope: !13, file: !12, line: 752, baseType: !22, size: 32, offset: 1408)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "repldboff", scope: !13, file: !12, line: 753, baseType: !196, size: 64, offset: 1472)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !197, line: 173, baseType: !198)
!197 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/types.h", directory: "/root/.unikraft/apps/redis/build")
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !149, line: 100, baseType: !199)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !149, line: 44, baseType: !81)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "repldbsize", scope: !13, file: !12, line: 754, baseType: !196, size: 64, offset: 1536)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "replpreamble", scope: !13, file: !12, line: 755, baseType: !141, size: 64, offset: 1600)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "read_reploff", scope: !13, file: !12, line: 756, baseType: !99, size: 64, offset: 1664)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "reploff", scope: !13, file: !12, line: 757, baseType: !99, size: 64, offset: 1728)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "repl_ack_off", scope: !13, file: !12, line: 758, baseType: !99, size: 64, offset: 1792)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "repl_ack_time", scope: !13, file: !12, line: 759, baseType: !99, size: 64, offset: 1856)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "psync_initial_offset", scope: !13, file: !12, line: 760, baseType: !99, size: 64, offset: 1920)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "replid", scope: !13, file: !12, line: 763, baseType: !208, size: 328, offset: 1984)
!208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 328, elements: !209)
!209 = !{!210}
!210 = !DISubrange(count: 41)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "slave_listening_port", scope: !13, file: !12, line: 764, baseType: !22, size: 32, offset: 2336)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "slave_ip", scope: !13, file: !12, line: 765, baseType: !213, size: 368, offset: 2368)
!213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 368, elements: !214)
!214 = !{!215}
!215 = !DISubrange(count: 46)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "slave_capa", scope: !13, file: !12, line: 766, baseType: !22, size: 32, offset: 2752)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "mstate", scope: !13, file: !12, line: 767, baseType: !218, size: 256, offset: 2816)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiState", file: !12, line: 673, baseType: !219)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multiState", file: !12, line: 665, size: 256, elements: !220)
!220 = !{!221, !229, !230, !231, !232}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "commands", scope: !219, file: !12, line: 666, baseType: !222, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiCmd", file: !12, line: 663, baseType: !224)
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multiCmd", file: !12, line: 659, size: 192, elements: !225)
!225 = !{!226, !227, !228}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !224, file: !12, line: 660, baseType: !154, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !224, file: !12, line: 661, baseType: !22, size: 32, offset: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !224, file: !12, line: 662, baseType: !156, size: 64, offset: 128)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !219, file: !12, line: 667, baseType: !22, size: 32, offset: 64)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_flags", scope: !219, file: !12, line: 668, baseType: !22, size: 32, offset: 96)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "minreplicas", scope: !219, file: !12, line: 671, baseType: !22, size: 32, offset: 128)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "minreplicas_timeout", scope: !219, file: !12, line: 672, baseType: !186, size: 64, offset: 192)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "btype", scope: !13, file: !12, line: 768, baseType: !22, size: 32, offset: 3072)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "bpop", scope: !13, file: !12, line: 769, baseType: !235, size: 704, offset: 3136)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "blockingState", file: !12, line: 703, baseType: !236)
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blockingState", file: !12, line: 677, size: 704, elements: !237)
!237 = !{!238, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !236, file: !12, line: 679, baseType: !239, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "mstime_t", file: !12, line: 52, baseType: !99)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !236, file: !12, line: 683, baseType: !29, size: 64, offset: 64)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !236, file: !12, line: 685, baseType: !130, size: 64, offset: 128)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "xread_count", scope: !236, file: !12, line: 689, baseType: !146, size: 64, offset: 192)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "xread_group", scope: !236, file: !12, line: 690, baseType: !130, size: 64, offset: 256)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "xread_consumer", scope: !236, file: !12, line: 691, baseType: !130, size: 64, offset: 320)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "xread_retry_time", scope: !236, file: !12, line: 692, baseType: !239, size: 64, offset: 384)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "xread_retry_ttl", scope: !236, file: !12, line: 692, baseType: !239, size: 64, offset: 448)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "xread_group_noack", scope: !236, file: !12, line: 693, baseType: !22, size: 32, offset: 512)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "numreplicas", scope: !236, file: !12, line: 696, baseType: !22, size: 32, offset: 544)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "reploffset", scope: !236, file: !12, line: 697, baseType: !99, size: 64, offset: 576)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "module_blocked_handle", scope: !236, file: !12, line: 700, baseType: !49, size: 64, offset: 640)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "woff", scope: !13, file: !12, line: 770, baseType: !99, size: 64, offset: 3840)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "watched_keys", scope: !13, file: !12, line: 771, baseType: !101, size: 64, offset: 3904)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_channels", scope: !13, file: !12, line: 772, baseType: !29, size: 64, offset: 3968)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_patterns", scope: !13, file: !12, line: 773, baseType: !101, size: 64, offset: 4032)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "peerid", scope: !13, file: !12, line: 774, baseType: !141, size: 64, offset: 4096)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "client_list_node", scope: !13, file: !12, line: 775, baseType: !107, size: 64, offset: 4160)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "bufpos", scope: !13, file: !12, line: 778, baseType: !22, size: 32, offset: 4224)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !13, file: !12, line: 779, baseType: !259, size: 131072, offset: 4256)
!259 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 131072, elements: !260)
!260 = !{!261}
!261 = !DISubrange(count: 16384)
!262 = !{!263, !264}
!263 = !DILocalVariable(name: "c", arg: 1, scope: !7, file: !1, line: 42, type: !10)
!264 = !DILocalVariable(name: "rendered", scope: !7, file: !1, line: 43, type: !141)
!265 = !DILocation(line: 42, column: 36, scope: !7)
!266 = !DILocation(line: 43, column: 20, scope: !7)
!267 = !DILocation(line: 43, column: 9, scope: !7)
!268 = !DILocation(line: 44, column: 16, scope: !7)
!269 = !DILocation(line: 45, column: 16, scope: !7)
!270 = !DILocation(line: 46, column: 5, scope: !7)
!271 = !DILocation(line: 47, column: 1, scope: !7)
!272 = distinct !DISubprogram(name: "lolwutCommand", scope: !1, file: !1, line: 49, type: !8, isLocal: false, isDefinition: true, scopeLine: 49, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !273)
!273 = !{!274, !275}
!274 = !DILocalVariable(name: "c", arg: 1, scope: !272, file: !1, line: 49, type: !10)
!275 = !DILocalVariable(name: "v", scope: !272, file: !1, line: 50, type: !143)
!276 = !DILocation(line: 49, column: 28, scope: !272)
!277 = !DILocation(line: 53, column: 9, scope: !278)
!278 = distinct !DILexicalBlock(scope: !272, file: !1, line: 51, column: 9)
!279 = !DILocation(line: 56, column: 1, scope: !272)
