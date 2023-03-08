; ModuleID = '/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/childinfo.c'
source_filename = "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/childinfo.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.redisServer = type { i32, i8*, i8*, i8**, i32, i32, i32, %struct.redisDb*, %struct.dict*, %struct.dict*, %struct.aeEventLoop*, i32, i32, i32, i32, i8*, i8*, i32, i32, [41 x i8], i32, i64, i32, %struct.dict*, %struct.dict*, %struct.list*, [2 x i32], i32, i32, [16 x i8*], i32, i8*, i32, [16 x i32], i32, i32, [16 x i32], i32, %struct.list*, %struct.list*, %struct.list*, %struct.list*, %struct.list*, %struct.client*, %struct.rax*, i32, i64, [256 x i8], %struct.dict*, i64, i32, i32, i64, i64, i64, i64, %struct.redisCommand*, %struct.redisCommand*, %struct.redisCommand*, %struct.redisCommand*, %struct.redisCommand*, %struct.redisCommand*, %struct.redisCommand*, %struct.redisCommand*, %struct.redisCommand*, %struct.redisCommand*, %struct.redisCommand*, %struct.redisCommand*, %struct.redisCommand*, i64, i64, i64, i64, double, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double, i64, i64, i64, i64, %struct.list*, i64, i64, i64, %struct.malloc_stats, i64, i64, i64, i64, [3 x %struct.anon], i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, [3 x %struct.clientBufferLimitsConfig], i32, i32, i8*, i32, i32, i64, i64, i64, i64, i32, i32, %struct.list*, i8*, i32, i32, i64, i64, i64, i64, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i64, i64, i32, %struct.saveparam*, i32, i8*, i32, i32, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, [2 x i32], %struct.anon.0, %struct.redisOpArray, i8*, i32, i8*, i32, [41 x i8], [41 x i8], i64, i64, i32, i32, i8*, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, %struct.client*, %struct.client*, i32, i32, i64, i64, i64, i32, i32, i8*, i64, i32, i32, i32, i64, i32, i32, i32, i8*, [41 x i8], i64, i32, %struct.dict*, %struct.list*, i32, %struct.list*, i32, i32, i64, i32, i32, i32, i32, i64, i32, [6 x i32], %struct.list*, %struct.list*, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i64, i64, i32, i64, %struct.dict*, %struct.list*, i32, i32, i64, i8*, %struct.clusterState*, i32, i32, i32, i32, i8*, i32, i32, i32, %struct.lua_State*, %struct.client*, %struct.client*, %struct.dict*, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, %struct.dict*, i8*, i8*, i32, i32, i32, i64, %struct.pthread_mutex_t_*, %struct.pthread_mutex_t_*, %struct.pthread_mutex_t_* }
%struct.redisDb = type { %struct.dict*, %struct.dict*, %struct.dict*, %struct.dict*, %struct.dict*, i32, i64, %struct.list* }
%struct.aeEventLoop = type { i32, i32, i64, i64, %struct.aeFileEvent*, %struct.aeFiredEvent*, %struct.aeTimeEvent*, i32, i8*, void (%struct.aeEventLoop*)*, void (%struct.aeEventLoop*)* }
%struct.aeFileEvent = type { i32, void (%struct.aeEventLoop*, i32, i8*, i32)*, void (%struct.aeEventLoop*, i32, i8*, i32)*, i8* }
%struct.aeFiredEvent = type { i32, i32 }
%struct.aeTimeEvent = type { i64, i64, i64, i32 (%struct.aeEventLoop*, i64, i8*)*, void (%struct.aeEventLoop*, i8*)*, i8*, %struct.aeTimeEvent*, %struct.aeTimeEvent* }
%struct.rax = type { %struct.raxNode*, i64, i64 }
%struct.raxNode = type { i32, [0 x i8] }
%struct.redisCommand = type { i8*, void (%struct.client*)*, i32, i8*, i32, i32* (%struct.redisCommand*, %struct.redisObject**, i32, i32*)*, i32, i32, i32, i64, i64 }
%struct.redisObject = type { i32, i32, i8* }
%struct.malloc_stats = type { i64, i64, i64, i64, i64 }
%struct.anon = type { i64, i64, [16 x i64], i32 }
%struct.clientBufferLimitsConfig = type { i64, i64, i64 }
%struct.saveparam = type { i64, i32 }
%struct.anon.0 = type { i32, i64, i64 }
%struct.redisOpArray = type { %struct.redisOp*, i32 }
%struct.redisOp = type { %struct.redisObject**, i32, i32, i32, %struct.redisCommand* }
%struct.list = type { %struct.listNode*, %struct.listNode*, i8* (i8*)*, void (i8*)*, i32 (i8*, i8*)*, i64 }
%struct.listNode = type { %struct.listNode*, %struct.listNode*, i8* }
%struct.clusterState = type opaque
%struct.lua_State = type opaque
%struct.client = type { i64, i32, %struct.redisDb*, %struct.redisObject*, i8*, i64, i8*, i64, i32, %struct.redisObject**, %struct.redisCommand*, %struct.redisCommand*, i32, i32, i64, %struct.list*, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i64, i64, i8*, i64, i64, i64, i64, i64, [41 x i8], i32, [46 x i8], i32, %struct.multiState, i32, %struct.blockingState, i64, %struct.list*, %struct.dict*, %struct.list*, i8*, %struct.listNode*, i32, [16384 x i8] }
%struct.multiState = type { %struct.multiCmd*, i32, i32, i32, i64 }
%struct.multiCmd = type { %struct.redisObject**, i32, %struct.redisCommand* }
%struct.blockingState = type { i64, %struct.dict*, %struct.redisObject*, i64, %struct.redisObject*, %struct.redisObject*, i64, i64, i32, i32, i64, i8* }
%struct.dict = type { %struct.dictType*, i8*, [2 x %struct.dictht], i64, i64 }
%struct.dictType = type { i64 (i8*)*, i8* (i8*, i8*)*, i8* (i8*, i8*)*, i32 (i8*, i8*, i8*)*, void (i8*, i8*)*, void (i8*, i8*)* }
%struct.dictht = type { %struct.dictEntry**, i64, i64, i64 }
%struct.dictEntry = type { i8*, %union.anon, %struct.dictEntry* }
%union.anon = type { i8* }
%struct.pthread_mutex_t_ = type opaque

