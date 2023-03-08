; ModuleID = '/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/adlist.c'
source_filename = "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/adlist.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.list = type { %struct.listNode*, %struct.listNode*, i8* (i8*)*, void (i8*)*, i32 (i8*, i8*)*, i64 }
%struct.listNode = type { %struct.listNode*, %struct.listNode*, i8* }
%struct.listIter = type { %struct.listNode*, i32 }

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local %struct.list* @listCreate() local_unnamed_addr #0 !dbg !9 {
  %1 = tail call i8* @zmalloc(i64 48) #3, !dbg !45
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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !71
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
  tail call void %16(i8* %20) #3, !dbg !100
  br label %21, !dbg !100

; <label>:21:                                     ; preds = %9, %18
  tail call void @zfree(i8* nonnull %12) #3, !dbg !101
  %22 = icmp eq i64 %13, 0, !dbg !83
  br i1 %22, label %23, label %9, !dbg !83, !llvm.loop !102

; <label>:23:                                     ; preds = %21, %1
  %24 = bitcast %struct.list* %0 to <2 x %struct.listNode*>*, !dbg !104
  store <2 x %struct.listNode*> zeroinitializer, <2 x %struct.listNode*>* %24, align 8, !dbg !104, !tbaa !51
  store i64 0, i64* %2, align 8, !dbg !105, !tbaa !57
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !106
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
  tail call void %16(i8* %20) #3, !dbg !126
  br label %21, !dbg !126

; <label>:21:                                     ; preds = %18, %9
  tail call void @zfree(i8* nonnull %12) #3, !dbg !127
  %22 = icmp eq i64 %13, 0, !dbg !115
  br i1 %22, label %23, label %9, !dbg !115, !llvm.loop !102

; <label>:23:                                     ; preds = %21, %1
  %24 = bitcast %struct.list* %0 to <2 x %struct.listNode*>*, !dbg !128
  store <2 x %struct.listNode*> zeroinitializer, <2 x %struct.listNode*>* %24, align 8, !dbg !128, !tbaa !51
  store i64 0, i64* %2, align 8, !dbg !129, !tbaa !57
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !130
  %25 = bitcast %struct.list* %0 to i8*, !dbg !131
  tail call void @zfree(i8* %25) #3, !dbg !132
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !133
  ret void, !dbg !133
}

; Function Attrs: noredzone nounwind
define dso_local %struct.list* @listAddNodeHead(%struct.list*, i8*) local_unnamed_addr #0 !dbg !134 {
  %3 = tail call i8* @zmalloc(i64 24) #3, !dbg !143
  %4 = icmp eq i8* %3, null, !dbg !146
  br i1 %4, label %26, label %5, !dbg !147

; <label>:5:                                      ; preds = %2
  %6 = getelementptr inbounds i8, i8* %3, i64 16, !dbg !148
  %7 = bitcast i8* %6 to i8**, !dbg !148
  store i8* %1, i8** %7, align 8, !dbg !149, !tbaa !99
  %8 = getelementptr inbounds %struct.list, %struct.list* %0, i64 0, i32 5, !dbg !150
  %9 = load i64, i64* %8, align 8, !dbg !150, !tbaa !57
  %10 = icmp eq i64 %9, 0, !dbg !152
  br i1 %10, label %11, label %16, !dbg !153

; <label>:11:                                     ; preds = %5
  %12 = getelementptr inbounds %struct.list, %struct.list* %0, i64 0, i32 1, !dbg !154
  %13 = bitcast %struct.listNode** %12 to i8**, !dbg !156
  store i8* %3, i8** %13, align 8, !dbg !156, !tbaa !157
  %14 = bitcast %struct.list* %0 to i8**, !dbg !158
  store i8* %3, i8** %14, align 8, !dbg !158, !tbaa !85
  %15 = bitcast i8* %3 to <2 x %struct.listNode*>*, !dbg !159
  store <2 x %struct.listNode*> zeroinitializer, <2 x %struct.listNode*>* %15, align 8, !dbg !159, !tbaa !51
  br label %24, !dbg !160

; <label>:16:                                     ; preds = %5
  %17 = bitcast i8* %3 to %struct.listNode**, !dbg !161
  store %struct.listNode* null, %struct.listNode** %17, align 8, !dbg !163, !tbaa !164
  %18 = bitcast %struct.list* %0 to i64*, !dbg !165
  %19 = load i64, i64* %18, align 8, !dbg !165, !tbaa !85
  %20 = getelementptr inbounds i8, i8* %3, i64 8, !dbg !166
  %21 = bitcast i8* %20 to i64*, !dbg !167
  store i64 %19, i64* %21, align 8, !dbg !167, !tbaa !91
  %22 = inttoptr i64 %19 to i8**, !dbg !168
  store i8* %3, i8** %22, align 8, !dbg !169, !tbaa !164
  %23 = bitcast %struct.list* %0 to i8**, !dbg !170
  store i8* %3, i8** %23, align 8, !dbg !170, !tbaa !85
  br label %24

; <label>:24:                                     ; preds = %16, %11
  %25 = add i64 %9, 1, !dbg !171
  store i64 %25, i64* %8, align 8, !dbg !171, !tbaa !57
  br label %26, !dbg !172

; <label>:26:                                     ; preds = %2, %24
  %27 = phi %struct.list* [ %0, %24 ], [ null, %2 ], !dbg !173
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !174
  ret %struct.list* %27, !dbg !174
}

; Function Attrs: noredzone nounwind
define dso_local %struct.list* @listAddNodeTail(%struct.list*, i8*) local_unnamed_addr #0 !dbg !175 {
  %3 = tail call i8* @zmalloc(i64 24) #3, !dbg !182
  %4 = icmp eq i8* %3, null, !dbg !185
  br i1 %4, label %28, label %5, !dbg !186

; <label>:5:                                      ; preds = %2
  %6 = getelementptr inbounds i8, i8* %3, i64 16, !dbg !187
  %7 = bitcast i8* %6 to i8**, !dbg !187
  store i8* %1, i8** %7, align 8, !dbg !188, !tbaa !99
  %8 = getelementptr inbounds %struct.list, %struct.list* %0, i64 0, i32 5, !dbg !189
  %9 = load i64, i64* %8, align 8, !dbg !189, !tbaa !57
  %10 = icmp eq i64 %9, 0, !dbg !191
  %11 = getelementptr inbounds %struct.list, %struct.list* %0, i64 0, i32 1, !dbg !192
  br i1 %10, label %12, label %16, !dbg !194

; <label>:12:                                     ; preds = %5
  %13 = bitcast %struct.listNode** %11 to i8**, !dbg !195
  store i8* %3, i8** %13, align 8, !dbg !195, !tbaa !157
  %14 = bitcast %struct.list* %0 to i8**, !dbg !197
  store i8* %3, i8** %14, align 8, !dbg !197, !tbaa !85
  %15 = bitcast i8* %3 to <2 x %struct.listNode*>*, !dbg !198
  store <2 x %struct.listNode*> zeroinitializer, <2 x %struct.listNode*>* %15, align 8, !dbg !198, !tbaa !51
  br label %26, !dbg !199

; <label>:16:                                     ; preds = %5
  %17 = bitcast %struct.listNode** %11 to i64*, !dbg !200
  %18 = load i64, i64* %17, align 8, !dbg !200, !tbaa !157
  %19 = bitcast i8* %3 to i64*, !dbg !201
  store i64 %18, i64* %19, align 8, !dbg !201, !tbaa !164
  %20 = getelementptr inbounds i8, i8* %3, i64 8, !dbg !202
  %21 = bitcast i8* %20 to %struct.listNode**, !dbg !202
  store %struct.listNode* null, %struct.listNode** %21, align 8, !dbg !203, !tbaa !91
  %22 = inttoptr i64 %18 to %struct.listNode*, !dbg !204
  %23 = getelementptr inbounds %struct.listNode, %struct.listNode* %22, i64 0, i32 1, !dbg !205
  %24 = bitcast %struct.listNode** %23 to i8**, !dbg !206
  store i8* %3, i8** %24, align 8, !dbg !206, !tbaa !91
  %25 = bitcast %struct.listNode** %11 to i8**, !dbg !207
  store i8* %3, i8** %25, align 8, !dbg !207, !tbaa !157
  br label %26

; <label>:26:                                     ; preds = %16, %12
  %27 = add i64 %9, 1, !dbg !208
  store i64 %27, i64* %8, align 8, !dbg !208, !tbaa !57
  br label %28, !dbg !209

; <label>:28:                                     ; preds = %2, %26
  %29 = phi %struct.list* [ %0, %26 ], [ null, %2 ], !dbg !210
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !211
  ret %struct.list* %29, !dbg !211
}

; Function Attrs: noredzone nounwind
define dso_local %struct.list* @listInsertNode(%struct.list*, %struct.listNode*, i8*, i32) local_unnamed_addr #0 !dbg !212 {
  %5 = tail call i8* @zmalloc(i64 24) #3, !dbg !225
  %6 = icmp eq i8* %5, null, !dbg !228
  br i1 %6, label %52, label %7, !dbg !229

; <label>:7:                                      ; preds = %4
  %8 = getelementptr inbounds i8, i8* %5, i64 16, !dbg !230
  %9 = bitcast i8* %8 to i8**, !dbg !230
  store i8* %2, i8** %9, align 8, !dbg !231, !tbaa !99
  %10 = icmp eq i32 %3, 0, !dbg !232
  br i1 %10, label %23, label %11, !dbg !234

; <label>:11:                                     ; preds = %7
  %12 = bitcast i8* %5 to %struct.listNode**, !dbg !235
  store %struct.listNode* %1, %struct.listNode** %12, align 8, !dbg !237, !tbaa !164
  %13 = getelementptr inbounds %struct.listNode, %struct.listNode* %1, i64 0, i32 1, !dbg !238
  %14 = bitcast %struct.listNode** %13 to i64*, !dbg !238
  %15 = load i64, i64* %14, align 8, !dbg !238, !tbaa !91
  %16 = getelementptr inbounds i8, i8* %5, i64 8, !dbg !239
  %17 = bitcast i8* %16 to i64*, !dbg !240
  store i64 %15, i64* %17, align 8, !dbg !240, !tbaa !91
  %18 = getelementptr inbounds %struct.list, %struct.list* %0, i64 0, i32 1, !dbg !241
  %19 = load %struct.listNode*, %struct.listNode** %18, align 8, !dbg !241, !tbaa !157
  %20 = icmp eq %struct.listNode* %19, %1, !dbg !243
  br i1 %20, label %21, label %37, !dbg !244

; <label>:21:                                     ; preds = %11
  %22 = bitcast %struct.listNode** %18 to i8**, !dbg !245
  store i8* %5, i8** %22, align 8, !dbg !245, !tbaa !157
  br label %37, !dbg !247

