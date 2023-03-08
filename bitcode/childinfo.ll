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
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local void @openChildInfoPipe() local_unnamed_addr #0 !dbg !7 {
  %1 = tail call i32 @pipe(i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 170, i64 0)) #3, !dbg !10
  %2 = icmp eq i32 %1, -1, !dbg !12
  %3 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 170, i64 0), align 8, !dbg !13, !tbaa !15
  br i1 %2, label %4, label %13, !dbg !19

; <label>:4:                                      ; preds = %0
  %5 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 170, i64 1), align 4, !dbg !20
  %6 = and i32 %5, %3, !dbg !25
  %7 = icmp eq i32 %6, -1, !dbg !25
  br i1 %7, label %12, label %8, !dbg !25

; <label>:8:                                      ; preds = %4
  %9 = tail call i32 @close(i32 %3) #3, !dbg !26
  %10 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 170, i64 1), align 4, !dbg !28, !tbaa !15
  %11 = tail call i32 @close(i32 %10) #3, !dbg !29
  store i32 -1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 170, i64 0), align 8, !dbg !30, !tbaa !15
  store i32 -1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 170, i64 1), align 4, !dbg !31, !tbaa !15
  br label %12, !dbg !32

; <label>:12:                                     ; preds = %4, %8
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !33
  br label %28, !dbg !34

; <label>:13:                                     ; preds = %0
  %14 = tail call i32 @anetNonBlock(i8* null, i32 %3) #3, !dbg !35
  %15 = icmp eq i32 %14, 0, !dbg !36
  br i1 %15, label %26, label %16, !dbg !37

; <label>:16:                                     ; preds = %13
  %17 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 170, i64 0), align 8, !dbg !38, !tbaa !15
  %18 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 170, i64 1), align 4, !dbg !41
  %19 = and i32 %18, %17, !dbg !42
  %20 = icmp eq i32 %19, -1, !dbg !42
  br i1 %20, label %25, label %21, !dbg !42

; <label>:21:                                     ; preds = %16
  %22 = tail call i32 @close(i32 %17) #3, !dbg !43
  %23 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 170, i64 1), align 4, !dbg !44, !tbaa !15
  %24 = tail call i32 @close(i32 %23) #3, !dbg !45
  store i32 -1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 170, i64 0), align 8, !dbg !46, !tbaa !15
  store i32 -1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 170, i64 1), align 4, !dbg !47, !tbaa !15
  br label %25, !dbg !48

; <label>:25:                                     ; preds = %16, %21
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !49
  br label %28, !dbg !50

; <label>:26:                                     ; preds = %13
  %27 = tail call i8* @memset(i8* bitcast (%struct.anon.0* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 171) to i8*), i32 0, i64 24) #3, !dbg !51
  br label %28

; <label>:28:                                     ; preds = %25, %26, %12
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !53
  ret void, !dbg !53
}

; Function Attrs: noredzone
declare dso_local i32 @pipe(i32*) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local void @closeChildInfoPipe() local_unnamed_addr #0 !dbg !22 {
  %1 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 170, i64 0), align 8, !dbg !54, !tbaa !15
  %2 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 170, i64 1), align 4, !dbg !55
  %3 = and i32 %2, %1, !dbg !56
  %4 = icmp eq i32 %3, -1, !dbg !56
  br i1 %4, label %9, label %5, !dbg !56

; <label>:5:                                      ; preds = %0
  %6 = tail call i32 @close(i32 %1) #3, !dbg !57
  %7 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 170, i64 1), align 4, !dbg !58, !tbaa !15
  %8 = tail call i32 @close(i32 %7) #3, !dbg !59
  store i32 -1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 170, i64 0), align 8, !dbg !60, !tbaa !15
  store i32 -1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 170, i64 1), align 4, !dbg !61, !tbaa !15
  br label %9, !dbg !62

; <label>:9:                                      ; preds = %0, %5
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !63
  ret void, !dbg !63
}