@server = external dso_local global %struct.redisServer, align 8

; Function Attrs: noredzone nounwind
define dso_local void @openChildInfoPipe() local_unnamed_addr #0 !dbg !7 {
  %1 = tail call i32 @pipe(i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 170, i64 0)) #3, !dbg !10
  %2 = icmp eq i32 %1, -1, !dbg !12
  %3 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 170, i64 0), align 8, !dbg !13, !tbaa !15
  br i1 %2, label %4, label %12, !dbg !19

; <label>:4:                                      ; preds = %0
  %5 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 170, i64 1), align 4, !dbg !20
  %6 = and i32 %5, %3, !dbg !25
  %7 = icmp eq i32 %6, -1, !dbg !25
  br i1 %7, label %26, label %8, !dbg !25

; <label>:8:                                      ; preds = %4
  %9 = tail call i32 @close(i32 %3) #3, !dbg !26
  %10 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 170, i64 1), align 4, !dbg !28, !tbaa !15
  %11 = tail call i32 @close(i32 %10) #3, !dbg !29
  store i32 -1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 170, i64 0), align 8, !dbg !30, !tbaa !15
  store i32 -1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 170, i64 1), align 4, !dbg !31, !tbaa !15
  br label %26, !dbg !32

; <label>:12:                                     ; preds = %0
  %13 = tail call i32 @anetNonBlock(i8* null, i32 %3) #3, !dbg !33
  %14 = icmp eq i32 %13, 0, !dbg !34
  br i1 %14, label %24, label %15, !dbg !35