; <label>:23:                                     ; preds = %7
  %24 = getelementptr inbounds i8, i8* %5, i64 8, !dbg !248
  %25 = bitcast i8* %24 to %struct.listNode**, !dbg !248
  store %struct.listNode* %1, %struct.listNode** %25, align 8, !dbg !250, !tbaa !91
  %26 = bitcast %struct.listNode* %1 to i64*, !dbg !251
  %27 = load i64, i64* %26, align 8, !dbg !251, !tbaa !164
  %28 = bitcast i8* %5 to i64*, !dbg !252
  store i64 %27, i64* %28, align 8, !dbg !252, !tbaa !164
  %29 = getelementptr inbounds %struct.list, %struct.list* %0, i64 0, i32 0, !dbg !253
  %30 = load %struct.listNode*, %struct.listNode** %29, align 8, !dbg !253, !tbaa !85
  %31 = icmp eq %struct.listNode* %30, %1, !dbg !255
  %32 = inttoptr i64 %27 to %struct.listNode*, !dbg !256
  br i1 %31, label %33, label %35, !dbg !256

; <label>:33:                                     ; preds = %23
  %34 = bitcast %struct.list* %0 to i8**, !dbg !257
  store i8* %5, i8** %34, align 8, !dbg !257, !tbaa !85
  br label %35, !dbg !259

; <label>:35:                                     ; preds = %23, %33
  %36 = icmp eq i64 %27, 0, !dbg !260
  br i1 %36, label %45, label %37, !dbg !262

; <label>:37:                                     ; preds = %21, %11, %35
  %38 = phi %struct.listNode* [ %32, %35 ], [ %1, %11 ], [ %1, %21 ]
  %39 = getelementptr inbounds %struct.listNode, %struct.listNode* %38, i64 0, i32 1, !dbg !263
  %40 = bitcast %struct.listNode** %39 to i8**, !dbg !265
  store i8* %5, i8** %40, align 8, !dbg !265, !tbaa !91
  %41 = getelementptr inbounds i8, i8* %5, i64 8
  %42 = bitcast i8* %41 to %struct.listNode**
  %43 = load %struct.listNode*, %struct.listNode** %42, align 8, !dbg !266, !tbaa !91
  %44 = icmp eq %struct.listNode* %43, null, !dbg !268
  br i1 %44, label %48, label %45, !dbg !269

; <label>:45:                                     ; preds = %35, %37
  %46 = phi %struct.listNode* [ %43, %37 ], [ %1, %35 ]
  %47 = bitcast %struct.listNode* %46 to i8**, !dbg !270
  store i8* %5, i8** %47, align 8, !dbg !270, !tbaa !164
  br label %48, !dbg !272

; <label>:48:                                     ; preds = %37, %45
  %49 = getelementptr inbounds %struct.list, %struct.list* %0, i64 0, i32 5, !dbg !273
  %50 = load i64, i64* %49, align 8, !dbg !274, !tbaa !57
  %51 = add i64 %50, 1, !dbg !274
  store i64 %51, i64* %49, align 8, !dbg !274, !tbaa !57
  br label %52, !dbg !275

; <label>:52:                                     ; preds = %4, %48
  %53 = phi %struct.list* [ %0, %48 ], [ null, %4 ], !dbg !276
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !277
  ret %struct.list* %53, !dbg !277
}

; Function Attrs: noredzone nounwind
define dso_local void @listDelNode(%struct.list* nocapture, %struct.listNode*) local_unnamed_addr #0 !dbg !278 {
  %3 = getelementptr inbounds %struct.listNode, %struct.listNode* %1, i64 0, i32 0, !dbg !286
  %4 = load %struct.listNode*, %struct.listNode** %3, align 8, !dbg !286, !tbaa !164
  %5 = icmp eq %struct.listNode* %4, null, !dbg !288
  %6 = getelementptr inbounds %struct.listNode, %struct.listNode* %1, i64 0, i32 1, !dbg !289
  %7 = bitcast %struct.listNode** %6 to i64*, !dbg !289
  %8 = load i64, i64* %7, align 8, !dbg !289, !tbaa !91
  %9 = ptrtoint %struct.listNode* %4 to i64, !dbg !290
  br i1 %5, label %14, label %10, !dbg !290

; <label>:10:                                     ; preds = %2
  %11 = getelementptr inbounds %struct.listNode, %struct.listNode* %4, i64 0, i32 1, !dbg !291
  %12 = bitcast %struct.listNode** %11 to i64*, !dbg !292
  store i64 %8, i64* %12, align 8, !dbg !292, !tbaa !91
  %13 = load %struct.listNode*, %struct.listNode** %6, align 8, !dbg !293, !tbaa !91
  br label %17, !dbg !295

; <label>:14:                                     ; preds = %2
  %15 = inttoptr i64 %8 to %struct.listNode*, !dbg !290
  %16 = bitcast %struct.list* %0 to i64*, !dbg !296
  store i64 %8, i64* %16, align 8, !dbg !296, !tbaa !85
  br label %17

; <label>:17:                                     ; preds = %14, %10
  %18 = phi %struct.listNode* [ %15, %14 ], [ %13, %10 ], !dbg !293
  %19 = icmp eq %struct.listNode* %18, null, !dbg !297
  %20 = getelementptr inbounds %struct.list, %struct.list* %0, i64 0, i32 1, !dbg !298
  %21 = bitcast %struct.listNode** %20 to i64*, !dbg !299
  %22 = bitcast %struct.listNode* %18 to i64*, !dbg !300
  %23 = select i1 %19, i64* %21, i64* %22, !dbg !301
  store i64 %9, i64* %23, align 8, !dbg !302, !tbaa !51
  %24 = getelementptr inbounds %struct.list, %struct.list* %0, i64 0, i32 3, !dbg !303
  %25 = load void (i8*)*, void (i8*)** %24, align 8, !dbg !303, !tbaa !65
  %26 = icmp eq void (i8*)* %25, null, !dbg !305
  br i1 %26, label %30, label %27, !dbg !306

; <label>:27:                                     ; preds = %17
  %28 = getelementptr inbounds %struct.listNode, %struct.listNode* %1, i64 0, i32 2, !dbg !307
  %29 = load i8*, i8** %28, align 8, !dbg !307, !tbaa !99
  tail call void %25(i8* %29) #3, !dbg !308
  br label %30, !dbg !308

; <label>:30:                                     ; preds = %17, %27
  %31 = bitcast %struct.listNode* %1 to i8*, !dbg !309
  tail call void @zfree(i8* %31) #3, !dbg !310
  %32 = getelementptr inbounds %struct.list, %struct.list* %0, i64 0, i32 5, !dbg !311
  %33 = load i64, i64* %32, align 8, !dbg !312, !tbaa !57
  %34 = add i64 %33, -1, !dbg !312
  store i64 %34, i64* %32, align 8, !dbg !312, !tbaa !57
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !313
  ret void, !dbg !313
}

; Function Attrs: noredzone nounwind
define dso_local %struct.listIter* @listGetIterator(%struct.list* nocapture readonly, i32) local_unnamed_addr #0 !dbg !314 {
  %3 = tail call i8* @zmalloc(i64 16) #3, !dbg !329
  %4 = icmp eq i8* %3, null, !dbg !331
  br i1 %4, label %16, label %5, !dbg !332

; <label>:5:                                      ; preds = %2
  %6 = bitcast i8* %3 to %struct.listIter*, !dbg !329
  %7 = icmp eq i32 %1, 0, !dbg !334
  %8 = getelementptr inbounds %struct.list, %struct.list* %0, i64 0, i32 1, !dbg !336
  %9 = bitcast %struct.listNode** %8 to i64*, !dbg !336
  %10 = bitcast %struct.list* %0 to i64*, !dbg !337
  %11 = select i1 %7, i64* %10, i64* %9, !dbg !338
  %12 = load i64, i64* %11, align 8, !dbg !339, !tbaa !51
  %13 = bitcast i8* %3 to i64*, !dbg !339
  store i64 %12, i64* %13, align 8, !dbg !339, !tbaa !340
  %14 = getelementptr inbounds i8, i8* %3, i64 8, !dbg !343
  %15 = bitcast i8* %14 to i32*, !dbg !343
  store i32 %1, i32* %15, align 8, !dbg !344, !tbaa !345
  br label %16, !dbg !346

; <label>:16:                                     ; preds = %2, %5
  %17 = phi %struct.listIter* [ %6, %5 ], [ null, %2 ], !dbg !347
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !348
  ret %struct.listIter* %17, !dbg !348
}

; Function Attrs: noredzone nounwind
define dso_local void @listReleaseIterator(%struct.listIter*) local_unnamed_addr #0 !dbg !349 {
  %2 = bitcast %struct.listIter* %0 to i8*, !dbg !355
  tail call void @zfree(i8* %2) #3, !dbg !356
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !357
  ret void, !dbg !357
}

; Function Attrs: noredzone nounwind
define dso_local void @listRewind(%struct.list* nocapture readonly, %struct.listIter* nocapture) local_unnamed_addr #0 !dbg !358 {
  %3 = bitcast %struct.list* %0 to i64*, !dbg !366
  %4 = load i64, i64* %3, align 8, !dbg !366, !tbaa !85
  %5 = bitcast %struct.listIter* %1 to i64*, !dbg !367
  store i64 %4, i64* %5, align 8, !dbg !367, !tbaa !340
  %6 = getelementptr inbounds %struct.listIter, %struct.listIter* %1, i64 0, i32 1, !dbg !368
  store i32 0, i32* %6, align 8, !dbg !369, !tbaa !345
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !370
  ret void, !dbg !370
}

; Function Attrs: noredzone nounwind
define dso_local void @listRewindTail(%struct.list* nocapture readonly, %struct.listIter* nocapture) local_unnamed_addr #0 !dbg !371 {
  %3 = getelementptr inbounds %struct.list, %struct.list* %0, i64 0, i32 1, !dbg !377
  %4 = bitcast %struct.listNode** %3 to i64*, !dbg !377
  %5 = load i64, i64* %4, align 8, !dbg !377, !tbaa !157
  %6 = bitcast %struct.listIter* %1 to i64*, !dbg !378
  store i64 %5, i64* %6, align 8, !dbg !378, !tbaa !340
  %7 = getelementptr inbounds %struct.listIter, %struct.listIter* %1, i64 0, i32 1, !dbg !379
  store i32 1, i32* %7, align 8, !dbg !380, !tbaa !345
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !381
  ret void, !dbg !381
}

; Function Attrs: noredzone nounwind
define dso_local %struct.listNode* @listNext(%struct.listIter* nocapture) local_unnamed_addr #0 !dbg !382 {
  %2 = getelementptr inbounds %struct.listIter, %struct.listIter* %0, i64 0, i32 0, !dbg !389
  %3 = load %struct.listNode*, %struct.listNode** %2, align 8, !dbg !389, !tbaa !340
  %4 = icmp eq %struct.listNode* %3, null, !dbg !391
  br i1 %4, label %15, label %5, !dbg !393

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.listIter, %struct.listIter* %0, i64 0, i32 1, !dbg !394
  %7 = load i32, i32* %6, align 8, !dbg !394, !tbaa !345
  %8 = icmp eq i32 %7, 0, !dbg !397
  %9 = getelementptr inbounds %struct.listNode, %struct.listNode* %3, i64 0, i32 1, !dbg !398
  %10 = bitcast %struct.listNode** %9 to i64*, !dbg !398
  %11 = bitcast %struct.listNode* %3 to i64*, !dbg !399
  %12 = select i1 %8, i64* %10, i64* %11, !dbg !400
  %13 = load i64, i64* %12, align 8, !dbg !401, !tbaa !51
  %14 = bitcast %struct.listIter* %0 to i64*, !dbg !401
  store i64 %13, i64* %14, align 8, !dbg !401, !tbaa !340
  br label %15, !dbg !402