; Function Attrs: noredzone
declare dso_local i32 @anetNonBlock(i8*, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @close(i32) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local void @sendChildInfo(i32) local_unnamed_addr #0 !dbg !64 {
  %2 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 170, i64 1), align 4, !dbg !77, !tbaa !15
  %3 = icmp eq i32 %2, -1, !dbg !79
  br i1 %3, label %6, label %4, !dbg !80

; <label>:4:                                      ; preds = %1
  store i64 -4504203834474342792, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 171, i32 2), align 8, !dbg !81, !tbaa !82
  store i32 %0, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 171, i32 0), align 8, !dbg !91, !tbaa !92
  %5 = tail call i64 @write(i32 %2, i8* bitcast (%struct.anon.0* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 171) to i8*), i64 24) #3, !dbg !94
  br label %6, !dbg !96

; <label>:6:                                      ; preds = %1, %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !96
  ret void, !dbg !96
}

; Function Attrs: noredzone
declare dso_local i64 @write(i32, i8*, i64) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local void @receiveChildInfo() local_unnamed_addr #0 !dbg !97 {
  %1 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 170, i64 0), align 8, !dbg !100, !tbaa !15
  %2 = icmp eq i32 %1, -1, !dbg !102
  br i1 %2, label %15, label %3, !dbg !103

; <label>:3:                                      ; preds = %0
  %4 = tail call i64 @read(i32 %1, i8* bitcast (%struct.anon.0* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 171) to i8*), i64 24) #3, !dbg !105
  %5 = icmp eq i64 %4, 24, !dbg !107
  %6 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 171, i32 2), align 8, !dbg !108
  %7 = icmp eq i64 %6, -4504203834474342792, !dbg !109
  %8 = and i1 %5, %7, !dbg !110
  br i1 %8, label %9, label %15, !dbg !110

; <label>:9:                                      ; preds = %3
  %10 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 171, i32 0), align 8, !dbg !111, !tbaa !92
  switch i32 %10, label %15 [
    i32 0, label %11
    i32 1, label %13
  ], !dbg !114

; <label>:11:                                     ; preds = %9
  %12 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 171, i32 1), align 8, !dbg !115, !tbaa !117
  store i64 %12, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 97), align 8, !dbg !118, !tbaa !119
  br label %15, !dbg !120

; <label>:13:                                     ; preds = %9
  %14 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 171, i32 1), align 8, !dbg !121, !tbaa !117
  store i64 %14, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 98), align 8, !dbg !124, !tbaa !125
  br label %15, !dbg !126