; <label>:15:                                     ; preds = %12
  %16 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 170, i64 0), align 8, !dbg !36, !tbaa !15
  %17 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 170, i64 1), align 4, !dbg !39
  %18 = and i32 %17, %16, !dbg !40
  %19 = icmp eq i32 %18, -1, !dbg !40
  br i1 %19, label %26, label %20, !dbg !40

; <label>:20:                                     ; preds = %15
  %21 = tail call i32 @close(i32 %16) #3, !dbg !41
  %22 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 170, i64 1), align 4, !dbg !42, !tbaa !15
  %23 = tail call i32 @close(i32 %22) #3, !dbg !43
  store i32 -1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 170, i64 0), align 8, !dbg !44, !tbaa !15
  store i32 -1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 170, i64 1), align 4, !dbg !45, !tbaa !15
  br label %26, !dbg !46

; <label>:24:                                     ; preds = %12
  %25 = tail call i8* @memset(i8* bitcast (%struct.anon.0* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 171) to i8*), i32 0, i64 24) #3, !dbg !47
  br label %26

; <label>:26:                                     ; preds = %20, %15, %8, %4, %24
  ret void, !dbg !49
}

; Function Attrs: noredzone
declare dso_local i32 @pipe(i32*) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local void @closeChildInfoPipe() local_unnamed_addr #0 !dbg !22 {
  %1 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 170, i64 0), align 8, !dbg !50, !tbaa !15
  %2 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 170, i64 1), align 4, !dbg !51
  %3 = and i32 %2, %1, !dbg !52
  %4 = icmp eq i32 %3, -1, !dbg !52
  br i1 %4, label %9, label %5, !dbg !52

; <label>:5:                                      ; preds = %0
  %6 = tail call i32 @close(i32 %1) #3, !dbg !53
  %7 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 170, i64 1), align 4, !dbg !54, !tbaa !15
  %8 = tail call i32 @close(i32 %7) #3, !dbg !55
  store i32 -1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 170, i64 0), align 8, !dbg !56, !tbaa !15
  store i32 -1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 170, i64 1), align 4, !dbg !57, !tbaa !15
  br label %9, !dbg !58

; <label>:9:                                      ; preds = %0, %5
  ret void, !dbg !59
}

; Function Attrs: noredzone
declare dso_local i32 @anetNonBlock(i8*, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @close(i32) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local void @sendChildInfo(i32) local_unnamed_addr #0 !dbg !60 {
  %2 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 170, i64 1), align 4, !dbg !73, !tbaa !15
  %3 = icmp eq i32 %2, -1, !dbg !75
  br i1 %3, label %6, label %4, !dbg !76

; <label>:4:                                      ; preds = %1
  store i64 -4504203834474342792, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 171, i32 2), align 8, !dbg !77, !tbaa !78
  store i32 %0, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 171, i32 0), align 8, !dbg !87, !tbaa !88
  %5 = tail call i64 @write(i32 %2, i8* bitcast (%struct.anon.0* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 171) to i8*), i64 24) #3, !dbg !90
  br label %6, !dbg !92

; <label>:6:                                      ; preds = %1, %4
  ret void, !dbg !92
}

; Function Attrs: noredzone
declare dso_local i64 @write(i32, i8*, i64) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local void @receiveChildInfo() local_unnamed_addr #0 !dbg !93 {
  %1 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 170, i64 0), align 8, !dbg !96, !tbaa !15
  %2 = icmp eq i32 %1, -1, !dbg !98
  br i1 %2, label %15, label %3, !dbg !99

; <label>:3:                                      ; preds = %0
  %4 = tail call i64 @read(i32 %1, i8* bitcast (%struct.anon.0* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 171) to i8*), i64 24) #3, !dbg !101
  %5 = icmp eq i64 %4, 24, !dbg !103
  %6 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 171, i32 2), align 8, !dbg !104
  %7 = icmp eq i64 %6, -4504203834474342792, !dbg !105
  %8 = and i1 %5, %7, !dbg !106
  br i1 %8, label %9, label %15, !dbg !106

; <label>:9:                                      ; preds = %3
  %10 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 171, i32 0), align 8, !dbg !107, !tbaa !88
  switch i32 %10, label %15 [
    i32 0, label %11
    i32 1, label %13
  ], !dbg !110