; <label>:15:                                     ; preds = %5, %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !402
  ret %struct.listNode* %3, !dbg !402
}

; Function Attrs: noredzone nounwind
define dso_local %struct.list* @listDup(%struct.list* nocapture readonly) local_unnamed_addr #0 !dbg !403 {
  %2 = tail call i8* @zmalloc(i64 48) #3, !dbg !414
  %3 = icmp eq i8* %2, null, !dbg !417
  br i1 %3, label %113, label %4, !dbg !418

; <label>:4:                                      ; preds = %1
  %5 = bitcast i8* %2 to %struct.list*, !dbg !414
  %6 = getelementptr inbounds i8, i8* %2, i64 8, !dbg !420
  %7 = bitcast i8* %2 to %struct.listNode**, !dbg !421
  %8 = bitcast i8* %2 to <2 x %struct.listNode*>*, !dbg !422
  store <2 x %struct.listNode*> zeroinitializer, <2 x %struct.listNode*>* %8, align 8, !dbg !422, !tbaa !51
  %9 = getelementptr inbounds i8, i8* %2, i64 40, !dbg !423
  %10 = bitcast i8* %9 to i64*, !dbg !423
  store i64 0, i64* %10, align 8, !dbg !424, !tbaa !57
  %11 = getelementptr inbounds i8, i8* %2, i64 16, !dbg !425
  %12 = bitcast i8* %11 to i8* (i8*)**, !dbg !425
  store i8* (i8*)* null, i8* (i8*)** %12, align 8, !dbg !426, !tbaa !62
  %13 = getelementptr inbounds i8, i8* %2, i64 24, !dbg !427
  %14 = bitcast i8* %13 to void (i8*)**, !dbg !427
  store void (i8*)* null, void (i8*)** %14, align 8, !dbg !428, !tbaa !65
  %15 = getelementptr inbounds i8, i8* %2, i64 32, !dbg !429
  %16 = bitcast i8* %15 to i32 (i8*, i8*)**, !dbg !429
  store i32 (i8*, i8*)* null, i32 (i8*, i8*)** %16, align 8, !dbg !430, !tbaa !68
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !431
  %17 = getelementptr inbounds %struct.list, %struct.list* %0, i64 0, i32 2, !dbg !433
  %18 = bitcast i8* (i8*)** %17 to <2 x i64>*, !dbg !433
  %19 = load <2 x i64>, <2 x i64>* %18, align 8, !dbg !433, !tbaa !51
  %20 = bitcast i8* %11 to <2 x i64>*, !dbg !434
  store <2 x i64> %19, <2 x i64>* %20, align 8, !dbg !434, !tbaa !51
  %21 = getelementptr inbounds %struct.list, %struct.list* %0, i64 0, i32 4, !dbg !435
  %22 = bitcast i32 (i8*, i8*)** %21 to i64*, !dbg !435
  %23 = load i64, i64* %22, align 8, !dbg !435, !tbaa !68
  %24 = bitcast i8* %15 to i64*, !dbg !436
  store i64 %23, i64* %24, align 8, !dbg !436, !tbaa !68
  %25 = bitcast %struct.list* %0 to i64*, !dbg !441
  %26 = load i64, i64* %25, align 8, !dbg !441, !tbaa !85
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !442
  %27 = icmp eq i64 %26, 0, !dbg !445
  br i1 %27, label %113, label %28, !dbg !446

; <label>:28:                                     ; preds = %4
  %29 = extractelement <2 x i64> %19, i32 0, !dbg !446
  %30 = inttoptr i64 %29 to i8* (i8*)*, !dbg !446
  %31 = bitcast i8* %6 to i8**
  %32 = bitcast i8* %2 to i8**
  %33 = bitcast i8* %6 to i64*
  br label %34, !dbg !446

; <label>:34:                                     ; preds = %90, %28
  %35 = phi i8* (i8*)* [ %30, %28 ], [ %91, %90 ], !dbg !448
  %36 = phi i64 [ %26, %28 ], [ %40, %90 ]
  %37 = inttoptr i64 %36 to %struct.listNode*, !dbg !450
  %38 = getelementptr inbounds %struct.listNode, %struct.listNode* %37, i64 0, i32 1, !dbg !451
  %39 = bitcast %struct.listNode** %38 to i64*, !dbg !451
  %40 = load i64, i64* %39, align 8, !dbg !451, !tbaa !91
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !452
  %41 = icmp eq i8* (i8*)* %35, null, !dbg !454
  %42 = getelementptr inbounds %struct.listNode, %struct.listNode* %37, i64 0, i32 2, !dbg !455
  %43 = load i8*, i8** %42, align 8, !dbg !455, !tbaa !99
  br i1 %41, label %68, label %44, !dbg !457

; <label>:44:                                     ; preds = %34
  %45 = tail call i8* %35(i8* %43) #3, !dbg !458
  %46 = icmp eq i8* %45, null, !dbg !460
  br i1 %46, label %47, label %68, !dbg !462

; <label>:47:                                     ; preds = %44
  %48 = load i64, i64* %10, align 8, !dbg !468, !tbaa !57
  %49 = icmp eq i64 %48, 0, !dbg !470
  br i1 %49, label %66, label %50, !dbg !470

; <label>:50:                                     ; preds = %47
  %51 = load %struct.listNode*, %struct.listNode** %7, align 8, !dbg !471, !tbaa !85
  br label %52, !dbg !470

; <label>:52:                                     ; preds = %64, %50
  %53 = phi i64 [ %48, %50 ], [ %56, %64 ]
  %54 = phi %struct.listNode* [ %51, %50 ], [ %58, %64 ]
  %55 = bitcast %struct.listNode* %54 to i8*, !dbg !473
  %56 = add i64 %53, -1, !dbg !474
  %57 = getelementptr inbounds %struct.listNode, %struct.listNode* %54, i64 0, i32 1, !dbg !475
  %58 = load %struct.listNode*, %struct.listNode** %57, align 8, !dbg !475, !tbaa !91
  %59 = load void (i8*)*, void (i8*)** %14, align 8, !dbg !477, !tbaa !65
  %60 = icmp eq void (i8*)* %59, null, !dbg !478
  br i1 %60, label %64, label %61, !dbg !479

; <label>:61:                                     ; preds = %52
  %62 = getelementptr inbounds %struct.listNode, %struct.listNode* %54, i64 0, i32 2, !dbg !480
  %63 = load i8*, i8** %62, align 8, !dbg !480, !tbaa !99
  tail call void %59(i8* %63) #3, !dbg !481
  br label %64, !dbg !481

; <label>:64:                                     ; preds = %61, %52
  tail call void @zfree(i8* nonnull %55) #3, !dbg !482
  %65 = icmp eq i64 %56, 0, !dbg !470
  br i1 %65, label %66, label %52, !dbg !470, !llvm.loop !102

; <label>:66:                                     ; preds = %64, %47
  %67 = bitcast i8* %2 to <2 x %struct.listNode*>*, !dbg !483
  store <2 x %struct.listNode*> zeroinitializer, <2 x %struct.listNode*>* %67, align 8, !dbg !483, !tbaa !51
  store i64 0, i64* %10, align 8, !dbg !484, !tbaa !57
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !485
  tail call void @zfree(i8* nonnull %2) #3, !dbg !486
  br label %113

; <label>:68:                                     ; preds = %34, %44
  %69 = phi i8* [ %45, %44 ], [ %43, %34 ], !dbg !487
  %70 = tail call i8* @zmalloc(i64 24) #3, !dbg !492
  %71 = icmp eq i8* %70, null, !dbg !494
  br i1 %71, label %92, label %72, !dbg !495

; <label>:72:                                     ; preds = %68
  %73 = getelementptr inbounds i8, i8* %70, i64 16, !dbg !496
  %74 = bitcast i8* %73 to i8**, !dbg !496
  store i8* %69, i8** %74, align 8, !dbg !497, !tbaa !99
  %75 = load i64, i64* %10, align 8, !dbg !498, !tbaa !57
  %76 = icmp eq i64 %75, 0, !dbg !499
  br i1 %76, label %77, label %79, !dbg !500

; <label>:77:                                     ; preds = %72
  store i8* %70, i8** %31, align 8, !dbg !501, !tbaa !157
  store i8* %70, i8** %32, align 8, !dbg !502, !tbaa !85
  %78 = bitcast i8* %70 to <2 x %struct.listNode*>*, !dbg !503
  store <2 x %struct.listNode*> zeroinitializer, <2 x %struct.listNode*>* %78, align 8, !dbg !503, !tbaa !51
  br label %87, !dbg !504

; <label>:79:                                     ; preds = %72
  %80 = load i64, i64* %33, align 8, !dbg !505, !tbaa !157
  %81 = bitcast i8* %70 to i64*, !dbg !506
  store i64 %80, i64* %81, align 8, !dbg !506, !tbaa !164
  %82 = getelementptr inbounds i8, i8* %70, i64 8, !dbg !507
  %83 = bitcast i8* %82 to %struct.listNode**, !dbg !507
  store %struct.listNode* null, %struct.listNode** %83, align 8, !dbg !508, !tbaa !91
  %84 = inttoptr i64 %80 to %struct.listNode*, !dbg !509
  %85 = getelementptr inbounds %struct.listNode, %struct.listNode* %84, i64 0, i32 1, !dbg !510
  %86 = bitcast %struct.listNode** %85 to i8**, !dbg !511
  store i8* %70, i8** %86, align 8, !dbg !511, !tbaa !91
  store i8* %70, i8** %31, align 8, !dbg !512, !tbaa !157
  br label %87

; <label>:87:                                     ; preds = %77, %79
  %88 = add i64 %75, 1, !dbg !513
  store i64 %88, i64* %10, align 8, !dbg !513, !tbaa !57
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !514
  %89 = icmp eq i64 %40, 0, !dbg !445
  br i1 %89, label %113, label %90, !dbg !446

; <label>:90:                                     ; preds = %87
  %91 = load i8* (i8*)*, i8* (i8*)** %12, align 8, !dbg !448, !tbaa !62
  br label %34, !dbg !446

; <label>:92:                                     ; preds = %68
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !514
  %93 = load i64, i64* %10, align 8, !dbg !520, !tbaa !57
  %94 = icmp eq i64 %93, 0, !dbg !522
  br i1 %94, label %111, label %95, !dbg !522

; <label>:95:                                     ; preds = %92
  %96 = load %struct.listNode*, %struct.listNode** %7, align 8, !dbg !523, !tbaa !85
  br label %97, !dbg !522