; <label>:15:                                     ; preds = %3, %13, %11, %9, %0
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !127
  ret void, !dbg !127
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
!33 = !DILocation(line: 58, column: 1, scope: !22, inlinedAt: !23)
!34 = !DILocation(line: 41, column: 5, scope: !24)
!35 = !DILocation(line: 41, column: 16, scope: !14)
!36 = !DILocation(line: 41, column: 61, scope: !14)
!37 = !DILocation(line: 41, column: 16, scope: !11)
!38 = !DILocation(line: 50, column: 9, scope: !21, inlinedAt: !39)
!39 = distinct !DILocation(line: 42, column: 9, scope: !40)
!40 = distinct !DILexicalBlock(scope: !14, file: !1, line: 41, column: 73)
!41 = !DILocation(line: 51, column: 9, scope: !21, inlinedAt: !39)
!42 = !DILocation(line: 50, column: 41, scope: !21, inlinedAt: !39)
!43 = !DILocation(line: 53, column: 9, scope: !27, inlinedAt: !39)
!44 = !DILocation(line: 54, column: 15, scope: !27, inlinedAt: !39)
!45 = !DILocation(line: 54, column: 9, scope: !27, inlinedAt: !39)
!46 = !DILocation(line: 55, column: 35, scope: !27, inlinedAt: !39)
!47 = !DILocation(line: 56, column: 35, scope: !27, inlinedAt: !39)
!48 = !DILocation(line: 57, column: 5, scope: !27, inlinedAt: !39)
!49 = !DILocation(line: 58, column: 1, scope: !22, inlinedAt: !39)
!50 = !DILocation(line: 43, column: 5, scope: !40)
!51 = !DILocation(line: 44, column: 9, scope: !52)
!52 = distinct !DILexicalBlock(scope: !14, file: !1, line: 43, column: 12)
!53 = !DILocation(line: 46, column: 1, scope: !7)
!54 = !DILocation(line: 50, column: 9, scope: !21)
!55 = !DILocation(line: 51, column: 9, scope: !21)
!56 = !DILocation(line: 50, column: 41, scope: !21)
!57 = !DILocation(line: 53, column: 9, scope: !27)
!58 = !DILocation(line: 54, column: 15, scope: !27)
!59 = !DILocation(line: 54, column: 9, scope: !27)
!60 = !DILocation(line: 55, column: 35, scope: !27)
!61 = !DILocation(line: 56, column: 35, scope: !27)
!62 = !DILocation(line: 57, column: 5, scope: !27)
!63 = !DILocation(line: 58, column: 1, scope: !22)
!64 = distinct !DISubprogram(name: "sendChildInfo", scope: !1, file: !1, line: 62, type: !65, isLocal: false, isDefinition: true, scopeLine: 62, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !68)
!65 = !DISubroutineType(types: !66)
!66 = !{null, !67}
!67 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!68 = !{!69, !70}
!69 = !DILocalVariable(name: "ptype", arg: 1, scope: !64, file: !1, line: 62, type: !67)
!70 = !DILocalVariable(name: "wlen", scope: !64, file: !1, line: 66, type: !71)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !72, line: 200, baseType: !73)
!72 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/types.h", directory: "/root/.unikraft/apps/redis/build")
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !74, line: 145, baseType: !75)
!74 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!75 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!76 = !DILocation(line: 62, column: 24, scope: !64)
!77 = !DILocation(line: 63, column: 9, scope: !78)
!78 = distinct !DILexicalBlock(scope: !64, file: !1, line: 63, column: 9)
!79 = !DILocation(line: 63, column: 35, scope: !78)
!80 = !DILocation(line: 63, column: 9, scope: !64)
!81 = !DILocation(line: 64, column: 34, scope: !64)
!82 = !{!83, !86, i64 2216}
!83 = !{!"redisServer", !16, i64 0, !84, i64 8, !84, i64 16, !84, i64 24, !16, i64 32, !16, i64 36, !16, i64 40, !84, i64 48, !84, i64 56, !84, i64 64, !84, i64 72, !16, i64 80, !16, i64 84, !16, i64 88, !16, i64 92, !84, i64 96, !84, i64 104, !16, i64 112, !16, i64 116, !17, i64 120, !16, i64 164, !85, i64 168, !16, i64 176, !84, i64 184, !84, i64 192, !84, i64 200, !17, i64 208, !16, i64 216, !16, i64 220, !17, i64 224, !16, i64 352, !84, i64 360, !16, i64 368, !17, i64 372, !16, i64 436, !16, i64 440, !17, i64 444, !16, i64 508, !84, i64 512, !84, i64 520, !84, i64 528, !84, i64 536, !84, i64 544, !84, i64 552, !84, i64 560, !16, i64 568, !86, i64 576, !17, i64 584, !84, i64 840, !85, i64 848, !16, i64 856, !16, i64 860, !85, i64 864, !85, i64 872, !85, i64 880, !85, i64 888, !84, i64 896, !84, i64 904, !84, i64 912, !84, i64 920, !84, i64 928, !84, i64 936, !84, i64 944, !84, i64 952, !84, i64 960, !84, i64 968, !84, i64 976, !84, i64 984, !84, i64 992, !85, i64 1000, !86, i64 1008, !86, i64 1016, !86, i64 1024, !87, i64 1032, !86, i64 1040, !86, i64 1048, !86, i64 1056, !86, i64 1064, !86, i64 1072, !86, i64 1080, !86, i64 1088, !86, i64 1096, !86, i64 1104, !85, i64 1112, !86, i64 1120, !87, i64 1128, !86, i64 1136, !86, i64 1144, !86, i64 1152, !86, i64 1160, !84, i64 1168, !86, i64 1176, !86, i64 1184, !85, i64 1192, !88, i64 1200, !86, i64 1240, !86, i64 1248, !85, i64 1256, !85, i64 1264, !17, i64 1272, !16, i64 1728, !16, i64 1732, !16, i64 1736, !16, i64 1740, !16, i64 1744, !85, i64 1752, !16, i64 1760, !16, i64 1764, !16, i64 1768, !16, i64 1772, !85, i64 1776, !85, i64 1784, !16, i64 1792, !16, i64 1796, !16, i64 1800, !16, i64 1804, !17, i64 1808, !16, i64 1880, !16, i64 1884, !84, i64 1888, !16, i64 1896, !16, i64 1900, !85, i64 1904, !85, i64 1912, !85, i64 1920, !85, i64 1928, !16, i64 1936, !16, i64 1940, !84, i64 1944, !84, i64 1952, !16, i64 1960, !16, i64 1964, !85, i64 1968, !85, i64 1976, !85, i64 1984, !85, i64 1992, !16, i64 2000, !85, i64 2008, !16, i64 2016, !16, i64 2020, !16, i64 2024, !16, i64 2028, !16, i64 2032, !16, i64 2036, !16, i64 2040, !16, i64 2044, !16, i64 2048, !16, i64 2052, !16, i64 2056, !16, i64 2060, !16, i64 2064, !84, i64 2072, !86, i64 2080, !86, i64 2088, !16, i64 2096, !84, i64 2104, !16, i64 2112, !84, i64 2120, !16, i64 2128, !16, i64 2132, !85, i64 2136, !85, i64 2144, !85, i64 2152, !85, i64 2160, !16, i64 2168, !16, i64 2172, !16, i64 2176, !16, i64 2180, !16, i64 2184, !16, i64 2188, !17, i64 2192, !89, i64 2200, !90, i64 2224, !84, i64 2240, !16, i64 2248, !84, i64 2256, !16, i64 2264, !17, i64 2268, !17, i64 2309, !86, i64 2352, !86, i64 2360, !16, i64 2368, !16, i64 2372, !84, i64 2376, !86, i64 2384, !86, i64 2392, !86, i64 2400, !86, i64 2408, !85, i64 2416, !85, i64 2424, !16, i64 2432, !16, i64 2436, !16, i64 2440, !16, i64 2444, !16, i64 2448, !84, i64 2456, !84, i64 2464, !16, i64 2472, !16, i64 2476, !84, i64 2480, !84, i64 2488, !16, i64 2496, !16, i64 2500, !85, i64 2504, !85, i64 2512, !85, i64 2520, !16, i64 2528, !16, i64 2532, !84, i64 2536, !85, i64 2544, !16, i64 2552, !16, i64 2556, !16, i64 2560, !85, i64 2568, !16, i64 2576, !16, i64 2580, !16, i64 2584, !84, i64 2592, !17, i64 2600, !86, i64 2648, !16, i64 2656, !84, i64 2664, !84, i64 2672, !16, i64 2680, !84, i64 2688, !16, i64 2696, !16, i64 2700, !86, i64 2704, !16, i64 2712, !16, i64 2716, !16, i64 2720, !16, i64 2724, !86, i64 2728, !16, i64 2736, !17, i64 2740, !84, i64 2768, !84, i64 2776, !16, i64 2784, !16, i64 2788, !16, i64 2792, !16, i64 2796, !85, i64 2800, !85, i64 2808, !85, i64 2816, !85, i64 2824, !85, i64 2832, !85, i64 2840, !85, i64 2848, !85, i64 2856, !16, i64 2864, !16, i64 2868, !85, i64 2872, !85, i64 2880, !16, i64 2888, !86, i64 2896, !84, i64 2904, !84, i64 2912, !16, i64 2920, !16, i64 2924, !86, i64 2928, !84, i64 2936, !84, i64 2944, !16, i64 2952, !16, i64 2956, !16, i64 2960, !16, i64 2964, !84, i64 2968, !16, i64 2976, !16, i64 2980, !16, i64 2984, !84, i64 2992, !84, i64 3000, !84, i64 3008, !84, i64 3016, !86, i64 3024, !86, i64 3032, !86, i64 3040, !16, i64 3048, !16, i64 3052, !16, i64 3056, !16, i64 3060, !16, i64 3064, !16, i64 3068, !16, i64 3072, !16, i64 3076, !16, i64 3080, !16, i64 3084, !16, i64 3088, !86, i64 3096, !84, i64 3104, !84, i64 3112, !84, i64 3120, !16, i64 3128, !16, i64 3132, !16, i64 3136, !85, i64 3144, !84, i64 3152, !84, i64 3160, !84, i64 3168}
!84 = !{!"any pointer", !17, i64 0}
!85 = !{!"long", !17, i64 0}
!86 = !{!"long long", !17, i64 0}
!87 = !{!"double", !17, i64 0}
!88 = !{!"malloc_stats", !85, i64 0, !85, i64 8, !85, i64 16, !85, i64 24, !85, i64 32}
!89 = !{!"", !16, i64 0, !85, i64 8, !86, i64 16}
!90 = !{!"redisOpArray", !84, i64 0, !16, i64 8}
!91 = !DILocation(line: 65, column: 41, scope: !64)
!92 = !{!83, !16, i64 2200}
!93 = !DILocation(line: 66, column: 13, scope: !64)
!94 = !DILocation(line: 67, column: 9, scope: !95)
!95 = distinct !DILexicalBlock(scope: !64, file: !1, line: 67, column: 9)
!96 = !DILocation(line: 70, column: 1, scope: !64)
!97 = distinct !DISubprogram(name: "receiveChildInfo", scope: !1, file: !1, line: 73, type: !8, isLocal: false, isDefinition: true, scopeLine: 73, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !98)
!98 = !{!99}
!99 = !DILocalVariable(name: "wlen", scope: !97, file: !1, line: 75, type: !71)
!100 = !DILocation(line: 74, column: 9, scope: !101)
!101 = distinct !DILexicalBlock(scope: !97, file: !1, line: 74, column: 9)
!102 = !DILocation(line: 74, column: 35, scope: !101)
!103 = !DILocation(line: 74, column: 9, scope: !97)
!104 = !DILocation(line: 75, column: 13, scope: !97)
!105 = !DILocation(line: 76, column: 9, scope: !106)
!106 = distinct !DILexicalBlock(scope: !97, file: !1, line: 76, column: 9)
!107 = !DILocation(line: 76, column: 70, scope: !106)
!108 = !DILocation(line: 77, column: 32, scope: !106)
!109 = !DILocation(line: 77, column: 38, scope: !106)
!110 = !DILocation(line: 76, column: 78, scope: !106)
!111 = !DILocation(line: 79, column: 36, scope: !112)
!112 = distinct !DILexicalBlock(scope: !113, file: !1, line: 79, column: 13)
!113 = distinct !DILexicalBlock(scope: !106, file: !1, line: 78, column: 5)
!114 = !DILocation(line: 79, column: 13, scope: !113)
!115 = !DILocation(line: 80, column: 64, scope: !116)
!116 = distinct !DILexicalBlock(scope: !112, file: !1, line: 79, column: 73)
!117 = !{!83, !85, i64 2208}
!118 = !DILocation(line: 80, column: 39, scope: !116)
!119 = !{!83, !85, i64 1256}
!120 = !DILocation(line: 81, column: 9, scope: !116)
!121 = !DILocation(line: 82, column: 64, scope: !122)
!122 = distinct !DILexicalBlock(scope: !123, file: !1, line: 81, column: 80)
!123 = distinct !DILexicalBlock(scope: !112, file: !1, line: 81, column: 20)
!124 = !DILocation(line: 82, column: 39, scope: !122)
!125 = !{!83, !85, i64 1264}
!126 = !DILocation(line: 83, column: 9, scope: !122)
!127 = !DILocation(line: 85, column: 1, scope: !97)
