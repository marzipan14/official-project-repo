; ModuleID = '/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/adlist.c'
source_filename = "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/adlist.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.list = type { %struct.listNode*, %struct.listNode*, i8* (i8*)*, void (i8*)*, i32 (i8*, i8*)*, i64 }
%struct.listNode = type { %struct.listNode*, %struct.listNode*, i8* }
%struct.listIter = type { %struct.listNode*, i32 }

; Function Attrs: noredzone nounwind
define dso_local %struct.list* @listCreate() local_unnamed_addr #0 !dbg !9 {
  %1 = tail call i8* @zmalloc(i64 48) #4, !dbg !45
  %2 = icmp eq i8* %1, null, !dbg !47
  br i1 %2, label %14, label %3, !dbg !48

; <label>:3:                                      ; preds = %0
  %4 = bitcast i8* %1 to %struct.list*, !dbg !45
  %5 = bitcast i8* %1 to <2 x %struct.listNode*>*, !dbg !50
  store <2 x %struct.listNode*> zeroinitializer, <2 x %struct.listNode*>* %5, align 8, !dbg !50, !tbaa !51
  %6 = getelementptr inbounds i8, i8* %1, i64 40, !dbg !55
  %7 = bitcast i8* %6 to i64*, !dbg !55
  store i64 0, i64* %7, align 8, !dbg !56, !tbaa !57
  %8 = getelementptr inbounds i8, i8* %1, i64 16, !dbg !60
  %9 = bitcast i8* %8 to i8* (i8*)**, !dbg !60
  store i8* (i8*)* null, i8* (i8*)** %9, align 8, !dbg !61, !tbaa !62
  %10 = getelementptr inbounds i8, i8* %1, i64 24, !dbg !63
  %11 = bitcast i8* %10 to void (i8*)**, !dbg !63
  store void (i8*)* null, void (i8*)** %11, align 8, !dbg !64, !tbaa !65
  %12 = getelementptr inbounds i8, i8* %1, i64 32, !dbg !66
  %13 = bitcast i8* %12 to i32 (i8*, i8*)**, !dbg !66
  store i32 (i8*, i8*)* null, i32 (i8*, i8*)** %13, align 8, !dbg !67, !tbaa !68
  br label %14, !dbg !69

; <label>:14:                                     ; preds = %0, %3
  %15 = phi %struct.list* [ %4, %3 ], [ null, %0 ], !dbg !70
  ret %struct.list* %15, !dbg !71
}

; Function Attrs: noredzone
declare dso_local i8* @zmalloc(i64) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local void @listEmpty(%struct.list* nocapture) local_unnamed_addr #0 !dbg !72 {
  %2 = getelementptr inbounds %struct.list, %struct.list* %0, i64 0, i32 5, !dbg !81
  %3 = load i64, i64* %2, align 8, !dbg !81, !tbaa !57
  %4 = icmp eq i64 %3, 0, !dbg !83
  br i1 %4, label %23, label %5, !dbg !83

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.list, %struct.list* %0, i64 0, i32 0, !dbg !84
  %7 = load %struct.listNode*, %struct.listNode** %6, align 8, !dbg !84, !tbaa !85
  %8 = getelementptr inbounds %struct.list, %struct.list* %0, i64 0, i32 3
  br label %9, !dbg !83

; <label>:9:                                      ; preds = %5, %21
  %10 = phi i64 [ %3, %5 ], [ %13, %21 ]
  %11 = phi %struct.listNode* [ %7, %5 ], [ %15, %21 ]
  %12 = bitcast %struct.listNode* %11 to i8*, !dbg !87
  %13 = add i64 %10, -1, !dbg !88
  %14 = getelementptr inbounds %struct.listNode, %struct.listNode* %11, i64 0, i32 1, !dbg !89
  %15 = load %struct.listNode*, %struct.listNode** %14, align 8, !dbg !89, !tbaa !91
  %16 = load void (i8*)*, void (i8*)** %8, align 8, !dbg !94, !tbaa !65
  %17 = icmp eq void (i8*)* %16, null, !dbg !96
  br i1 %17, label %21, label %18, !dbg !97

; <label>:18:                                     ; preds = %9
  %19 = getelementptr inbounds %struct.listNode, %struct.listNode* %11, i64 0, i32 2, !dbg !98
  %20 = load i8*, i8** %19, align 8, !dbg !98, !tbaa !99
  tail call void %16(i8* %20) #4, !dbg !100
  br label %21, !dbg !100

; <label>:21:                                     ; preds = %9, %18
  tail call void @zfree(i8* nonnull %12) #4, !dbg !101
  %22 = icmp eq i64 %13, 0, !dbg !83
  br i1 %22, label %23, label %9, !dbg !83, !llvm.loop !102

; <label>:23:                                     ; preds = %21, %1
  %24 = bitcast %struct.list* %0 to <2 x %struct.listNode*>*, !dbg !104
  store <2 x %struct.listNode*> zeroinitializer, <2 x %struct.listNode*>* %24, align 8, !dbg !104, !tbaa !51
  store i64 0, i64* %2, align 8, !dbg !105, !tbaa !57
  ret void, !dbg !106
}

; Function Attrs: noredzone
declare dso_local void @zfree(i8*) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local void @listRelease(%struct.list*) local_unnamed_addr #0 !dbg !107 {
  %2 = getelementptr inbounds %struct.list, %struct.list* %0, i64 0, i32 5, !dbg !113
  %3 = load i64, i64* %2, align 8, !dbg !113, !tbaa !57
  %4 = icmp eq i64 %3, 0, !dbg !115
  br i1 %4, label %23, label %5, !dbg !115

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.list, %struct.list* %0, i64 0, i32 0, !dbg !116
  %7 = load %struct.listNode*, %struct.listNode** %6, align 8, !dbg !116, !tbaa !85
  %8 = getelementptr inbounds %struct.list, %struct.list* %0, i64 0, i32 3
  br label %9, !dbg !115

; <label>:9:                                      ; preds = %21, %5
  %10 = phi i64 [ %3, %5 ], [ %13, %21 ]
  %11 = phi %struct.listNode* [ %7, %5 ], [ %15, %21 ]
  %12 = bitcast %struct.listNode* %11 to i8*, !dbg !118
  %13 = add i64 %10, -1, !dbg !119
  %14 = getelementptr inbounds %struct.listNode, %struct.listNode* %11, i64 0, i32 1, !dbg !120
  %15 = load %struct.listNode*, %struct.listNode** %14, align 8, !dbg !120, !tbaa !91
  %16 = load void (i8*)*, void (i8*)** %8, align 8, !dbg !122, !tbaa !65
  %17 = icmp eq void (i8*)* %16, null, !dbg !123
  br i1 %17, label %21, label %18, !dbg !124

; <label>:18:                                     ; preds = %9
  %19 = getelementptr inbounds %struct.listNode, %struct.listNode* %11, i64 0, i32 2, !dbg !125
  %20 = load i8*, i8** %19, align 8, !dbg !125, !tbaa !99
  tail call void %16(i8* %20) #4, !dbg !126
  br label %21, !dbg !126

; <label>:21:                                     ; preds = %18, %9
  tail call void @zfree(i8* nonnull %12) #4, !dbg !127
  %22 = icmp eq i64 %13, 0, !dbg !115
  br i1 %22, label %23, label %9, !dbg !115, !llvm.loop !102

; <label>:23:                                     ; preds = %21, %1
  %24 = bitcast %struct.list* %0 to <2 x %struct.listNode*>*, !dbg !128
  store <2 x %struct.listNode*> zeroinitializer, <2 x %struct.listNode*>* %24, align 8, !dbg !128, !tbaa !51
  store i64 0, i64* %2, align 8, !dbg !129, !tbaa !57
  %25 = bitcast %struct.list* %0 to i8*, !dbg !130
  tail call void @zfree(i8* %25) #4, !dbg !131
  ret void, !dbg !132
}

; Function Attrs: noredzone nounwind
define dso_local %struct.list* @listAddNodeHead(%struct.list*, i8*) local_unnamed_addr #0 !dbg !133 {
  %3 = tail call i8* @zmalloc(i64 24) #4, !dbg !142
  %4 = icmp eq i8* %3, null, !dbg !145
  br i1 %4, label %26, label %5, !dbg !146

; <label>:5:                                      ; preds = %2
  %6 = getelementptr inbounds i8, i8* %3, i64 16, !dbg !147
  %7 = bitcast i8* %6 to i8**, !dbg !147
  store i8* %1, i8** %7, align 8, !dbg !148, !tbaa !99
  %8 = getelementptr inbounds %struct.list, %struct.list* %0, i64 0, i32 5, !dbg !149
  %9 = load i64, i64* %8, align 8, !dbg !149, !tbaa !57
  %10 = icmp eq i64 %9, 0, !dbg !151
  br i1 %10, label %11, label %16, !dbg !152

; <label>:11:                                     ; preds = %5
  %12 = getelementptr inbounds %struct.list, %struct.list* %0, i64 0, i32 1, !dbg !153
  %13 = bitcast %struct.listNode** %12 to i8**, !dbg !155
  store i8* %3, i8** %13, align 8, !dbg !155, !tbaa !156
  %14 = bitcast %struct.list* %0 to i8**, !dbg !157
  store i8* %3, i8** %14, align 8, !dbg !157, !tbaa !85
  %15 = bitcast i8* %3 to <2 x %struct.listNode*>*, !dbg !158
  store <2 x %struct.listNode*> zeroinitializer, <2 x %struct.listNode*>* %15, align 8, !dbg !158, !tbaa !51
  br label %24, !dbg !159

; <label>:16:                                     ; preds = %5
  %17 = bitcast i8* %3 to %struct.listNode**, !dbg !160
  store %struct.listNode* null, %struct.listNode** %17, align 8, !dbg !162, !tbaa !163
  %18 = bitcast %struct.list* %0 to i64*, !dbg !164
  %19 = load i64, i64* %18, align 8, !dbg !164, !tbaa !85
  %20 = getelementptr inbounds i8, i8* %3, i64 8, !dbg !165
  %21 = bitcast i8* %20 to i64*, !dbg !166
  store i64 %19, i64* %21, align 8, !dbg !166, !tbaa !91
  %22 = inttoptr i64 %19 to i8**, !dbg !167
  store i8* %3, i8** %22, align 8, !dbg !168, !tbaa !163
  %23 = bitcast %struct.list* %0 to i8**, !dbg !169
  store i8* %3, i8** %23, align 8, !dbg !169, !tbaa !85
  br label %24

; <label>:24:                                     ; preds = %16, %11
  %25 = add i64 %9, 1, !dbg !170
  store i64 %25, i64* %8, align 8, !dbg !170, !tbaa !57
  br label %26, !dbg !171

; <label>:26:                                     ; preds = %2, %24
  %27 = phi %struct.list* [ %0, %24 ], [ null, %2 ], !dbg !172
  ret %struct.list* %27, !dbg !173
}

; Function Attrs: noredzone nounwind
define dso_local %struct.list* @listAddNodeTail(%struct.list*, i8*) local_unnamed_addr #0 !dbg !174 {
  %3 = tail call i8* @zmalloc(i64 24) #4, !dbg !181
  %4 = icmp eq i8* %3, null, !dbg !184
  br i1 %4, label %28, label %5, !dbg !185

; <label>:5:                                      ; preds = %2
  %6 = getelementptr inbounds i8, i8* %3, i64 16, !dbg !186
  %7 = bitcast i8* %6 to i8**, !dbg !186
  store i8* %1, i8** %7, align 8, !dbg !187, !tbaa !99
  %8 = getelementptr inbounds %struct.list, %struct.list* %0, i64 0, i32 5, !dbg !188
  %9 = load i64, i64* %8, align 8, !dbg !188, !tbaa !57
  %10 = icmp eq i64 %9, 0, !dbg !190
  %11 = getelementptr inbounds %struct.list, %struct.list* %0, i64 0, i32 1, !dbg !191
  br i1 %10, label %12, label %16, !dbg !193

; <label>:12:                                     ; preds = %5
  %13 = bitcast %struct.listNode** %11 to i8**, !dbg !194
  store i8* %3, i8** %13, align 8, !dbg !194, !tbaa !156
  %14 = bitcast %struct.list* %0 to i8**, !dbg !196
  store i8* %3, i8** %14, align 8, !dbg !196, !tbaa !85
  %15 = bitcast i8* %3 to <2 x %struct.listNode*>*, !dbg !197
  store <2 x %struct.listNode*> zeroinitializer, <2 x %struct.listNode*>* %15, align 8, !dbg !197, !tbaa !51
  br label %26, !dbg !198