; <label>:97:                                     ; preds = %109, %95
  %98 = phi i64 [ %93, %95 ], [ %101, %109 ]
  %99 = phi %struct.listNode* [ %96, %95 ], [ %103, %109 ]
  %100 = bitcast %struct.listNode* %99 to i8*, !dbg !525
  %101 = add i64 %98, -1, !dbg !526
  %102 = getelementptr inbounds %struct.listNode, %struct.listNode* %99, i64 0, i32 1, !dbg !527
  %103 = load %struct.listNode*, %struct.listNode** %102, align 8, !dbg !527, !tbaa !91
  %104 = load void (i8*)*, void (i8*)** %14, align 8, !dbg !529, !tbaa !65
  %105 = icmp eq void (i8*)* %104, null, !dbg !530
  br i1 %105, label %109, label %106, !dbg !531

; <label>:106:                                    ; preds = %97
  %107 = getelementptr inbounds %struct.listNode, %struct.listNode* %99, i64 0, i32 2, !dbg !532
  %108 = load i8*, i8** %107, align 8, !dbg !532, !tbaa !99
  tail call void %104(i8* %108) #3, !dbg !533
  br label %109, !dbg !533

; <label>:109:                                    ; preds = %106, %97
  tail call void @zfree(i8* nonnull %100) #3, !dbg !534
  %110 = icmp eq i64 %101, 0, !dbg !522
  br i1 %110, label %111, label %97, !dbg !522, !llvm.loop !102

; <label>:111:                                    ; preds = %109, %92
  %112 = bitcast i8* %2 to <2 x %struct.listNode*>*, !dbg !535
  store <2 x %struct.listNode*> zeroinitializer, <2 x %struct.listNode*>* %112, align 8, !dbg !535, !tbaa !51
  store i64 0, i64* %10, align 8, !dbg !536, !tbaa !57
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !537
  tail call void @zfree(i8* nonnull %2) #3, !dbg !538
  br label %113

; <label>:113:                                    ; preds = %87, %4, %1, %111, %66
  %114 = phi %struct.list* [ null, %66 ], [ null, %111 ], [ null, %1 ], [ %5, %4 ], [ %5, %87 ], !dbg !539
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !540
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !541
  ret %struct.list* %114, !dbg !541
}

; Function Attrs: noredzone nounwind
define dso_local %struct.listNode* @listSearchKey(%struct.list* nocapture readonly, i8*) local_unnamed_addr #0 !dbg !542 {
  %3 = bitcast %struct.list* %0 to i64*, !dbg !556
  %4 = load i64, i64* %3, align 8, !dbg !556, !tbaa !85
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !557
  %5 = inttoptr i64 %4 to %struct.listNode*, !dbg !560
  %6 = icmp eq i64 %4, 0, !dbg !562
  br i1 %6, label %9, label %7, !dbg !563

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.list, %struct.list* %0, i64 0, i32 4
  br label %11, !dbg !563

; <label>:9:                                      ; preds = %25, %2
  %10 = phi %struct.listNode* [ %5, %2 ], [ null, %25 ], !dbg !560
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !564
  br label %28, !dbg !566

; <label>:11:                                     ; preds = %7, %25
  %12 = phi %struct.listNode* [ %5, %7 ], [ %26, %25 ]
  %13 = getelementptr inbounds %struct.listNode, %struct.listNode* %12, i64 0, i32 1, !dbg !567
  %14 = bitcast %struct.listNode** %13 to i64*, !dbg !567
  %15 = load i64, i64* %14, align 8, !dbg !567, !tbaa !91
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !564
  %16 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %8, align 8, !dbg !568, !tbaa !68
  %17 = icmp eq i32 (i8*, i8*)* %16, null, !dbg !571
  %18 = getelementptr inbounds %struct.listNode, %struct.listNode* %12, i64 0, i32 2, !dbg !572
  %19 = load i8*, i8** %18, align 8, !dbg !572, !tbaa !99
  br i1 %17, label %23, label %20, !dbg !575

; <label>:20:                                     ; preds = %11
  %21 = tail call i32 %16(i8* %19, i8* %1) #3, !dbg !576
  %22 = icmp eq i32 %21, 0, !dbg !576
  br i1 %22, label %25, label %28, !dbg !577

; <label>:23:                                     ; preds = %11
  %24 = icmp eq i8* %19, %1, !dbg !578
  br i1 %24, label %28, label %25, !dbg !581

; <label>:25:                                     ; preds = %20, %23
  %26 = inttoptr i64 %15 to %struct.listNode*, !dbg !560
  %27 = icmp eq i64 %15, 0, !dbg !562
  br i1 %27, label %9, label %11, !dbg !563, !llvm.loop !582

; <label>:28:                                     ; preds = %23, %20, %9
  %29 = phi %struct.listNode* [ %10, %9 ], [ %12, %20 ], [ %12, %23 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !584
  ret %struct.listNode* %29, !dbg !584
}

; Function Attrs: noredzone nounwind
define dso_local %struct.listNode* @listIndex(%struct.list* nocapture readonly, i64) local_unnamed_addr #0 !dbg !585 {
  %3 = icmp slt i64 %1, 0, !dbg !595
  br i1 %3, label %4, label %21, !dbg !597

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.list, %struct.list* %0, i64 0, i32 1, !dbg !598
  %6 = load %struct.listNode*, %struct.listNode** %5, align 8, !dbg !601, !tbaa !51
  %7 = icmp ne i64 %1, -1, !dbg !602
  %8 = icmp ne %struct.listNode* %6, null, !dbg !603
  %9 = and i1 %7, %8, !dbg !603
  br i1 %9, label %10, label %36, !dbg !604

; <label>:10:                                     ; preds = %4
  %11 = xor i64 %1, -1, !dbg !605
  br label %12, !dbg !602

; <label>:12:                                     ; preds = %10, %12
  %13 = phi %struct.listNode* [ %17, %12 ], [ %6, %10 ]
  %14 = phi i64 [ %15, %12 ], [ %11, %10 ]
  %15 = add nsw i64 %14, -1, !dbg !602
  %16 = getelementptr inbounds %struct.listNode, %struct.listNode* %13, i64 0, i32 0, !dbg !606
  %17 = load %struct.listNode*, %struct.listNode** %16, align 8, !dbg !601, !tbaa !51
  %18 = icmp ne i64 %15, 0, !dbg !602
  %19 = icmp ne %struct.listNode* %17, null, !dbg !603
  %20 = and i1 %18, %19, !dbg !603
  br i1 %20, label %12, label %36, !dbg !604, !llvm.loop !607

; <label>:21:                                     ; preds = %2
  %22 = getelementptr inbounds %struct.list, %struct.list* %0, i64 0, i32 0, !dbg !608
  %23 = load %struct.listNode*, %struct.listNode** %22, align 8, !dbg !610, !tbaa !51
  %24 = icmp ne i64 %1, 0, !dbg !611
  %25 = icmp ne %struct.listNode* %23, null, !dbg !612
  %26 = and i1 %24, %25, !dbg !612
  br i1 %26, label %27, label %36, !dbg !613

; <label>:27:                                     ; preds = %21, %27
  %28 = phi %struct.listNode* [ %32, %27 ], [ %23, %21 ]
  %29 = phi i64 [ %30, %27 ], [ %1, %21 ]
  %30 = add nsw i64 %29, -1, !dbg !611
  %31 = getelementptr inbounds %struct.listNode, %struct.listNode* %28, i64 0, i32 1, !dbg !614
  %32 = load %struct.listNode*, %struct.listNode** %31, align 8, !dbg !610, !tbaa !51
  %33 = icmp ne i64 %30, 0, !dbg !611
  %34 = icmp ne %struct.listNode* %32, null, !dbg !612
  %35 = and i1 %33, %34, !dbg !612
  br i1 %35, label %27, label %36, !dbg !613, !llvm.loop !615

; <label>:36:                                     ; preds = %27, %12, %21, %4
  %37 = phi %struct.listNode* [ %6, %4 ], [ %23, %21 ], [ %17, %12 ], [ %32, %27 ], !dbg !610
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !616
  ret %struct.listNode* %37, !dbg !616
}

; Function Attrs: noredzone nounwind
define dso_local void @listRotate(%struct.list* nocapture) local_unnamed_addr #0 !dbg !617 {
  %2 = getelementptr inbounds %struct.list, %struct.list* %0, i64 0, i32 1, !dbg !622
  %3 = load %struct.listNode*, %struct.listNode** %2, align 8, !dbg !622, !tbaa !157
  %4 = getelementptr inbounds %struct.list, %struct.list* %0, i64 0, i32 5, !dbg !624
  %5 = load i64, i64* %4, align 8, !dbg !624, !tbaa !57
  %6 = icmp ult i64 %5, 2, !dbg !626
  br i1 %6, label %17, label %7, !dbg !627

; <label>:7:                                      ; preds = %1
  %8 = getelementptr inbounds %struct.listNode, %struct.listNode* %3, i64 0, i32 0, !dbg !628
  %9 = load %struct.listNode*, %struct.listNode** %8, align 8, !dbg !628, !tbaa !164
  store %struct.listNode* %9, %struct.listNode** %2, align 8, !dbg !629, !tbaa !157
  %10 = getelementptr inbounds %struct.listNode, %struct.listNode* %9, i64 0, i32 1, !dbg !630
  store %struct.listNode* null, %struct.listNode** %10, align 8, !dbg !631, !tbaa !91
  %11 = getelementptr inbounds %struct.list, %struct.list* %0, i64 0, i32 0, !dbg !632
  %12 = load %struct.listNode*, %struct.listNode** %11, align 8, !dbg !632, !tbaa !85
  %13 = getelementptr inbounds %struct.listNode, %struct.listNode* %12, i64 0, i32 0, !dbg !633
  store %struct.listNode* %3, %struct.listNode** %13, align 8, !dbg !634, !tbaa !164
  store %struct.listNode* null, %struct.listNode** %8, align 8, !dbg !635, !tbaa !164
  %14 = ptrtoint %struct.listNode* %12 to i64, !dbg !636
  %15 = getelementptr inbounds %struct.listNode, %struct.listNode* %3, i64 0, i32 1, !dbg !637
  %16 = bitcast %struct.listNode** %15 to i64*, !dbg !638
  store i64 %14, i64* %16, align 8, !dbg !638, !tbaa !91
  store %struct.listNode* %3, %struct.listNode** %11, align 8, !dbg !639, !tbaa !85
  br label %17, !dbg !640

; <label>:17:                                     ; preds = %1, %7
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !640
  ret void, !dbg !640
}

; Function Attrs: noredzone nounwind
define dso_local void @listJoin(%struct.list* nocapture, %struct.list* nocapture) local_unnamed_addr #0 !dbg !641 {
  %3 = getelementptr inbounds %struct.list, %struct.list* %1, i64 0, i32 0, !dbg !649
  %4 = load %struct.listNode*, %struct.listNode** %3, align 8, !dbg !649, !tbaa !85
  %5 = icmp eq %struct.listNode* %4, null, !dbg !651
  %6 = ptrtoint %struct.listNode* %4 to i64, !dbg !652
  %7 = getelementptr inbounds %struct.list, %struct.list* %0, i64 0, i32 1
  br i1 %5, label %8, label %10, !dbg !652

; <label>:8:                                      ; preds = %2
  %9 = load %struct.listNode*, %struct.listNode** %7, align 8, !dbg !653, !tbaa !157
  br label %15, !dbg !652

