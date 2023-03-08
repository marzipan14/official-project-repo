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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !48
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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !72
  ret %struct.list* %15, !dbg !72
}

; Function Attrs: noredzone
declare dso_local i8* @zmalloc(i64) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local void @listEmpty(%struct.list* nocapture) local_unnamed_addr #0 !dbg !73 {
  %2 = getelementptr inbounds %struct.list, %struct.list* %0, i64 0, i32 0, !dbg !82
  %3 = load %struct.listNode*, %struct.listNode** %2, align 8, !dbg !82, !tbaa !83
  %4 = getelementptr inbounds %struct.list, %struct.list* %0, i64 0, i32 5, !dbg !85
  %5 = load i64, i64* %4, align 8, !dbg !85, !tbaa !57
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !87
  %6 = icmp eq i64 %5, 0, !dbg !87
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !87
  br i1 %6, label %23, label %7, !dbg !87

; <label>:7:                                      ; preds = %1
  %8 = getelementptr inbounds %struct.list, %struct.list* %0, i64 0, i32 3
  br label %9, !dbg !87

; <label>:9:                                      ; preds = %7, %21
  %10 = phi i64 [ %5, %7 ], [ %13, %21 ]
  %11 = phi %struct.listNode* [ %3, %7 ], [ %15, %21 ]
  %12 = bitcast %struct.listNode* %11 to i8*, !dbg !88
  %13 = add i64 %10, -1, !dbg !89
  %14 = getelementptr inbounds %struct.listNode, %struct.listNode* %11, i64 0, i32 1, !dbg !90
  %15 = load %struct.listNode*, %struct.listNode** %14, align 8, !dbg !90, !tbaa !92
  %16 = load void (i8*)*, void (i8*)** %8, align 8, !dbg !95, !tbaa !65
  %17 = icmp eq void (i8*)* %16, null, !dbg !97
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !98
  br i1 %17, label %21, label %18, !dbg !98

; <label>:18:                                     ; preds = %9
  %19 = getelementptr inbounds %struct.listNode, %struct.listNode* %11, i64 0, i32 2, !dbg !99
  %20 = load i8*, i8** %19, align 8, !dbg !99, !tbaa !100
  tail call void %16(i8* %20) #3, !dbg !101
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !101
  br label %21, !dbg !101

; <label>:21:                                     ; preds = %9, %18
  tail call void @zfree(i8* nonnull %12) #3, !dbg !102
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !87
  %22 = icmp eq i64 %13, 0, !dbg !87
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !87
  br i1 %22, label %23, label %9, !dbg !87, !llvm.loop !103

; <label>:23:                                     ; preds = %21, %1
  %24 = bitcast %struct.list* %0 to <2 x %struct.listNode*>*, !dbg !105
  store <2 x %struct.listNode*> zeroinitializer, <2 x %struct.listNode*>* %24, align 8, !dbg !105, !tbaa !51
  store i64 0, i64* %4, align 8, !dbg !106, !tbaa !57
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !107
  ret void, !dbg !107
}

; Function Attrs: noredzone
declare dso_local void @zfree(i8*) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local void @listRelease(%struct.list*) local_unnamed_addr #0 !dbg !108 {
  %2 = getelementptr inbounds %struct.list, %struct.list* %0, i64 0, i32 0, !dbg !114
  %3 = load %struct.listNode*, %struct.listNode** %2, align 8, !dbg !114, !tbaa !83
  %4 = getelementptr inbounds %struct.list, %struct.list* %0, i64 0, i32 5, !dbg !116
  %5 = load i64, i64* %4, align 8, !dbg !116, !tbaa !57
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !118
  %6 = icmp eq i64 %5, 0, !dbg !118
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !118
  br i1 %6, label %23, label %7, !dbg !118

; <label>:7:                                      ; preds = %1
  %8 = getelementptr inbounds %struct.list, %struct.list* %0, i64 0, i32 3
  br label %9, !dbg !118

; <label>:9:                                      ; preds = %21, %7
  %10 = phi i64 [ %5, %7 ], [ %13, %21 ]
  %11 = phi %struct.listNode* [ %3, %7 ], [ %15, %21 ]
  %12 = bitcast %struct.listNode* %11 to i8*, !dbg !119
  %13 = add i64 %10, -1, !dbg !120
  %14 = getelementptr inbounds %struct.listNode, %struct.listNode* %11, i64 0, i32 1, !dbg !121
  %15 = load %struct.listNode*, %struct.listNode** %14, align 8, !dbg !121, !tbaa !92
  %16 = load void (i8*)*, void (i8*)** %8, align 8, !dbg !123, !tbaa !65
  %17 = icmp eq void (i8*)* %16, null, !dbg !124
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !125
  br i1 %17, label %21, label %18, !dbg !125

; <label>:18:                                     ; preds = %9
  %19 = getelementptr inbounds %struct.listNode, %struct.listNode* %11, i64 0, i32 2, !dbg !126
  %20 = load i8*, i8** %19, align 8, !dbg !126, !tbaa !100
  tail call void %16(i8* %20) #3, !dbg !127
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !127
  br label %21, !dbg !127

; <label>:21:                                     ; preds = %18, %9
  tail call void @zfree(i8* nonnull %12) #3, !dbg !128
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !118
  %22 = icmp eq i64 %13, 0, !dbg !118
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !118
  br i1 %22, label %23, label %9, !dbg !118, !llvm.loop !103

; <label>:23:                                     ; preds = %21, %1
  %24 = bitcast %struct.list* %0 to <2 x %struct.listNode*>*, !dbg !129
  store <2 x %struct.listNode*> zeroinitializer, <2 x %struct.listNode*>* %24, align 8, !dbg !129, !tbaa !51
  store i64 0, i64* %4, align 8, !dbg !130, !tbaa !57
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !131
  %25 = bitcast %struct.list* %0 to i8*, !dbg !132
  tail call void @zfree(i8* %25) #3, !dbg !133
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !134
  ret void, !dbg !134
}

; Function Attrs: noredzone nounwind
define dso_local %struct.list* @listAddNodeHead(%struct.list*, i8*) local_unnamed_addr #0 !dbg !135 {
  %3 = tail call i8* @zmalloc(i64 24) #3, !dbg !144
  %4 = icmp eq i8* %3, null, !dbg !147
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !148
  br i1 %4, label %26, label %5, !dbg !148

; <label>:5:                                      ; preds = %2
  %6 = getelementptr inbounds i8, i8* %3, i64 16, !dbg !149
  %7 = bitcast i8* %6 to i8**, !dbg !149
  store i8* %1, i8** %7, align 8, !dbg !150, !tbaa !100
  %8 = getelementptr inbounds %struct.list, %struct.list* %0, i64 0, i32 5, !dbg !151
  %9 = load i64, i64* %8, align 8, !dbg !151, !tbaa !57
  %10 = icmp eq i64 %9, 0, !dbg !153
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !154
  br i1 %10, label %11, label %16, !dbg !154

; <label>:11:                                     ; preds = %5
  %12 = getelementptr inbounds %struct.list, %struct.list* %0, i64 0, i32 1, !dbg !155
  %13 = bitcast %struct.listNode** %12 to i8**, !dbg !157
  store i8* %3, i8** %13, align 8, !dbg !157, !tbaa !158
  %14 = bitcast %struct.list* %0 to i8**, !dbg !159
  store i8* %3, i8** %14, align 8, !dbg !159, !tbaa !83
  %15 = bitcast i8* %3 to <2 x %struct.listNode*>*, !dbg !160
  store <2 x %struct.listNode*> zeroinitializer, <2 x %struct.listNode*>* %15, align 8, !dbg !160, !tbaa !51
  br label %24, !dbg !161

; <label>:16:                                     ; preds = %5
  %17 = bitcast i8* %3 to %struct.listNode**, !dbg !162
  store %struct.listNode* null, %struct.listNode** %17, align 8, !dbg !164, !tbaa !165
  %18 = bitcast %struct.list* %0 to i64*, !dbg !166
  %19 = load i64, i64* %18, align 8, !dbg !166, !tbaa !83
  %20 = getelementptr inbounds i8, i8* %3, i64 8, !dbg !167
  %21 = bitcast i8* %20 to i64*, !dbg !168
  store i64 %19, i64* %21, align 8, !dbg !168, !tbaa !92
  %22 = inttoptr i64 %19 to i8**, !dbg !169
  store i8* %3, i8** %22, align 8, !dbg !170, !tbaa !165
  %23 = bitcast %struct.list* %0 to i8**, !dbg !171
  store i8* %3, i8** %23, align 8, !dbg !171, !tbaa !83
  br label %24

; <label>:24:                                     ; preds = %16, %11
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %25 = add i64 %9, 1, !dbg !172
  store i64 %25, i64* %8, align 8, !dbg !172, !tbaa !57
  br label %26, !dbg !173

; <label>:26:                                     ; preds = %2, %24
  %27 = phi %struct.list* [ %0, %24 ], [ null, %2 ], !dbg !174
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !175
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !176
  ret %struct.list* %27, !dbg !176
}

; Function Attrs: noredzone nounwind
define dso_local %struct.list* @listAddNodeTail(%struct.list*, i8*) local_unnamed_addr #0 !dbg !177 {
  %3 = tail call i8* @zmalloc(i64 24) #3, !dbg !184
  %4 = icmp eq i8* %3, null, !dbg !187
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !188
  br i1 %4, label %28, label %5, !dbg !188

; <label>:5:                                      ; preds = %2
  %6 = getelementptr inbounds i8, i8* %3, i64 16, !dbg !189
  %7 = bitcast i8* %6 to i8**, !dbg !189
  store i8* %1, i8** %7, align 8, !dbg !190, !tbaa !100
  %8 = getelementptr inbounds %struct.list, %struct.list* %0, i64 0, i32 5, !dbg !191
  %9 = load i64, i64* %8, align 8, !dbg !191, !tbaa !57
  %10 = icmp eq i64 %9, 0, !dbg !193
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !194
  %11 = getelementptr inbounds %struct.list, %struct.list* %0, i64 0, i32 1, !dbg !195
  br i1 %10, label %12, label %16, !dbg !194

; <label>:12:                                     ; preds = %5
  %13 = bitcast %struct.listNode** %11 to i8**, !dbg !197
  store i8* %3, i8** %13, align 8, !dbg !197, !tbaa !158
  %14 = bitcast %struct.list* %0 to i8**, !dbg !199
  store i8* %3, i8** %14, align 8, !dbg !199, !tbaa !83
  %15 = bitcast i8* %3 to <2 x %struct.listNode*>*, !dbg !200
  store <2 x %struct.listNode*> zeroinitializer, <2 x %struct.listNode*>* %15, align 8, !dbg !200, !tbaa !51
  br label %26, !dbg !201

; <label>:16:                                     ; preds = %5
  %17 = bitcast %struct.listNode** %11 to i64*, !dbg !202
  %18 = load i64, i64* %17, align 8, !dbg !202, !tbaa !158
  %19 = bitcast i8* %3 to i64*, !dbg !203
  store i64 %18, i64* %19, align 8, !dbg !203, !tbaa !165
  %20 = getelementptr inbounds i8, i8* %3, i64 8, !dbg !204
  %21 = bitcast i8* %20 to %struct.listNode**, !dbg !204
  store %struct.listNode* null, %struct.listNode** %21, align 8, !dbg !205, !tbaa !92
  %22 = inttoptr i64 %18 to %struct.listNode*, !dbg !206
  %23 = getelementptr inbounds %struct.listNode, %struct.listNode* %22, i64 0, i32 1, !dbg !207
  %24 = bitcast %struct.listNode** %23 to i8**, !dbg !208
  store i8* %3, i8** %24, align 8, !dbg !208, !tbaa !92
  %25 = bitcast %struct.listNode** %11 to i8**, !dbg !209
  store i8* %3, i8** %25, align 8, !dbg !209, !tbaa !158
  br label %26

; <label>:26:                                     ; preds = %16, %12
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %27 = add i64 %9, 1, !dbg !210
  store i64 %27, i64* %8, align 8, !dbg !210, !tbaa !57
  br label %28, !dbg !211

; <label>:28:                                     ; preds = %2, %26
  %29 = phi %struct.list* [ %0, %26 ], [ null, %2 ], !dbg !212
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !213
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !214
  ret %struct.list* %29, !dbg !214
}