; <label>:16:                                     ; preds = %5
  %17 = bitcast %struct.listNode** %11 to i64*, !dbg !199
  %18 = load i64, i64* %17, align 8, !dbg !199, !tbaa !156
  %19 = bitcast i8* %3 to i64*, !dbg !200
  store i64 %18, i64* %19, align 8, !dbg !200, !tbaa !163
  %20 = getelementptr inbounds i8, i8* %3, i64 8, !dbg !201
  %21 = bitcast i8* %20 to %struct.listNode**, !dbg !201
  store %struct.listNode* null, %struct.listNode** %21, align 8, !dbg !202, !tbaa !91
  %22 = inttoptr i64 %18 to %struct.listNode*, !dbg !203
  %23 = getelementptr inbounds %struct.listNode, %struct.listNode* %22, i64 0, i32 1, !dbg !204
  %24 = bitcast %struct.listNode** %23 to i8**, !dbg !205
  store i8* %3, i8** %24, align 8, !dbg !205, !tbaa !91
  %25 = bitcast %struct.listNode** %11 to i8**, !dbg !206
  store i8* %3, i8** %25, align 8, !dbg !206, !tbaa !156
  br label %26

; <label>:26:                                     ; preds = %16, %12
  %27 = add i64 %9, 1, !dbg !207
  store i64 %27, i64* %8, align 8, !dbg !207, !tbaa !57
  br label %28, !dbg !208

; <label>:28:                                     ; preds = %2, %26
  %29 = phi %struct.list* [ %0, %26 ], [ null, %2 ], !dbg !209
  ret %struct.list* %29, !dbg !210
}

; Function Attrs: noredzone nounwind
define dso_local %struct.list* @listInsertNode(%struct.list*, %struct.listNode*, i8*, i32) local_unnamed_addr #0 !dbg !211 {
  %5 = tail call i8* @zmalloc(i64 24) #4, !dbg !224
  %6 = icmp eq i8* %5, null, !dbg !227
  br i1 %6, label %52, label %7, !dbg !228

; <label>:7:                                      ; preds = %4
  %8 = getelementptr inbounds i8, i8* %5, i64 16, !dbg !229
  %9 = bitcast i8* %8 to i8**, !dbg !229
  store i8* %2, i8** %9, align 8, !dbg !230, !tbaa !99
  %10 = icmp eq i32 %3, 0, !dbg !231
  br i1 %10, label %23, label %11, !dbg !233

; <label>:11:                                     ; preds = %7
  %12 = bitcast i8* %5 to %struct.listNode**, !dbg !234
  store %struct.listNode* %1, %struct.listNode** %12, align 8, !dbg !236, !tbaa !163
  %13 = getelementptr inbounds %struct.listNode, %struct.listNode* %1, i64 0, i32 1, !dbg !237
  %14 = bitcast %struct.listNode** %13 to i64*, !dbg !237
  %15 = load i64, i64* %14, align 8, !dbg !237, !tbaa !91
  %16 = getelementptr inbounds i8, i8* %5, i64 8, !dbg !238
  %17 = bitcast i8* %16 to i64*, !dbg !239
  store i64 %15, i64* %17, align 8, !dbg !239, !tbaa !91
  %18 = getelementptr inbounds %struct.list, %struct.list* %0, i64 0, i32 1, !dbg !240
  %19 = load %struct.listNode*, %struct.listNode** %18, align 8, !dbg !240, !tbaa !156
  %20 = icmp eq %struct.listNode* %19, %1, !dbg !242
  br i1 %20, label %21, label %37, !dbg !243

; <label>:21:                                     ; preds = %11
  %22 = bitcast %struct.listNode** %18 to i8**, !dbg !244
  store i8* %5, i8** %22, align 8, !dbg !244, !tbaa !156
  br label %37, !dbg !246

; <label>:23:                                     ; preds = %7
  %24 = getelementptr inbounds i8, i8* %5, i64 8, !dbg !247
  %25 = bitcast i8* %24 to %struct.listNode**, !dbg !247
  store %struct.listNode* %1, %struct.listNode** %25, align 8, !dbg !249, !tbaa !91
  %26 = bitcast %struct.listNode* %1 to i64*, !dbg !250
  %27 = load i64, i64* %26, align 8, !dbg !250, !tbaa !163
  %28 = bitcast i8* %5 to i64*, !dbg !251
  store i64 %27, i64* %28, align 8, !dbg !251, !tbaa !163
  %29 = getelementptr inbounds %struct.list, %struct.list* %0, i64 0, i32 0, !dbg !252
  %30 = load %struct.listNode*, %struct.listNode** %29, align 8, !dbg !252, !tbaa !85
  %31 = icmp eq %struct.listNode* %30, %1, !dbg !254
  %32 = inttoptr i64 %27 to %struct.listNode*, !dbg !255
  br i1 %31, label %33, label %35, !dbg !255

; <label>:33:                                     ; preds = %23
  %34 = bitcast %struct.list* %0 to i8**, !dbg !256
  store i8* %5, i8** %34, align 8, !dbg !256, !tbaa !85
  br label %35, !dbg !258

; <label>:35:                                     ; preds = %23, %33
  %36 = icmp eq i64 %27, 0, !dbg !259
  br i1 %36, label %45, label %37, !dbg !261

; <label>:37:                                     ; preds = %21, %11, %35
  %38 = phi %struct.listNode* [ %32, %35 ], [ %1, %11 ], [ %1, %21 ]
  %39 = getelementptr inbounds %struct.listNode, %struct.listNode* %38, i64 0, i32 1, !dbg !262
  %40 = bitcast %struct.listNode** %39 to i8**, !dbg !264
  store i8* %5, i8** %40, align 8, !dbg !264, !tbaa !91
  %41 = getelementptr inbounds i8, i8* %5, i64 8
  %42 = bitcast i8* %41 to %struct.listNode**
  %43 = load %struct.listNode*, %struct.listNode** %42, align 8, !dbg !265, !tbaa !91
  %44 = icmp eq %struct.listNode* %43, null, !dbg !267
  br i1 %44, label %48, label %45, !dbg !268

; <label>:45:                                     ; preds = %35, %37
  %46 = phi %struct.listNode* [ %43, %37 ], [ %1, %35 ]
  %47 = bitcast %struct.listNode* %46 to i8**, !dbg !269
  store i8* %5, i8** %47, align 8, !dbg !269, !tbaa !163
  br label %48, !dbg !271

; <label>:48:                                     ; preds = %37, %45
  %49 = getelementptr inbounds %struct.list, %struct.list* %0, i64 0, i32 5, !dbg !272
  %50 = load i64, i64* %49, align 8, !dbg !273, !tbaa !57
  %51 = add i64 %50, 1, !dbg !273
  store i64 %51, i64* %49, align 8, !dbg !273, !tbaa !57
  br label %52, !dbg !274

; <label>:52:                                     ; preds = %4, %48
  %53 = phi %struct.list* [ %0, %48 ], [ null, %4 ], !dbg !275
  ret %struct.list* %53, !dbg !276
}

; Function Attrs: noredzone nounwind
define dso_local void @listDelNode(%struct.list* nocapture, %struct.listNode*) local_unnamed_addr #0 !dbg !277 {
  %3 = getelementptr inbounds %struct.listNode, %struct.listNode* %1, i64 0, i32 0, !dbg !285
  %4 = load %struct.listNode*, %struct.listNode** %3, align 8, !dbg !285, !tbaa !163
  %5 = icmp eq %struct.listNode* %4, null, !dbg !287
  %6 = getelementptr inbounds %struct.listNode, %struct.listNode* %1, i64 0, i32 1, !dbg !288
  %7 = bitcast %struct.listNode** %6 to i64*, !dbg !288
  %8 = load i64, i64* %7, align 8, !dbg !288, !tbaa !91
  %9 = ptrtoint %struct.listNode* %4 to i64, !dbg !289
  br i1 %5, label %14, label %10, !dbg !289

; <label>:10:                                     ; preds = %2
  %11 = getelementptr inbounds %struct.listNode, %struct.listNode* %4, i64 0, i32 1, !dbg !290
  %12 = bitcast %struct.listNode** %11 to i64*, !dbg !291
  store i64 %8, i64* %12, align 8, !dbg !291, !tbaa !91
  %13 = load %struct.listNode*, %struct.listNode** %6, align 8, !dbg !292, !tbaa !91
  br label %17, !dbg !294

; <label>:14:                                     ; preds = %2
  %15 = inttoptr i64 %8 to %struct.listNode*, !dbg !289
  %16 = bitcast %struct.list* %0 to i64*, !dbg !295
  store i64 %8, i64* %16, align 8, !dbg !295, !tbaa !85
  br label %17

; <label>:17:                                     ; preds = %14, %10
  %18 = phi %struct.listNode* [ %15, %14 ], [ %13, %10 ], !dbg !292
  %19 = icmp eq %struct.listNode* %18, null, !dbg !296
  %20 = getelementptr inbounds %struct.list, %struct.list* %0, i64 0, i32 1, !dbg !297
  %21 = bitcast %struct.listNode** %20 to i64*, !dbg !298
  %22 = bitcast %struct.listNode* %18 to i64*, !dbg !299
  %23 = select i1 %19, i64* %21, i64* %22, !dbg !300
  store i64 %9, i64* %23, align 8, !dbg !301, !tbaa !51
  %24 = getelementptr inbounds %struct.list, %struct.list* %0, i64 0, i32 3, !dbg !302
  %25 = load void (i8*)*, void (i8*)** %24, align 8, !dbg !302, !tbaa !65
  %26 = icmp eq void (i8*)* %25, null, !dbg !304
  br i1 %26, label %30, label %27, !dbg !305

; <label>:27:                                     ; preds = %17
  %28 = getelementptr inbounds %struct.listNode, %struct.listNode* %1, i64 0, i32 2, !dbg !306
  %29 = load i8*, i8** %28, align 8, !dbg !306, !tbaa !99
  tail call void %25(i8* %29) #4, !dbg !307
  br label %30, !dbg !307

; <label>:30:                                     ; preds = %17, %27
  %31 = bitcast %struct.listNode* %1 to i8*, !dbg !308
  tail call void @zfree(i8* %31) #4, !dbg !309
  %32 = getelementptr inbounds %struct.list, %struct.list* %0, i64 0, i32 5, !dbg !310
  %33 = load i64, i64* %32, align 8, !dbg !311, !tbaa !57
  %34 = add i64 %33, -1, !dbg !311
  store i64 %34, i64* %32, align 8, !dbg !311, !tbaa !57
  ret void, !dbg !312
}

; Function Attrs: noredzone nounwind
define dso_local %struct.listIter* @listGetIterator(%struct.list* nocapture readonly, i32) local_unnamed_addr #0 !dbg !313 {
  %3 = tail call i8* @zmalloc(i64 16) #4, !dbg !328
  %4 = icmp eq i8* %3, null, !dbg !330
  br i1 %4, label %16, label %5, !dbg !331

; <label>:5:                                      ; preds = %2
  %6 = bitcast i8* %3 to %struct.listIter*, !dbg !328
  %7 = icmp eq i32 %1, 0, !dbg !333
  %8 = getelementptr inbounds %struct.list, %struct.list* %0, i64 0, i32 1, !dbg !335
  %9 = bitcast %struct.listNode** %8 to i64*, !dbg !335
  %10 = bitcast %struct.list* %0 to i64*, !dbg !336
  %11 = select i1 %7, i64* %10, i64* %9, !dbg !337
  %12 = load i64, i64* %11, align 8, !dbg !338, !tbaa !51
  %13 = bitcast i8* %3 to i64*, !dbg !338
  store i64 %12, i64* %13, align 8, !dbg !338, !tbaa !339
  %14 = getelementptr inbounds i8, i8* %3, i64 8, !dbg !342
  %15 = bitcast i8* %14 to i32*, !dbg !342
  store i32 %1, i32* %15, align 8, !dbg !343, !tbaa !344
  br label %16, !dbg !345

; <label>:16:                                     ; preds = %2, %5
  %17 = phi %struct.listIter* [ %6, %5 ], [ null, %2 ], !dbg !346
  ret %struct.listIter* %17, !dbg !347
}

; Function Attrs: noredzone nounwind
define dso_local void @listReleaseIterator(%struct.listIter*) local_unnamed_addr #0 !dbg !348 {
  %2 = bitcast %struct.listIter* %0 to i8*, !dbg !354
  tail call void @zfree(i8* %2) #4, !dbg !355
  ret void, !dbg !356
}