; <label>:11:                                     ; preds = %9
  %12 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 171, i32 1), align 8, !dbg !111, !tbaa !113
  store i64 %12, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 97), align 8, !dbg !114, !tbaa !115
  br label %15, !dbg !116

; <label>:13:                                     ; preds = %9
  %14 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 171, i32 1), align 8, !dbg !117, !tbaa !113
  store i64 %14, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 98), align 8, !dbg !120, !tbaa !121
  br label %15, !dbg !122

; <label>:15:                                     ; preds = %3, %13, %11, %9, %0
  ret void, !dbg !123
}

; Function Attrs: noredzone
declare dso_local i64 @read(i32, i8*, i64) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/childinfo.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "openChildInfoPipe", scope: !1, file: !1, line: 36, type: !8, isLocal: false, isDefinition: true, scopeLine: 36, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{null}
!10 = !DILocation(line: 37, column: 9, scope: !11)
!11 = distinct !DILexicalBlock(scope: !7, file: !1, line: 37, column: 9)
!12 = !DILocation(line: 37, column: 38, scope: !11)
!13 = !DILocation(line: 0, scope: !14)
!14 = distinct !DILexicalBlock(scope: !11, file: !1, line: 41, column: 16)
!15 = !{!16, !16, i64 0}
!16 = !{!"int", !17, i64 0}
!17 = !{!"omnipotent char", !18, i64 0}
!18 = !{!"Simple C/C++ TBAA"}
!19 = !DILocation(line: 37, column: 9, scope: !7)
!20 = !DILocation(line: 51, column: 9, scope: !21, inlinedAt: !23)
!21 = distinct !DILexicalBlock(scope: !22, file: !1, line: 50, column: 9)
!22 = distinct !DISubprogram(name: "closeChildInfoPipe", scope: !1, file: !1, line: 49, type: !8, isLocal: false, isDefinition: true, scopeLine: 49, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2)
!23 = distinct !DILocation(line: 40, column: 9, scope: !24)
!24 = distinct !DILexicalBlock(scope: !11, file: !1, line: 37, column: 45)
!25 = !DILocation(line: 50, column: 41, scope: !21, inlinedAt: !23)
!26 = !DILocation(line: 53, column: 9, scope: !27, inlinedAt: !23)
!27 = distinct !DILexicalBlock(scope: !21, file: !1, line: 52, column: 5)
!28 = !DILocation(line: 54, column: 15, scope: !27, inlinedAt: !23)
!29 = !DILocation(line: 54, column: 9, scope: !27, inlinedAt: !23)
!30 = !DILocation(line: 55, column: 35, scope: !27, inlinedAt: !23)
!31 = !DILocation(line: 56, column: 35, scope: !27, inlinedAt: !23)
!32 = !DILocation(line: 57, column: 5, scope: !27, inlinedAt: !23)
!33 = !DILocation(line: 41, column: 16, scope: !14)
!34 = !DILocation(line: 41, column: 61, scope: !14)
!35 = !DILocation(line: 41, column: 16, scope: !11)
!36 = !DILocation(line: 50, column: 9, scope: !21, inlinedAt: !37)
!37 = distinct !DILocation(line: 42, column: 9, scope: !38)
!38 = distinct !DILexicalBlock(scope: !14, file: !1, line: 41, column: 73)
!39 = !DILocation(line: 51, column: 9, scope: !21, inlinedAt: !37)
!40 = !DILocation(line: 50, column: 41, scope: !21, inlinedAt: !37)
!41 = !DILocation(line: 53, column: 9, scope: !27, inlinedAt: !37)
!42 = !DILocation(line: 54, column: 15, scope: !27, inlinedAt: !37)
!43 = !DILocation(line: 54, column: 9, scope: !27, inlinedAt: !37)
!44 = !DILocation(line: 55, column: 35, scope: !27, inlinedAt: !37)
!45 = !DILocation(line: 56, column: 35, scope: !27, inlinedAt: !37)
!46 = !DILocation(line: 57, column: 5, scope: !27, inlinedAt: !37)
!47 = !DILocation(line: 44, column: 9, scope: !48)
!48 = distinct !DILexicalBlock(scope: !14, file: !1, line: 43, column: 12)
!49 = !DILocation(line: 46, column: 1, scope: !7)
!50 = !DILocation(line: 50, column: 9, scope: !21)
!51 = !DILocation(line: 51, column: 9, scope: !21)
!52 = !DILocation(line: 50, column: 41, scope: !21)
!53 = !DILocation(line: 53, column: 9, scope: !27)
!54 = !DILocation(line: 54, column: 15, scope: !27)
!55 = !DILocation(line: 54, column: 9, scope: !27)
!56 = !DILocation(line: 55, column: 35, scope: !27)
!57 = !DILocation(line: 56, column: 35, scope: !27)
!58 = !DILocation(line: 57, column: 5, scope: !27)
!59 = !DILocation(line: 58, column: 1, scope: !22)
!60 = distinct !DISubprogram(name: "sendChildInfo", scope: !1, file: !1, line: 62, type: !61, isLocal: false, isDefinition: true, scopeLine: 62, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !64)
!61 = !DISubroutineType(types: !62)
!62 = !{null, !63}
!63 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!64 = !{!65, !66}
!65 = !DILocalVariable(name: "ptype", arg: 1, scope: !60, file: !1, line: 62, type: !63)
!66 = !DILocalVariable(name: "wlen", scope: !60, file: !1, line: 66, type: !67)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !68, line: 200, baseType: !69)
!68 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/types.h", directory: "/root/.unikraft/apps/redis/build")
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !70, line: 145, baseType: !71)
!70 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!71 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!72 = !DILocation(line: 62, column: 24, scope: !60)
!73 = !DILocation(line: 63, column: 9, scope: !74)
!74 = distinct !DILexicalBlock(scope: !60, file: !1, line: 63, column: 9)
!75 = !DILocation(line: 63, column: 35, scope: !74)
!76 = !DILocation(line: 63, column: 9, scope: !60)
!77 = !DILocation(line: 64, column: 34, scope: !60)
!78 = !{!79, !82, i64 2216}
!79 = !{!"redisServer", !16, i64 0, !80, i64 8, !80, i64 16, !80, i64 24, !16, i64 32, !16, i64 36, !16, i64 40, !80, i64 48, !80, i64 56, !80, i64 64, !80, i64 72, !16, i64 80, !16, i64 84, !16, i64 88, !16, i64 92, !80, i64 96, !80, i64 104, !16, i64 112, !16, i64 116, !17, i64 120, !16, i64 164, !81, i64 168, !16, i64 176, !80, i64 184, !80, i64 192, !80, i64 200, !17, i64 208, !16, i64 216, !16, i64 220, !17, i64 224, !16, i64 352, !80, i64 360, !16, i64 368, !17, i64 372, !16, i64 436, !16, i64 440, !17, i64 444, !16, i64 508, !80, i64 512, !80, i64 520, !80, i64 528, !80, i64 536, !80, i64 544, !80, i64 552, !80, i64 560, !16, i64 568, !82, i64 576, !17, i64 584, !80, i64 840, !81, i64 848, !16, i64 856, !16, i64 860, !81, i64 864, !81, i64 872, !81, i64 880, !81, i64 888, !80, i64 896, !80, i64 904, !80, i64 912, !80, i64 920, !80, i64 928, !80, i64 936, !80, i64 944, !80, i64 952, !80, i64 960, !80, i64 968, !80, i64 976, !80, i64 984, !80, i64 992, !81, i64 1000, !82, i64 1008, !82, i64 1016, !82, i64 1024, !83, i64 1032, !82, i64 1040, !82, i64 1048, !82, i64 1056, !82, i64 1064, !82, i64 1072, !82, i64 1080, !82, i64 1088, !82, i64 1096, !82, i64 1104, !81, i64 1112, !82, i64 1120, !83, i64 1128, !82, i64 1136, !82, i64 1144, !82, i64 1152, !82, i64 1160, !80, i64 1168, !82, i64 1176, !82, i64 1184, !81, i64 1192, !84, i64 1200, !82, i64 1240, !82, i64 1248, !81, i64 1256, !81, i64 1264, !17, i64 1272, !16, i64 1728, !16, i64 1732, !16, i64 1736, !16, i64 1740, !16, i64 1744, !81, i64 1752, !16, i64 1760, !16, i64 1764, !16, i64 1768, !16, i64 1772, !81, i64 1776, !81, i64 1784, !16, i64 1792, !16, i64 1796, !16, i64 1800, !16, i64 1804, !17, i64 1808, !16, i64 1880, !16, i64 1884, !80, i64 1888, !16, i64 1896, !16, i64 1900, !81, i64 1904, !81, i64 1912, !81, i64 1920, !81, i64 1928, !16, i64 1936, !16, i64 1940, !80, i64 1944, !80, i64 1952, !16, i64 1960, !16, i64 1964, !81, i64 1968, !81, i64 1976, !81, i64 1984, !81, i64 1992, !16, i64 2000, !81, i64 2008, !16, i64 2016, !16, i64 2020, !16, i64 2024, !16, i64 2028, !16, i64 2032, !16, i64 2036, !16, i64 2040, !16, i64 2044, !16, i64 2048, !16, i64 2052, !16, i64 2056, !16, i64 2060, !16, i64 2064, !80, i64 2072, !82, i64 2080, !82, i64 2088, !16, i64 2096, !80, i64 2104, !16, i64 2112, !80, i64 2120, !16, i64 2128, !16, i64 2132, !81, i64 2136, !81, i64 2144, !81, i64 2152, !81, i64 2160, !16, i64 2168, !16, i64 2172, !16, i64 2176, !16, i64 2180, !16, i64 2184, !16, i64 2188, !17, i64 2192, !85, i64 2200, !86, i64 2224, !80, i64 2240, !16, i64 2248, !80, i64 2256, !16, i64 2264, !17, i64 2268, !17, i64 2309, !82, i64 2352, !82, i64 2360, !16, i64 2368, !16, i64 2372, !80, i64 2376, !82, i64 2384, !82, i64 2392, !82, i64 2400, !82, i64 2408, !81, i64 2416, !81, i64 2424, !16, i64 2432, !16, i64 2436, !16, i64 2440, !16, i64 2444, !16, i64 2448, !80, i64 2456, !80, i64 2464, !16, i64 2472, !16, i64 2476, !80, i64 2480, !80, i64 2488, !16, i64 2496, !16, i64 2500, !81, i64 2504, !81, i64 2512, !81, i64 2520, !16, i64 2528, !16, i64 2532, !80, i64 2536, !81, i64 2544, !16, i64 2552, !16, i64 2556, !16, i64 2560, !81, i64 2568, !16, i64 2576, !16, i64 2580, !16, i64 2584, !80, i64 2592, !17, i64 2600, !82, i64 2648, !16, i64 2656, !80, i64 2664, !80, i64 2672, !16, i64 2680, !80, i64 2688, !16, i64 2696, !16, i64 2700, !82, i64 2704, !16, i64 2712, !16, i64 2716, !16, i64 2720, !16, i64 2724, !82, i64 2728, !16, i64 2736, !17, i64 2740, !80, i64 2768, !80, i64 2776, !16, i64 2784, !16, i64 2788, !16, i64 2792, !16, i64 2796, !81, i64 2800, !81, i64 2808, !81, i64 2816, !81, i64 2824, !81, i64 2832, !81, i64 2840, !81, i64 2848, !81, i64 2856, !16, i64 2864, !16, i64 2868, !81, i64 2872, !81, i64 2880, !16, i64 2888, !82, i64 2896, !80, i64 2904, !80, i64 2912, !16, i64 2920, !16, i64 2924, !82, i64 2928, !80, i64 2936, !80, i64 2944, !16, i64 2952, !16, i64 2956, !16, i64 2960, !16, i64 2964, !80, i64 2968, !16, i64 2976, !16, i64 2980, !16, i64 2984, !80, i64 2992, !80, i64 3000, !80, i64 3008, !80, i64 3016, !82, i64 3024, !82, i64 3032, !82, i64 3040, !16, i64 3048, !16, i64 3052, !16, i64 3056, !16, i64 3060, !16, i64 3064, !16, i64 3068, !16, i64 3072, !16, i64 3076, !16, i64 3080, !16, i64 3084, !16, i64 3088, !82, i64 3096, !80, i64 3104, !80, i64 3112, !80, i64 3120, !16, i64 3128, !16, i64 3132, !16, i64 3136, !81, i64 3144, !80, i64 3152, !80, i64 3160, !80, i64 3168}
!80 = !{!"any pointer", !17, i64 0}
!81 = !{!"long", !17, i64 0}
!82 = !{!"long long", !17, i64 0}
!83 = !{!"double", !17, i64 0}
!84 = !{!"malloc_stats", !81, i64 0, !81, i64 8, !81, i64 16, !81, i64 24, !81, i64 32}
!85 = !{!"", !16, i64 0, !81, i64 8, !82, i64 16}
!86 = !{!"redisOpArray", !80, i64 0, !16, i64 8}
!87 = !DILocation(line: 65, column: 41, scope: !60)
!88 = !{!79, !16, i64 2200}
!89 = !DILocation(line: 66, column: 13, scope: !60)
!90 = !DILocation(line: 67, column: 9, scope: !91)
!91 = distinct !DILexicalBlock(scope: !60, file: !1, line: 67, column: 9)
!92 = !DILocation(line: 70, column: 1, scope: !60)
!93 = distinct !DISubprogram(name: "receiveChildInfo", scope: !1, file: !1, line: 73, type: !8, isLocal: false, isDefinition: true, scopeLine: 73, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !94)
!94 = !{!95}
!95 = !DILocalVariable(name: "wlen", scope: !93, file: !1, line: 75, type: !67)
!96 = !DILocation(line: 74, column: 9, scope: !97)
!97 = distinct !DILexicalBlock(scope: !93, file: !1, line: 74, column: 9)
!98 = !DILocation(line: 74, column: 35, scope: !97)
!99 = !DILocation(line: 74, column: 9, scope: !93)
!100 = !DILocation(line: 75, column: 13, scope: !93)
!101 = !DILocation(line: 76, column: 9, scope: !102)
!102 = distinct !DILexicalBlock(scope: !93, file: !1, line: 76, column: 9)
!103 = !DILocation(line: 76, column: 70, scope: !102)
!104 = !DILocation(line: 77, column: 32, scope: !102)
!105 = !DILocation(line: 77, column: 38, scope: !102)
!106 = !DILocation(line: 76, column: 78, scope: !102)
!107 = !DILocation(line: 79, column: 36, scope: !108)
!108 = distinct !DILexicalBlock(scope: !109, file: !1, line: 79, column: 13)
!109 = distinct !DILexicalBlock(scope: !102, file: !1, line: 78, column: 5)
!110 = !DILocation(line: 79, column: 13, scope: !109)
!111 = !DILocation(line: 80, column: 64, scope: !112)
!112 = distinct !DILexicalBlock(scope: !108, file: !1, line: 79, column: 73)
!113 = !{!79, !81, i64 2208}
!114 = !DILocation(line: 80, column: 39, scope: !112)
!115 = !{!79, !81, i64 1256}
!116 = !DILocation(line: 81, column: 9, scope: !112)
!117 = !DILocation(line: 82, column: 64, scope: !118)
!118 = distinct !DILexicalBlock(scope: !119, file: !1, line: 81, column: 80)
!119 = distinct !DILexicalBlock(scope: !108, file: !1, line: 81, column: 20)
!120 = !DILocation(line: 82, column: 39, scope: !118)
!121 = !{!79, !81, i64 1264}
!122 = !DILocation(line: 83, column: 9, scope: !118)
!123 = !DILocation(line: 85, column: 1, scope: !93)