; Function Attrs: noredzone nounwind
define dso_local %struct.list* @listInsertNode(%struct.list*, %struct.listNode*, i8*, i32) local_unnamed_addr #0 !dbg !215 {
  %5 = tail call i8* @zmalloc(i64 24) #3, !dbg !228
  %6 = icmp eq i8* %5, null, !dbg !231
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !232
  br i1 %6, label %54, label %7, !dbg !232

; <label>:7:                                      ; preds = %4
  %8 = getelementptr inbounds i8, i8* %5, i64 16, !dbg !233
  %9 = bitcast i8* %8 to i8**, !dbg !233
  store i8* %2, i8** %9, align 8, !dbg !234, !tbaa !100
  %10 = icmp eq i32 %3, 0, !dbg !235
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !237
  br i1 %10, label %23, label %11, !dbg !237

; <label>:11:                                     ; preds = %7
  %12 = bitcast i8* %5 to %struct.listNode**, !dbg !238
  store %struct.listNode* %1, %struct.listNode** %12, align 8, !dbg !240, !tbaa !165
  %13 = getelementptr inbounds %struct.listNode, %struct.listNode* %1, i64 0, i32 1, !dbg !241
  %14 = bitcast %struct.listNode** %13 to i64*, !dbg !241
  %15 = load i64, i64* %14, align 8, !dbg !241, !tbaa !92
  %16 = getelementptr inbounds i8, i8* %5, i64 8, !dbg !242
  %17 = bitcast i8* %16 to i64*, !dbg !243
  store i64 %15, i64* %17, align 8, !dbg !243, !tbaa !92
  %18 = getelementptr inbounds %struct.list, %struct.list* %0, i64 0, i32 1, !dbg !244
  %19 = load %struct.listNode*, %struct.listNode** %18, align 8, !dbg !244, !tbaa !158
  %20 = icmp eq %struct.listNode* %19, %1, !dbg !246
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !247
  br i1 %20, label %21, label %35, !dbg !247

; <label>:21:                                     ; preds = %11
  %22 = bitcast %struct.listNode** %18 to i8**, !dbg !248
  store i8* %5, i8** %22, align 8, !dbg !248, !tbaa !158
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !250
  br label %35, !dbg !250

; <label>:23:                                     ; preds = %7
  %24 = getelementptr inbounds i8, i8* %5, i64 8, !dbg !251
  %25 = bitcast i8* %24 to %struct.listNode**, !dbg !251
  store %struct.listNode* %1, %struct.listNode** %25, align 8, !dbg !253, !tbaa !92
  %26 = bitcast %struct.listNode* %1 to i64*, !dbg !254
  %27 = load i64, i64* %26, align 8, !dbg !254, !tbaa !165
  %28 = bitcast i8* %5 to i64*, !dbg !255
  store i64 %27, i64* %28, align 8, !dbg !255, !tbaa !165
  %29 = getelementptr inbounds %struct.list, %struct.list* %0, i64 0, i32 0, !dbg !256
  %30 = load %struct.listNode*, %struct.listNode** %29, align 8, !dbg !256, !tbaa !83
  %31 = icmp eq %struct.listNode* %30, %1, !dbg !258
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !259
  %32 = inttoptr i64 %27 to %struct.listNode*, !dbg !259
  br i1 %31, label %33, label %36, !dbg !259

; <label>:33:                                     ; preds = %23
  %34 = bitcast %struct.list* %0 to i8**, !dbg !260
  store i8* %5, i8** %34, align 8, !dbg !260, !tbaa !83
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !262
  br label %36, !dbg !262

; <label>:35:                                     ; preds = %11, %21
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !263
  br label %39, !dbg !263

; <label>:36:                                     ; preds = %23, %33
  %37 = icmp eq i64 %27, 0, !dbg !264
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !263
  br i1 %37, label %38, label %39, !dbg !263

; <label>:38:                                     ; preds = %36
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !266
  br label %47, !dbg !266

; <label>:39:                                     ; preds = %36, %35
  %40 = phi %struct.listNode* [ %1, %35 ], [ %32, %36 ]
  %41 = getelementptr inbounds %struct.listNode, %struct.listNode* %40, i64 0, i32 1, !dbg !267
  %42 = bitcast %struct.listNode** %41 to i8**, !dbg !269
  store i8* %5, i8** %42, align 8, !dbg !269, !tbaa !92
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !270
  %43 = getelementptr inbounds i8, i8* %5, i64 8
  %44 = bitcast i8* %43 to %struct.listNode**
  %45 = load %struct.listNode*, %struct.listNode** %44, align 8, !dbg !271, !tbaa !92
  %46 = icmp eq %struct.listNode* %45, null, !dbg !273
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !266
  br i1 %46, label %50, label %47, !dbg !266

; <label>:47:                                     ; preds = %38, %39
  %48 = phi %struct.listNode* [ %1, %38 ], [ %45, %39 ]
  %49 = bitcast %struct.listNode* %48 to i8**, !dbg !274
  store i8* %5, i8** %49, align 8, !dbg !274, !tbaa !165
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !276
  br label %50, !dbg !276

; <label>:50:                                     ; preds = %39, %47
  %51 = getelementptr inbounds %struct.list, %struct.list* %0, i64 0, i32 5, !dbg !277
  %52 = load i64, i64* %51, align 8, !dbg !278, !tbaa !57
  %53 = add i64 %52, 1, !dbg !278
  store i64 %53, i64* %51, align 8, !dbg !278, !tbaa !57
  br label %54, !dbg !279

; <label>:54:                                     ; preds = %4, %50
  %55 = phi %struct.list* [ %0, %50 ], [ null, %4 ], !dbg !280
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !281
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !282
  ret %struct.list* %55, !dbg !282
}

; Function Attrs: noredzone nounwind
define dso_local void @listDelNode(%struct.list* nocapture, %struct.listNode*) local_unnamed_addr #0 !dbg !283 {
  %3 = getelementptr inbounds %struct.listNode, %struct.listNode* %1, i64 0, i32 0, !dbg !291
  %4 = load %struct.listNode*, %struct.listNode** %3, align 8, !dbg !291, !tbaa !165
  %5 = icmp eq %struct.listNode* %4, null, !dbg !293
  %6 = getelementptr inbounds %struct.listNode, %struct.listNode* %1, i64 0, i32 1, !dbg !294
  %7 = bitcast %struct.listNode** %6 to i64*, !dbg !294
  %8 = load i64, i64* %7, align 8, !dbg !294, !tbaa !92
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !295
  %9 = ptrtoint %struct.listNode* %4 to i64, !dbg !295
  br i1 %5, label %14, label %10, !dbg !295

; <label>:10:                                     ; preds = %2
  %11 = getelementptr inbounds %struct.listNode, %struct.listNode* %4, i64 0, i32 1, !dbg !296
  %12 = bitcast %struct.listNode** %11 to i64*, !dbg !297
  store i64 %8, i64* %12, align 8, !dbg !297, !tbaa !92
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !298
  %13 = load %struct.listNode*, %struct.listNode** %6, align 8, !dbg !299, !tbaa !92
  br label %17, !dbg !298

; <label>:14:                                     ; preds = %2
  %15 = inttoptr i64 %8 to %struct.listNode*, !dbg !295
  %16 = bitcast %struct.list* %0 to i64*, !dbg !301
  store i64 %8, i64* %16, align 8, !dbg !301, !tbaa !83
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %17

; <label>:17:                                     ; preds = %14, %10
  %18 = phi %struct.listNode* [ %15, %14 ], [ %13, %10 ], !dbg !299
  %19 = icmp eq %struct.listNode* %18, null, !dbg !302
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !303
  %20 = getelementptr inbounds %struct.list, %struct.list* %0, i64 0, i32 1, !dbg !304
  %21 = bitcast %struct.listNode** %20 to i64*, !dbg !305
  %22 = bitcast %struct.listNode* %18 to i64*, !dbg !306
  %23 = select i1 %19, i64* %21, i64* %22, !dbg !303
  store i64 %9, i64* %23, align 8, !dbg !307, !tbaa !51
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %24 = getelementptr inbounds %struct.list, %struct.list* %0, i64 0, i32 3, !dbg !308
  %25 = load void (i8*)*, void (i8*)** %24, align 8, !dbg !308, !tbaa !65
  %26 = icmp eq void (i8*)* %25, null, !dbg !310
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !311
  br i1 %26, label %30, label %27, !dbg !311

; <label>:27:                                     ; preds = %17
  %28 = getelementptr inbounds %struct.listNode, %struct.listNode* %1, i64 0, i32 2, !dbg !312
  %29 = load i8*, i8** %28, align 8, !dbg !312, !tbaa !100
  tail call void %25(i8* %29) #3, !dbg !313
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !313
  br label %30, !dbg !313

; <label>:30:                                     ; preds = %17, %27
  %31 = bitcast %struct.listNode* %1 to i8*, !dbg !314
  tail call void @zfree(i8* %31) #3, !dbg !315
  %32 = getelementptr inbounds %struct.list, %struct.list* %0, i64 0, i32 5, !dbg !316
  %33 = load i64, i64* %32, align 8, !dbg !317, !tbaa !57
  %34 = add i64 %33, -1, !dbg !317
  store i64 %34, i64* %32, align 8, !dbg !317, !tbaa !57
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !318
  ret void, !dbg !318
}

; Function Attrs: noredzone nounwind
define dso_local %struct.listIter* @listGetIterator(%struct.list* nocapture readonly, i32) local_unnamed_addr #0 !dbg !319 {
  %3 = tail call i8* @zmalloc(i64 16) #3, !dbg !334
  %4 = icmp eq i8* %3, null, !dbg !336
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !337
  br i1 %4, label %16, label %5, !dbg !337

; <label>:5:                                      ; preds = %2
  %6 = bitcast i8* %3 to %struct.listIter*, !dbg !334
  %7 = icmp eq i32 %1, 0, !dbg !339
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !341
  %8 = getelementptr inbounds %struct.list, %struct.list* %0, i64 0, i32 1, !dbg !342
  %9 = bitcast %struct.listNode** %8 to i64*, !dbg !342
  %10 = bitcast %struct.list* %0 to i64*, !dbg !343
  %11 = select i1 %7, i64* %10, i64* %9, !dbg !341
  %12 = load i64, i64* %11, align 8, !dbg !344, !tbaa !51
  %13 = bitcast i8* %3 to i64*, !dbg !344
  store i64 %12, i64* %13, align 8, !dbg !344, !tbaa !345
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %14 = getelementptr inbounds i8, i8* %3, i64 8, !dbg !348
  %15 = bitcast i8* %14 to i32*, !dbg !348
  store i32 %1, i32* %15, align 8, !dbg !349, !tbaa !350
  br label %16, !dbg !351

; <label>:16:                                     ; preds = %2, %5
  %17 = phi %struct.listIter* [ %6, %5 ], [ null, %2 ], !dbg !352
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !353
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !354
  ret %struct.listIter* %17, !dbg !354
}

; Function Attrs: noredzone nounwind
define dso_local void @listReleaseIterator(%struct.listIter*) local_unnamed_addr #0 !dbg !355 {
  %2 = bitcast %struct.listIter* %0 to i8*, !dbg !361
  tail call void @zfree(i8* %2) #3, !dbg !362
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !363
  ret void, !dbg !363
}

; Function Attrs: noredzone nounwind
define dso_local void @listRewind(%struct.list* nocapture readonly, %struct.listIter* nocapture) local_unnamed_addr #0 !dbg !364 {
  %3 = bitcast %struct.list* %0 to i64*, !dbg !372
  %4 = load i64, i64* %3, align 8, !dbg !372, !tbaa !83
  %5 = bitcast %struct.listIter* %1 to i64*, !dbg !373
  store i64 %4, i64* %5, align 8, !dbg !373, !tbaa !345
  %6 = getelementptr inbounds %struct.listIter, %struct.listIter* %1, i64 0, i32 1, !dbg !374
  store i32 0, i32* %6, align 8, !dbg !375, !tbaa !350
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !376
  ret void, !dbg !376
}

; Function Attrs: noredzone nounwind
define dso_local void @listRewindTail(%struct.list* nocapture readonly, %struct.listIter* nocapture) local_unnamed_addr #0 !dbg !377 {
  %3 = getelementptr inbounds %struct.list, %struct.list* %0, i64 0, i32 1, !dbg !383
  %4 = bitcast %struct.listNode** %3 to i64*, !dbg !383
  %5 = load i64, i64* %4, align 8, !dbg !383, !tbaa !158
  %6 = bitcast %struct.listIter* %1 to i64*, !dbg !384
  store i64 %5, i64* %6, align 8, !dbg !384, !tbaa !345
  %7 = getelementptr inbounds %struct.listIter, %struct.listIter* %1, i64 0, i32 1, !dbg !385
  store i32 1, i32* %7, align 8, !dbg !386, !tbaa !350
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !387
  ret void, !dbg !387
}