; Function Attrs: noredzone nounwind
define dso_local void @listRewind(%struct.list* nocapture readonly, %struct.listIter* nocapture) local_unnamed_addr #0 !dbg !357 {
  %3 = bitcast %struct.list* %0 to i64*, !dbg !365
  %4 = load i64, i64* %3, align 8, !dbg !365, !tbaa !85
  %5 = bitcast %struct.listIter* %1 to i64*, !dbg !366
  store i64 %4, i64* %5, align 8, !dbg !366, !tbaa !339
  %6 = getelementptr inbounds %struct.listIter, %struct.listIter* %1, i64 0, i32 1, !dbg !367
  store i32 0, i32* %6, align 8, !dbg !368, !tbaa !344
  ret void, !dbg !369
}

; Function Attrs: noredzone nounwind
define dso_local void @listRewindTail(%struct.list* nocapture readonly, %struct.listIter* nocapture) local_unnamed_addr #0 !dbg !370 {
  %3 = getelementptr inbounds %struct.list, %struct.list* %0, i64 0, i32 1, !dbg !376
  %4 = bitcast %struct.listNode** %3 to i64*, !dbg !376
  %5 = load i64, i64* %4, align 8, !dbg !376, !tbaa !156
  %6 = bitcast %struct.listIter* %1 to i64*, !dbg !377
  store i64 %5, i64* %6, align 8, !dbg !377, !tbaa !339
  %7 = getelementptr inbounds %struct.listIter, %struct.listIter* %1, i64 0, i32 1, !dbg !378
  store i32 1, i32* %7, align 8, !dbg !379, !tbaa !344
  ret void, !dbg !380
}

; Function Attrs: noredzone nounwind
define dso_local %struct.listNode* @listNext(%struct.listIter* nocapture) local_unnamed_addr #0 !dbg !381 {
  %2 = getelementptr inbounds %struct.listIter, %struct.listIter* %0, i64 0, i32 0, !dbg !388
  %3 = load %struct.listNode*, %struct.listNode** %2, align 8, !dbg !388, !tbaa !339
  %4 = icmp eq %struct.listNode* %3, null, !dbg !390
  br i1 %4, label %15, label %5, !dbg !392

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.listIter, %struct.listIter* %0, i64 0, i32 1, !dbg !393
  %7 = load i32, i32* %6, align 8, !dbg !393, !tbaa !344
  %8 = icmp eq i32 %7, 0, !dbg !396
  %9 = getelementptr inbounds %struct.listNode, %struct.listNode* %3, i64 0, i32 1, !dbg !397
  %10 = bitcast %struct.listNode** %9 to i64*, !dbg !397
  %11 = bitcast %struct.listNode* %3 to i64*, !dbg !398
  %12 = select i1 %8, i64* %10, i64* %11, !dbg !399
  %13 = load i64, i64* %12, align 8, !dbg !400, !tbaa !51
  %14 = bitcast %struct.listIter* %0 to i64*, !dbg !400
  store i64 %13, i64* %14, align 8, !dbg !400, !tbaa !339
  br label %15, !dbg !401

; <label>:15:                                     ; preds = %5, %1
  ret %struct.listNode* %3, !dbg !401
}

; Function Attrs: noredzone nounwind
define dso_local %struct.list* @listDup(%struct.list* nocapture readonly) local_unnamed_addr #0 !dbg !402 {
  %2 = tail call i8* @zmalloc(i64 48) #4, !dbg !413
  %3 = icmp eq i8* %2, null, !dbg !416
  br i1 %3, label %113, label %4, !dbg !417

; <label>:4:                                      ; preds = %1
  %5 = bitcast i8* %2 to %struct.list*, !dbg !413
  %6 = getelementptr inbounds i8, i8* %2, i64 8, !dbg !419
  %7 = bitcast i8* %2 to %struct.listNode**, !dbg !420
  %8 = bitcast i8* %2 to <2 x %struct.listNode*>*, !dbg !421
  store <2 x %struct.listNode*> zeroinitializer, <2 x %struct.listNode*>* %8, align 8, !dbg !421, !tbaa !51
  %9 = getelementptr inbounds i8, i8* %2, i64 40, !dbg !422
  %10 = bitcast i8* %9 to i64*, !dbg !422
  store i64 0, i64* %10, align 8, !dbg !423, !tbaa !57
  %11 = getelementptr inbounds i8, i8* %2, i64 16, !dbg !424
  %12 = bitcast i8* %11 to i8* (i8*)**, !dbg !424
  store i8* (i8*)* null, i8* (i8*)** %12, align 8, !dbg !425, !tbaa !62
  %13 = getelementptr inbounds i8, i8* %2, i64 24, !dbg !426
  %14 = bitcast i8* %13 to void (i8*)**, !dbg !426
  store void (i8*)* null, void (i8*)** %14, align 8, !dbg !427, !tbaa !65
  %15 = getelementptr inbounds i8, i8* %2, i64 32, !dbg !428
  %16 = bitcast i8* %15 to i32 (i8*, i8*)**, !dbg !428
  store i32 (i8*, i8*)* null, i32 (i8*, i8*)** %16, align 8, !dbg !429, !tbaa !68
  %17 = getelementptr inbounds %struct.list, %struct.list* %0, i64 0, i32 2, !dbg !431
  %18 = bitcast i8* (i8*)** %17 to <2 x i64>*, !dbg !431
  %19 = load <2 x i64>, <2 x i64>* %18, align 8, !dbg !431, !tbaa !51
  %20 = bitcast i8* %11 to <2 x i64>*, !dbg !432
  store <2 x i64> %19, <2 x i64>* %20, align 8, !dbg !432, !tbaa !51
  %21 = getelementptr inbounds %struct.list, %struct.list* %0, i64 0, i32 4, !dbg !433
  %22 = bitcast i32 (i8*, i8*)** %21 to i64*, !dbg !433
  %23 = load i64, i64* %22, align 8, !dbg !433, !tbaa !68
  %24 = bitcast i8* %15 to i64*, !dbg !434
  store i64 %23, i64* %24, align 8, !dbg !434, !tbaa !68
  %25 = bitcast %struct.list* %0 to i64*, !dbg !439
  %26 = load i64, i64* %25, align 8, !dbg !439, !tbaa !85
  %27 = icmp eq i64 %26, 0, !dbg !442
  br i1 %27, label %113, label %28, !dbg !443

; <label>:28:                                     ; preds = %4
  %29 = extractelement <2 x i64> %19, i32 0, !dbg !443
  %30 = inttoptr i64 %29 to i8* (i8*)*, !dbg !443
  %31 = bitcast i8* %6 to i8**
  %32 = bitcast i8* %2 to i8**
  %33 = bitcast i8* %6 to i64*
  br label %34, !dbg !443

; <label>:34:                                     ; preds = %90, %28
  %35 = phi i8* (i8*)* [ %30, %28 ], [ %91, %90 ], !dbg !445
  %36 = phi i64 [ %26, %28 ], [ %40, %90 ]
  %37 = inttoptr i64 %36 to %struct.listNode*, !dbg !447
  %38 = getelementptr inbounds %struct.listNode, %struct.listNode* %37, i64 0, i32 1, !dbg !448
  %39 = bitcast %struct.listNode** %38 to i64*, !dbg !448
  %40 = load i64, i64* %39, align 8, !dbg !448, !tbaa !91
  %41 = icmp eq i8* (i8*)* %35, null, !dbg !450
  %42 = getelementptr inbounds %struct.listNode, %struct.listNode* %37, i64 0, i32 2, !dbg !451
  %43 = load i8*, i8** %42, align 8, !dbg !451, !tbaa !99
  br i1 %41, label %68, label %44, !dbg !453

; <label>:44:                                     ; preds = %34
  %45 = tail call i8* %35(i8* %43) #4, !dbg !454
  %46 = icmp eq i8* %45, null, !dbg !456
  br i1 %46, label %47, label %68, !dbg !458

; <label>:47:                                     ; preds = %44
  %48 = load i64, i64* %10, align 8, !dbg !464, !tbaa !57
  %49 = icmp eq i64 %48, 0, !dbg !466
  br i1 %49, label %66, label %50, !dbg !466

; <label>:50:                                     ; preds = %47
  %51 = load %struct.listNode*, %struct.listNode** %7, align 8, !dbg !467, !tbaa !85
  br label %52, !dbg !466

; <label>:52:                                     ; preds = %64, %50
  %53 = phi i64 [ %48, %50 ], [ %56, %64 ]
  %54 = phi %struct.listNode* [ %51, %50 ], [ %58, %64 ]
  %55 = bitcast %struct.listNode* %54 to i8*, !dbg !469
  %56 = add i64 %53, -1, !dbg !470
  %57 = getelementptr inbounds %struct.listNode, %struct.listNode* %54, i64 0, i32 1, !dbg !471
  %58 = load %struct.listNode*, %struct.listNode** %57, align 8, !dbg !471, !tbaa !91
  %59 = load void (i8*)*, void (i8*)** %14, align 8, !dbg !473, !tbaa !65
  %60 = icmp eq void (i8*)* %59, null, !dbg !474
  br i1 %60, label %64, label %61, !dbg !475

; <label>:61:                                     ; preds = %52
  %62 = getelementptr inbounds %struct.listNode, %struct.listNode* %54, i64 0, i32 2, !dbg !476
  %63 = load i8*, i8** %62, align 8, !dbg !476, !tbaa !99
  tail call void %59(i8* %63) #4, !dbg !477
  br label %64, !dbg !477

; <label>:64:                                     ; preds = %61, %52
  tail call void @zfree(i8* nonnull %55) #4, !dbg !478
  %65 = icmp eq i64 %56, 0, !dbg !466
  br i1 %65, label %66, label %52, !dbg !466, !llvm.loop !102

; <label>:66:                                     ; preds = %64, %47
  %67 = bitcast i8* %2 to <2 x %struct.listNode*>*, !dbg !479
  store <2 x %struct.listNode*> zeroinitializer, <2 x %struct.listNode*>* %67, align 8, !dbg !479, !tbaa !51
  store i64 0, i64* %10, align 8, !dbg !480, !tbaa !57
  tail call void @zfree(i8* nonnull %2) #4, !dbg !481
  br label %113

; <label>:68:                                     ; preds = %34, %44
  %69 = phi i8* [ %45, %44 ], [ %43, %34 ], !dbg !482
  %70 = tail call i8* @zmalloc(i64 24) #4, !dbg !487
  %71 = icmp eq i8* %70, null, !dbg !489
  br i1 %71, label %92, label %72, !dbg !490

; <label>:72:                                     ; preds = %68
  %73 = getelementptr inbounds i8, i8* %70, i64 16, !dbg !491
  %74 = bitcast i8* %73 to i8**, !dbg !491
  store i8* %69, i8** %74, align 8, !dbg !492, !tbaa !99
  %75 = load i64, i64* %10, align 8, !dbg !493, !tbaa !57
  %76 = icmp eq i64 %75, 0, !dbg !494
  br i1 %76, label %77, label %79, !dbg !495

; <label>:77:                                     ; preds = %72
  store i8* %70, i8** %31, align 8, !dbg !496, !tbaa !156
  store i8* %70, i8** %32, align 8, !dbg !497, !tbaa !85
  %78 = bitcast i8* %70 to <2 x %struct.listNode*>*, !dbg !498
  store <2 x %struct.listNode*> zeroinitializer, <2 x %struct.listNode*>* %78, align 8, !dbg !498, !tbaa !51
  br label %87, !dbg !499

; <label>:79:                                     ; preds = %72
  %80 = load i64, i64* %33, align 8, !dbg !500, !tbaa !156
  %81 = bitcast i8* %70 to i64*, !dbg !501
  store i64 %80, i64* %81, align 8, !dbg !501, !tbaa !163
  %82 = getelementptr inbounds i8, i8* %70, i64 8, !dbg !502
  %83 = bitcast i8* %82 to %struct.listNode**, !dbg !502
  store %struct.listNode* null, %struct.listNode** %83, align 8, !dbg !503, !tbaa !91
  %84 = inttoptr i64 %80 to %struct.listNode*, !dbg !504
  %85 = getelementptr inbounds %struct.listNode, %struct.listNode* %84, i64 0, i32 1, !dbg !505
  %86 = bitcast %struct.listNode** %85 to i8**, !dbg !506
  store i8* %70, i8** %86, align 8, !dbg !506, !tbaa !91
  store i8* %70, i8** %31, align 8, !dbg !507, !tbaa !156
  br label %87

; <label>:87:                                     ; preds = %77, %79
  %88 = add i64 %75, 1, !dbg !508
  store i64 %88, i64* %10, align 8, !dbg !508, !tbaa !57
  %89 = icmp eq i64 %40, 0, !dbg !442
  br i1 %89, label %113, label %90, !dbg !443

; <label>:90:                                     ; preds = %87
  %91 = load i8* (i8*)*, i8* (i8*)** %12, align 8, !dbg !445, !tbaa !62
  br label %34, !dbg !443