; <label>:10:                                     ; preds = %2
  %11 = bitcast %struct.listNode** %7 to i64*, !dbg !655
  %12 = load i64, i64* %11, align 8, !dbg !655, !tbaa !157
  %13 = bitcast %struct.listNode* %4 to i64*, !dbg !656
  store i64 %12, i64* %13, align 8, !dbg !656, !tbaa !164
  %14 = inttoptr i64 %12 to %struct.listNode*, !dbg !657
  br label %15, !dbg !657

; <label>:15:                                     ; preds = %8, %10
  %16 = phi %struct.listNode* [ %9, %8 ], [ %14, %10 ], !dbg !653
  %17 = icmp eq %struct.listNode* %16, null, !dbg !658
  %18 = bitcast %struct.list* %0 to i64*, !dbg !659
  %19 = getelementptr inbounds %struct.listNode, %struct.listNode* %16, i64 0, i32 1, !dbg !660
  %20 = bitcast %struct.listNode** %19 to i64*, !dbg !661
  %21 = select i1 %17, i64* %18, i64* %20, !dbg !662
  store i64 %6, i64* %21, align 8, !dbg !663, !tbaa !51
  %22 = getelementptr inbounds %struct.list, %struct.list* %1, i64 0, i32 1, !dbg !664
  %23 = load %struct.listNode*, %struct.listNode** %22, align 8, !dbg !664, !tbaa !157
  %24 = icmp eq %struct.listNode* %23, null, !dbg !666
  br i1 %24, label %26, label %25, !dbg !667

; <label>:25:                                     ; preds = %15
  store %struct.listNode* %23, %struct.listNode** %7, align 8, !dbg !668, !tbaa !157
  br label %26, !dbg !669