; Function Attrs: noredzone nounwind
define dso_local %struct.listNode* @listNext(%struct.listIter* nocapture) local_unnamed_addr #0 !dbg !388 {
  %2 = getelementptr inbounds %struct.listIter, %struct.listIter* %0, i64 0, i32 0, !dbg !395
  %3 = load %struct.listNode*, %struct.listNode** %2, align 8, !dbg !395, !tbaa !345
  %4 = icmp eq %struct.listNode* %3, null, !dbg !397
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !399
  br i1 %4, label %15, label %5, !dbg !399

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.listIter, %struct.listIter* %0, i64 0, i32 1, !dbg !400
  %7 = load i32, i32* %6, align 8, !dbg !400, !tbaa !350
  %8 = icmp eq i32 %7, 0, !dbg !403
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !404
  %9 = getelementptr inbounds %struct.listNode, %struct.listNode* %3, i64 0, i32 1, !dbg !405
  %10 = bitcast %struct.listNode** %9 to i64*, !dbg !405
  %11 = bitcast %struct.listNode* %3 to i64*, !dbg !406
  %12 = select i1 %8, i64* %10, i64* %11, !dbg !404
  %13 = load i64, i64* %12, align 8, !dbg !407, !tbaa !51
  %14 = bitcast %struct.listIter* %0 to i64*, !dbg !407
  store i64 %13, i64* %14, align 8, !dbg !407, !tbaa !345
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %15, !dbg !408

; <label>:15:                                     ; preds = %5, %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !408
  ret %struct.listNode* %3, !dbg !408
}

; Function Attrs: noredzone nounwind
define dso_local %struct.list* @listDup(%struct.list* nocapture readonly) local_unnamed_addr #0 !dbg !409 {
  %2 = tail call i8* @zmalloc(i64 48) #3, !dbg !420
  %3 = icmp eq i8* %2, null, !dbg !423
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !424
  br i1 %3, label %4, label %5, !dbg !424

; <label>:4:                                      ; preds = %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !425
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !426
  br label %113, !dbg !428

; <label>:5:                                      ; preds = %1
  %6 = bitcast i8* %2 to %struct.list*, !dbg !420
  %7 = getelementptr inbounds i8, i8* %2, i64 8, !dbg !430
  %8 = bitcast i8* %2 to %struct.listNode**, !dbg !431
  %9 = bitcast i8* %2 to <2 x %struct.listNode*>*, !dbg !432
  store <2 x %struct.listNode*> zeroinitializer, <2 x %struct.listNode*>* %9, align 8, !dbg !432, !tbaa !51
  %10 = getelementptr inbounds i8, i8* %2, i64 40, !dbg !433
  %11 = bitcast i8* %10 to i64*, !dbg !433
  store i64 0, i64* %11, align 8, !dbg !434, !tbaa !57
  %12 = getelementptr inbounds i8, i8* %2, i64 16, !dbg !435
  %13 = bitcast i8* %12 to i8* (i8*)**, !dbg !435
  store i8* (i8*)* null, i8* (i8*)** %13, align 8, !dbg !436, !tbaa !62
  %14 = getelementptr inbounds i8, i8* %2, i64 24, !dbg !437
  %15 = bitcast i8* %14 to void (i8*)**, !dbg !437
  store void (i8*)* null, void (i8*)** %15, align 8, !dbg !438, !tbaa !65
  %16 = getelementptr inbounds i8, i8* %2, i64 32, !dbg !439
  %17 = bitcast i8* %16 to i32 (i8*, i8*)**, !dbg !439
  store i32 (i8*, i8*)* null, i32 (i8*, i8*)** %17, align 8, !dbg !440, !tbaa !68
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !441
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !426
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !442
  %18 = getelementptr inbounds %struct.list, %struct.list* %0, i64 0, i32 2, !dbg !443
  %19 = bitcast i8* (i8*)** %18 to <2 x i64>*, !dbg !443
  %20 = load <2 x i64>, <2 x i64>* %19, align 8, !dbg !443, !tbaa !51
  %21 = bitcast i8* %12 to <2 x i64>*, !dbg !444
  store <2 x i64> %20, <2 x i64>* %21, align 8, !dbg !444, !tbaa !51
  %22 = getelementptr inbounds %struct.list, %struct.list* %0, i64 0, i32 4, !dbg !445
  %23 = bitcast i32 (i8*, i8*)** %22 to i64*, !dbg !445
  %24 = load i64, i64* %23, align 8, !dbg !445, !tbaa !68
  %25 = bitcast i8* %16 to i64*, !dbg !446
  store i64 %24, i64* %25, align 8, !dbg !446, !tbaa !68
  %26 = bitcast %struct.list* %0 to i64*, !dbg !451
  %27 = load i64, i64* %26, align 8, !dbg !451, !tbaa !83
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !452
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !453
  %28 = icmp eq i64 %27, 0, !dbg !456
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !457
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !458
  br i1 %28, label %113, label %29, !dbg !457

; <label>:29:                                     ; preds = %5
  %30 = extractelement <2 x i64> %20, i32 0, !dbg !457
  %31 = inttoptr i64 %30 to i8* (i8*)*, !dbg !457
  %32 = bitcast i8* %7 to i8**
  %33 = bitcast i8* %2 to i8**
  %34 = bitcast i8* %7 to i64*
  br label %35, !dbg !457

; <label>:35:                                     ; preds = %111, %29
  %36 = phi i8* (i8*)* [ %31, %29 ], [ %112, %111 ], !dbg !460
  %37 = phi i64 [ %27, %29 ], [ %41, %111 ]
  %38 = inttoptr i64 %37 to %struct.listNode*, !dbg !462
  %39 = getelementptr inbounds %struct.listNode, %struct.listNode* %38, i64 0, i32 1, !dbg !463
  %40 = bitcast %struct.listNode** %39 to i64*, !dbg !463
  %41 = load i64, i64* %40, align 8, !dbg !463, !tbaa !92
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !464
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !465
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !453
  %42 = icmp eq i8* (i8*)* %36, null, !dbg !467
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !468
  %43 = getelementptr inbounds %struct.listNode, %struct.listNode* %38, i64 0, i32 2, !dbg !469
  %44 = load i8*, i8** %43, align 8, !dbg !469, !tbaa !100
  br i1 %42, label %68, label %45, !dbg !468

; <label>:45:                                     ; preds = %35
  %46 = tail call i8* %36(i8* %44) #3, !dbg !471
  %47 = icmp eq i8* %46, null, !dbg !473
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !475
  br i1 %47, label %48, label %69, !dbg !475

; <label>:48:                                     ; preds = %45
  %49 = load %struct.listNode*, %struct.listNode** %8, align 8, !dbg !481, !tbaa !83
  %50 = load i64, i64* %11, align 8, !dbg !483, !tbaa !57
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !485
  %51 = icmp eq i64 %50, 0, !dbg !485
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !485
  br i1 %51, label %66, label %52, !dbg !485

; <label>:52:                                     ; preds = %48, %64
  %53 = phi i64 [ %56, %64 ], [ %50, %48 ]
  %54 = phi %struct.listNode* [ %58, %64 ], [ %49, %48 ]
  %55 = bitcast %struct.listNode* %54 to i8*, !dbg !486
  %56 = add i64 %53, -1, !dbg !487
  %57 = getelementptr inbounds %struct.listNode, %struct.listNode* %54, i64 0, i32 1, !dbg !488
  %58 = load %struct.listNode*, %struct.listNode** %57, align 8, !dbg !488, !tbaa !92
  %59 = load void (i8*)*, void (i8*)** %15, align 8, !dbg !490, !tbaa !65
  %60 = icmp eq void (i8*)* %59, null, !dbg !491
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !492
  br i1 %60, label %64, label %61, !dbg !492

; <label>:61:                                     ; preds = %52
  %62 = getelementptr inbounds %struct.listNode, %struct.listNode* %54, i64 0, i32 2, !dbg !493
  %63 = load i8*, i8** %62, align 8, !dbg !493, !tbaa !100
  tail call void %59(i8* %63) #3, !dbg !494
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !494
  br label %64, !dbg !494

; <label>:64:                                     ; preds = %61, %52
  tail call void @zfree(i8* nonnull %55) #3, !dbg !495
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !485
  %65 = icmp eq i64 %56, 0, !dbg !485
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !485
  br i1 %65, label %66, label %52, !dbg !485, !llvm.loop !103

; <label>:66:                                     ; preds = %64, %48
  %67 = bitcast i8* %2 to <2 x %struct.listNode*>*, !dbg !496
  store <2 x %struct.listNode*> zeroinitializer, <2 x %struct.listNode*>* %67, align 8, !dbg !496, !tbaa !51
  store i64 0, i64* %11, align 8, !dbg !497, !tbaa !57
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !498
  tail call void @zfree(i8* nonnull %2) #3, !dbg !499
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !500
  br label %113

; <label>:68:                                     ; preds = %35
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %69

; <label>:69:                                     ; preds = %45, %68
  %70 = phi i8* [ %46, %45 ], [ %44, %68 ], !dbg !501
  %71 = tail call i8* @zmalloc(i64 24) #3, !dbg !506
  %72 = icmp eq i8* %71, null, !dbg !508
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !509
  br i1 %72, label %88, label %73, !dbg !509

; <label>:73:                                     ; preds = %69
  %74 = getelementptr inbounds i8, i8* %71, i64 16, !dbg !510
  %75 = bitcast i8* %74 to i8**, !dbg !510
  store i8* %70, i8** %75, align 8, !dbg !511, !tbaa !100
  %76 = load i64, i64* %11, align 8, !dbg !512, !tbaa !57
  %77 = icmp eq i64 %76, 0, !dbg !513
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !514
  br i1 %77, label %78, label %80, !dbg !514

; <label>:78:                                     ; preds = %73
  store i8* %71, i8** %32, align 8, !dbg !515, !tbaa !158
  store i8* %71, i8** %33, align 8, !dbg !516, !tbaa !83
  %79 = bitcast i8* %71 to <2 x %struct.listNode*>*, !dbg !517
  store <2 x %struct.listNode*> zeroinitializer, <2 x %struct.listNode*>* %79, align 8, !dbg !517, !tbaa !51
  br label %108, !dbg !518

; <label>:80:                                     ; preds = %73
  %81 = load i64, i64* %34, align 8, !dbg !519, !tbaa !158
  %82 = bitcast i8* %71 to i64*, !dbg !520
  store i64 %81, i64* %82, align 8, !dbg !520, !tbaa !165
  %83 = getelementptr inbounds i8, i8* %71, i64 8, !dbg !521
  %84 = bitcast i8* %83 to %struct.listNode**, !dbg !521
  store %struct.listNode* null, %struct.listNode** %84, align 8, !dbg !522, !tbaa !92
  %85 = inttoptr i64 %81 to %struct.listNode*, !dbg !523
  %86 = getelementptr inbounds %struct.listNode, %struct.listNode* %85, i64 0, i32 1, !dbg !524
  %87 = bitcast %struct.listNode** %86 to i8**, !dbg !525
  store i8* %71, i8** %87, align 8, !dbg !525, !tbaa !92
  store i8* %71, i8** %32, align 8, !dbg !526, !tbaa !158
  br label %108

; <label>:88:                                     ; preds = %69
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !527
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !528
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !529
  %89 = load %struct.listNode*, %struct.listNode** %8, align 8, !dbg !535, !tbaa !83
  %90 = load i64, i64* %11, align 8, !dbg !537, !tbaa !57
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !539
  %91 = icmp eq i64 %90, 0, !dbg !539
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !539
  br i1 %91, label %106, label %92, !dbg !539

; <label>:92:                                     ; preds = %88, %104
  %93 = phi i64 [ %96, %104 ], [ %90, %88 ]
  %94 = phi %struct.listNode* [ %98, %104 ], [ %89, %88 ]
  %95 = bitcast %struct.listNode* %94 to i8*, !dbg !540
  %96 = add i64 %93, -1, !dbg !541
  %97 = getelementptr inbounds %struct.listNode, %struct.listNode* %94, i64 0, i32 1, !dbg !542
  %98 = load %struct.listNode*, %struct.listNode** %97, align 8, !dbg !542, !tbaa !92
  %99 = load void (i8*)*, void (i8*)** %15, align 8, !dbg !544, !tbaa !65
  %100 = icmp eq void (i8*)* %99, null, !dbg !545
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !546
  br i1 %100, label %104, label %101, !dbg !546