; <label>:92:                                     ; preds = %68
  %93 = load i64, i64* %10, align 8, !dbg !514, !tbaa !57
  %94 = icmp eq i64 %93, 0, !dbg !516
  br i1 %94, label %111, label %95, !dbg !516

; <label>:95:                                     ; preds = %92
  %96 = load %struct.listNode*, %struct.listNode** %7, align 8, !dbg !517, !tbaa !85
  br label %97, !dbg !516

; <label>:97:                                     ; preds = %109, %95
  %98 = phi i64 [ %93, %95 ], [ %101, %109 ]
  %99 = phi %struct.listNode* [ %96, %95 ], [ %103, %109 ]
  %100 = bitcast %struct.listNode* %99 to i8*, !dbg !519
  %101 = add i64 %98, -1, !dbg !520
  %102 = getelementptr inbounds %struct.listNode, %struct.listNode* %99, i64 0, i32 1, !dbg !521
  %103 = load %struct.listNode*, %struct.listNode** %102, align 8, !dbg !521, !tbaa !91
  %104 = load void (i8*)*, void (i8*)** %14, align 8, !dbg !523, !tbaa !65
  %105 = icmp eq void (i8*)* %104, null, !dbg !524
  br i1 %105, label %109, label %106, !dbg !525

; <label>:106:                                    ; preds = %97
  %107 = getelementptr inbounds %struct.listNode, %struct.listNode* %99, i64 0, i32 2, !dbg !526
  %108 = load i8*, i8** %107, align 8, !dbg !526, !tbaa !99
  tail call void %104(i8* %108) #4, !dbg !527
  br label %109, !dbg !527

; <label>:109:                                    ; preds = %106, %97
  tail call void @zfree(i8* nonnull %100) #4, !dbg !528
  %110 = icmp eq i64 %101, 0, !dbg !516
  br i1 %110, label %111, label %97, !dbg !516, !llvm.loop !102

; <label>:111:                                    ; preds = %109, %92
  %112 = bitcast i8* %2 to <2 x %struct.listNode*>*, !dbg !529
  store <2 x %struct.listNode*> zeroinitializer, <2 x %struct.listNode*>* %112, align 8, !dbg !529, !tbaa !51
  store i64 0, i64* %10, align 8, !dbg !530, !tbaa !57
  tail call void @zfree(i8* nonnull %2) #4, !dbg !531
  br label %113

; <label>:113:                                    ; preds = %87, %4, %1, %111, %66
  %114 = phi %struct.list* [ null, %66 ], [ null, %111 ], [ null, %1 ], [ %5, %4 ], [ %5, %87 ], !dbg !532
  ret %struct.list* %114, !dbg !533
}

; Function Attrs: noredzone nounwind
define dso_local %struct.listNode* @listSearchKey(%struct.list* nocapture readonly, i8*) local_unnamed_addr #0 !dbg !534 {
  %3 = bitcast %struct.list* %0 to i64*, !dbg !548
  %4 = load i64, i64* %3, align 8, !dbg !548, !tbaa !85
  %5 = inttoptr i64 %4 to %struct.listNode*, !dbg !551
  %6 = icmp eq i64 %4, 0, !dbg !553
  br i1 %6, label %26, label %7, !dbg !554

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.list, %struct.list* %0, i64 0, i32 4
  br label %9, !dbg !554

; <label>:9:                                      ; preds = %7, %23
  %10 = phi %struct.listNode* [ %5, %7 ], [ %24, %23 ]
  %11 = getelementptr inbounds %struct.listNode, %struct.listNode* %10, i64 0, i32 1, !dbg !555
  %12 = bitcast %struct.listNode** %11 to i64*, !dbg !555
  %13 = load i64, i64* %12, align 8, !dbg !555, !tbaa !91
  %14 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %8, align 8, !dbg !557, !tbaa !68
  %15 = icmp eq i32 (i8*, i8*)* %14, null, !dbg !560
  %16 = getelementptr inbounds %struct.listNode, %struct.listNode* %10, i64 0, i32 2, !dbg !561
  %17 = load i8*, i8** %16, align 8, !dbg !561, !tbaa !99
  br i1 %15, label %21, label %18, !dbg !564

; <label>:18:                                     ; preds = %9
  %19 = tail call i32 %14(i8* %17, i8* %1) #4, !dbg !565
  %20 = icmp eq i32 %19, 0, !dbg !565
  br i1 %20, label %23, label %26, !dbg !566

; <label>:21:                                     ; preds = %9
  %22 = icmp eq i8* %17, %1, !dbg !567
  br i1 %22, label %26, label %23, !dbg !570

; <label>:23:                                     ; preds = %18, %21
  %24 = inttoptr i64 %13 to %struct.listNode*, !dbg !551
  %25 = icmp eq i64 %13, 0, !dbg !553
  br i1 %25, label %26, label %9, !dbg !554, !llvm.loop !571

; <label>:26:                                     ; preds = %18, %21, %23, %2
  %27 = phi %struct.listNode* [ %5, %2 ], [ %10, %18 ], [ %10, %21 ], [ null, %23 ], !dbg !551
  ret %struct.listNode* %27, !dbg !574
}

; Function Attrs: noredzone nounwind readonly
define dso_local %struct.listNode* @listIndex(%struct.list* nocapture readonly, i64) local_unnamed_addr #2 !dbg !575 {
  %3 = icmp slt i64 %1, 0, !dbg !585
  br i1 %3, label %4, label %21, !dbg !587

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.list, %struct.list* %0, i64 0, i32 1, !dbg !588
  %6 = load %struct.listNode*, %struct.listNode** %5, align 8, !dbg !591, !tbaa !51
  %7 = icmp ne i64 %1, -1, !dbg !592
  %8 = icmp ne %struct.listNode* %6, null, !dbg !593
  %9 = and i1 %7, %8, !dbg !593
  br i1 %9, label %10, label %36, !dbg !594

; <label>:10:                                     ; preds = %4
  %11 = xor i64 %1, -1, !dbg !595
  br label %12, !dbg !592

; <label>:12:                                     ; preds = %10, %12
  %13 = phi %struct.listNode* [ %17, %12 ], [ %6, %10 ]
  %14 = phi i64 [ %15, %12 ], [ %11, %10 ]
  %15 = add nsw i64 %14, -1, !dbg !592
  %16 = getelementptr inbounds %struct.listNode, %struct.listNode* %13, i64 0, i32 0, !dbg !596
  %17 = load %struct.listNode*, %struct.listNode** %16, align 8, !dbg !591, !tbaa !51
  %18 = icmp ne i64 %15, 0, !dbg !592
  %19 = icmp ne %struct.listNode* %17, null, !dbg !593
  %20 = and i1 %18, %19, !dbg !593
  br i1 %20, label %12, label %36, !dbg !594, !llvm.loop !597

; <label>:21:                                     ; preds = %2
  %22 = getelementptr inbounds %struct.list, %struct.list* %0, i64 0, i32 0, !dbg !598
  %23 = load %struct.listNode*, %struct.listNode** %22, align 8, !dbg !600, !tbaa !51
  %24 = icmp ne i64 %1, 0, !dbg !601
  %25 = icmp ne %struct.listNode* %23, null, !dbg !602
  %26 = and i1 %24, %25, !dbg !602
  br i1 %26, label %27, label %36, !dbg !603

; <label>:27:                                     ; preds = %21, %27
  %28 = phi %struct.listNode* [ %32, %27 ], [ %23, %21 ]
  %29 = phi i64 [ %30, %27 ], [ %1, %21 ]
  %30 = add nsw i64 %29, -1, !dbg !601
  %31 = getelementptr inbounds %struct.listNode, %struct.listNode* %28, i64 0, i32 1, !dbg !604
  %32 = load %struct.listNode*, %struct.listNode** %31, align 8, !dbg !600, !tbaa !51
  %33 = icmp ne i64 %30, 0, !dbg !601
  %34 = icmp ne %struct.listNode* %32, null, !dbg !602
  %35 = and i1 %33, %34, !dbg !602
  br i1 %35, label %27, label %36, !dbg !603, !llvm.loop !605

; <label>:36:                                     ; preds = %27, %12, %21, %4
  %37 = phi %struct.listNode* [ %6, %4 ], [ %23, %21 ], [ %17, %12 ], [ %32, %27 ], !dbg !600
  ret %struct.listNode* %37, !dbg !606
}

; Function Attrs: noredzone nounwind
define dso_local void @listRotate(%struct.list* nocapture) local_unnamed_addr #0 !dbg !607 {
  %2 = getelementptr inbounds %struct.list, %struct.list* %0, i64 0, i32 1, !dbg !612
  %3 = load %struct.listNode*, %struct.listNode** %2, align 8, !dbg !612, !tbaa !156
  %4 = getelementptr inbounds %struct.list, %struct.list* %0, i64 0, i32 5, !dbg !614
  %5 = load i64, i64* %4, align 8, !dbg !614, !tbaa !57
  %6 = icmp ult i64 %5, 2, !dbg !616
  br i1 %6, label %17, label %7, !dbg !617

; <label>:7:                                      ; preds = %1
  %8 = getelementptr inbounds %struct.listNode, %struct.listNode* %3, i64 0, i32 0, !dbg !618
  %9 = load %struct.listNode*, %struct.listNode** %8, align 8, !dbg !618, !tbaa !163
  store %struct.listNode* %9, %struct.listNode** %2, align 8, !dbg !619, !tbaa !156
  %10 = getelementptr inbounds %struct.listNode, %struct.listNode* %9, i64 0, i32 1, !dbg !620
  store %struct.listNode* null, %struct.listNode** %10, align 8, !dbg !621, !tbaa !91
  %11 = getelementptr inbounds %struct.list, %struct.list* %0, i64 0, i32 0, !dbg !622
  %12 = load %struct.listNode*, %struct.listNode** %11, align 8, !dbg !622, !tbaa !85
  %13 = getelementptr inbounds %struct.listNode, %struct.listNode* %12, i64 0, i32 0, !dbg !623
  store %struct.listNode* %3, %struct.listNode** %13, align 8, !dbg !624, !tbaa !163
  store %struct.listNode* null, %struct.listNode** %8, align 8, !dbg !625, !tbaa !163
  %14 = ptrtoint %struct.listNode* %12 to i64, !dbg !626
  %15 = getelementptr inbounds %struct.listNode, %struct.listNode* %3, i64 0, i32 1, !dbg !627
  %16 = bitcast %struct.listNode** %15 to i64*, !dbg !628
  store i64 %14, i64* %16, align 8, !dbg !628, !tbaa !91
  store %struct.listNode* %3, %struct.listNode** %11, align 8, !dbg !629, !tbaa !85
  br label %17, !dbg !630

; <label>:17:                                     ; preds = %1, %7
  ret void, !dbg !630
}

; Function Attrs: noredzone nounwind
define dso_local void @listJoin(%struct.list* nocapture, %struct.list* nocapture) local_unnamed_addr #0 !dbg !631 {
  %3 = getelementptr inbounds %struct.list, %struct.list* %1, i64 0, i32 0, !dbg !639
  %4 = load %struct.listNode*, %struct.listNode** %3, align 8, !dbg !639, !tbaa !85
  %5 = icmp eq %struct.listNode* %4, null, !dbg !641
  %6 = ptrtoint %struct.listNode* %4 to i64, !dbg !642
  %7 = getelementptr inbounds %struct.list, %struct.list* %0, i64 0, i32 1
  br i1 %5, label %8, label %10, !dbg !642

; <label>:8:                                      ; preds = %2
  %9 = load %struct.listNode*, %struct.listNode** %7, align 8, !dbg !643, !tbaa !156
  br label %15, !dbg !642

; <label>:10:                                     ; preds = %2
  %11 = bitcast %struct.listNode** %7 to i64*, !dbg !645
  %12 = load i64, i64* %11, align 8, !dbg !645, !tbaa !156
  %13 = bitcast %struct.listNode* %4 to i64*, !dbg !646
  store i64 %12, i64* %13, align 8, !dbg !646, !tbaa !163
  %14 = inttoptr i64 %12 to %struct.listNode*, !dbg !647
  br label %15, !dbg !647