; <label>:26:                                     ; preds = %15, %25
  %27 = getelementptr inbounds %struct.list, %struct.list* %1, i64 0, i32 5, !dbg !670
  %28 = load i64, i64* %27, align 8, !dbg !670, !tbaa !57
  %29 = getelementptr inbounds %struct.list, %struct.list* %0, i64 0, i32 5, !dbg !671
  %30 = load i64, i64* %29, align 8, !dbg !672, !tbaa !57
  %31 = add i64 %30, %28, !dbg !672
  store i64 %31, i64* %29, align 8, !dbg !672, !tbaa !57
  %32 = bitcast %struct.list* %1 to <2 x %struct.listNode*>*, !dbg !673
  store <2 x %struct.listNode*> zeroinitializer, <2 x %struct.listNode*>* %32, align 8, !dbg !673, !tbaa !51
  store i64 0, i64* %27, align 8, !dbg !674, !tbaa !57
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !675
  ret void, !dbg !675
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }
attributes #4 = { nounwind }

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
!130 = !DILocation(line: 71, column: 1, scope: !72, inlinedAt: !112)
!131 = !DILocation(line: 79, column: 11, scope: !107)
!132 = !DILocation(line: 79, column: 5, scope: !107)
!133 = !DILocation(line: 80, column: 1, scope: !107)
!134 = distinct !DISubprogram(name: "listAddNodeHead", scope: !1, file: !1, line: 88, type: !135, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !137)
!135 = !DISubroutineType(types: !136)
!136 = !{!12, !12, !4}
!137 = !{!138, !139, !140}
!138 = !DILocalVariable(name: "list", arg: 1, scope: !134, file: !1, line: 88, type: !12)
!139 = !DILocalVariable(name: "value", arg: 2, scope: !134, file: !1, line: 88, type: !4)
!140 = !DILocalVariable(name: "node", scope: !134, file: !1, line: 90, type: !18)
!141 = !DILocation(line: 88, column: 29, scope: !134)
!142 = !DILocation(line: 88, column: 41, scope: !134)
!143 = !DILocation(line: 92, column: 17, scope: !144)
!144 = distinct !DILexicalBlock(scope: !134, file: !1, line: 92, column: 9)
!145 = !DILocation(line: 90, column: 15, scope: !134)
!146 = !DILocation(line: 92, column: 41, scope: !144)
!147 = !DILocation(line: 92, column: 9, scope: !134)
!148 = !DILocation(line: 94, column: 11, scope: !134)
!149 = !DILocation(line: 94, column: 17, scope: !134)
!150 = !DILocation(line: 95, column: 15, scope: !151)
!151 = distinct !DILexicalBlock(scope: !134, file: !1, line: 95, column: 9)
!152 = !DILocation(line: 95, column: 19, scope: !151)
!153 = !DILocation(line: 95, column: 9, scope: !134)
!154 = !DILocation(line: 96, column: 28, scope: !155)
!155 = distinct !DILexicalBlock(scope: !151, file: !1, line: 95, column: 25)
!156 = !DILocation(line: 96, column: 33, scope: !155)
!157 = !{!58, !52, i64 8}
!158 = !DILocation(line: 96, column: 20, scope: !155)
!159 = !DILocation(line: 97, column: 20, scope: !155)
!160 = !DILocation(line: 98, column: 5, scope: !155)
!161 = !DILocation(line: 99, column: 15, scope: !162)
!162 = distinct !DILexicalBlock(scope: !151, file: !1, line: 98, column: 12)
!163 = !DILocation(line: 99, column: 20, scope: !162)
!164 = !{!92, !52, i64 0}
!165 = !DILocation(line: 100, column: 28, scope: !162)
!166 = !DILocation(line: 100, column: 15, scope: !162)
!167 = !DILocation(line: 100, column: 20, scope: !162)
!168 = !DILocation(line: 101, column: 15, scope: !162)
!169 = !DILocation(line: 101, column: 26, scope: !162)
!170 = !DILocation(line: 102, column: 20, scope: !162)
!171 = !DILocation(line: 104, column: 14, scope: !134)
!172 = !DILocation(line: 105, column: 5, scope: !134)
!173 = !DILocation(line: 0, scope: !134)
!174 = !DILocation(line: 106, column: 1, scope: !134)
!175 = distinct !DISubprogram(name: "listAddNodeTail", scope: !1, file: !1, line: 114, type: !135, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !176)
!176 = !{!177, !178, !179}
!177 = !DILocalVariable(name: "list", arg: 1, scope: !175, file: !1, line: 114, type: !12)
!178 = !DILocalVariable(name: "value", arg: 2, scope: !175, file: !1, line: 114, type: !4)
!179 = !DILocalVariable(name: "node", scope: !175, file: !1, line: 116, type: !18)
!180 = !DILocation(line: 114, column: 29, scope: !175)
!181 = !DILocation(line: 114, column: 41, scope: !175)
!182 = !DILocation(line: 118, column: 17, scope: !183)
!183 = distinct !DILexicalBlock(scope: !175, file: !1, line: 118, column: 9)
!184 = !DILocation(line: 116, column: 15, scope: !175)
!185 = !DILocation(line: 118, column: 41, scope: !183)
!186 = !DILocation(line: 118, column: 9, scope: !175)
!187 = !DILocation(line: 120, column: 11, scope: !175)
!188 = !DILocation(line: 120, column: 17, scope: !175)
!189 = !DILocation(line: 121, column: 15, scope: !190)
!190 = distinct !DILexicalBlock(scope: !175, file: !1, line: 121, column: 9)
!191 = !DILocation(line: 121, column: 19, scope: !190)
!192 = !DILocation(line: 0, scope: !193)
!193 = distinct !DILexicalBlock(scope: !190, file: !1, line: 124, column: 12)
!194 = !DILocation(line: 121, column: 9, scope: !175)
!195 = !DILocation(line: 122, column: 33, scope: !196)
!196 = distinct !DILexicalBlock(scope: !190, file: !1, line: 121, column: 25)
!197 = !DILocation(line: 122, column: 20, scope: !196)
!198 = !DILocation(line: 123, column: 20, scope: !196)
!199 = !DILocation(line: 124, column: 5, scope: !196)
!200 = !DILocation(line: 125, column: 28, scope: !193)
!201 = !DILocation(line: 125, column: 20, scope: !193)
!202 = !DILocation(line: 126, column: 15, scope: !193)
!203 = !DILocation(line: 126, column: 20, scope: !193)
!204 = !DILocation(line: 127, column: 15, scope: !193)
!205 = !DILocation(line: 127, column: 21, scope: !193)
!206 = !DILocation(line: 127, column: 26, scope: !193)
!207 = !DILocation(line: 128, column: 20, scope: !193)
!208 = !DILocation(line: 130, column: 14, scope: !175)
!209 = !DILocation(line: 131, column: 5, scope: !175)
!210 = !DILocation(line: 0, scope: !175)
!211 = !DILocation(line: 132, column: 1, scope: !175)
!212 = distinct !DISubprogram(name: "listInsertNode", scope: !1, file: !1, line: 134, type: !213, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !215)
!213 = !DISubroutineType(types: !214)
!214 = !{!12, !12, !18, !4, !39}
!215 = !{!216, !217, !218, !219, !220}
!216 = !DILocalVariable(name: "list", arg: 1, scope: !212, file: !1, line: 134, type: !12)
!217 = !DILocalVariable(name: "old_node", arg: 2, scope: !212, file: !1, line: 134, type: !18)
!218 = !DILocalVariable(name: "value", arg: 3, scope: !212, file: !1, line: 134, type: !4)
!219 = !DILocalVariable(name: "after", arg: 4, scope: !212, file: !1, line: 134, type: !39)
!220 = !DILocalVariable(name: "node", scope: !212, file: !1, line: 135, type: !18)
!221 = !DILocation(line: 134, column: 28, scope: !212)
!222 = !DILocation(line: 134, column: 44, scope: !212)
!223 = !DILocation(line: 134, column: 60, scope: !212)
!224 = !DILocation(line: 134, column: 71, scope: !212)
!225 = !DILocation(line: 137, column: 17, scope: !226)
!226 = distinct !DILexicalBlock(scope: !212, file: !1, line: 137, column: 9)
!227 = !DILocation(line: 135, column: 15, scope: !212)
!228 = !DILocation(line: 137, column: 41, scope: !226)
!229 = !DILocation(line: 137, column: 9, scope: !212)
!230 = !DILocation(line: 139, column: 11, scope: !212)
!231 = !DILocation(line: 139, column: 17, scope: !212)
!232 = !DILocation(line: 140, column: 9, scope: !233)
!233 = distinct !DILexicalBlock(scope: !212, file: !1, line: 140, column: 9)
!234 = !DILocation(line: 140, column: 9, scope: !212)
!235 = !DILocation(line: 141, column: 15, scope: !236)
!236 = distinct !DILexicalBlock(scope: !233, file: !1, line: 140, column: 16)
!237 = !DILocation(line: 141, column: 20, scope: !236)
!238 = !DILocation(line: 142, column: 32, scope: !236)
!239 = !DILocation(line: 142, column: 15, scope: !236)
!240 = !DILocation(line: 142, column: 20, scope: !236)
!241 = !DILocation(line: 143, column: 19, scope: !242)
!242 = distinct !DILexicalBlock(scope: !236, file: !1, line: 143, column: 13)
!243 = !DILocation(line: 143, column: 24, scope: !242)
!244 = !DILocation(line: 143, column: 13, scope: !236)
!245 = !DILocation(line: 144, column: 24, scope: !246)
!246 = distinct !DILexicalBlock(scope: !242, file: !1, line: 143, column: 37)
!247 = !DILocation(line: 145, column: 9, scope: !246)
!248 = !DILocation(line: 147, column: 15, scope: !249)
!249 = distinct !DILexicalBlock(scope: !233, file: !1, line: 146, column: 12)
!250 = !DILocation(line: 147, column: 20, scope: !249)
!251 = !DILocation(line: 148, column: 32, scope: !249)
!252 = !DILocation(line: 148, column: 20, scope: !249)
!253 = !DILocation(line: 149, column: 19, scope: !254)
!254 = distinct !DILexicalBlock(scope: !249, file: !1, line: 149, column: 13)
!255 = !DILocation(line: 149, column: 24, scope: !254)
!256 = !DILocation(line: 149, column: 13, scope: !249)
!257 = !DILocation(line: 150, column: 24, scope: !258)
!258 = distinct !DILexicalBlock(scope: !254, file: !1, line: 149, column: 37)
!259 = !DILocation(line: 151, column: 9, scope: !258)
!260 = !DILocation(line: 153, column: 20, scope: !261)
!261 = distinct !DILexicalBlock(scope: !212, file: !1, line: 153, column: 9)
!262 = !DILocation(line: 153, column: 9, scope: !212)
!263 = !DILocation(line: 154, column: 21, scope: !264)
!264 = distinct !DILexicalBlock(scope: !261, file: !1, line: 153, column: 29)
!265 = !DILocation(line: 154, column: 26, scope: !264)
!266 = !DILocation(line: 156, column: 15, scope: !267)
!267 = distinct !DILexicalBlock(scope: !212, file: !1, line: 156, column: 9)
!268 = !DILocation(line: 156, column: 20, scope: !267)
!269 = !DILocation(line: 156, column: 9, scope: !212)
!270 = !DILocation(line: 157, column: 26, scope: !271)
!271 = distinct !DILexicalBlock(scope: !267, file: !1, line: 156, column: 29)
!272 = !DILocation(line: 158, column: 5, scope: !271)
!273 = !DILocation(line: 159, column: 11, scope: !212)
!274 = !DILocation(line: 159, column: 14, scope: !212)
!275 = !DILocation(line: 160, column: 5, scope: !212)
!276 = !DILocation(line: 0, scope: !212)
!277 = !DILocation(line: 161, column: 1, scope: !212)
!278 = distinct !DISubprogram(name: "listDelNode", scope: !1, file: !1, line: 167, type: !279, isLocal: false, isDefinition: true, scopeLine: 168, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !281)
!279 = !DISubroutineType(types: !280)
!280 = !{null, !12, !18}
!281 = !{!282, !283}
!282 = !DILocalVariable(name: "list", arg: 1, scope: !278, file: !1, line: 167, type: !12)
!283 = !DILocalVariable(name: "node", arg: 2, scope: !278, file: !1, line: 167, type: !18)
!284 = !DILocation(line: 167, column: 24, scope: !278)
!285 = !DILocation(line: 167, column: 40, scope: !278)
!286 = !DILocation(line: 169, column: 15, scope: !287)
!287 = distinct !DILexicalBlock(scope: !278, file: !1, line: 169, column: 9)
!288 = !DILocation(line: 169, column: 9, scope: !287)
!289 = !DILocation(line: 0, scope: !287)
!290 = !DILocation(line: 169, column: 9, scope: !278)
!291 = !DILocation(line: 170, column: 21, scope: !287)
!292 = !DILocation(line: 170, column: 26, scope: !287)
!293 = !DILocation(line: 173, column: 15, scope: !294)
!294 = distinct !DILexicalBlock(scope: !278, file: !1, line: 173, column: 9)
!295 = !DILocation(line: 170, column: 9, scope: !287)
!296 = !DILocation(line: 172, column: 20, scope: !287)
!297 = !DILocation(line: 173, column: 9, scope: !294)
!298 = !DILocation(line: 176, column: 15, scope: !294)
!299 = !DILocation(line: 176, column: 20, scope: !294)
!300 = !DILocation(line: 174, column: 26, scope: !294)
!301 = !DILocation(line: 173, column: 9, scope: !278)
!302 = !DILocation(line: 0, scope: !294)
!303 = !DILocation(line: 177, column: 15, scope: !304)
!304 = distinct !DILexicalBlock(scope: !278, file: !1, line: 177, column: 9)
!305 = !DILocation(line: 177, column: 9, scope: !304)
!306 = !DILocation(line: 177, column: 9, scope: !278)
!307 = !DILocation(line: 177, column: 38, scope: !304)
!308 = !DILocation(line: 177, column: 21, scope: !304)
!309 = !DILocation(line: 178, column: 11, scope: !278)
!310 = !DILocation(line: 178, column: 5, scope: !278)
!311 = !DILocation(line: 179, column: 11, scope: !278)
!312 = !DILocation(line: 179, column: 14, scope: !278)
!313 = !DILocation(line: 180, column: 1, scope: !278)
!314 = distinct !DISubprogram(name: "listGetIterator", scope: !1, file: !1, line: 186, type: !315, isLocal: false, isDefinition: true, scopeLine: 187, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !323)
!315 = !DISubroutineType(types: !316)
!316 = !{!317, !12, !39}
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "listIter", file: !14, line: 45, baseType: !319)
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "listIter", file: !14, line: 42, size: 128, elements: !320)
!320 = !{!321, !322}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !319, file: !14, line: 43, baseType: !18, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !319, file: !14, line: 44, baseType: !39, size: 32, offset: 64)
!323 = !{!324, !325, !326}
!324 = !DILocalVariable(name: "list", arg: 1, scope: !314, file: !1, line: 186, type: !12)
!325 = !DILocalVariable(name: "direction", arg: 2, scope: !314, file: !1, line: 186, type: !39)
!326 = !DILocalVariable(name: "iter", scope: !314, file: !1, line: 188, type: !317)
!327 = !DILocation(line: 186, column: 33, scope: !314)
!328 = !DILocation(line: 186, column: 43, scope: !314)
!329 = !DILocation(line: 190, column: 17, scope: !330)
!330 = distinct !DILexicalBlock(scope: !314, file: !1, line: 190, column: 9)
!331 = !DILocation(line: 190, column: 41, scope: !330)
!332 = !DILocation(line: 190, column: 9, scope: !314)
!333 = !DILocation(line: 188, column: 15, scope: !314)
!334 = !DILocation(line: 191, column: 19, scope: !335)
!335 = distinct !DILexicalBlock(scope: !314, file: !1, line: 191, column: 9)
!336 = !DILocation(line: 194, column: 28, scope: !335)
!337 = !DILocation(line: 192, column: 28, scope: !335)
!338 = !DILocation(line: 191, column: 9, scope: !314)
!339 = !DILocation(line: 0, scope: !335)
!340 = !{!341, !52, i64 0}
!341 = !{!"listIter", !52, i64 0, !342, i64 8}
!342 = !{!"int", !53, i64 0}
!343 = !DILocation(line: 195, column: 11, scope: !314)
!344 = !DILocation(line: 195, column: 21, scope: !314)
!345 = !{!341, !342, i64 8}
!346 = !DILocation(line: 196, column: 5, scope: !314)
!347 = !DILocation(line: 0, scope: !314)
!348 = !DILocation(line: 197, column: 1, scope: !314)
!349 = distinct !DISubprogram(name: "listReleaseIterator", scope: !1, file: !1, line: 200, type: !350, isLocal: false, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !352)
!350 = !DISubroutineType(types: !351)
!351 = !{null, !317}
!352 = !{!353}
!353 = !DILocalVariable(name: "iter", arg: 1, scope: !349, file: !1, line: 200, type: !317)
!354 = !DILocation(line: 200, column: 36, scope: !349)
!355 = !DILocation(line: 201, column: 11, scope: !349)
!356 = !DILocation(line: 201, column: 5, scope: !349)
!357 = !DILocation(line: 202, column: 1, scope: !349)
!358 = distinct !DISubprogram(name: "listRewind", scope: !1, file: !1, line: 205, type: !359, isLocal: false, isDefinition: true, scopeLine: 205, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !361)
!359 = !DISubroutineType(types: !360)
!360 = !{null, !12, !317}
!361 = !{!362, !363}
!362 = !DILocalVariable(name: "list", arg: 1, scope: !358, file: !1, line: 205, type: !12)
!363 = !DILocalVariable(name: "li", arg: 2, scope: !358, file: !1, line: 205, type: !317)
!364 = !DILocation(line: 205, column: 23, scope: !358)
!365 = !DILocation(line: 205, column: 39, scope: !358)
!366 = !DILocation(line: 206, column: 22, scope: !358)
!367 = !DILocation(line: 206, column: 14, scope: !358)
!368 = !DILocation(line: 207, column: 9, scope: !358)
!369 = !DILocation(line: 207, column: 19, scope: !358)
!370 = !DILocation(line: 208, column: 1, scope: !358)
!371 = distinct !DISubprogram(name: "listRewindTail", scope: !1, file: !1, line: 210, type: !359, isLocal: false, isDefinition: true, scopeLine: 210, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !372)
!372 = !{!373, !374}
!373 = !DILocalVariable(name: "list", arg: 1, scope: !371, file: !1, line: 210, type: !12)
!374 = !DILocalVariable(name: "li", arg: 2, scope: !371, file: !1, line: 210, type: !317)
!375 = !DILocation(line: 210, column: 27, scope: !371)
!376 = !DILocation(line: 210, column: 43, scope: !371)
!377 = !DILocation(line: 211, column: 22, scope: !371)
!378 = !DILocation(line: 211, column: 14, scope: !371)
!379 = !DILocation(line: 212, column: 9, scope: !371)
!380 = !DILocation(line: 212, column: 19, scope: !371)
!381 = !DILocation(line: 213, column: 1, scope: !371)
!382 = distinct !DISubprogram(name: "listNext", scope: !1, file: !1, line: 229, type: !383, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !385)
!383 = !DISubroutineType(types: !384)
!384 = !{!18, !317}
!385 = !{!386, !387}
!386 = !DILocalVariable(name: "iter", arg: 1, scope: !382, file: !1, line: 229, type: !317)
!387 = !DILocalVariable(name: "current", scope: !382, file: !1, line: 231, type: !18)
!388 = !DILocation(line: 229, column: 30, scope: !382)
!389 = !DILocation(line: 231, column: 31, scope: !382)
!390 = !DILocation(line: 231, column: 15, scope: !382)
!391 = !DILocation(line: 233, column: 17, scope: !392)
!392 = distinct !DILexicalBlock(scope: !382, file: !1, line: 233, column: 9)
!393 = !DILocation(line: 233, column: 9, scope: !382)
!394 = !DILocation(line: 234, column: 19, scope: !395)
!395 = distinct !DILexicalBlock(scope: !396, file: !1, line: 234, column: 13)
!396 = distinct !DILexicalBlock(scope: !392, file: !1, line: 233, column: 26)
!397 = !DILocation(line: 234, column: 29, scope: !395)
!398 = !DILocation(line: 235, column: 35, scope: !395)
!399 = !DILocation(line: 237, column: 35, scope: !395)
!400 = !DILocation(line: 234, column: 13, scope: !396)
!401 = !DILocation(line: 0, scope: !395)
!402 = !DILocation(line: 239, column: 5, scope: !382)
!403 = distinct !DISubprogram(name: "listDup", scope: !1, file: !1, line: 250, type: !404, isLocal: false, isDefinition: true, scopeLine: 251, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !406)
!404 = !DISubroutineType(types: !405)
!405 = !{!12, !12}
!406 = !{!407, !408, !409, !410, !411}
!407 = !DILocalVariable(name: "orig", arg: 1, scope: !403, file: !1, line: 250, type: !12)
!408 = !DILocalVariable(name: "copy", scope: !403, file: !1, line: 252, type: !12)
!409 = !DILocalVariable(name: "iter", scope: !403, file: !1, line: 253, type: !318)
!410 = !DILocalVariable(name: "node", scope: !403, file: !1, line: 254, type: !18)
!411 = !DILocalVariable(name: "value", scope: !412, file: !1, line: 263, type: !4)
!412 = distinct !DILexicalBlock(scope: !403, file: !1, line: 262, column: 45)
!413 = !DILocation(line: 250, column: 21, scope: !403)
!414 = !DILocation(line: 45, column: 17, scope: !46, inlinedAt: !415)
!415 = distinct !DILocation(line: 256, column: 17, scope: !416)
!416 = distinct !DILexicalBlock(scope: !403, file: !1, line: 256, column: 9)
!417 = !DILocation(line: 45, column: 41, scope: !46, inlinedAt: !415)
!418 = !DILocation(line: 45, column: 9, scope: !9, inlinedAt: !415)
!419 = !DILocation(line: 43, column: 18, scope: !9, inlinedAt: !415)
!420 = !DILocation(line: 47, column: 24, scope: !9, inlinedAt: !415)
!421 = !DILocation(line: 47, column: 11, scope: !9, inlinedAt: !415)
!422 = !DILocation(line: 47, column: 16, scope: !9, inlinedAt: !415)
!423 = !DILocation(line: 48, column: 11, scope: !9, inlinedAt: !415)
!424 = !DILocation(line: 48, column: 15, scope: !9, inlinedAt: !415)
!425 = !DILocation(line: 49, column: 11, scope: !9, inlinedAt: !415)
!426 = !DILocation(line: 49, column: 15, scope: !9, inlinedAt: !415)
!427 = !DILocation(line: 50, column: 11, scope: !9, inlinedAt: !415)
!428 = !DILocation(line: 50, column: 16, scope: !9, inlinedAt: !415)
!429 = !DILocation(line: 51, column: 11, scope: !9, inlinedAt: !415)
!430 = !DILocation(line: 51, column: 17, scope: !9, inlinedAt: !415)
!431 = !DILocation(line: 53, column: 1, scope: !9, inlinedAt: !415)
!432 = !DILocation(line: 252, column: 11, scope: !403)
!433 = !DILocation(line: 258, column: 23, scope: !403)
!434 = !DILocation(line: 258, column: 15, scope: !403)
!435 = !DILocation(line: 260, column: 25, scope: !403)
!436 = !DILocation(line: 260, column: 17, scope: !403)
!437 = !DILocation(line: 253, column: 14, scope: !403)
!438 = !DILocation(line: 205, column: 23, scope: !358, inlinedAt: !439)
!439 = distinct !DILocation(line: 261, column: 5, scope: !403)
!440 = !DILocation(line: 205, column: 39, scope: !358, inlinedAt: !439)
!441 = !DILocation(line: 206, column: 22, scope: !358, inlinedAt: !439)
!442 = !DILocation(line: 208, column: 1, scope: !358, inlinedAt: !439)
!443 = !DILocation(line: 229, column: 30, scope: !382, inlinedAt: !444)
!444 = distinct !DILocation(line: 262, column: 19, scope: !403)
!445 = !DILocation(line: 233, column: 17, scope: !392, inlinedAt: !444)
!446 = !DILocation(line: 233, column: 9, scope: !382, inlinedAt: !444)
!447 = !DILocation(line: 231, column: 15, scope: !382, inlinedAt: !444)
!448 = !DILocation(line: 265, column: 19, scope: !449)
!449 = distinct !DILexicalBlock(scope: !412, file: !1, line: 265, column: 13)
!450 = !DILocation(line: 231, column: 31, scope: !382, inlinedAt: !444)
!451 = !DILocation(line: 235, column: 35, scope: !395, inlinedAt: !444)
!452 = !DILocation(line: 239, column: 5, scope: !382, inlinedAt: !444)
!453 = !DILocation(line: 254, column: 15, scope: !403)
!454 = !DILocation(line: 265, column: 13, scope: !449)
!455 = !DILocation(line: 0, scope: !456)
!456 = distinct !DILexicalBlock(scope: !449, file: !1, line: 265, column: 24)
!457 = !DILocation(line: 265, column: 13, scope: !412)
!458 = !DILocation(line: 266, column: 21, scope: !456)
!459 = !DILocation(line: 263, column: 15, scope: !412)
!460 = !DILocation(line: 267, column: 23, scope: !461)
!461 = distinct !DILexicalBlock(scope: !456, file: !1, line: 267, column: 17)
!462 = !DILocation(line: 267, column: 17, scope: !456)
!463 = !DILocation(line: 76, column: 24, scope: !107, inlinedAt: !464)
!464 = distinct !DILocation(line: 268, column: 17, scope: !465)
!465 = distinct !DILexicalBlock(scope: !461, file: !1, line: 267, column: 32)
!466 = !DILocation(line: 56, column: 22, scope: !72, inlinedAt: !467)
!467 = distinct !DILocation(line: 78, column: 5, scope: !107, inlinedAt: !464)
!468 = !DILocation(line: 62, column: 17, scope: !72, inlinedAt: !467)
!469 = !DILocation(line: 58, column: 19, scope: !72, inlinedAt: !467)
!470 = !DILocation(line: 63, column: 5, scope: !72, inlinedAt: !467)
!471 = !DILocation(line: 61, column: 21, scope: !72, inlinedAt: !467)
!472 = !DILocation(line: 59, column: 15, scope: !72, inlinedAt: !467)
!473 = !DILocation(line: 0, scope: !107, inlinedAt: !464)
!474 = !DILocation(line: 63, column: 14, scope: !72, inlinedAt: !467)
!475 = !DILocation(line: 64, column: 25, scope: !90, inlinedAt: !467)
!476 = !DILocation(line: 59, column: 25, scope: !72, inlinedAt: !467)
!477 = !DILocation(line: 65, column: 19, scope: !95, inlinedAt: !467)
!478 = !DILocation(line: 65, column: 13, scope: !95, inlinedAt: !467)
!479 = !DILocation(line: 65, column: 13, scope: !90, inlinedAt: !467)
!480 = !DILocation(line: 65, column: 45, scope: !95, inlinedAt: !467)
!481 = !DILocation(line: 65, column: 25, scope: !95, inlinedAt: !467)
!482 = !DILocation(line: 66, column: 9, scope: !90, inlinedAt: !467)
!483 = !DILocation(line: 69, column: 16, scope: !72, inlinedAt: !467)
!484 = !DILocation(line: 70, column: 15, scope: !72, inlinedAt: !467)
!485 = !DILocation(line: 71, column: 1, scope: !72, inlinedAt: !467)
!486 = !DILocation(line: 79, column: 5, scope: !107, inlinedAt: !464)
!487 = !DILocation(line: 0, scope: !449)
!488 = !DILocation(line: 114, column: 29, scope: !175, inlinedAt: !489)
!489 = distinct !DILocation(line: 273, column: 13, scope: !490)
!490 = distinct !DILexicalBlock(scope: !412, file: !1, line: 273, column: 13)
!491 = !DILocation(line: 114, column: 41, scope: !175, inlinedAt: !489)
!492 = !DILocation(line: 118, column: 17, scope: !183, inlinedAt: !489)
!493 = !DILocation(line: 116, column: 15, scope: !175, inlinedAt: !489)
!494 = !DILocation(line: 118, column: 41, scope: !183, inlinedAt: !489)
!495 = !DILocation(line: 118, column: 9, scope: !175, inlinedAt: !489)
!496 = !DILocation(line: 120, column: 11, scope: !175, inlinedAt: !489)
!497 = !DILocation(line: 120, column: 17, scope: !175, inlinedAt: !489)
!498 = !DILocation(line: 121, column: 15, scope: !190, inlinedAt: !489)
!499 = !DILocation(line: 121, column: 19, scope: !190, inlinedAt: !489)
!500 = !DILocation(line: 121, column: 9, scope: !175, inlinedAt: !489)
!501 = !DILocation(line: 122, column: 33, scope: !196, inlinedAt: !489)
!502 = !DILocation(line: 122, column: 20, scope: !196, inlinedAt: !489)
!503 = !DILocation(line: 123, column: 20, scope: !196, inlinedAt: !489)
!504 = !DILocation(line: 124, column: 5, scope: !196, inlinedAt: !489)
!505 = !DILocation(line: 125, column: 28, scope: !193, inlinedAt: !489)
!506 = !DILocation(line: 125, column: 20, scope: !193, inlinedAt: !489)
!507 = !DILocation(line: 126, column: 15, scope: !193, inlinedAt: !489)
!508 = !DILocation(line: 126, column: 20, scope: !193, inlinedAt: !489)
!509 = !DILocation(line: 127, column: 15, scope: !193, inlinedAt: !489)
!510 = !DILocation(line: 127, column: 21, scope: !193, inlinedAt: !489)
!511 = !DILocation(line: 127, column: 26, scope: !193, inlinedAt: !489)
!512 = !DILocation(line: 128, column: 20, scope: !193, inlinedAt: !489)
!513 = !DILocation(line: 130, column: 14, scope: !175, inlinedAt: !489)
!514 = !DILocation(line: 132, column: 1, scope: !175, inlinedAt: !489)
!515 = !DILocation(line: 76, column: 24, scope: !107, inlinedAt: !516)
!516 = distinct !DILocation(line: 274, column: 13, scope: !517)
!517 = distinct !DILexicalBlock(scope: !490, file: !1, line: 273, column: 51)
!518 = !DILocation(line: 56, column: 22, scope: !72, inlinedAt: !519)
!519 = distinct !DILocation(line: 78, column: 5, scope: !107, inlinedAt: !516)
!520 = !DILocation(line: 62, column: 17, scope: !72, inlinedAt: !519)
!521 = !DILocation(line: 58, column: 19, scope: !72, inlinedAt: !519)
!522 = !DILocation(line: 63, column: 5, scope: !72, inlinedAt: !519)
!523 = !DILocation(line: 61, column: 21, scope: !72, inlinedAt: !519)
!524 = !DILocation(line: 59, column: 15, scope: !72, inlinedAt: !519)
!525 = !DILocation(line: 0, scope: !107, inlinedAt: !516)
!526 = !DILocation(line: 63, column: 14, scope: !72, inlinedAt: !519)
!527 = !DILocation(line: 64, column: 25, scope: !90, inlinedAt: !519)
!528 = !DILocation(line: 59, column: 25, scope: !72, inlinedAt: !519)
!529 = !DILocation(line: 65, column: 19, scope: !95, inlinedAt: !519)
!530 = !DILocation(line: 65, column: 13, scope: !95, inlinedAt: !519)
!531 = !DILocation(line: 65, column: 13, scope: !90, inlinedAt: !519)
!532 = !DILocation(line: 65, column: 45, scope: !95, inlinedAt: !519)
!533 = !DILocation(line: 65, column: 25, scope: !95, inlinedAt: !519)
!534 = !DILocation(line: 66, column: 9, scope: !90, inlinedAt: !519)
!535 = !DILocation(line: 69, column: 16, scope: !72, inlinedAt: !519)
!536 = !DILocation(line: 70, column: 15, scope: !72, inlinedAt: !519)
!537 = !DILocation(line: 71, column: 1, scope: !72, inlinedAt: !519)
!538 = !DILocation(line: 79, column: 5, scope: !107, inlinedAt: !516)
!539 = !DILocation(line: 0, scope: !403)
!540 = !DILocation(line: 0, scope: !465)
!541 = !DILocation(line: 279, column: 1, scope: !403)
!542 = distinct !DISubprogram(name: "listSearchKey", scope: !1, file: !1, line: 290, type: !543, isLocal: false, isDefinition: true, scopeLine: 291, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !545)
!543 = !DISubroutineType(types: !544)
!544 = !{!18, !12, !4}
!545 = !{!546, !547, !548, !549}
!546 = !DILocalVariable(name: "list", arg: 1, scope: !542, file: !1, line: 290, type: !12)
!547 = !DILocalVariable(name: "key", arg: 2, scope: !542, file: !1, line: 290, type: !4)
!548 = !DILocalVariable(name: "iter", scope: !542, file: !1, line: 292, type: !318)
!549 = !DILocalVariable(name: "node", scope: !542, file: !1, line: 293, type: !18)
!550 = !DILocation(line: 290, column: 31, scope: !542)
!551 = !DILocation(line: 290, column: 43, scope: !542)
!552 = !DILocation(line: 292, column: 14, scope: !542)
!553 = !DILocation(line: 205, column: 23, scope: !358, inlinedAt: !554)
!554 = distinct !DILocation(line: 295, column: 5, scope: !542)
!555 = !DILocation(line: 205, column: 39, scope: !358, inlinedAt: !554)
!556 = !DILocation(line: 206, column: 22, scope: !358, inlinedAt: !554)
!557 = !DILocation(line: 208, column: 1, scope: !358, inlinedAt: !554)
!558 = !DILocation(line: 229, column: 30, scope: !382, inlinedAt: !559)
!559 = distinct !DILocation(line: 296, column: 19, scope: !542)
!560 = !DILocation(line: 231, column: 31, scope: !382, inlinedAt: !559)
!561 = !DILocation(line: 231, column: 15, scope: !382, inlinedAt: !559)
!562 = !DILocation(line: 233, column: 17, scope: !392, inlinedAt: !559)
!563 = !DILocation(line: 233, column: 9, scope: !382, inlinedAt: !559)
!564 = !DILocation(line: 239, column: 5, scope: !382, inlinedAt: !559)
!565 = !DILocation(line: 293, column: 15, scope: !542)
!566 = !DILocation(line: 296, column: 5, scope: !542)
!567 = !DILocation(line: 235, column: 35, scope: !395, inlinedAt: !559)
!568 = !DILocation(line: 297, column: 19, scope: !569)
!569 = distinct !DILexicalBlock(scope: !570, file: !1, line: 297, column: 13)
!570 = distinct !DILexicalBlock(scope: !542, file: !1, line: 296, column: 45)
!571 = !DILocation(line: 297, column: 13, scope: !569)
!572 = !DILocation(line: 0, scope: !573)
!573 = distinct !DILexicalBlock(scope: !574, file: !1, line: 298, column: 17)
!574 = distinct !DILexicalBlock(scope: !569, file: !1, line: 297, column: 26)
!575 = !DILocation(line: 297, column: 13, scope: !570)
!576 = !DILocation(line: 298, column: 17, scope: !573)
!577 = !DILocation(line: 298, column: 17, scope: !574)
!578 = !DILocation(line: 302, column: 21, scope: !579)
!579 = distinct !DILexicalBlock(scope: !580, file: !1, line: 302, column: 17)
!580 = distinct !DILexicalBlock(scope: !569, file: !1, line: 301, column: 16)
!581 = !DILocation(line: 302, column: 17, scope: !580)
!582 = distinct !{!582, !566, !583}
!583 = !DILocation(line: 306, column: 5, scope: !542)
!584 = !DILocation(line: 308, column: 1, scope: !542)
!585 = distinct !DISubprogram(name: "listIndex", scope: !1, file: !1, line: 315, type: !586, isLocal: false, isDefinition: true, scopeLine: 315, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !589)
!586 = !DISubroutineType(types: !587)
!587 = !{!18, !12, !588}
!588 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!589 = !{!590, !591, !592}
!590 = !DILocalVariable(name: "list", arg: 1, scope: !585, file: !1, line: 315, type: !12)
!591 = !DILocalVariable(name: "index", arg: 2, scope: !585, file: !1, line: 315, type: !588)
!592 = !DILocalVariable(name: "n", scope: !585, file: !1, line: 316, type: !18)
!593 = !DILocation(line: 315, column: 27, scope: !585)
!594 = !DILocation(line: 315, column: 38, scope: !585)
!595 = !DILocation(line: 318, column: 15, scope: !596)
!596 = distinct !DILexicalBlock(scope: !585, file: !1, line: 318, column: 9)
!597 = !DILocation(line: 318, column: 9, scope: !585)
!598 = !DILocation(line: 320, column: 19, scope: !599)
!599 = distinct !DILexicalBlock(scope: !596, file: !1, line: 318, column: 20)
!600 = !DILocation(line: 316, column: 15, scope: !585)
!601 = !DILocation(line: 0, scope: !599)
!602 = !DILocation(line: 321, column: 20, scope: !599)
!603 = !DILocation(line: 321, column: 23, scope: !599)
!604 = !DILocation(line: 321, column: 9, scope: !599)
!605 = !DILocation(line: 319, column: 25, scope: !599)
!606 = !DILocation(line: 321, column: 36, scope: !599)
!607 = distinct !{!607, !604, !606}
!608 = !DILocation(line: 323, column: 19, scope: !609)
!609 = distinct !DILexicalBlock(scope: !596, file: !1, line: 322, column: 12)
!610 = !DILocation(line: 0, scope: !609)
!611 = !DILocation(line: 324, column: 20, scope: !609)
!612 = !DILocation(line: 324, column: 23, scope: !609)
!613 = !DILocation(line: 324, column: 9, scope: !609)
!614 = !DILocation(line: 324, column: 36, scope: !609)
!615 = distinct !{!615, !613, !614}
!616 = !DILocation(line: 326, column: 5, scope: !585)
!617 = distinct !DISubprogram(name: "listRotate", scope: !1, file: !1, line: 330, type: !73, isLocal: false, isDefinition: true, scopeLine: 330, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !618)
!618 = !{!619, !620}
!619 = !DILocalVariable(name: "list", arg: 1, scope: !617, file: !1, line: 330, type: !12)
!620 = !DILocalVariable(name: "tail", scope: !617, file: !1, line: 331, type: !18)
!621 = !DILocation(line: 330, column: 23, scope: !617)
!622 = !DILocation(line: 331, column: 28, scope: !617)
!623 = !DILocation(line: 331, column: 15, scope: !617)
!624 = !DILocation(line: 333, column: 9, scope: !625)
!625 = distinct !DILexicalBlock(scope: !617, file: !1, line: 333, column: 9)
!626 = !DILocation(line: 333, column: 26, scope: !625)
!627 = !DILocation(line: 333, column: 9, scope: !617)
!628 = !DILocation(line: 336, column: 24, scope: !617)
!629 = !DILocation(line: 336, column: 16, scope: !617)
!630 = !DILocation(line: 337, column: 17, scope: !617)
!631 = !DILocation(line: 337, column: 22, scope: !617)
!632 = !DILocation(line: 339, column: 11, scope: !617)
!633 = !DILocation(line: 339, column: 17, scope: !617)
!634 = !DILocation(line: 339, column: 22, scope: !617)
!635 = !DILocation(line: 340, column: 16, scope: !617)
!636 = !DILocation(line: 341, column: 24, scope: !617)
!637 = !DILocation(line: 341, column: 11, scope: !617)
!638 = !DILocation(line: 341, column: 16, scope: !617)
!639 = !DILocation(line: 342, column: 16, scope: !617)
!640 = !DILocation(line: 343, column: 1, scope: !617)
!641 = distinct !DISubprogram(name: "listJoin", scope: !1, file: !1, line: 347, type: !642, isLocal: false, isDefinition: true, scopeLine: 347, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !644)
!642 = !DISubroutineType(types: !643)
!643 = !{null, !12, !12}
!644 = !{!645, !646}
!645 = !DILocalVariable(name: "l", arg: 1, scope: !641, file: !1, line: 347, type: !12)
!646 = !DILocalVariable(name: "o", arg: 2, scope: !641, file: !1, line: 347, type: !12)
!647 = !DILocation(line: 347, column: 21, scope: !641)
!648 = !DILocation(line: 347, column: 30, scope: !641)
!649 = !DILocation(line: 348, column: 12, scope: !650)
!650 = distinct !DILexicalBlock(scope: !641, file: !1, line: 348, column: 9)
!651 = !DILocation(line: 348, column: 9, scope: !650)
!652 = !DILocation(line: 348, column: 9, scope: !641)
!653 = !DILocation(line: 351, column: 12, scope: !654)
!654 = distinct !DILexicalBlock(scope: !641, file: !1, line: 351, column: 9)
!655 = !DILocation(line: 349, column: 28, scope: !650)
!656 = !DILocation(line: 349, column: 23, scope: !650)
!657 = !DILocation(line: 349, column: 9, scope: !650)
!658 = !DILocation(line: 351, column: 9, scope: !654)
!659 = !DILocation(line: 354, column: 17, scope: !654)
!660 = !DILocation(line: 352, column: 18, scope: !654)
!661 = !DILocation(line: 352, column: 23, scope: !654)
!662 = !DILocation(line: 351, column: 9, scope: !641)
!663 = !DILocation(line: 0, scope: !654)
!664 = !DILocation(line: 356, column: 12, scope: !665)
!665 = distinct !DILexicalBlock(scope: !641, file: !1, line: 356, column: 9)
!666 = !DILocation(line: 356, column: 9, scope: !665)
!667 = !DILocation(line: 356, column: 9, scope: !641)
!668 = !DILocation(line: 356, column: 26, scope: !665)
!669 = !DILocation(line: 356, column: 18, scope: !665)
!670 = !DILocation(line: 357, column: 18, scope: !641)
!671 = !DILocation(line: 357, column: 8, scope: !641)
!672 = !DILocation(line: 357, column: 12, scope: !641)
!673 = !DILocation(line: 360, column: 13, scope: !641)
!674 = !DILocation(line: 361, column: 12, scope: !641)
!675 = !DILocation(line: 362, column: 1, scope: !641)