; <label>:101:                                    ; preds = %92
  %102 = getelementptr inbounds %struct.listNode, %struct.listNode* %94, i64 0, i32 2, !dbg !547
  %103 = load i8*, i8** %102, align 8, !dbg !547, !tbaa !100
  tail call void %99(i8* %103) #3, !dbg !548
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !548
  br label %104, !dbg !548

; <label>:104:                                    ; preds = %101, %92
  tail call void @zfree(i8* nonnull %95) #3, !dbg !549
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !539
  %105 = icmp eq i64 %96, 0, !dbg !539
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !539
  br i1 %105, label %106, label %92, !dbg !539, !llvm.loop !103

; <label>:106:                                    ; preds = %104, %88
  %107 = bitcast i8* %2 to <2 x %struct.listNode*>*, !dbg !550
  store <2 x %struct.listNode*> zeroinitializer, <2 x %struct.listNode*>* %107, align 8, !dbg !550, !tbaa !51
  store i64 0, i64* %11, align 8, !dbg !551, !tbaa !57
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !552
  tail call void @zfree(i8* nonnull %2) #3, !dbg !553
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !554
  br label %113

; <label>:108:                                    ; preds = %80, %78
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %109 = add i64 %76, 1, !dbg !555
  store i64 %109, i64* %11, align 8, !dbg !555, !tbaa !57
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !556
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !528
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !529
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !557
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %110 = icmp eq i64 %41, 0, !dbg !456
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !457
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !458
  br i1 %110, label %113, label %111, !dbg !457

; <label>:111:                                    ; preds = %108
  %112 = load i8* (i8*)*, i8* (i8*)** %13, align 8, !dbg !460, !tbaa !62
  br label %35, !dbg !457

; <label>:113:                                    ; preds = %108, %5, %106, %66, %4
  %114 = phi %struct.list* [ null, %4 ], [ null, %66 ], [ null, %106 ], [ %6, %5 ], [ %6, %108 ], !dbg !458
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !458
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !558
  ret %struct.list* %114, !dbg !558
}

; Function Attrs: noredzone nounwind
define dso_local %struct.listNode* @listSearchKey(%struct.list* nocapture readonly, i8*) local_unnamed_addr #0 !dbg !559 {
  %3 = bitcast %struct.list* %0 to i64*, !dbg !573
  %4 = load i64, i64* %3, align 8, !dbg !573, !tbaa !83
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !574
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !575
  %5 = inttoptr i64 %4 to %struct.listNode*, !dbg !578
  %6 = icmp eq i64 %4, 0, !dbg !580
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !581
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !582
  br i1 %6, label %26, label %7, !dbg !581

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.list, %struct.list* %0, i64 0, i32 4
  br label %9, !dbg !581

; <label>:9:                                      ; preds = %7, %23
  %10 = phi %struct.listNode* [ %5, %7 ], [ %24, %23 ]
  %11 = getelementptr inbounds %struct.listNode, %struct.listNode* %10, i64 0, i32 1, !dbg !583
  %12 = bitcast %struct.listNode** %11 to i64*, !dbg !583
  %13 = load i64, i64* %12, align 8, !dbg !583, !tbaa !92
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !584
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !585
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !575
  %14 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %8, align 8, !dbg !587, !tbaa !68
  %15 = icmp eq i32 (i8*, i8*)* %14, null, !dbg !590
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !591
  %16 = getelementptr inbounds %struct.listNode, %struct.listNode* %10, i64 0, i32 2, !dbg !592
  %17 = load i8*, i8** %16, align 8, !dbg !592, !tbaa !100
  br i1 %15, label %21, label %18, !dbg !591

; <label>:18:                                     ; preds = %9
  %19 = tail call i32 %14(i8* %17, i8* %1) #3, !dbg !595
  %20 = icmp eq i32 %19, 0, !dbg !595
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !596
  br i1 %20, label %23, label %28, !dbg !596

; <label>:21:                                     ; preds = %9
  %22 = icmp eq i8* %17, %1, !dbg !597
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !600
  br i1 %22, label %28, label %23, !dbg !600

; <label>:23:                                     ; preds = %18, %21
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !575
  %24 = inttoptr i64 %13 to %struct.listNode*, !dbg !578
  %25 = icmp eq i64 %13, 0, !dbg !580
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !581
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !582
  br i1 %25, label %26, label %9, !dbg !581, !llvm.loop !601

; <label>:26:                                     ; preds = %23, %2
  %27 = phi %struct.listNode* [ %5, %2 ], [ null, %23 ], !dbg !578
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !575
  br label %28, !dbg !603

; <label>:28:                                     ; preds = %21, %18, %26
  %29 = phi %struct.listNode* [ %27, %26 ], [ %10, %18 ], [ %10, %21 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !604
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !606
  ret %struct.listNode* %29, !dbg !606
}

; Function Attrs: noredzone nounwind
define dso_local %struct.listNode* @listIndex(%struct.list* nocapture readonly, i64) local_unnamed_addr #0 !dbg !607 {
  %3 = icmp slt i64 %1, 0, !dbg !617
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !619
  br i1 %3, label %4, label %21, !dbg !619

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.list, %struct.list* %0, i64 0, i32 1, !dbg !620
  %6 = load %struct.listNode*, %struct.listNode** %5, align 8, !dbg !620, !tbaa !158
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !623
  %7 = icmp ne i64 %1, -1, !dbg !624
  %8 = icmp ne %struct.listNode* %6, null, !dbg !625
  %9 = and i1 %7, %8, !dbg !625
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !623
  br i1 %9, label %10, label %36, !dbg !623

; <label>:10:                                     ; preds = %4
  %11 = xor i64 %1, -1, !dbg !626
  br label %12, !dbg !624

; <label>:12:                                     ; preds = %10, %12
  %13 = phi %struct.listNode* [ %17, %12 ], [ %6, %10 ]
  %14 = phi i64 [ %15, %12 ], [ %11, %10 ]
  %15 = add nsw i64 %14, -1, !dbg !624
  %16 = getelementptr inbounds %struct.listNode, %struct.listNode* %13, i64 0, i32 0, !dbg !627
  %17 = load %struct.listNode*, %struct.listNode** %16, align 8, !dbg !627, !tbaa !165
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !623
  %18 = icmp ne i64 %15, 0, !dbg !624
  %19 = icmp ne %struct.listNode* %17, null, !dbg !625
  %20 = and i1 %18, %19, !dbg !625
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !623
  br i1 %20, label %12, label %36, !dbg !623, !llvm.loop !628

; <label>:21:                                     ; preds = %2
  %22 = getelementptr inbounds %struct.list, %struct.list* %0, i64 0, i32 0, !dbg !629
  %23 = load %struct.listNode*, %struct.listNode** %22, align 8, !dbg !629, !tbaa !83
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !631
  %24 = icmp ne i64 %1, 0, !dbg !632
  %25 = icmp ne %struct.listNode* %23, null, !dbg !633
  %26 = and i1 %24, %25, !dbg !633
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !631
  br i1 %26, label %27, label %36, !dbg !631

; <label>:27:                                     ; preds = %21, %27
  %28 = phi %struct.listNode* [ %32, %27 ], [ %23, %21 ]
  %29 = phi i64 [ %30, %27 ], [ %1, %21 ]
  %30 = add nsw i64 %29, -1, !dbg !632
  %31 = getelementptr inbounds %struct.listNode, %struct.listNode* %28, i64 0, i32 1, !dbg !634
  %32 = load %struct.listNode*, %struct.listNode** %31, align 8, !dbg !634, !tbaa !92
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !631
  %33 = icmp ne i64 %30, 0, !dbg !632
  %34 = icmp ne %struct.listNode* %32, null, !dbg !633
  %35 = and i1 %33, %34, !dbg !633
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !631
  br i1 %35, label %27, label %36, !dbg !631, !llvm.loop !635

; <label>:36:                                     ; preds = %27, %12, %21, %4
  %37 = phi %struct.listNode* [ %6, %4 ], [ %23, %21 ], [ %17, %12 ], [ %32, %27 ], !dbg !636
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !637
  ret %struct.listNode* %37, !dbg !637
}

; Function Attrs: noredzone nounwind
define dso_local void @listRotate(%struct.list* nocapture) local_unnamed_addr #0 !dbg !638 {
  %2 = getelementptr inbounds %struct.list, %struct.list* %0, i64 0, i32 1, !dbg !643
  %3 = load %struct.listNode*, %struct.listNode** %2, align 8, !dbg !643, !tbaa !158
  %4 = getelementptr inbounds %struct.list, %struct.list* %0, i64 0, i32 5, !dbg !645
  %5 = load i64, i64* %4, align 8, !dbg !645, !tbaa !57
  %6 = icmp ult i64 %5, 2, !dbg !647
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !648
  br i1 %6, label %17, label %7, !dbg !648

; <label>:7:                                      ; preds = %1
  %8 = getelementptr inbounds %struct.listNode, %struct.listNode* %3, i64 0, i32 0, !dbg !649
  %9 = load %struct.listNode*, %struct.listNode** %8, align 8, !dbg !649, !tbaa !165
  store %struct.listNode* %9, %struct.listNode** %2, align 8, !dbg !650, !tbaa !158
  %10 = getelementptr inbounds %struct.listNode, %struct.listNode* %9, i64 0, i32 1, !dbg !651
  store %struct.listNode* null, %struct.listNode** %10, align 8, !dbg !652, !tbaa !92
  %11 = getelementptr inbounds %struct.list, %struct.list* %0, i64 0, i32 0, !dbg !653
  %12 = load %struct.listNode*, %struct.listNode** %11, align 8, !dbg !653, !tbaa !83
  %13 = getelementptr inbounds %struct.listNode, %struct.listNode* %12, i64 0, i32 0, !dbg !654
  store %struct.listNode* %3, %struct.listNode** %13, align 8, !dbg !655, !tbaa !165
  store %struct.listNode* null, %struct.listNode** %8, align 8, !dbg !656, !tbaa !165
  %14 = ptrtoint %struct.listNode* %12 to i64, !dbg !657
  %15 = getelementptr inbounds %struct.listNode, %struct.listNode* %3, i64 0, i32 1, !dbg !658
  %16 = bitcast %struct.listNode** %15 to i64*, !dbg !659
  store i64 %14, i64* %16, align 8, !dbg !659, !tbaa !92
  store %struct.listNode* %3, %struct.listNode** %11, align 8, !dbg !660, !tbaa !83
  br label %17, !dbg !661

; <label>:17:                                     ; preds = %1, %7
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !662
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !661
  ret void, !dbg !661
}

; Function Attrs: noredzone nounwind
define dso_local void @listJoin(%struct.list* nocapture, %struct.list* nocapture) local_unnamed_addr #0 !dbg !663 {
  %3 = getelementptr inbounds %struct.list, %struct.list* %1, i64 0, i32 0, !dbg !671
  %4 = load %struct.listNode*, %struct.listNode** %3, align 8, !dbg !671, !tbaa !83
  %5 = icmp eq %struct.listNode* %4, null, !dbg !673
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !674
  %6 = ptrtoint %struct.listNode* %4 to i64, !dbg !674
  %7 = getelementptr inbounds %struct.list, %struct.list* %0, i64 0, i32 1
  br i1 %5, label %8, label %10, !dbg !674

; <label>:8:                                      ; preds = %2
  %9 = load %struct.listNode*, %struct.listNode** %7, align 8, !dbg !675, !tbaa !158
  br label %15, !dbg !674

; <label>:10:                                     ; preds = %2
  %11 = bitcast %struct.listNode** %7 to i64*, !dbg !677
  %12 = load i64, i64* %11, align 8, !dbg !677, !tbaa !158
  %13 = bitcast %struct.listNode* %4 to i64*, !dbg !678
  store i64 %12, i64* %13, align 8, !dbg !678, !tbaa !165
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !679
  %14 = inttoptr i64 %12 to %struct.listNode*, !dbg !679
  br label %15, !dbg !679