; <label>:15:                                     ; preds = %8, %10
  %16 = phi %struct.listNode* [ %9, %8 ], [ %14, %10 ], !dbg !643
  %17 = icmp eq %struct.listNode* %16, null, !dbg !648
  %18 = bitcast %struct.list* %0 to i64*, !dbg !649
  %19 = getelementptr inbounds %struct.listNode, %struct.listNode* %16, i64 0, i32 1, !dbg !650
  %20 = bitcast %struct.listNode** %19 to i64*, !dbg !651
  %21 = select i1 %17, i64* %18, i64* %20, !dbg !652
  store i64 %6, i64* %21, align 8, !dbg !653, !tbaa !51
  %22 = getelementptr inbounds %struct.list, %struct.list* %1, i64 0, i32 1, !dbg !654
  %23 = load %struct.listNode*, %struct.listNode** %22, align 8, !dbg !654, !tbaa !156
  %24 = icmp eq %struct.listNode* %23, null, !dbg !656
  br i1 %24, label %26, label %25, !dbg !657

; <label>:25:                                     ; preds = %15
  store %struct.listNode* %23, %struct.listNode** %7, align 8, !dbg !658, !tbaa !156
  br label %26, !dbg !659

; <label>:26:                                     ; preds = %15, %25
  %27 = getelementptr inbounds %struct.list, %struct.list* %1, i64 0, i32 5, !dbg !660
  %28 = load i64, i64* %27, align 8, !dbg !660, !tbaa !57
  %29 = getelementptr inbounds %struct.list, %struct.list* %0, i64 0, i32 5, !dbg !661
  %30 = load i64, i64* %29, align 8, !dbg !662, !tbaa !57
  %31 = add i64 %30, %28, !dbg !662
  store i64 %31, i64* %29, align 8, !dbg !662, !tbaa !57
  %32 = bitcast %struct.list* %1 to <2 x %struct.listNode*>*, !dbg !663
  store <2 x %struct.listNode*> zeroinitializer, <2 x %struct.listNode*>* %32, align 8, !dbg !663, !tbaa !51
  store i64 0, i64* %27, align 8, !dbg !664, !tbaa !57
  ret void, !dbg !665
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noredzone nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { nobuiltin noredzone nounwind }
attributes #5 = { nounwind }

!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/adlist.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !{i32 2, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!9 = distinct !DISubprogram(name: "listCreate", scope: !1, file: !1, line: 41, type: !10, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !42)
!10 = !DISubroutineType(types: !11)
!11 = !{!12}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "list", file: !14, line: 54, baseType: !15)
!14 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/adlist.h", directory: "/root/.unikraft/apps/redis/build")
!15 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list", file: !14, line: 47, size: 384, elements: !16)
!16 = !{!17, !26, !27, !31, !35, !40}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !15, file: !14, line: 48, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "listNode", file: !14, line: 40, baseType: !20)
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "listNode", file: !14, line: 36, size: 192, elements: !21)
!21 = !{!22, !24, !25}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !20, file: !14, line: 37, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !20, file: !14, line: 38, baseType: !23, size: 64, offset: 64)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !20, file: !14, line: 39, baseType: !4, size: 64, offset: 128)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !15, file: !14, line: 49, baseType: !18, size: 64, offset: 64)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "dup", scope: !15, file: !14, line: 50, baseType: !28, size: 64, offset: 128)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DISubroutineType(types: !30)
!30 = !{!4, !4}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !15, file: !14, line: 51, baseType: !32, size: 64, offset: 192)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DISubroutineType(types: !34)
!34 = !{null, !4}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !15, file: !14, line: 52, baseType: !36, size: 64, offset: 256)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DISubroutineType(types: !38)
!38 = !{!39, !4, !4}
!39 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !15, file: !14, line: 53, baseType: !41, size: 64, offset: 320)
!41 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!42 = !{!43}
!43 = !DILocalVariable(name: "list", scope: !9, file: !1, line: 43, type: !44)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!45 = !DILocation(line: 45, column: 17, scope: !46)
!46 = distinct !DILexicalBlock(scope: !9, file: !1, line: 45, column: 9)
!47 = !DILocation(line: 45, column: 41, scope: !46)
!48 = !DILocation(line: 45, column: 9, scope: !9)
!49 = !DILocation(line: 43, column: 18, scope: !9)
!50 = !DILocation(line: 47, column: 16, scope: !9)
!51 = !{!52, !52, i64 0}
!52 = !{!"any pointer", !53, i64 0}
!53 = !{!"omnipotent char", !54, i64 0}
!54 = !{!"Simple C/C++ TBAA"}
!55 = !DILocation(line: 48, column: 11, scope: !9)
!56 = !DILocation(line: 48, column: 15, scope: !9)
!57 = !{!58, !59, i64 40}
!58 = !{!"list", !52, i64 0, !52, i64 8, !52, i64 16, !52, i64 24, !52, i64 32, !59, i64 40}
!59 = !{!"long", !53, i64 0}
!60 = !DILocation(line: 49, column: 11, scope: !9)
!61 = !DILocation(line: 49, column: 15, scope: !9)
!62 = !{!58, !52, i64 16}
!63 = !DILocation(line: 50, column: 11, scope: !9)
!64 = !DILocation(line: 50, column: 16, scope: !9)
!65 = !{!58, !52, i64 24}
!66 = !DILocation(line: 51, column: 11, scope: !9)
!67 = !DILocation(line: 51, column: 17, scope: !9)
!68 = !{!58, !52, i64 32}
!69 = !DILocation(line: 52, column: 5, scope: !9)
!70 = !DILocation(line: 0, scope: !9)
!71 = !DILocation(line: 53, column: 1, scope: !9)
!72 = distinct !DISubprogram(name: "listEmpty", scope: !1, file: !1, line: 56, type: !73, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !75)
!73 = !DISubroutineType(types: !74)
!74 = !{null, !12}
!75 = !{!76, !77, !78, !79}
!76 = !DILocalVariable(name: "list", arg: 1, scope: !72, file: !1, line: 56, type: !12)
!77 = !DILocalVariable(name: "len", scope: !72, file: !1, line: 58, type: !41)
!78 = !DILocalVariable(name: "current", scope: !72, file: !1, line: 59, type: !18)
!79 = !DILocalVariable(name: "next", scope: !72, file: !1, line: 59, type: !18)
!80 = !DILocation(line: 56, column: 22, scope: !72)
!81 = !DILocation(line: 62, column: 17, scope: !72)
!82 = !DILocation(line: 58, column: 19, scope: !72)
!83 = !DILocation(line: 63, column: 5, scope: !72)
!84 = !DILocation(line: 61, column: 21, scope: !72)
!85 = !{!58, !52, i64 0}
!86 = !DILocation(line: 59, column: 15, scope: !72)
!87 = !DILocation(line: 0, scope: !72)
!88 = !DILocation(line: 63, column: 14, scope: !72)
!89 = !DILocation(line: 64, column: 25, scope: !90)
!90 = distinct !DILexicalBlock(scope: !72, file: !1, line: 63, column: 18)
!91 = !{!92, !52, i64 8}
!92 = !{!"listNode", !52, i64 0, !52, i64 8, !52, i64 16}
!93 = !DILocation(line: 59, column: 25, scope: !72)
!94 = !DILocation(line: 65, column: 19, scope: !95)
!95 = distinct !DILexicalBlock(scope: !90, file: !1, line: 65, column: 13)
!96 = !DILocation(line: 65, column: 13, scope: !95)
!97 = !DILocation(line: 65, column: 13, scope: !90)
!98 = !DILocation(line: 65, column: 45, scope: !95)
!99 = !{!92, !52, i64 16}
!100 = !DILocation(line: 65, column: 25, scope: !95)
!101 = !DILocation(line: 66, column: 9, scope: !90)
!102 = distinct !{!102, !83, !103}
!103 = !DILocation(line: 68, column: 5, scope: !72)
!104 = !DILocation(line: 69, column: 16, scope: !72)
!105 = !DILocation(line: 70, column: 15, scope: !72)
!106 = !DILocation(line: 71, column: 1, scope: !72)
!107 = distinct !DISubprogram(name: "listRelease", scope: !1, file: !1, line: 76, type: !73, isLocal: false, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !108)
!108 = !{!109}
!109 = !DILocalVariable(name: "list", arg: 1, scope: !107, file: !1, line: 76, type: !12)
!110 = !DILocation(line: 76, column: 24, scope: !107)
!111 = !DILocation(line: 56, column: 22, scope: !72, inlinedAt: !112)
!112 = distinct !DILocation(line: 78, column: 5, scope: !107)
!113 = !DILocation(line: 62, column: 17, scope: !72, inlinedAt: !112)
!114 = !DILocation(line: 58, column: 19, scope: !72, inlinedAt: !112)
!115 = !DILocation(line: 63, column: 5, scope: !72, inlinedAt: !112)
!116 = !DILocation(line: 61, column: 21, scope: !72, inlinedAt: !112)
!117 = !DILocation(line: 59, column: 15, scope: !72, inlinedAt: !112)
!118 = !DILocation(line: 0, scope: !107)
!119 = !DILocation(line: 63, column: 14, scope: !72, inlinedAt: !112)
!120 = !DILocation(line: 64, column: 25, scope: !90, inlinedAt: !112)
!121 = !DILocation(line: 59, column: 25, scope: !72, inlinedAt: !112)
!122 = !DILocation(line: 65, column: 19, scope: !95, inlinedAt: !112)
!123 = !DILocation(line: 65, column: 13, scope: !95, inlinedAt: !112)
!124 = !DILocation(line: 65, column: 13, scope: !90, inlinedAt: !112)
!125 = !DILocation(line: 65, column: 45, scope: !95, inlinedAt: !112)
!126 = !DILocation(line: 65, column: 25, scope: !95, inlinedAt: !112)
!127 = !DILocation(line: 66, column: 9, scope: !90, inlinedAt: !112)
!128 = !DILocation(line: 69, column: 16, scope: !72, inlinedAt: !112)
!129 = !DILocation(line: 70, column: 15, scope: !72, inlinedAt: !112)
!130 = !DILocation(line: 79, column: 11, scope: !107)
!131 = !DILocation(line: 79, column: 5, scope: !107)
!132 = !DILocation(line: 80, column: 1, scope: !107)
!133 = distinct !DISubprogram(name: "listAddNodeHead", scope: !1, file: !1, line: 88, type: !134, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !136)
!134 = !DISubroutineType(types: !135)
!135 = !{!12, !12, !4}
!136 = !{!137, !138, !139}
!137 = !DILocalVariable(name: "list", arg: 1, scope: !133, file: !1, line: 88, type: !12)
!138 = !DILocalVariable(name: "value", arg: 2, scope: !133, file: !1, line: 88, type: !4)
!139 = !DILocalVariable(name: "node", scope: !133, file: !1, line: 90, type: !18)
!140 = !DILocation(line: 88, column: 29, scope: !133)
!141 = !DILocation(line: 88, column: 41, scope: !133)
!142 = !DILocation(line: 92, column: 17, scope: !143)
!143 = distinct !DILexicalBlock(scope: !133, file: !1, line: 92, column: 9)
!144 = !DILocation(line: 90, column: 15, scope: !133)
!145 = !DILocation(line: 92, column: 41, scope: !143)
!146 = !DILocation(line: 92, column: 9, scope: !133)
!147 = !DILocation(line: 94, column: 11, scope: !133)
!148 = !DILocation(line: 94, column: 17, scope: !133)
!149 = !DILocation(line: 95, column: 15, scope: !150)
!150 = distinct !DILexicalBlock(scope: !133, file: !1, line: 95, column: 9)
!151 = !DILocation(line: 95, column: 19, scope: !150)
!152 = !DILocation(line: 95, column: 9, scope: !133)
!153 = !DILocation(line: 96, column: 28, scope: !154)
!154 = distinct !DILexicalBlock(scope: !150, file: !1, line: 95, column: 25)
!155 = !DILocation(line: 96, column: 33, scope: !154)
!156 = !{!58, !52, i64 8}
!157 = !DILocation(line: 96, column: 20, scope: !154)
!158 = !DILocation(line: 97, column: 20, scope: !154)
!159 = !DILocation(line: 98, column: 5, scope: !154)
!160 = !DILocation(line: 99, column: 15, scope: !161)
!161 = distinct !DILexicalBlock(scope: !150, file: !1, line: 98, column: 12)
!162 = !DILocation(line: 99, column: 20, scope: !161)
!163 = !{!92, !52, i64 0}
!164 = !DILocation(line: 100, column: 28, scope: !161)
!165 = !DILocation(line: 100, column: 15, scope: !161)
!166 = !DILocation(line: 100, column: 20, scope: !161)
!167 = !DILocation(line: 101, column: 15, scope: !161)
!168 = !DILocation(line: 101, column: 26, scope: !161)
!169 = !DILocation(line: 102, column: 20, scope: !161)
!170 = !DILocation(line: 104, column: 14, scope: !133)
!171 = !DILocation(line: 105, column: 5, scope: !133)
!172 = !DILocation(line: 0, scope: !133)
!173 = !DILocation(line: 106, column: 1, scope: !133)
!174 = distinct !DISubprogram(name: "listAddNodeTail", scope: !1, file: !1, line: 114, type: !134, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !175)
!175 = !{!176, !177, !178}
!176 = !DILocalVariable(name: "list", arg: 1, scope: !174, file: !1, line: 114, type: !12)
!177 = !DILocalVariable(name: "value", arg: 2, scope: !174, file: !1, line: 114, type: !4)
!178 = !DILocalVariable(name: "node", scope: !174, file: !1, line: 116, type: !18)
!179 = !DILocation(line: 114, column: 29, scope: !174)
!180 = !DILocation(line: 114, column: 41, scope: !174)
!181 = !DILocation(line: 118, column: 17, scope: !182)
!182 = distinct !DILexicalBlock(scope: !174, file: !1, line: 118, column: 9)
!183 = !DILocation(line: 116, column: 15, scope: !174)
!184 = !DILocation(line: 118, column: 41, scope: !182)
!185 = !DILocation(line: 118, column: 9, scope: !174)
!186 = !DILocation(line: 120, column: 11, scope: !174)
!187 = !DILocation(line: 120, column: 17, scope: !174)
!188 = !DILocation(line: 121, column: 15, scope: !189)
!189 = distinct !DILexicalBlock(scope: !174, file: !1, line: 121, column: 9)
!190 = !DILocation(line: 121, column: 19, scope: !189)
!191 = !DILocation(line: 0, scope: !192)
!192 = distinct !DILexicalBlock(scope: !189, file: !1, line: 124, column: 12)
!193 = !DILocation(line: 121, column: 9, scope: !174)
!194 = !DILocation(line: 122, column: 33, scope: !195)
!195 = distinct !DILexicalBlock(scope: !189, file: !1, line: 121, column: 25)
!196 = !DILocation(line: 122, column: 20, scope: !195)
!197 = !DILocation(line: 123, column: 20, scope: !195)
!198 = !DILocation(line: 124, column: 5, scope: !195)
!199 = !DILocation(line: 125, column: 28, scope: !192)
!200 = !DILocation(line: 125, column: 20, scope: !192)
!201 = !DILocation(line: 126, column: 15, scope: !192)
!202 = !DILocation(line: 126, column: 20, scope: !192)
!203 = !DILocation(line: 127, column: 15, scope: !192)
!204 = !DILocation(line: 127, column: 21, scope: !192)
!205 = !DILocation(line: 127, column: 26, scope: !192)
!206 = !DILocation(line: 128, column: 20, scope: !192)
!207 = !DILocation(line: 130, column: 14, scope: !174)
!208 = !DILocation(line: 131, column: 5, scope: !174)
!209 = !DILocation(line: 0, scope: !174)
!210 = !DILocation(line: 132, column: 1, scope: !174)
!211 = distinct !DISubprogram(name: "listInsertNode", scope: !1, file: !1, line: 134, type: !212, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !214)
!212 = !DISubroutineType(types: !213)
!213 = !{!12, !12, !18, !4, !39}
!214 = !{!215, !216, !217, !218, !219}
!215 = !DILocalVariable(name: "list", arg: 1, scope: !211, file: !1, line: 134, type: !12)
!216 = !DILocalVariable(name: "old_node", arg: 2, scope: !211, file: !1, line: 134, type: !18)
!217 = !DILocalVariable(name: "value", arg: 3, scope: !211, file: !1, line: 134, type: !4)
!218 = !DILocalVariable(name: "after", arg: 4, scope: !211, file: !1, line: 134, type: !39)
!219 = !DILocalVariable(name: "node", scope: !211, file: !1, line: 135, type: !18)
!220 = !DILocation(line: 134, column: 28, scope: !211)
!221 = !DILocation(line: 134, column: 44, scope: !211)
!222 = !DILocation(line: 134, column: 60, scope: !211)
!223 = !DILocation(line: 134, column: 71, scope: !211)
!224 = !DILocation(line: 137, column: 17, scope: !225)
!225 = distinct !DILexicalBlock(scope: !211, file: !1, line: 137, column: 9)
!226 = !DILocation(line: 135, column: 15, scope: !211)
!227 = !DILocation(line: 137, column: 41, scope: !225)
!228 = !DILocation(line: 137, column: 9, scope: !211)
!229 = !DILocation(line: 139, column: 11, scope: !211)
!230 = !DILocation(line: 139, column: 17, scope: !211)
!231 = !DILocation(line: 140, column: 9, scope: !232)
!232 = distinct !DILexicalBlock(scope: !211, file: !1, line: 140, column: 9)
!233 = !DILocation(line: 140, column: 9, scope: !211)
!234 = !DILocation(line: 141, column: 15, scope: !235)
!235 = distinct !DILexicalBlock(scope: !232, file: !1, line: 140, column: 16)
!236 = !DILocation(line: 141, column: 20, scope: !235)
!237 = !DILocation(line: 142, column: 32, scope: !235)
!238 = !DILocation(line: 142, column: 15, scope: !235)
!239 = !DILocation(line: 142, column: 20, scope: !235)
!240 = !DILocation(line: 143, column: 19, scope: !241)
!241 = distinct !DILexicalBlock(scope: !235, file: !1, line: 143, column: 13)
!242 = !DILocation(line: 143, column: 24, scope: !241)
!243 = !DILocation(line: 143, column: 13, scope: !235)
!244 = !DILocation(line: 144, column: 24, scope: !245)
!245 = distinct !DILexicalBlock(scope: !241, file: !1, line: 143, column: 37)
!246 = !DILocation(line: 145, column: 9, scope: !245)
!247 = !DILocation(line: 147, column: 15, scope: !248)
!248 = distinct !DILexicalBlock(scope: !232, file: !1, line: 146, column: 12)
!249 = !DILocation(line: 147, column: 20, scope: !248)
!250 = !DILocation(line: 148, column: 32, scope: !248)
!251 = !DILocation(line: 148, column: 20, scope: !248)
!252 = !DILocation(line: 149, column: 19, scope: !253)
!253 = distinct !DILexicalBlock(scope: !248, file: !1, line: 149, column: 13)
!254 = !DILocation(line: 149, column: 24, scope: !253)
!255 = !DILocation(line: 149, column: 13, scope: !248)
!256 = !DILocation(line: 150, column: 24, scope: !257)
!257 = distinct !DILexicalBlock(scope: !253, file: !1, line: 149, column: 37)
!258 = !DILocation(line: 151, column: 9, scope: !257)
!259 = !DILocation(line: 153, column: 20, scope: !260)
!260 = distinct !DILexicalBlock(scope: !211, file: !1, line: 153, column: 9)
!261 = !DILocation(line: 153, column: 9, scope: !211)
!262 = !DILocation(line: 154, column: 21, scope: !263)
!263 = distinct !DILexicalBlock(scope: !260, file: !1, line: 153, column: 29)
!264 = !DILocation(line: 154, column: 26, scope: !263)
!265 = !DILocation(line: 156, column: 15, scope: !266)
!266 = distinct !DILexicalBlock(scope: !211, file: !1, line: 156, column: 9)
!267 = !DILocation(line: 156, column: 20, scope: !266)
!268 = !DILocation(line: 156, column: 9, scope: !211)
!269 = !DILocation(line: 157, column: 26, scope: !270)
!270 = distinct !DILexicalBlock(scope: !266, file: !1, line: 156, column: 29)
!271 = !DILocation(line: 158, column: 5, scope: !270)
!272 = !DILocation(line: 159, column: 11, scope: !211)
!273 = !DILocation(line: 159, column: 14, scope: !211)
!274 = !DILocation(line: 160, column: 5, scope: !211)
!275 = !DILocation(line: 0, scope: !211)
!276 = !DILocation(line: 161, column: 1, scope: !211)
!277 = distinct !DISubprogram(name: "listDelNode", scope: !1, file: !1, line: 167, type: !278, isLocal: false, isDefinition: true, scopeLine: 168, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !280)
!278 = !DISubroutineType(types: !279)
!279 = !{null, !12, !18}
!280 = !{!281, !282}
!281 = !DILocalVariable(name: "list", arg: 1, scope: !277, file: !1, line: 167, type: !12)
!282 = !DILocalVariable(name: "node", arg: 2, scope: !277, file: !1, line: 167, type: !18)
!283 = !DILocation(line: 167, column: 24, scope: !277)
!284 = !DILocation(line: 167, column: 40, scope: !277)
!285 = !DILocation(line: 169, column: 15, scope: !286)
!286 = distinct !DILexicalBlock(scope: !277, file: !1, line: 169, column: 9)
!287 = !DILocation(line: 169, column: 9, scope: !286)
!288 = !DILocation(line: 0, scope: !286)
!289 = !DILocation(line: 169, column: 9, scope: !277)
!290 = !DILocation(line: 170, column: 21, scope: !286)
!291 = !DILocation(line: 170, column: 26, scope: !286)
!292 = !DILocation(line: 173, column: 15, scope: !293)
!293 = distinct !DILexicalBlock(scope: !277, file: !1, line: 173, column: 9)
!294 = !DILocation(line: 170, column: 9, scope: !286)
!295 = !DILocation(line: 172, column: 20, scope: !286)
!296 = !DILocation(line: 173, column: 9, scope: !293)
!297 = !DILocation(line: 176, column: 15, scope: !293)
!298 = !DILocation(line: 176, column: 20, scope: !293)
!299 = !DILocation(line: 174, column: 26, scope: !293)
!300 = !DILocation(line: 173, column: 9, scope: !277)
!301 = !DILocation(line: 0, scope: !293)
!302 = !DILocation(line: 177, column: 15, scope: !303)
!303 = distinct !DILexicalBlock(scope: !277, file: !1, line: 177, column: 9)
!304 = !DILocation(line: 177, column: 9, scope: !303)
!305 = !DILocation(line: 177, column: 9, scope: !277)
!306 = !DILocation(line: 177, column: 38, scope: !303)
!307 = !DILocation(line: 177, column: 21, scope: !303)
!308 = !DILocation(line: 178, column: 11, scope: !277)
!309 = !DILocation(line: 178, column: 5, scope: !277)
!310 = !DILocation(line: 179, column: 11, scope: !277)
!311 = !DILocation(line: 179, column: 14, scope: !277)
!312 = !DILocation(line: 180, column: 1, scope: !277)
!313 = distinct !DISubprogram(name: "listGetIterator", scope: !1, file: !1, line: 186, type: !314, isLocal: false, isDefinition: true, scopeLine: 187, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !322)
!314 = !DISubroutineType(types: !315)
!315 = !{!316, !12, !39}
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "listIter", file: !14, line: 45, baseType: !318)
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "listIter", file: !14, line: 42, size: 128, elements: !319)
!319 = !{!320, !321}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !318, file: !14, line: 43, baseType: !18, size: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !318, file: !14, line: 44, baseType: !39, size: 32, offset: 64)
!322 = !{!323, !324, !325}
!323 = !DILocalVariable(name: "list", arg: 1, scope: !313, file: !1, line: 186, type: !12)
!324 = !DILocalVariable(name: "direction", arg: 2, scope: !313, file: !1, line: 186, type: !39)
!325 = !DILocalVariable(name: "iter", scope: !313, file: !1, line: 188, type: !316)
!326 = !DILocation(line: 186, column: 33, scope: !313)
!327 = !DILocation(line: 186, column: 43, scope: !313)
!328 = !DILocation(line: 190, column: 17, scope: !329)
!329 = distinct !DILexicalBlock(scope: !313, file: !1, line: 190, column: 9)
!330 = !DILocation(line: 190, column: 41, scope: !329)
!331 = !DILocation(line: 190, column: 9, scope: !313)
!332 = !DILocation(line: 188, column: 15, scope: !313)
!333 = !DILocation(line: 191, column: 19, scope: !334)
!334 = distinct !DILexicalBlock(scope: !313, file: !1, line: 191, column: 9)
!335 = !DILocation(line: 194, column: 28, scope: !334)
!336 = !DILocation(line: 192, column: 28, scope: !334)
!337 = !DILocation(line: 191, column: 9, scope: !313)
!338 = !DILocation(line: 0, scope: !334)
!339 = !{!340, !52, i64 0}
!340 = !{!"listIter", !52, i64 0, !341, i64 8}
!341 = !{!"int", !53, i64 0}
!342 = !DILocation(line: 195, column: 11, scope: !313)
!343 = !DILocation(line: 195, column: 21, scope: !313)
!344 = !{!340, !341, i64 8}
!345 = !DILocation(line: 196, column: 5, scope: !313)
!346 = !DILocation(line: 0, scope: !313)
!347 = !DILocation(line: 197, column: 1, scope: !313)
!348 = distinct !DISubprogram(name: "listReleaseIterator", scope: !1, file: !1, line: 200, type: !349, isLocal: false, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !351)
!349 = !DISubroutineType(types: !350)
!350 = !{null, !316}
!351 = !{!352}
!352 = !DILocalVariable(name: "iter", arg: 1, scope: !348, file: !1, line: 200, type: !316)
!353 = !DILocation(line: 200, column: 36, scope: !348)
!354 = !DILocation(line: 201, column: 11, scope: !348)
!355 = !DILocation(line: 201, column: 5, scope: !348)
!356 = !DILocation(line: 202, column: 1, scope: !348)
!357 = distinct !DISubprogram(name: "listRewind", scope: !1, file: !1, line: 205, type: !358, isLocal: false, isDefinition: true, scopeLine: 205, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !360)
!358 = !DISubroutineType(types: !359)
!359 = !{null, !12, !316}
!360 = !{!361, !362}
!361 = !DILocalVariable(name: "list", arg: 1, scope: !357, file: !1, line: 205, type: !12)
!362 = !DILocalVariable(name: "li", arg: 2, scope: !357, file: !1, line: 205, type: !316)
!363 = !DILocation(line: 205, column: 23, scope: !357)
!364 = !DILocation(line: 205, column: 39, scope: !357)
!365 = !DILocation(line: 206, column: 22, scope: !357)
!366 = !DILocation(line: 206, column: 14, scope: !357)
!367 = !DILocation(line: 207, column: 9, scope: !357)
!368 = !DILocation(line: 207, column: 19, scope: !357)
!369 = !DILocation(line: 208, column: 1, scope: !357)
!370 = distinct !DISubprogram(name: "listRewindTail", scope: !1, file: !1, line: 210, type: !358, isLocal: false, isDefinition: true, scopeLine: 210, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !371)
!371 = !{!372, !373}
!372 = !DILocalVariable(name: "list", arg: 1, scope: !370, file: !1, line: 210, type: !12)
!373 = !DILocalVariable(name: "li", arg: 2, scope: !370, file: !1, line: 210, type: !316)
!374 = !DILocation(line: 210, column: 27, scope: !370)
!375 = !DILocation(line: 210, column: 43, scope: !370)
!376 = !DILocation(line: 211, column: 22, scope: !370)
!377 = !DILocation(line: 211, column: 14, scope: !370)
!378 = !DILocation(line: 212, column: 9, scope: !370)
!379 = !DILocation(line: 212, column: 19, scope: !370)
!380 = !DILocation(line: 213, column: 1, scope: !370)
!381 = distinct !DISubprogram(name: "listNext", scope: !1, file: !1, line: 229, type: !382, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !384)
!382 = !DISubroutineType(types: !383)
!383 = !{!18, !316}
!384 = !{!385, !386}
!385 = !DILocalVariable(name: "iter", arg: 1, scope: !381, file: !1, line: 229, type: !316)
!386 = !DILocalVariable(name: "current", scope: !381, file: !1, line: 231, type: !18)
!387 = !DILocation(line: 229, column: 30, scope: !381)
!388 = !DILocation(line: 231, column: 31, scope: !381)
!389 = !DILocation(line: 231, column: 15, scope: !381)
!390 = !DILocation(line: 233, column: 17, scope: !391)
!391 = distinct !DILexicalBlock(scope: !381, file: !1, line: 233, column: 9)
!392 = !DILocation(line: 233, column: 9, scope: !381)
!393 = !DILocation(line: 234, column: 19, scope: !394)
!394 = distinct !DILexicalBlock(scope: !395, file: !1, line: 234, column: 13)
!395 = distinct !DILexicalBlock(scope: !391, file: !1, line: 233, column: 26)
!396 = !DILocation(line: 234, column: 29, scope: !394)
!397 = !DILocation(line: 235, column: 35, scope: !394)
!398 = !DILocation(line: 237, column: 35, scope: !394)
!399 = !DILocation(line: 234, column: 13, scope: !395)
!400 = !DILocation(line: 0, scope: !394)
!401 = !DILocation(line: 239, column: 5, scope: !381)
!402 = distinct !DISubprogram(name: "listDup", scope: !1, file: !1, line: 250, type: !403, isLocal: false, isDefinition: true, scopeLine: 251, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !405)
!403 = !DISubroutineType(types: !404)
!404 = !{!12, !12}
!405 = !{!406, !407, !408, !409, !410}
!406 = !DILocalVariable(name: "orig", arg: 1, scope: !402, file: !1, line: 250, type: !12)
!407 = !DILocalVariable(name: "copy", scope: !402, file: !1, line: 252, type: !12)
!408 = !DILocalVariable(name: "iter", scope: !402, file: !1, line: 253, type: !317)
!409 = !DILocalVariable(name: "node", scope: !402, file: !1, line: 254, type: !18)
!410 = !DILocalVariable(name: "value", scope: !411, file: !1, line: 263, type: !4)
!411 = distinct !DILexicalBlock(scope: !402, file: !1, line: 262, column: 45)
!412 = !DILocation(line: 250, column: 21, scope: !402)
!413 = !DILocation(line: 45, column: 17, scope: !46, inlinedAt: !414)
!414 = distinct !DILocation(line: 256, column: 17, scope: !415)
!415 = distinct !DILexicalBlock(scope: !402, file: !1, line: 256, column: 9)
!416 = !DILocation(line: 45, column: 41, scope: !46, inlinedAt: !414)
!417 = !DILocation(line: 45, column: 9, scope: !9, inlinedAt: !414)
!418 = !DILocation(line: 43, column: 18, scope: !9, inlinedAt: !414)
!419 = !DILocation(line: 47, column: 24, scope: !9, inlinedAt: !414)
!420 = !DILocation(line: 47, column: 11, scope: !9, inlinedAt: !414)
!421 = !DILocation(line: 47, column: 16, scope: !9, inlinedAt: !414)
!422 = !DILocation(line: 48, column: 11, scope: !9, inlinedAt: !414)
!423 = !DILocation(line: 48, column: 15, scope: !9, inlinedAt: !414)
!424 = !DILocation(line: 49, column: 11, scope: !9, inlinedAt: !414)
!425 = !DILocation(line: 49, column: 15, scope: !9, inlinedAt: !414)
!426 = !DILocation(line: 50, column: 11, scope: !9, inlinedAt: !414)
!427 = !DILocation(line: 50, column: 16, scope: !9, inlinedAt: !414)
!428 = !DILocation(line: 51, column: 11, scope: !9, inlinedAt: !414)
!429 = !DILocation(line: 51, column: 17, scope: !9, inlinedAt: !414)
!430 = !DILocation(line: 252, column: 11, scope: !402)
!431 = !DILocation(line: 258, column: 23, scope: !402)
!432 = !DILocation(line: 258, column: 15, scope: !402)
!433 = !DILocation(line: 260, column: 25, scope: !402)
!434 = !DILocation(line: 260, column: 17, scope: !402)
!435 = !DILocation(line: 253, column: 14, scope: !402)
!436 = !DILocation(line: 205, column: 23, scope: !357, inlinedAt: !437)
!437 = distinct !DILocation(line: 261, column: 5, scope: !402)
!438 = !DILocation(line: 205, column: 39, scope: !357, inlinedAt: !437)
!439 = !DILocation(line: 206, column: 22, scope: !357, inlinedAt: !437)
!440 = !DILocation(line: 229, column: 30, scope: !381, inlinedAt: !441)
!441 = distinct !DILocation(line: 262, column: 19, scope: !402)
!442 = !DILocation(line: 233, column: 17, scope: !391, inlinedAt: !441)
!443 = !DILocation(line: 233, column: 9, scope: !381, inlinedAt: !441)
!444 = !DILocation(line: 231, column: 15, scope: !381, inlinedAt: !441)
!445 = !DILocation(line: 265, column: 19, scope: !446)
!446 = distinct !DILexicalBlock(scope: !411, file: !1, line: 265, column: 13)
!447 = !DILocation(line: 231, column: 31, scope: !381, inlinedAt: !441)
!448 = !DILocation(line: 235, column: 35, scope: !394, inlinedAt: !441)
!449 = !DILocation(line: 254, column: 15, scope: !402)
!450 = !DILocation(line: 265, column: 13, scope: !446)
!451 = !DILocation(line: 0, scope: !452)
!452 = distinct !DILexicalBlock(scope: !446, file: !1, line: 265, column: 24)
!453 = !DILocation(line: 265, column: 13, scope: !411)
!454 = !DILocation(line: 266, column: 21, scope: !452)
!455 = !DILocation(line: 263, column: 15, scope: !411)
!456 = !DILocation(line: 267, column: 23, scope: !457)
!457 = distinct !DILexicalBlock(scope: !452, file: !1, line: 267, column: 17)
!458 = !DILocation(line: 267, column: 17, scope: !452)
!459 = !DILocation(line: 76, column: 24, scope: !107, inlinedAt: !460)
!460 = distinct !DILocation(line: 268, column: 17, scope: !461)
!461 = distinct !DILexicalBlock(scope: !457, file: !1, line: 267, column: 32)
!462 = !DILocation(line: 56, column: 22, scope: !72, inlinedAt: !463)
!463 = distinct !DILocation(line: 78, column: 5, scope: !107, inlinedAt: !460)
!464 = !DILocation(line: 62, column: 17, scope: !72, inlinedAt: !463)
!465 = !DILocation(line: 58, column: 19, scope: !72, inlinedAt: !463)
!466 = !DILocation(line: 63, column: 5, scope: !72, inlinedAt: !463)
!467 = !DILocation(line: 61, column: 21, scope: !72, inlinedAt: !463)
!468 = !DILocation(line: 59, column: 15, scope: !72, inlinedAt: !463)
!469 = !DILocation(line: 0, scope: !107, inlinedAt: !460)
!470 = !DILocation(line: 63, column: 14, scope: !72, inlinedAt: !463)
!471 = !DILocation(line: 64, column: 25, scope: !90, inlinedAt: !463)
!472 = !DILocation(line: 59, column: 25, scope: !72, inlinedAt: !463)
!473 = !DILocation(line: 65, column: 19, scope: !95, inlinedAt: !463)
!474 = !DILocation(line: 65, column: 13, scope: !95, inlinedAt: !463)
!475 = !DILocation(line: 65, column: 13, scope: !90, inlinedAt: !463)
!476 = !DILocation(line: 65, column: 45, scope: !95, inlinedAt: !463)
!477 = !DILocation(line: 65, column: 25, scope: !95, inlinedAt: !463)
!478 = !DILocation(line: 66, column: 9, scope: !90, inlinedAt: !463)
!479 = !DILocation(line: 69, column: 16, scope: !72, inlinedAt: !463)
!480 = !DILocation(line: 70, column: 15, scope: !72, inlinedAt: !463)
!481 = !DILocation(line: 79, column: 5, scope: !107, inlinedAt: !460)
!482 = !DILocation(line: 0, scope: !446)
!483 = !DILocation(line: 114, column: 29, scope: !174, inlinedAt: !484)
!484 = distinct !DILocation(line: 273, column: 13, scope: !485)
!485 = distinct !DILexicalBlock(scope: !411, file: !1, line: 273, column: 13)
!486 = !DILocation(line: 114, column: 41, scope: !174, inlinedAt: !484)
!487 = !DILocation(line: 118, column: 17, scope: !182, inlinedAt: !484)
!488 = !DILocation(line: 116, column: 15, scope: !174, inlinedAt: !484)
!489 = !DILocation(line: 118, column: 41, scope: !182, inlinedAt: !484)
!490 = !DILocation(line: 118, column: 9, scope: !174, inlinedAt: !484)
!491 = !DILocation(line: 120, column: 11, scope: !174, inlinedAt: !484)
!492 = !DILocation(line: 120, column: 17, scope: !174, inlinedAt: !484)
!493 = !DILocation(line: 121, column: 15, scope: !189, inlinedAt: !484)
!494 = !DILocation(line: 121, column: 19, scope: !189, inlinedAt: !484)
!495 = !DILocation(line: 121, column: 9, scope: !174, inlinedAt: !484)
!496 = !DILocation(line: 122, column: 33, scope: !195, inlinedAt: !484)
!497 = !DILocation(line: 122, column: 20, scope: !195, inlinedAt: !484)
!498 = !DILocation(line: 123, column: 20, scope: !195, inlinedAt: !484)
!499 = !DILocation(line: 124, column: 5, scope: !195, inlinedAt: !484)
!500 = !DILocation(line: 125, column: 28, scope: !192, inlinedAt: !484)
!501 = !DILocation(line: 125, column: 20, scope: !192, inlinedAt: !484)
!502 = !DILocation(line: 126, column: 15, scope: !192, inlinedAt: !484)
!503 = !DILocation(line: 126, column: 20, scope: !192, inlinedAt: !484)
!504 = !DILocation(line: 127, column: 15, scope: !192, inlinedAt: !484)
!505 = !DILocation(line: 127, column: 21, scope: !192, inlinedAt: !484)
!506 = !DILocation(line: 127, column: 26, scope: !192, inlinedAt: !484)
!507 = !DILocation(line: 128, column: 20, scope: !192, inlinedAt: !484)
!508 = !DILocation(line: 130, column: 14, scope: !174, inlinedAt: !484)
!509 = !DILocation(line: 76, column: 24, scope: !107, inlinedAt: !510)
!510 = distinct !DILocation(line: 274, column: 13, scope: !511)
!511 = distinct !DILexicalBlock(scope: !485, file: !1, line: 273, column: 51)
!512 = !DILocation(line: 56, column: 22, scope: !72, inlinedAt: !513)
!513 = distinct !DILocation(line: 78, column: 5, scope: !107, inlinedAt: !510)
!514 = !DILocation(line: 62, column: 17, scope: !72, inlinedAt: !513)
!515 = !DILocation(line: 58, column: 19, scope: !72, inlinedAt: !513)
!516 = !DILocation(line: 63, column: 5, scope: !72, inlinedAt: !513)
!517 = !DILocation(line: 61, column: 21, scope: !72, inlinedAt: !513)
!518 = !DILocation(line: 59, column: 15, scope: !72, inlinedAt: !513)
!519 = !DILocation(line: 0, scope: !107, inlinedAt: !510)
!520 = !DILocation(line: 63, column: 14, scope: !72, inlinedAt: !513)
!521 = !DILocation(line: 64, column: 25, scope: !90, inlinedAt: !513)
!522 = !DILocation(line: 59, column: 25, scope: !72, inlinedAt: !513)
!523 = !DILocation(line: 65, column: 19, scope: !95, inlinedAt: !513)
!524 = !DILocation(line: 65, column: 13, scope: !95, inlinedAt: !513)
!525 = !DILocation(line: 65, column: 13, scope: !90, inlinedAt: !513)
!526 = !DILocation(line: 65, column: 45, scope: !95, inlinedAt: !513)
!527 = !DILocation(line: 65, column: 25, scope: !95, inlinedAt: !513)
!528 = !DILocation(line: 66, column: 9, scope: !90, inlinedAt: !513)
!529 = !DILocation(line: 69, column: 16, scope: !72, inlinedAt: !513)
!530 = !DILocation(line: 70, column: 15, scope: !72, inlinedAt: !513)
!531 = !DILocation(line: 79, column: 5, scope: !107, inlinedAt: !510)
!532 = !DILocation(line: 0, scope: !402)
!533 = !DILocation(line: 279, column: 1, scope: !402)
!534 = distinct !DISubprogram(name: "listSearchKey", scope: !1, file: !1, line: 290, type: !535, isLocal: false, isDefinition: true, scopeLine: 291, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !537)
!535 = !DISubroutineType(types: !536)
!536 = !{!18, !12, !4}
!537 = !{!538, !539, !540, !541}
!538 = !DILocalVariable(name: "list", arg: 1, scope: !534, file: !1, line: 290, type: !12)
!539 = !DILocalVariable(name: "key", arg: 2, scope: !534, file: !1, line: 290, type: !4)
!540 = !DILocalVariable(name: "iter", scope: !534, file: !1, line: 292, type: !317)
!541 = !DILocalVariable(name: "node", scope: !534, file: !1, line: 293, type: !18)
!542 = !DILocation(line: 290, column: 31, scope: !534)
!543 = !DILocation(line: 290, column: 43, scope: !534)
!544 = !DILocation(line: 292, column: 14, scope: !534)
!545 = !DILocation(line: 205, column: 23, scope: !357, inlinedAt: !546)
!546 = distinct !DILocation(line: 295, column: 5, scope: !534)
!547 = !DILocation(line: 205, column: 39, scope: !357, inlinedAt: !546)
!548 = !DILocation(line: 206, column: 22, scope: !357, inlinedAt: !546)
!549 = !DILocation(line: 229, column: 30, scope: !381, inlinedAt: !550)
!550 = distinct !DILocation(line: 296, column: 19, scope: !534)
!551 = !DILocation(line: 231, column: 31, scope: !381, inlinedAt: !550)
!552 = !DILocation(line: 231, column: 15, scope: !381, inlinedAt: !550)
!553 = !DILocation(line: 233, column: 17, scope: !391, inlinedAt: !550)
!554 = !DILocation(line: 233, column: 9, scope: !381, inlinedAt: !550)
!555 = !DILocation(line: 235, column: 35, scope: !394, inlinedAt: !550)
!556 = !DILocation(line: 293, column: 15, scope: !534)
!557 = !DILocation(line: 297, column: 19, scope: !558)
!558 = distinct !DILexicalBlock(scope: !559, file: !1, line: 297, column: 13)
!559 = distinct !DILexicalBlock(scope: !534, file: !1, line: 296, column: 45)
!560 = !DILocation(line: 297, column: 13, scope: !558)
!561 = !DILocation(line: 0, scope: !562)
!562 = distinct !DILexicalBlock(scope: !563, file: !1, line: 298, column: 17)
!563 = distinct !DILexicalBlock(scope: !558, file: !1, line: 297, column: 26)
!564 = !DILocation(line: 297, column: 13, scope: !559)
!565 = !DILocation(line: 298, column: 17, scope: !562)
!566 = !DILocation(line: 298, column: 17, scope: !563)
!567 = !DILocation(line: 302, column: 21, scope: !568)
!568 = distinct !DILexicalBlock(scope: !569, file: !1, line: 302, column: 17)
!569 = distinct !DILexicalBlock(scope: !558, file: !1, line: 301, column: 16)
!570 = !DILocation(line: 302, column: 17, scope: !569)
!571 = distinct !{!571, !572, !573}
!572 = !DILocation(line: 296, column: 5, scope: !534)
!573 = !DILocation(line: 306, column: 5, scope: !534)
!574 = !DILocation(line: 308, column: 1, scope: !534)
!575 = distinct !DISubprogram(name: "listIndex", scope: !1, file: !1, line: 315, type: !576, isLocal: false, isDefinition: true, scopeLine: 315, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !579)
!576 = !DISubroutineType(types: !577)
!577 = !{!18, !12, !578}
!578 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!579 = !{!580, !581, !582}
!580 = !DILocalVariable(name: "list", arg: 1, scope: !575, file: !1, line: 315, type: !12)
!581 = !DILocalVariable(name: "index", arg: 2, scope: !575, file: !1, line: 315, type: !578)
!582 = !DILocalVariable(name: "n", scope: !575, file: !1, line: 316, type: !18)
!583 = !DILocation(line: 315, column: 27, scope: !575)
!584 = !DILocation(line: 315, column: 38, scope: !575)
!585 = !DILocation(line: 318, column: 15, scope: !586)
!586 = distinct !DILexicalBlock(scope: !575, file: !1, line: 318, column: 9)
!587 = !DILocation(line: 318, column: 9, scope: !575)
!588 = !DILocation(line: 320, column: 19, scope: !589)
!589 = distinct !DILexicalBlock(scope: !586, file: !1, line: 318, column: 20)
!590 = !DILocation(line: 316, column: 15, scope: !575)
!591 = !DILocation(line: 0, scope: !589)
!592 = !DILocation(line: 321, column: 20, scope: !589)
!593 = !DILocation(line: 321, column: 23, scope: !589)
!594 = !DILocation(line: 321, column: 9, scope: !589)
!595 = !DILocation(line: 319, column: 25, scope: !589)
!596 = !DILocation(line: 321, column: 36, scope: !589)
!597 = distinct !{!597, !594, !596}
!598 = !DILocation(line: 323, column: 19, scope: !599)
!599 = distinct !DILexicalBlock(scope: !586, file: !1, line: 322, column: 12)
!600 = !DILocation(line: 0, scope: !599)
!601 = !DILocation(line: 324, column: 20, scope: !599)
!602 = !DILocation(line: 324, column: 23, scope: !599)
!603 = !DILocation(line: 324, column: 9, scope: !599)
!604 = !DILocation(line: 324, column: 36, scope: !599)
!605 = distinct !{!605, !603, !604}
!606 = !DILocation(line: 326, column: 5, scope: !575)
!607 = distinct !DISubprogram(name: "listRotate", scope: !1, file: !1, line: 330, type: !73, isLocal: false, isDefinition: true, scopeLine: 330, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !608)
!608 = !{!609, !610}
!609 = !DILocalVariable(name: "list", arg: 1, scope: !607, file: !1, line: 330, type: !12)
!610 = !DILocalVariable(name: "tail", scope: !607, file: !1, line: 331, type: !18)
!611 = !DILocation(line: 330, column: 23, scope: !607)
!612 = !DILocation(line: 331, column: 28, scope: !607)
!613 = !DILocation(line: 331, column: 15, scope: !607)
!614 = !DILocation(line: 333, column: 9, scope: !615)
!615 = distinct !DILexicalBlock(scope: !607, file: !1, line: 333, column: 9)
!616 = !DILocation(line: 333, column: 26, scope: !615)
!617 = !DILocation(line: 333, column: 9, scope: !607)
!618 = !DILocation(line: 336, column: 24, scope: !607)
!619 = !DILocation(line: 336, column: 16, scope: !607)
!620 = !DILocation(line: 337, column: 17, scope: !607)
!621 = !DILocation(line: 337, column: 22, scope: !607)
!622 = !DILocation(line: 339, column: 11, scope: !607)
!623 = !DILocation(line: 339, column: 17, scope: !607)
!624 = !DILocation(line: 339, column: 22, scope: !607)
!625 = !DILocation(line: 340, column: 16, scope: !607)
!626 = !DILocation(line: 341, column: 24, scope: !607)
!627 = !DILocation(line: 341, column: 11, scope: !607)
!628 = !DILocation(line: 341, column: 16, scope: !607)
!629 = !DILocation(line: 342, column: 16, scope: !607)
!630 = !DILocation(line: 343, column: 1, scope: !607)
!631 = distinct !DISubprogram(name: "listJoin", scope: !1, file: !1, line: 347, type: !632, isLocal: false, isDefinition: true, scopeLine: 347, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !634)
!632 = !DISubroutineType(types: !633)
!633 = !{null, !12, !12}
!634 = !{!635, !636}
!635 = !DILocalVariable(name: "l", arg: 1, scope: !631, file: !1, line: 347, type: !12)
!636 = !DILocalVariable(name: "o", arg: 2, scope: !631, file: !1, line: 347, type: !12)
!637 = !DILocation(line: 347, column: 21, scope: !631)
!638 = !DILocation(line: 347, column: 30, scope: !631)
!639 = !DILocation(line: 348, column: 12, scope: !640)
!640 = distinct !DILexicalBlock(scope: !631, file: !1, line: 348, column: 9)
!641 = !DILocation(line: 348, column: 9, scope: !640)
!642 = !DILocation(line: 348, column: 9, scope: !631)
!643 = !DILocation(line: 351, column: 12, scope: !644)
!644 = distinct !DILexicalBlock(scope: !631, file: !1, line: 351, column: 9)
!645 = !DILocation(line: 349, column: 28, scope: !640)
!646 = !DILocation(line: 349, column: 23, scope: !640)
!647 = !DILocation(line: 349, column: 9, scope: !640)
!648 = !DILocation(line: 351, column: 9, scope: !644)
!649 = !DILocation(line: 354, column: 17, scope: !644)
!650 = !DILocation(line: 352, column: 18, scope: !644)
!651 = !DILocation(line: 352, column: 23, scope: !644)
!652 = !DILocation(line: 351, column: 9, scope: !631)
!653 = !DILocation(line: 0, scope: !644)
!654 = !DILocation(line: 356, column: 12, scope: !655)
!655 = distinct !DILexicalBlock(scope: !631, file: !1, line: 356, column: 9)
!656 = !DILocation(line: 356, column: 9, scope: !655)
!657 = !DILocation(line: 356, column: 9, scope: !631)
!658 = !DILocation(line: 356, column: 26, scope: !655)
!659 = !DILocation(line: 356, column: 18, scope: !655)
!660 = !DILocation(line: 357, column: 18, scope: !631)
!661 = !DILocation(line: 357, column: 8, scope: !631)
!662 = !DILocation(line: 357, column: 12, scope: !631)
!663 = !DILocation(line: 360, column: 13, scope: !631)
!664 = !DILocation(line: 361, column: 12, scope: !631)
!665 = !DILocation(line: 362, column: 1, scope: !631)