; <label>:15:                                     ; preds = %8, %10
  %16 = phi %struct.listNode* [ %9, %8 ], [ %14, %10 ], !dbg !675
  %17 = icmp eq %struct.listNode* %16, null, !dbg !680
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !681
  %18 = bitcast %struct.list* %0 to i64*, !dbg !682
  %19 = getelementptr inbounds %struct.listNode, %struct.listNode* %16, i64 0, i32 1, !dbg !683
  %20 = bitcast %struct.listNode** %19 to i64*, !dbg !684
  %21 = select i1 %17, i64* %18, i64* %20, !dbg !681
  store i64 %6, i64* %21, align 8, !dbg !685, !tbaa !51
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %22 = getelementptr inbounds %struct.list, %struct.list* %1, i64 0, i32 1, !dbg !686
  %23 = load %struct.listNode*, %struct.listNode** %22, align 8, !dbg !686, !tbaa !158
  %24 = icmp eq %struct.listNode* %23, null, !dbg !688
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !689
  br i1 %24, label %26, label %25, !dbg !689

; <label>:25:                                     ; preds = %15
  store %struct.listNode* %23, %struct.listNode** %7, align 8, !dbg !690, !tbaa !158
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !691
  br label %26, !dbg !691

; <label>:26:                                     ; preds = %15, %25
  %27 = getelementptr inbounds %struct.list, %struct.list* %1, i64 0, i32 5, !dbg !692
  %28 = load i64, i64* %27, align 8, !dbg !692, !tbaa !57
  %29 = getelementptr inbounds %struct.list, %struct.list* %0, i64 0, i32 5, !dbg !693
  %30 = load i64, i64* %29, align 8, !dbg !694, !tbaa !57
  %31 = add i64 %30, %28, !dbg !694
  store i64 %31, i64* %29, align 8, !dbg !694, !tbaa !57
  %32 = bitcast %struct.list* %1 to <2 x %struct.listNode*>*, !dbg !695
  store <2 x %struct.listNode*> zeroinitializer, <2 x %struct.listNode*>* %32, align 8, !dbg !695, !tbaa !51
  store i64 0, i64* %27, align 8, !dbg !696, !tbaa !57
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !697
  ret void, !dbg !697
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
!71 = !DILocation(line: 0, scope: !46)
!72 = !DILocation(line: 53, column: 1, scope: !9)
!73 = distinct !DISubprogram(name: "listEmpty", scope: !1, file: !1, line: 56, type: !74, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !76)
!74 = !DISubroutineType(types: !75)
!75 = !{null, !12}
!76 = !{!77, !78, !79, !80}
!77 = !DILocalVariable(name: "list", arg: 1, scope: !73, file: !1, line: 56, type: !12)
!78 = !DILocalVariable(name: "len", scope: !73, file: !1, line: 58, type: !41)
!79 = !DILocalVariable(name: "current", scope: !73, file: !1, line: 59, type: !18)
!80 = !DILocalVariable(name: "next", scope: !73, file: !1, line: 59, type: !18)
!81 = !DILocation(line: 56, column: 22, scope: !73)
!82 = !DILocation(line: 61, column: 21, scope: !73)
!83 = !{!58, !52, i64 0}
!84 = !DILocation(line: 59, column: 15, scope: !73)
!85 = !DILocation(line: 62, column: 17, scope: !73)
!86 = !DILocation(line: 58, column: 19, scope: !73)
!87 = !DILocation(line: 63, column: 5, scope: !73)
!88 = !DILocation(line: 0, scope: !73)
!89 = !DILocation(line: 63, column: 14, scope: !73)
!90 = !DILocation(line: 64, column: 25, scope: !91)
!91 = distinct !DILexicalBlock(scope: !73, file: !1, line: 63, column: 18)
!92 = !{!93, !52, i64 8}
!93 = !{!"listNode", !52, i64 0, !52, i64 8, !52, i64 16}
!94 = !DILocation(line: 59, column: 25, scope: !73)
!95 = !DILocation(line: 65, column: 19, scope: !96)
!96 = distinct !DILexicalBlock(scope: !91, file: !1, line: 65, column: 13)
!97 = !DILocation(line: 65, column: 13, scope: !96)
!98 = !DILocation(line: 65, column: 13, scope: !91)
!99 = !DILocation(line: 65, column: 45, scope: !96)
!100 = !{!93, !52, i64 16}
!101 = !DILocation(line: 65, column: 25, scope: !96)
!102 = !DILocation(line: 66, column: 9, scope: !91)
!103 = distinct !{!103, !87, !104}
!104 = !DILocation(line: 68, column: 5, scope: !73)
!105 = !DILocation(line: 69, column: 16, scope: !73)
!106 = !DILocation(line: 70, column: 15, scope: !73)
!107 = !DILocation(line: 71, column: 1, scope: !73)
!108 = distinct !DISubprogram(name: "listRelease", scope: !1, file: !1, line: 76, type: !74, isLocal: false, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !109)
!109 = !{!110}
!110 = !DILocalVariable(name: "list", arg: 1, scope: !108, file: !1, line: 76, type: !12)
!111 = !DILocation(line: 76, column: 24, scope: !108)
!112 = !DILocation(line: 56, column: 22, scope: !73, inlinedAt: !113)
!113 = distinct !DILocation(line: 78, column: 5, scope: !108)
!114 = !DILocation(line: 61, column: 21, scope: !73, inlinedAt: !113)
!115 = !DILocation(line: 59, column: 15, scope: !73, inlinedAt: !113)
!116 = !DILocation(line: 62, column: 17, scope: !73, inlinedAt: !113)
!117 = !DILocation(line: 58, column: 19, scope: !73, inlinedAt: !113)
!118 = !DILocation(line: 63, column: 5, scope: !73, inlinedAt: !113)
!119 = !DILocation(line: 0, scope: !108)
!120 = !DILocation(line: 63, column: 14, scope: !73, inlinedAt: !113)
!121 = !DILocation(line: 64, column: 25, scope: !91, inlinedAt: !113)
!122 = !DILocation(line: 59, column: 25, scope: !73, inlinedAt: !113)
!123 = !DILocation(line: 65, column: 19, scope: !96, inlinedAt: !113)
!124 = !DILocation(line: 65, column: 13, scope: !96, inlinedAt: !113)
!125 = !DILocation(line: 65, column: 13, scope: !91, inlinedAt: !113)
!126 = !DILocation(line: 65, column: 45, scope: !96, inlinedAt: !113)
!127 = !DILocation(line: 65, column: 25, scope: !96, inlinedAt: !113)
!128 = !DILocation(line: 66, column: 9, scope: !91, inlinedAt: !113)
!129 = !DILocation(line: 69, column: 16, scope: !73, inlinedAt: !113)
!130 = !DILocation(line: 70, column: 15, scope: !73, inlinedAt: !113)
!131 = !DILocation(line: 71, column: 1, scope: !73, inlinedAt: !113)
!132 = !DILocation(line: 79, column: 11, scope: !108)
!133 = !DILocation(line: 79, column: 5, scope: !108)
!134 = !DILocation(line: 80, column: 1, scope: !108)
!135 = distinct !DISubprogram(name: "listAddNodeHead", scope: !1, file: !1, line: 88, type: !136, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !138)
!136 = !DISubroutineType(types: !137)
!137 = !{!12, !12, !4}
!138 = !{!139, !140, !141}
!139 = !DILocalVariable(name: "list", arg: 1, scope: !135, file: !1, line: 88, type: !12)
!140 = !DILocalVariable(name: "value", arg: 2, scope: !135, file: !1, line: 88, type: !4)
!141 = !DILocalVariable(name: "node", scope: !135, file: !1, line: 90, type: !18)
!142 = !DILocation(line: 88, column: 29, scope: !135)
!143 = !DILocation(line: 88, column: 41, scope: !135)
!144 = !DILocation(line: 92, column: 17, scope: !145)
!145 = distinct !DILexicalBlock(scope: !135, file: !1, line: 92, column: 9)
!146 = !DILocation(line: 90, column: 15, scope: !135)
!147 = !DILocation(line: 92, column: 41, scope: !145)
!148 = !DILocation(line: 92, column: 9, scope: !135)
!149 = !DILocation(line: 94, column: 11, scope: !135)
!150 = !DILocation(line: 94, column: 17, scope: !135)
!151 = !DILocation(line: 95, column: 15, scope: !152)
!152 = distinct !DILexicalBlock(scope: !135, file: !1, line: 95, column: 9)
!153 = !DILocation(line: 95, column: 19, scope: !152)
!154 = !DILocation(line: 95, column: 9, scope: !135)
!155 = !DILocation(line: 96, column: 28, scope: !156)
!156 = distinct !DILexicalBlock(scope: !152, file: !1, line: 95, column: 25)
!157 = !DILocation(line: 96, column: 33, scope: !156)
!158 = !{!58, !52, i64 8}
!159 = !DILocation(line: 96, column: 20, scope: !156)
!160 = !DILocation(line: 97, column: 20, scope: !156)
!161 = !DILocation(line: 98, column: 5, scope: !156)
!162 = !DILocation(line: 99, column: 15, scope: !163)
!163 = distinct !DILexicalBlock(scope: !152, file: !1, line: 98, column: 12)
!164 = !DILocation(line: 99, column: 20, scope: !163)
!165 = !{!93, !52, i64 0}
!166 = !DILocation(line: 100, column: 28, scope: !163)
!167 = !DILocation(line: 100, column: 15, scope: !163)
!168 = !DILocation(line: 100, column: 20, scope: !163)
!169 = !DILocation(line: 101, column: 15, scope: !163)
!170 = !DILocation(line: 101, column: 26, scope: !163)
!171 = !DILocation(line: 102, column: 20, scope: !163)
!172 = !DILocation(line: 104, column: 14, scope: !135)
!173 = !DILocation(line: 105, column: 5, scope: !135)
!174 = !DILocation(line: 0, scope: !135)
!175 = !DILocation(line: 0, scope: !145)
!176 = !DILocation(line: 106, column: 1, scope: !135)
!177 = distinct !DISubprogram(name: "listAddNodeTail", scope: !1, file: !1, line: 114, type: !136, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !178)
!178 = !{!179, !180, !181}
!179 = !DILocalVariable(name: "list", arg: 1, scope: !177, file: !1, line: 114, type: !12)
!180 = !DILocalVariable(name: "value", arg: 2, scope: !177, file: !1, line: 114, type: !4)
!181 = !DILocalVariable(name: "node", scope: !177, file: !1, line: 116, type: !18)
!182 = !DILocation(line: 114, column: 29, scope: !177)
!183 = !DILocation(line: 114, column: 41, scope: !177)
!184 = !DILocation(line: 118, column: 17, scope: !185)
!185 = distinct !DILexicalBlock(scope: !177, file: !1, line: 118, column: 9)
!186 = !DILocation(line: 116, column: 15, scope: !177)
!187 = !DILocation(line: 118, column: 41, scope: !185)
!188 = !DILocation(line: 118, column: 9, scope: !177)
!189 = !DILocation(line: 120, column: 11, scope: !177)
!190 = !DILocation(line: 120, column: 17, scope: !177)
!191 = !DILocation(line: 121, column: 15, scope: !192)
!192 = distinct !DILexicalBlock(scope: !177, file: !1, line: 121, column: 9)
!193 = !DILocation(line: 121, column: 19, scope: !192)
!194 = !DILocation(line: 121, column: 9, scope: !177)
!195 = !DILocation(line: 0, scope: !196)
!196 = distinct !DILexicalBlock(scope: !192, file: !1, line: 124, column: 12)
!197 = !DILocation(line: 122, column: 33, scope: !198)
!198 = distinct !DILexicalBlock(scope: !192, file: !1, line: 121, column: 25)
!199 = !DILocation(line: 122, column: 20, scope: !198)
!200 = !DILocation(line: 123, column: 20, scope: !198)
!201 = !DILocation(line: 124, column: 5, scope: !198)
!202 = !DILocation(line: 125, column: 28, scope: !196)
!203 = !DILocation(line: 125, column: 20, scope: !196)
!204 = !DILocation(line: 126, column: 15, scope: !196)
!205 = !DILocation(line: 126, column: 20, scope: !196)
!206 = !DILocation(line: 127, column: 15, scope: !196)
!207 = !DILocation(line: 127, column: 21, scope: !196)
!208 = !DILocation(line: 127, column: 26, scope: !196)
!209 = !DILocation(line: 128, column: 20, scope: !196)
!210 = !DILocation(line: 130, column: 14, scope: !177)
!211 = !DILocation(line: 131, column: 5, scope: !177)
!212 = !DILocation(line: 0, scope: !177)
!213 = !DILocation(line: 0, scope: !185)
!214 = !DILocation(line: 132, column: 1, scope: !177)
!215 = distinct !DISubprogram(name: "listInsertNode", scope: !1, file: !1, line: 134, type: !216, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !218)
!216 = !DISubroutineType(types: !217)
!217 = !{!12, !12, !18, !4, !39}
!218 = !{!219, !220, !221, !222, !223}
!219 = !DILocalVariable(name: "list", arg: 1, scope: !215, file: !1, line: 134, type: !12)
!220 = !DILocalVariable(name: "old_node", arg: 2, scope: !215, file: !1, line: 134, type: !18)
!221 = !DILocalVariable(name: "value", arg: 3, scope: !215, file: !1, line: 134, type: !4)
!222 = !DILocalVariable(name: "after", arg: 4, scope: !215, file: !1, line: 134, type: !39)
!223 = !DILocalVariable(name: "node", scope: !215, file: !1, line: 135, type: !18)
!224 = !DILocation(line: 134, column: 28, scope: !215)
!225 = !DILocation(line: 134, column: 44, scope: !215)
!226 = !DILocation(line: 134, column: 60, scope: !215)
!227 = !DILocation(line: 134, column: 71, scope: !215)
!228 = !DILocation(line: 137, column: 17, scope: !229)
!229 = distinct !DILexicalBlock(scope: !215, file: !1, line: 137, column: 9)
!230 = !DILocation(line: 135, column: 15, scope: !215)
!231 = !DILocation(line: 137, column: 41, scope: !229)
!232 = !DILocation(line: 137, column: 9, scope: !215)
!233 = !DILocation(line: 139, column: 11, scope: !215)
!234 = !DILocation(line: 139, column: 17, scope: !215)
!235 = !DILocation(line: 140, column: 9, scope: !236)
!236 = distinct !DILexicalBlock(scope: !215, file: !1, line: 140, column: 9)
!237 = !DILocation(line: 140, column: 9, scope: !215)
!238 = !DILocation(line: 141, column: 15, scope: !239)
!239 = distinct !DILexicalBlock(scope: !236, file: !1, line: 140, column: 16)
!240 = !DILocation(line: 141, column: 20, scope: !239)
!241 = !DILocation(line: 142, column: 32, scope: !239)
!242 = !DILocation(line: 142, column: 15, scope: !239)
!243 = !DILocation(line: 142, column: 20, scope: !239)
!244 = !DILocation(line: 143, column: 19, scope: !245)
!245 = distinct !DILexicalBlock(scope: !239, file: !1, line: 143, column: 13)
!246 = !DILocation(line: 143, column: 24, scope: !245)
!247 = !DILocation(line: 143, column: 13, scope: !239)
!248 = !DILocation(line: 144, column: 24, scope: !249)
!249 = distinct !DILexicalBlock(scope: !245, file: !1, line: 143, column: 37)
!250 = !DILocation(line: 145, column: 9, scope: !249)
!251 = !DILocation(line: 147, column: 15, scope: !252)
!252 = distinct !DILexicalBlock(scope: !236, file: !1, line: 146, column: 12)
!253 = !DILocation(line: 147, column: 20, scope: !252)
!254 = !DILocation(line: 148, column: 32, scope: !252)
!255 = !DILocation(line: 148, column: 20, scope: !252)
!256 = !DILocation(line: 149, column: 19, scope: !257)
!257 = distinct !DILexicalBlock(scope: !252, file: !1, line: 149, column: 13)
!258 = !DILocation(line: 149, column: 24, scope: !257)
!259 = !DILocation(line: 149, column: 13, scope: !252)
!260 = !DILocation(line: 150, column: 24, scope: !261)
!261 = distinct !DILexicalBlock(scope: !257, file: !1, line: 149, column: 37)
!262 = !DILocation(line: 151, column: 9, scope: !261)
!263 = !DILocation(line: 153, column: 9, scope: !215)
!264 = !DILocation(line: 153, column: 20, scope: !265)
!265 = distinct !DILexicalBlock(scope: !215, file: !1, line: 153, column: 9)
!266 = !DILocation(line: 156, column: 9, scope: !215)
!267 = !DILocation(line: 154, column: 21, scope: !268)
!268 = distinct !DILexicalBlock(scope: !265, file: !1, line: 153, column: 29)
!269 = !DILocation(line: 154, column: 26, scope: !268)
!270 = !DILocation(line: 155, column: 5, scope: !268)
!271 = !DILocation(line: 156, column: 15, scope: !272)
!272 = distinct !DILexicalBlock(scope: !215, file: !1, line: 156, column: 9)
!273 = !DILocation(line: 156, column: 20, scope: !272)
!274 = !DILocation(line: 157, column: 26, scope: !275)
!275 = distinct !DILexicalBlock(scope: !272, file: !1, line: 156, column: 29)
!276 = !DILocation(line: 158, column: 5, scope: !275)
!277 = !DILocation(line: 159, column: 11, scope: !215)
!278 = !DILocation(line: 159, column: 14, scope: !215)
!279 = !DILocation(line: 160, column: 5, scope: !215)
!280 = !DILocation(line: 0, scope: !215)
!281 = !DILocation(line: 0, scope: !229)
!282 = !DILocation(line: 161, column: 1, scope: !215)
!283 = distinct !DISubprogram(name: "listDelNode", scope: !1, file: !1, line: 167, type: !284, isLocal: false, isDefinition: true, scopeLine: 168, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !286)
!284 = !DISubroutineType(types: !285)
!285 = !{null, !12, !18}
!286 = !{!287, !288}
!287 = !DILocalVariable(name: "list", arg: 1, scope: !283, file: !1, line: 167, type: !12)
!288 = !DILocalVariable(name: "node", arg: 2, scope: !283, file: !1, line: 167, type: !18)
!289 = !DILocation(line: 167, column: 24, scope: !283)
!290 = !DILocation(line: 167, column: 40, scope: !283)
!291 = !DILocation(line: 169, column: 15, scope: !292)
!292 = distinct !DILexicalBlock(scope: !283, file: !1, line: 169, column: 9)
!293 = !DILocation(line: 169, column: 9, scope: !292)
!294 = !DILocation(line: 0, scope: !292)
!295 = !DILocation(line: 169, column: 9, scope: !283)
!296 = !DILocation(line: 170, column: 21, scope: !292)
!297 = !DILocation(line: 170, column: 26, scope: !292)
!298 = !DILocation(line: 170, column: 9, scope: !292)
!299 = !DILocation(line: 173, column: 15, scope: !300)
!300 = distinct !DILexicalBlock(scope: !283, file: !1, line: 173, column: 9)
!301 = !DILocation(line: 172, column: 20, scope: !292)
!302 = !DILocation(line: 173, column: 9, scope: !300)
!303 = !DILocation(line: 173, column: 9, scope: !283)
!304 = !DILocation(line: 176, column: 15, scope: !300)
!305 = !DILocation(line: 176, column: 20, scope: !300)
!306 = !DILocation(line: 174, column: 26, scope: !300)
!307 = !DILocation(line: 0, scope: !300)
!308 = !DILocation(line: 177, column: 15, scope: !309)
!309 = distinct !DILexicalBlock(scope: !283, file: !1, line: 177, column: 9)
!310 = !DILocation(line: 177, column: 9, scope: !309)
!311 = !DILocation(line: 177, column: 9, scope: !283)
!312 = !DILocation(line: 177, column: 38, scope: !309)
!313 = !DILocation(line: 177, column: 21, scope: !309)
!314 = !DILocation(line: 178, column: 11, scope: !283)
!315 = !DILocation(line: 178, column: 5, scope: !283)
!316 = !DILocation(line: 179, column: 11, scope: !283)
!317 = !DILocation(line: 179, column: 14, scope: !283)
!318 = !DILocation(line: 180, column: 1, scope: !283)
!319 = distinct !DISubprogram(name: "listGetIterator", scope: !1, file: !1, line: 186, type: !320, isLocal: false, isDefinition: true, scopeLine: 187, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !328)
!320 = !DISubroutineType(types: !321)
!321 = !{!322, !12, !39}
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "listIter", file: !14, line: 45, baseType: !324)
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "listIter", file: !14, line: 42, size: 128, elements: !325)
!325 = !{!326, !327}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !324, file: !14, line: 43, baseType: !18, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !324, file: !14, line: 44, baseType: !39, size: 32, offset: 64)
!328 = !{!329, !330, !331}
!329 = !DILocalVariable(name: "list", arg: 1, scope: !319, file: !1, line: 186, type: !12)
!330 = !DILocalVariable(name: "direction", arg: 2, scope: !319, file: !1, line: 186, type: !39)
!331 = !DILocalVariable(name: "iter", scope: !319, file: !1, line: 188, type: !322)
!332 = !DILocation(line: 186, column: 33, scope: !319)
!333 = !DILocation(line: 186, column: 43, scope: !319)
!334 = !DILocation(line: 190, column: 17, scope: !335)
!335 = distinct !DILexicalBlock(scope: !319, file: !1, line: 190, column: 9)
!336 = !DILocation(line: 190, column: 41, scope: !335)
!337 = !DILocation(line: 190, column: 9, scope: !319)
!338 = !DILocation(line: 188, column: 15, scope: !319)
!339 = !DILocation(line: 191, column: 19, scope: !340)
!340 = distinct !DILexicalBlock(scope: !319, file: !1, line: 191, column: 9)
!341 = !DILocation(line: 191, column: 9, scope: !319)
!342 = !DILocation(line: 194, column: 28, scope: !340)
!343 = !DILocation(line: 192, column: 28, scope: !340)
!344 = !DILocation(line: 0, scope: !340)
!345 = !{!346, !52, i64 0}
!346 = !{!"listIter", !52, i64 0, !347, i64 8}
!347 = !{!"int", !53, i64 0}
!348 = !DILocation(line: 195, column: 11, scope: !319)
!349 = !DILocation(line: 195, column: 21, scope: !319)
!350 = !{!346, !347, i64 8}
!351 = !DILocation(line: 196, column: 5, scope: !319)
!352 = !DILocation(line: 0, scope: !319)
!353 = !DILocation(line: 0, scope: !335)
!354 = !DILocation(line: 197, column: 1, scope: !319)
!355 = distinct !DISubprogram(name: "listReleaseIterator", scope: !1, file: !1, line: 200, type: !356, isLocal: false, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !358)
!356 = !DISubroutineType(types: !357)
!357 = !{null, !322}
!358 = !{!359}
!359 = !DILocalVariable(name: "iter", arg: 1, scope: !355, file: !1, line: 200, type: !322)
!360 = !DILocation(line: 200, column: 36, scope: !355)
!361 = !DILocation(line: 201, column: 11, scope: !355)
!362 = !DILocation(line: 201, column: 5, scope: !355)
!363 = !DILocation(line: 202, column: 1, scope: !355)
!364 = distinct !DISubprogram(name: "listRewind", scope: !1, file: !1, line: 205, type: !365, isLocal: false, isDefinition: true, scopeLine: 205, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !367)
!365 = !DISubroutineType(types: !366)
!366 = !{null, !12, !322}
!367 = !{!368, !369}
!368 = !DILocalVariable(name: "list", arg: 1, scope: !364, file: !1, line: 205, type: !12)
!369 = !DILocalVariable(name: "li", arg: 2, scope: !364, file: !1, line: 205, type: !322)
!370 = !DILocation(line: 205, column: 23, scope: !364)
!371 = !DILocation(line: 205, column: 39, scope: !364)
!372 = !DILocation(line: 206, column: 22, scope: !364)
!373 = !DILocation(line: 206, column: 14, scope: !364)
!374 = !DILocation(line: 207, column: 9, scope: !364)
!375 = !DILocation(line: 207, column: 19, scope: !364)
!376 = !DILocation(line: 208, column: 1, scope: !364)
!377 = distinct !DISubprogram(name: "listRewindTail", scope: !1, file: !1, line: 210, type: !365, isLocal: false, isDefinition: true, scopeLine: 210, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !378)
!378 = !{!379, !380}
!379 = !DILocalVariable(name: "list", arg: 1, scope: !377, file: !1, line: 210, type: !12)
!380 = !DILocalVariable(name: "li", arg: 2, scope: !377, file: !1, line: 210, type: !322)
!381 = !DILocation(line: 210, column: 27, scope: !377)
!382 = !DILocation(line: 210, column: 43, scope: !377)
!383 = !DILocation(line: 211, column: 22, scope: !377)
!384 = !DILocation(line: 211, column: 14, scope: !377)
!385 = !DILocation(line: 212, column: 9, scope: !377)
!386 = !DILocation(line: 212, column: 19, scope: !377)
!387 = !DILocation(line: 213, column: 1, scope: !377)
!388 = distinct !DISubprogram(name: "listNext", scope: !1, file: !1, line: 229, type: !389, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !391)
!389 = !DISubroutineType(types: !390)
!390 = !{!18, !322}
!391 = !{!392, !393}
!392 = !DILocalVariable(name: "iter", arg: 1, scope: !388, file: !1, line: 229, type: !322)
!393 = !DILocalVariable(name: "current", scope: !388, file: !1, line: 231, type: !18)
!394 = !DILocation(line: 229, column: 30, scope: !388)
!395 = !DILocation(line: 231, column: 31, scope: !388)
!396 = !DILocation(line: 231, column: 15, scope: !388)
!397 = !DILocation(line: 233, column: 17, scope: !398)
!398 = distinct !DILexicalBlock(scope: !388, file: !1, line: 233, column: 9)
!399 = !DILocation(line: 233, column: 9, scope: !388)
!400 = !DILocation(line: 234, column: 19, scope: !401)
!401 = distinct !DILexicalBlock(scope: !402, file: !1, line: 234, column: 13)
!402 = distinct !DILexicalBlock(scope: !398, file: !1, line: 233, column: 26)
!403 = !DILocation(line: 234, column: 29, scope: !401)
!404 = !DILocation(line: 234, column: 13, scope: !402)
!405 = !DILocation(line: 235, column: 35, scope: !401)
!406 = !DILocation(line: 237, column: 35, scope: !401)
!407 = !DILocation(line: 0, scope: !401)
!408 = !DILocation(line: 239, column: 5, scope: !388)
!409 = distinct !DISubprogram(name: "listDup", scope: !1, file: !1, line: 250, type: !410, isLocal: false, isDefinition: true, scopeLine: 251, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !412)
!410 = !DISubroutineType(types: !411)
!411 = !{!12, !12}
!412 = !{!413, !414, !415, !416, !417}
!413 = !DILocalVariable(name: "orig", arg: 1, scope: !409, file: !1, line: 250, type: !12)
!414 = !DILocalVariable(name: "copy", scope: !409, file: !1, line: 252, type: !12)
!415 = !DILocalVariable(name: "iter", scope: !409, file: !1, line: 253, type: !323)
!416 = !DILocalVariable(name: "node", scope: !409, file: !1, line: 254, type: !18)
!417 = !DILocalVariable(name: "value", scope: !418, file: !1, line: 263, type: !4)
!418 = distinct !DILexicalBlock(scope: !409, file: !1, line: 262, column: 45)
!419 = !DILocation(line: 250, column: 21, scope: !409)
!420 = !DILocation(line: 45, column: 17, scope: !46, inlinedAt: !421)
!421 = distinct !DILocation(line: 256, column: 17, scope: !422)
!422 = distinct !DILexicalBlock(scope: !409, file: !1, line: 256, column: 9)
!423 = !DILocation(line: 45, column: 41, scope: !46, inlinedAt: !421)
!424 = !DILocation(line: 45, column: 9, scope: !9, inlinedAt: !421)
!425 = !DILocation(line: 46, column: 9, scope: !46, inlinedAt: !421)
!426 = !DILocation(line: 53, column: 1, scope: !9, inlinedAt: !421)
!427 = !DILocation(line: 252, column: 11, scope: !409)
!428 = !DILocation(line: 257, column: 9, scope: !422)
!429 = !DILocation(line: 43, column: 18, scope: !9, inlinedAt: !421)
!430 = !DILocation(line: 47, column: 24, scope: !9, inlinedAt: !421)
!431 = !DILocation(line: 47, column: 11, scope: !9, inlinedAt: !421)
!432 = !DILocation(line: 47, column: 16, scope: !9, inlinedAt: !421)
!433 = !DILocation(line: 48, column: 11, scope: !9, inlinedAt: !421)
!434 = !DILocation(line: 48, column: 15, scope: !9, inlinedAt: !421)
!435 = !DILocation(line: 49, column: 11, scope: !9, inlinedAt: !421)
!436 = !DILocation(line: 49, column: 15, scope: !9, inlinedAt: !421)
!437 = !DILocation(line: 50, column: 11, scope: !9, inlinedAt: !421)
!438 = !DILocation(line: 50, column: 16, scope: !9, inlinedAt: !421)
!439 = !DILocation(line: 51, column: 11, scope: !9, inlinedAt: !421)
!440 = !DILocation(line: 51, column: 17, scope: !9, inlinedAt: !421)
!441 = !DILocation(line: 52, column: 5, scope: !9, inlinedAt: !421)
!442 = !DILocation(line: 256, column: 9, scope: !409)
!443 = !DILocation(line: 258, column: 23, scope: !409)
!444 = !DILocation(line: 258, column: 15, scope: !409)
!445 = !DILocation(line: 260, column: 25, scope: !409)
!446 = !DILocation(line: 260, column: 17, scope: !409)
!447 = !DILocation(line: 253, column: 14, scope: !409)
!448 = !DILocation(line: 205, column: 23, scope: !364, inlinedAt: !449)
!449 = distinct !DILocation(line: 261, column: 5, scope: !409)
!450 = !DILocation(line: 205, column: 39, scope: !364, inlinedAt: !449)
!451 = !DILocation(line: 206, column: 22, scope: !364, inlinedAt: !449)
!452 = !DILocation(line: 208, column: 1, scope: !364, inlinedAt: !449)
!453 = !DILocation(line: 262, column: 5, scope: !409)
!454 = !DILocation(line: 229, column: 30, scope: !388, inlinedAt: !455)
!455 = distinct !DILocation(line: 262, column: 19, scope: !409)
!456 = !DILocation(line: 233, column: 17, scope: !398, inlinedAt: !455)
!457 = !DILocation(line: 233, column: 9, scope: !388, inlinedAt: !455)
!458 = !DILocation(line: 0, scope: !409)
!459 = !DILocation(line: 231, column: 15, scope: !388, inlinedAt: !455)
!460 = !DILocation(line: 265, column: 19, scope: !461)
!461 = distinct !DILexicalBlock(scope: !418, file: !1, line: 265, column: 13)
!462 = !DILocation(line: 231, column: 31, scope: !388, inlinedAt: !455)
!463 = !DILocation(line: 235, column: 35, scope: !401, inlinedAt: !455)
!464 = !DILocation(line: 235, column: 13, scope: !401, inlinedAt: !455)
!465 = !DILocation(line: 239, column: 5, scope: !388, inlinedAt: !455)
!466 = !DILocation(line: 254, column: 15, scope: !409)
!467 = !DILocation(line: 265, column: 13, scope: !461)
!468 = !DILocation(line: 265, column: 13, scope: !418)
!469 = !DILocation(line: 0, scope: !470)
!470 = distinct !DILexicalBlock(scope: !461, file: !1, line: 265, column: 24)
!471 = !DILocation(line: 266, column: 21, scope: !470)
!472 = !DILocation(line: 263, column: 15, scope: !418)
!473 = !DILocation(line: 267, column: 23, scope: !474)
!474 = distinct !DILexicalBlock(scope: !470, file: !1, line: 267, column: 17)
!475 = !DILocation(line: 267, column: 17, scope: !470)
!476 = !DILocation(line: 76, column: 24, scope: !108, inlinedAt: !477)
!477 = distinct !DILocation(line: 268, column: 17, scope: !478)
!478 = distinct !DILexicalBlock(scope: !474, file: !1, line: 267, column: 32)
!479 = !DILocation(line: 56, column: 22, scope: !73, inlinedAt: !480)
!480 = distinct !DILocation(line: 78, column: 5, scope: !108, inlinedAt: !477)
!481 = !DILocation(line: 61, column: 21, scope: !73, inlinedAt: !480)
!482 = !DILocation(line: 59, column: 15, scope: !73, inlinedAt: !480)
!483 = !DILocation(line: 62, column: 17, scope: !73, inlinedAt: !480)
!484 = !DILocation(line: 58, column: 19, scope: !73, inlinedAt: !480)
!485 = !DILocation(line: 63, column: 5, scope: !73, inlinedAt: !480)
!486 = !DILocation(line: 0, scope: !108, inlinedAt: !477)
!487 = !DILocation(line: 63, column: 14, scope: !73, inlinedAt: !480)
!488 = !DILocation(line: 64, column: 25, scope: !91, inlinedAt: !480)
!489 = !DILocation(line: 59, column: 25, scope: !73, inlinedAt: !480)
!490 = !DILocation(line: 65, column: 19, scope: !96, inlinedAt: !480)
!491 = !DILocation(line: 65, column: 13, scope: !96, inlinedAt: !480)
!492 = !DILocation(line: 65, column: 13, scope: !91, inlinedAt: !480)
!493 = !DILocation(line: 65, column: 45, scope: !96, inlinedAt: !480)
!494 = !DILocation(line: 65, column: 25, scope: !96, inlinedAt: !480)
!495 = !DILocation(line: 66, column: 9, scope: !91, inlinedAt: !480)
!496 = !DILocation(line: 69, column: 16, scope: !73, inlinedAt: !480)
!497 = !DILocation(line: 70, column: 15, scope: !73, inlinedAt: !480)
!498 = !DILocation(line: 71, column: 1, scope: !73, inlinedAt: !480)
!499 = !DILocation(line: 79, column: 5, scope: !108, inlinedAt: !477)
!500 = !DILocation(line: 80, column: 1, scope: !108, inlinedAt: !477)
!501 = !DILocation(line: 0, scope: !461)
!502 = !DILocation(line: 114, column: 29, scope: !177, inlinedAt: !503)
!503 = distinct !DILocation(line: 273, column: 13, scope: !504)
!504 = distinct !DILexicalBlock(scope: !418, file: !1, line: 273, column: 13)
!505 = !DILocation(line: 114, column: 41, scope: !177, inlinedAt: !503)
!506 = !DILocation(line: 118, column: 17, scope: !185, inlinedAt: !503)
!507 = !DILocation(line: 116, column: 15, scope: !177, inlinedAt: !503)
!508 = !DILocation(line: 118, column: 41, scope: !185, inlinedAt: !503)
!509 = !DILocation(line: 118, column: 9, scope: !177, inlinedAt: !503)
!510 = !DILocation(line: 120, column: 11, scope: !177, inlinedAt: !503)
!511 = !DILocation(line: 120, column: 17, scope: !177, inlinedAt: !503)
!512 = !DILocation(line: 121, column: 15, scope: !192, inlinedAt: !503)
!513 = !DILocation(line: 121, column: 19, scope: !192, inlinedAt: !503)
!514 = !DILocation(line: 121, column: 9, scope: !177, inlinedAt: !503)
!515 = !DILocation(line: 122, column: 33, scope: !198, inlinedAt: !503)
!516 = !DILocation(line: 122, column: 20, scope: !198, inlinedAt: !503)
!517 = !DILocation(line: 123, column: 20, scope: !198, inlinedAt: !503)
!518 = !DILocation(line: 124, column: 5, scope: !198, inlinedAt: !503)
!519 = !DILocation(line: 125, column: 28, scope: !196, inlinedAt: !503)
!520 = !DILocation(line: 125, column: 20, scope: !196, inlinedAt: !503)
!521 = !DILocation(line: 126, column: 15, scope: !196, inlinedAt: !503)
!522 = !DILocation(line: 126, column: 20, scope: !196, inlinedAt: !503)
!523 = !DILocation(line: 127, column: 15, scope: !196, inlinedAt: !503)
!524 = !DILocation(line: 127, column: 21, scope: !196, inlinedAt: !503)
!525 = !DILocation(line: 127, column: 26, scope: !196, inlinedAt: !503)
!526 = !DILocation(line: 128, column: 20, scope: !196, inlinedAt: !503)
!527 = !DILocation(line: 119, column: 9, scope: !185, inlinedAt: !503)
!528 = !DILocation(line: 132, column: 1, scope: !177, inlinedAt: !503)
!529 = !DILocation(line: 273, column: 13, scope: !418)
!530 = !DILocation(line: 76, column: 24, scope: !108, inlinedAt: !531)
!531 = distinct !DILocation(line: 274, column: 13, scope: !532)
!532 = distinct !DILexicalBlock(scope: !504, file: !1, line: 273, column: 51)
!533 = !DILocation(line: 56, column: 22, scope: !73, inlinedAt: !534)
!534 = distinct !DILocation(line: 78, column: 5, scope: !108, inlinedAt: !531)
!535 = !DILocation(line: 61, column: 21, scope: !73, inlinedAt: !534)
!536 = !DILocation(line: 59, column: 15, scope: !73, inlinedAt: !534)
!537 = !DILocation(line: 62, column: 17, scope: !73, inlinedAt: !534)
!538 = !DILocation(line: 58, column: 19, scope: !73, inlinedAt: !534)
!539 = !DILocation(line: 63, column: 5, scope: !73, inlinedAt: !534)
!540 = !DILocation(line: 0, scope: !108, inlinedAt: !531)
!541 = !DILocation(line: 63, column: 14, scope: !73, inlinedAt: !534)
!542 = !DILocation(line: 64, column: 25, scope: !91, inlinedAt: !534)
!543 = !DILocation(line: 59, column: 25, scope: !73, inlinedAt: !534)
!544 = !DILocation(line: 65, column: 19, scope: !96, inlinedAt: !534)
!545 = !DILocation(line: 65, column: 13, scope: !96, inlinedAt: !534)
!546 = !DILocation(line: 65, column: 13, scope: !91, inlinedAt: !534)
!547 = !DILocation(line: 65, column: 45, scope: !96, inlinedAt: !534)
!548 = !DILocation(line: 65, column: 25, scope: !96, inlinedAt: !534)
!549 = !DILocation(line: 66, column: 9, scope: !91, inlinedAt: !534)
!550 = !DILocation(line: 69, column: 16, scope: !73, inlinedAt: !534)
!551 = !DILocation(line: 70, column: 15, scope: !73, inlinedAt: !534)
!552 = !DILocation(line: 71, column: 1, scope: !73, inlinedAt: !534)
!553 = !DILocation(line: 79, column: 5, scope: !108, inlinedAt: !531)
!554 = !DILocation(line: 80, column: 1, scope: !108, inlinedAt: !531)
!555 = !DILocation(line: 130, column: 14, scope: !177, inlinedAt: !503)
!556 = !DILocation(line: 131, column: 5, scope: !177, inlinedAt: !503)
!557 = !DILocation(line: 277, column: 5, scope: !409)
!558 = !DILocation(line: 279, column: 1, scope: !409)
!559 = distinct !DISubprogram(name: "listSearchKey", scope: !1, file: !1, line: 290, type: !560, isLocal: false, isDefinition: true, scopeLine: 291, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !562)
!560 = !DISubroutineType(types: !561)
!561 = !{!18, !12, !4}
!562 = !{!563, !564, !565, !566}
!563 = !DILocalVariable(name: "list", arg: 1, scope: !559, file: !1, line: 290, type: !12)
!564 = !DILocalVariable(name: "key", arg: 2, scope: !559, file: !1, line: 290, type: !4)
!565 = !DILocalVariable(name: "iter", scope: !559, file: !1, line: 292, type: !323)
!566 = !DILocalVariable(name: "node", scope: !559, file: !1, line: 293, type: !18)
!567 = !DILocation(line: 290, column: 31, scope: !559)
!568 = !DILocation(line: 290, column: 43, scope: !559)
!569 = !DILocation(line: 292, column: 14, scope: !559)
!570 = !DILocation(line: 205, column: 23, scope: !364, inlinedAt: !571)
!571 = distinct !DILocation(line: 295, column: 5, scope: !559)
!572 = !DILocation(line: 205, column: 39, scope: !364, inlinedAt: !571)
!573 = !DILocation(line: 206, column: 22, scope: !364, inlinedAt: !571)
!574 = !DILocation(line: 208, column: 1, scope: !364, inlinedAt: !571)
!575 = !DILocation(line: 296, column: 5, scope: !559)
!576 = !DILocation(line: 229, column: 30, scope: !388, inlinedAt: !577)
!577 = distinct !DILocation(line: 296, column: 19, scope: !559)
!578 = !DILocation(line: 231, column: 31, scope: !388, inlinedAt: !577)
!579 = !DILocation(line: 231, column: 15, scope: !388, inlinedAt: !577)
!580 = !DILocation(line: 233, column: 17, scope: !398, inlinedAt: !577)
!581 = !DILocation(line: 233, column: 9, scope: !388, inlinedAt: !577)
!582 = !DILocation(line: 0, scope: !559)
!583 = !DILocation(line: 235, column: 35, scope: !401, inlinedAt: !577)
!584 = !DILocation(line: 235, column: 13, scope: !401, inlinedAt: !577)
!585 = !DILocation(line: 239, column: 5, scope: !388, inlinedAt: !577)
!586 = !DILocation(line: 293, column: 15, scope: !559)
!587 = !DILocation(line: 297, column: 19, scope: !588)
!588 = distinct !DILexicalBlock(scope: !589, file: !1, line: 297, column: 13)
!589 = distinct !DILexicalBlock(scope: !559, file: !1, line: 296, column: 45)
!590 = !DILocation(line: 297, column: 13, scope: !588)
!591 = !DILocation(line: 297, column: 13, scope: !589)
!592 = !DILocation(line: 0, scope: !593)
!593 = distinct !DILexicalBlock(scope: !594, file: !1, line: 298, column: 17)
!594 = distinct !DILexicalBlock(scope: !588, file: !1, line: 297, column: 26)
!595 = !DILocation(line: 298, column: 17, scope: !593)
!596 = !DILocation(line: 298, column: 17, scope: !594)
!597 = !DILocation(line: 302, column: 21, scope: !598)
!598 = distinct !DILexicalBlock(scope: !599, file: !1, line: 302, column: 17)
!599 = distinct !DILexicalBlock(scope: !588, file: !1, line: 301, column: 16)
!600 = !DILocation(line: 302, column: 17, scope: !599)
!601 = distinct !{!601, !575, !602}
!602 = !DILocation(line: 306, column: 5, scope: !559)
!603 = !DILocation(line: 307, column: 5, scope: !559)
!604 = !DILocation(line: 0, scope: !605)
!605 = distinct !DILexicalBlock(scope: !593, file: !1, line: 298, column: 48)
!606 = !DILocation(line: 308, column: 1, scope: !559)
!607 = distinct !DISubprogram(name: "listIndex", scope: !1, file: !1, line: 315, type: !608, isLocal: false, isDefinition: true, scopeLine: 315, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !611)
!608 = !DISubroutineType(types: !609)
!609 = !{!18, !12, !610}
!610 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!611 = !{!612, !613, !614}
!612 = !DILocalVariable(name: "list", arg: 1, scope: !607, file: !1, line: 315, type: !12)
!613 = !DILocalVariable(name: "index", arg: 2, scope: !607, file: !1, line: 315, type: !610)
!614 = !DILocalVariable(name: "n", scope: !607, file: !1, line: 316, type: !18)
!615 = !DILocation(line: 315, column: 27, scope: !607)
!616 = !DILocation(line: 315, column: 38, scope: !607)
!617 = !DILocation(line: 318, column: 15, scope: !618)
!618 = distinct !DILexicalBlock(scope: !607, file: !1, line: 318, column: 9)
!619 = !DILocation(line: 318, column: 9, scope: !607)
!620 = !DILocation(line: 320, column: 19, scope: !621)
!621 = distinct !DILexicalBlock(scope: !618, file: !1, line: 318, column: 20)
!622 = !DILocation(line: 316, column: 15, scope: !607)
!623 = !DILocation(line: 321, column: 9, scope: !621)
!624 = !DILocation(line: 321, column: 20, scope: !621)
!625 = !DILocation(line: 321, column: 23, scope: !621)
!626 = !DILocation(line: 319, column: 25, scope: !621)
!627 = !DILocation(line: 321, column: 36, scope: !621)
!628 = distinct !{!628, !623, !627}
!629 = !DILocation(line: 323, column: 19, scope: !630)
!630 = distinct !DILexicalBlock(scope: !618, file: !1, line: 322, column: 12)
!631 = !DILocation(line: 324, column: 9, scope: !630)
!632 = !DILocation(line: 324, column: 20, scope: !630)
!633 = !DILocation(line: 324, column: 23, scope: !630)
!634 = !DILocation(line: 324, column: 36, scope: !630)
!635 = distinct !{!635, !631, !634}
!636 = !DILocation(line: 0, scope: !630)
!637 = !DILocation(line: 326, column: 5, scope: !607)
!638 = distinct !DISubprogram(name: "listRotate", scope: !1, file: !1, line: 330, type: !74, isLocal: false, isDefinition: true, scopeLine: 330, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !639)
!639 = !{!640, !641}
!640 = !DILocalVariable(name: "list", arg: 1, scope: !638, file: !1, line: 330, type: !12)
!641 = !DILocalVariable(name: "tail", scope: !638, file: !1, line: 331, type: !18)
!642 = !DILocation(line: 330, column: 23, scope: !638)
!643 = !DILocation(line: 331, column: 28, scope: !638)
!644 = !DILocation(line: 331, column: 15, scope: !638)
!645 = !DILocation(line: 333, column: 9, scope: !646)
!646 = distinct !DILexicalBlock(scope: !638, file: !1, line: 333, column: 9)
!647 = !DILocation(line: 333, column: 26, scope: !646)
!648 = !DILocation(line: 333, column: 9, scope: !638)
!649 = !DILocation(line: 336, column: 24, scope: !638)
!650 = !DILocation(line: 336, column: 16, scope: !638)
!651 = !DILocation(line: 337, column: 17, scope: !638)
!652 = !DILocation(line: 337, column: 22, scope: !638)
!653 = !DILocation(line: 339, column: 11, scope: !638)
!654 = !DILocation(line: 339, column: 17, scope: !638)
!655 = !DILocation(line: 339, column: 22, scope: !638)
!656 = !DILocation(line: 340, column: 16, scope: !638)
!657 = !DILocation(line: 341, column: 24, scope: !638)
!658 = !DILocation(line: 341, column: 11, scope: !638)
!659 = !DILocation(line: 341, column: 16, scope: !638)
!660 = !DILocation(line: 342, column: 16, scope: !638)
!661 = !DILocation(line: 343, column: 1, scope: !638)
!662 = !DILocation(line: 0, scope: !646)
!663 = distinct !DISubprogram(name: "listJoin", scope: !1, file: !1, line: 347, type: !664, isLocal: false, isDefinition: true, scopeLine: 347, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !666)
!664 = !DISubroutineType(types: !665)
!665 = !{null, !12, !12}
!666 = !{!667, !668}
!667 = !DILocalVariable(name: "l", arg: 1, scope: !663, file: !1, line: 347, type: !12)
!668 = !DILocalVariable(name: "o", arg: 2, scope: !663, file: !1, line: 347, type: !12)
!669 = !DILocation(line: 347, column: 21, scope: !663)
!670 = !DILocation(line: 347, column: 30, scope: !663)
!671 = !DILocation(line: 348, column: 12, scope: !672)
!672 = distinct !DILexicalBlock(scope: !663, file: !1, line: 348, column: 9)
!673 = !DILocation(line: 348, column: 9, scope: !672)
!674 = !DILocation(line: 348, column: 9, scope: !663)
!675 = !DILocation(line: 351, column: 12, scope: !676)
!676 = distinct !DILexicalBlock(scope: !663, file: !1, line: 351, column: 9)
!677 = !DILocation(line: 349, column: 28, scope: !672)
!678 = !DILocation(line: 349, column: 23, scope: !672)
!679 = !DILocation(line: 349, column: 9, scope: !672)
!680 = !DILocation(line: 351, column: 9, scope: !676)
!681 = !DILocation(line: 351, column: 9, scope: !663)
!682 = !DILocation(line: 354, column: 17, scope: !676)
!683 = !DILocation(line: 352, column: 18, scope: !676)
!684 = !DILocation(line: 352, column: 23, scope: !676)
!685 = !DILocation(line: 0, scope: !676)
!686 = !DILocation(line: 356, column: 12, scope: !687)
!687 = distinct !DILexicalBlock(scope: !663, file: !1, line: 356, column: 9)
!688 = !DILocation(line: 356, column: 9, scope: !687)
!689 = !DILocation(line: 356, column: 9, scope: !663)
!690 = !DILocation(line: 356, column: 26, scope: !687)
!691 = !DILocation(line: 356, column: 18, scope: !687)
!692 = !DILocation(line: 357, column: 18, scope: !663)
!693 = !DILocation(line: 357, column: 8, scope: !663)
!694 = !DILocation(line: 357, column: 12, scope: !663)
!695 = !DILocation(line: 360, column: 13, scope: !663)
!696 = !DILocation(line: 361, column: 12, scope: !663)
!697 = !DILocation(line: 362, column: 1, scope: !663)
