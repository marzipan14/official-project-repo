; ModuleID = '/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lstring.c'
source_filename = "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lstring.c"
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
%union.Udata = type { %struct.anon.2 }
%struct.anon.2 = type { %union.GCObject*, i8, i8, %struct.Table*, %struct.Table*, i64 }

; Function Attrs: noredzone nounwind
define hidden void @luaS_resize(%struct.lua_State*, i32) local_unnamed_addr #0 !dbg !344 {
  %3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !364
  %4 = load %struct.global_State*, %struct.global_State** %3, align 8, !dbg !364, !tbaa !366
  %5 = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i64 0, i32 4, !dbg !375
  %6 = load i8, i8* %5, align 1, !dbg !375, !tbaa !376
  %7 = icmp eq i8 %6, 2, !dbg !381
  br i1 %7, label %146, label %8, !dbg !382

; <label>:8:                                      ; preds = %2
  %9 = icmp sgt i32 %1, -2, !dbg !383
  br i1 %9, label %14, label %10, !dbg !383

; <label>:10:                                     ; preds = %8
  %11 = tail call i8* @luaM_toobig(%struct.lua_State* nonnull %0) #3, !dbg !383
  %12 = bitcast i8* %11 to %union.GCObject**, !dbg !383
  %13 = load %struct.global_State*, %struct.global_State** %3, align 8, !dbg !385, !tbaa !366
  br label %95, !dbg !388

; <label>:14:                                     ; preds = %8
  %15 = sext i32 %1 to i64, !dbg !383
  %16 = shl nsw i64 %15, 3, !dbg !383
  %17 = tail call i8* @luaM_realloc_(%struct.lua_State* nonnull %0, i8* null, i64 0, i64 %16) #3, !dbg !383
  %18 = bitcast i8* %17 to %union.GCObject**, !dbg !383
  %19 = load %struct.global_State*, %struct.global_State** %3, align 8, !dbg !385, !tbaa !366
  %20 = icmp sgt i32 %1, 0, !dbg !390
  br i1 %20, label %21, label %95, !dbg !388

; <label>:21:                                     ; preds = %14
  %22 = zext i32 %1 to i64
  %23 = icmp ult i32 %1, 4, !dbg !392
  br i1 %23, label %24, label %26, !dbg !392

; <label>:24:                                     ; preds = %93, %21
  %25 = phi i64 [ 0, %21 ], [ %27, %93 ]
  br label %107, !dbg !392

; <label>:26:                                     ; preds = %21
  %27 = and i64 %22, 4294967292, !dbg !392
  %28 = add nsw i64 %27, -4, !dbg !392
  %29 = lshr exact i64 %28, 2, !dbg !392
  %30 = add nuw nsw i64 %29, 1, !dbg !392
  %31 = and i64 %30, 7, !dbg !392
  %32 = icmp ult i64 %28, 28, !dbg !392
  br i1 %32, label %80, label %33, !dbg !392

; <label>:33:                                     ; preds = %26
  %34 = sub nsw i64 %30, %31, !dbg !392
  br label %35, !dbg !392

; <label>:35:                                     ; preds = %35, %33
  %36 = phi i64 [ 0, %33 ], [ %77, %35 ], !dbg !393
  %37 = phi i64 [ %34, %33 ], [ %78, %35 ]
  %38 = getelementptr inbounds %union.GCObject*, %union.GCObject** %18, i64 %36, !dbg !392
  %39 = bitcast %union.GCObject** %38 to <2 x %union.GCObject*>*, !dbg !394
  store <2 x %union.GCObject*> zeroinitializer, <2 x %union.GCObject*>* %39, align 8, !dbg !394, !tbaa !395
  %40 = getelementptr inbounds %union.GCObject*, %union.GCObject** %38, i64 2, !dbg !394
  %41 = bitcast %union.GCObject** %40 to <2 x %union.GCObject*>*, !dbg !394
  store <2 x %union.GCObject*> zeroinitializer, <2 x %union.GCObject*>* %41, align 8, !dbg !394, !tbaa !395
  %42 = or i64 %36, 4, !dbg !393
  %43 = getelementptr inbounds %union.GCObject*, %union.GCObject** %18, i64 %42, !dbg !392
  %44 = bitcast %union.GCObject** %43 to <2 x %union.GCObject*>*, !dbg !394
  store <2 x %union.GCObject*> zeroinitializer, <2 x %union.GCObject*>* %44, align 8, !dbg !394, !tbaa !395
  %45 = getelementptr inbounds %union.GCObject*, %union.GCObject** %43, i64 2, !dbg !394
  %46 = bitcast %union.GCObject** %45 to <2 x %union.GCObject*>*, !dbg !394
  store <2 x %union.GCObject*> zeroinitializer, <2 x %union.GCObject*>* %46, align 8, !dbg !394, !tbaa !395
  %47 = or i64 %36, 8, !dbg !393
  %48 = getelementptr inbounds %union.GCObject*, %union.GCObject** %18, i64 %47, !dbg !392
  %49 = bitcast %union.GCObject** %48 to <2 x %union.GCObject*>*, !dbg !394
  store <2 x %union.GCObject*> zeroinitializer, <2 x %union.GCObject*>* %49, align 8, !dbg !394, !tbaa !395
  %50 = getelementptr inbounds %union.GCObject*, %union.GCObject** %48, i64 2, !dbg !394
  %51 = bitcast %union.GCObject** %50 to <2 x %union.GCObject*>*, !dbg !394
  store <2 x %union.GCObject*> zeroinitializer, <2 x %union.GCObject*>* %51, align 8, !dbg !394, !tbaa !395
  %52 = or i64 %36, 12, !dbg !393
  %53 = getelementptr inbounds %union.GCObject*, %union.GCObject** %18, i64 %52, !dbg !392
  %54 = bitcast %union.GCObject** %53 to <2 x %union.GCObject*>*, !dbg !394
  store <2 x %union.GCObject*> zeroinitializer, <2 x %union.GCObject*>* %54, align 8, !dbg !394, !tbaa !395
  %55 = getelementptr inbounds %union.GCObject*, %union.GCObject** %53, i64 2, !dbg !394
  %56 = bitcast %union.GCObject** %55 to <2 x %union.GCObject*>*, !dbg !394
  store <2 x %union.GCObject*> zeroinitializer, <2 x %union.GCObject*>* %56, align 8, !dbg !394, !tbaa !395
  %57 = or i64 %36, 16, !dbg !393
  %58 = getelementptr inbounds %union.GCObject*, %union.GCObject** %18, i64 %57, !dbg !392
  %59 = bitcast %union.GCObject** %58 to <2 x %union.GCObject*>*, !dbg !394
  store <2 x %union.GCObject*> zeroinitializer, <2 x %union.GCObject*>* %59, align 8, !dbg !394, !tbaa !395
  %60 = getelementptr inbounds %union.GCObject*, %union.GCObject** %58, i64 2, !dbg !394
  %61 = bitcast %union.GCObject** %60 to <2 x %union.GCObject*>*, !dbg !394
  store <2 x %union.GCObject*> zeroinitializer, <2 x %union.GCObject*>* %61, align 8, !dbg !394, !tbaa !395
  %62 = or i64 %36, 20, !dbg !393
  %63 = getelementptr inbounds %union.GCObject*, %union.GCObject** %18, i64 %62, !dbg !392
  %64 = bitcast %union.GCObject** %63 to <2 x %union.GCObject*>*, !dbg !394
  store <2 x %union.GCObject*> zeroinitializer, <2 x %union.GCObject*>* %64, align 8, !dbg !394, !tbaa !395
  %65 = getelementptr inbounds %union.GCObject*, %union.GCObject** %63, i64 2, !dbg !394
  %66 = bitcast %union.GCObject** %65 to <2 x %union.GCObject*>*, !dbg !394
  store <2 x %union.GCObject*> zeroinitializer, <2 x %union.GCObject*>* %66, align 8, !dbg !394, !tbaa !395
  %67 = or i64 %36, 24, !dbg !393
  %68 = getelementptr inbounds %union.GCObject*, %union.GCObject** %18, i64 %67, !dbg !392
  %69 = bitcast %union.GCObject** %68 to <2 x %union.GCObject*>*, !dbg !394
  store <2 x %union.GCObject*> zeroinitializer, <2 x %union.GCObject*>* %69, align 8, !dbg !394, !tbaa !395
  %70 = getelementptr inbounds %union.GCObject*, %union.GCObject** %68, i64 2, !dbg !394
  %71 = bitcast %union.GCObject** %70 to <2 x %union.GCObject*>*, !dbg !394
  store <2 x %union.GCObject*> zeroinitializer, <2 x %union.GCObject*>* %71, align 8, !dbg !394, !tbaa !395
  %72 = or i64 %36, 28, !dbg !393
  %73 = getelementptr inbounds %union.GCObject*, %union.GCObject** %18, i64 %72, !dbg !392
  %74 = bitcast %union.GCObject** %73 to <2 x %union.GCObject*>*, !dbg !394
  store <2 x %union.GCObject*> zeroinitializer, <2 x %union.GCObject*>* %74, align 8, !dbg !394, !tbaa !395
  %75 = getelementptr inbounds %union.GCObject*, %union.GCObject** %73, i64 2, !dbg !394
  %76 = bitcast %union.GCObject** %75 to <2 x %union.GCObject*>*, !dbg !394
  store <2 x %union.GCObject*> zeroinitializer, <2 x %union.GCObject*>* %76, align 8, !dbg !394, !tbaa !395
  %77 = add i64 %36, 32, !dbg !393
  %78 = add i64 %37, -8, !dbg !393
  %79 = icmp eq i64 %78, 0, !dbg !393
  br i1 %79, label %80, label %35, !dbg !393, !llvm.loop !396

; <label>:80:                                     ; preds = %35, %26
  %81 = phi i64 [ 0, %26 ], [ %77, %35 ]
  %82 = icmp eq i64 %31, 0, !dbg !393
  br i1 %82, label %93, label %83, !dbg !393

; <label>:83:                                     ; preds = %80, %83
  %84 = phi i64 [ %90, %83 ], [ %81, %80 ], !dbg !393
  %85 = phi i64 [ %91, %83 ], [ %31, %80 ]
  %86 = getelementptr inbounds %union.GCObject*, %union.GCObject** %18, i64 %84, !dbg !392
  %87 = bitcast %union.GCObject** %86 to <2 x %union.GCObject*>*, !dbg !394
  store <2 x %union.GCObject*> zeroinitializer, <2 x %union.GCObject*>* %87, align 8, !dbg !394, !tbaa !395
  %88 = getelementptr inbounds %union.GCObject*, %union.GCObject** %86, i64 2, !dbg !394
  %89 = bitcast %union.GCObject** %88 to <2 x %union.GCObject*>*, !dbg !394
  store <2 x %union.GCObject*> zeroinitializer, <2 x %union.GCObject*>* %89, align 8, !dbg !394, !tbaa !395
  %90 = add i64 %84, 4, !dbg !393
  %91 = add i64 %85, -1, !dbg !393
  %92 = icmp eq i64 %91, 0, !dbg !393
  br i1 %92, label %93, label %83, !dbg !393, !llvm.loop !399

; <label>:93:                                     ; preds = %83, %80
  %94 = icmp eq i64 %27, %22
  br i1 %94, label %95, label %24, !dbg !392

; <label>:95:                                     ; preds = %107, %93, %10, %14
  %96 = phi %struct.global_State* [ %13, %10 ], [ %19, %14 ], [ %19, %93 ], [ %19, %107 ]
  %97 = phi %union.GCObject** [ %12, %10 ], [ %18, %14 ], [ %18, %93 ], [ %18, %107 ]
  %98 = phi i8* [ %11, %10 ], [ %17, %14 ], [ %17, %93 ], [ %17, %107 ]
  %99 = getelementptr inbounds %struct.global_State, %struct.global_State* %96, i64 0, i32 0, i32 2, !dbg !401
  %100 = load i32, i32* %99, align 4, !dbg !401, !tbaa !402
  %101 = icmp sgt i32 %100, 0, !dbg !403
  br i1 %101, label %104, label %102, !dbg !404

; <label>:102:                                    ; preds = %95
  %103 = sext i32 %100 to i64, !dbg !405
  br label %140, !dbg !404

; <label>:104:                                    ; preds = %95
  %105 = getelementptr inbounds %struct.global_State, %struct.global_State* %96, i64 0, i32 0, i32 0
  %106 = add nsw i32 %1, -1
  br label %112, !dbg !404

; <label>:107:                                    ; preds = %24, %107
  %108 = phi i64 [ %110, %107 ], [ %25, %24 ]
  %109 = getelementptr inbounds %union.GCObject*, %union.GCObject** %18, i64 %108, !dbg !392
  store %union.GCObject* null, %union.GCObject** %109, align 8, !dbg !394, !tbaa !395
  %110 = add nuw nsw i64 %108, 1, !dbg !393
  %111 = icmp eq i64 %110, %22, !dbg !390
  br i1 %111, label %95, label %107, !dbg !388, !llvm.loop !406

; <label>:112:                                    ; preds = %104, %135
  %113 = phi i32 [ %100, %104 ], [ %136, %135 ]
  %114 = phi i64 [ 0, %104 ], [ %137, %135 ]
  %115 = load %union.GCObject**, %union.GCObject*** %105, align 8, !dbg !408, !tbaa !409
  %116 = getelementptr inbounds %union.GCObject*, %union.GCObject** %115, i64 %114, !dbg !410
  %117 = load %union.GCObject*, %union.GCObject** %116, align 8, !dbg !410, !tbaa !395
  %118 = icmp eq %union.GCObject* %117, null, !dbg !412
  br i1 %118, label %135, label %119, !dbg !412

; <label>:119:                                    ; preds = %112, %119
  %120 = phi %union.GCObject* [ %123, %119 ], [ %117, %112 ]
  %121 = bitcast %union.GCObject* %120 to %struct.anon.1*, !dbg !413
  %122 = getelementptr inbounds %union.GCObject, %union.GCObject* %120, i64 0, i32 0, i32 0, !dbg !414
  %123 = load %union.GCObject*, %union.GCObject** %122, align 8, !dbg !414, !tbaa !415
  %124 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %121, i64 0, i32 4, !dbg !417
  %125 = load i32, i32* %124, align 4, !dbg !417, !tbaa !415
  %126 = and i32 %125, %106, !dbg !419
  %127 = sext i32 %126 to i64, !dbg !421
  %128 = getelementptr inbounds %union.GCObject*, %union.GCObject** %97, i64 %127, !dbg !421
  %129 = bitcast %union.GCObject** %128 to i64*, !dbg !421
  %130 = load i64, i64* %129, align 8, !dbg !421, !tbaa !395
  %131 = bitcast %union.GCObject* %120 to i64*, !dbg !422
  store i64 %130, i64* %131, align 8, !dbg !422, !tbaa !415
  store %union.GCObject* %120, %union.GCObject** %128, align 8, !dbg !423, !tbaa !395
  %132 = icmp eq %union.GCObject* %123, null, !dbg !412
  br i1 %132, label %133, label %119, !dbg !412, !llvm.loop !424

; <label>:133:                                    ; preds = %119
  %134 = load i32, i32* %99, align 4, !dbg !401, !tbaa !402
  br label %135, !dbg !426

; <label>:135:                                    ; preds = %133, %112
  %136 = phi i32 [ %134, %133 ], [ %113, %112 ], !dbg !401
  %137 = add nuw nsw i64 %114, 1, !dbg !426
  %138 = sext i32 %136 to i64, !dbg !403
  %139 = icmp slt i64 %137, %138, !dbg !403
  br i1 %139, label %112, label %140, !dbg !404, !llvm.loop !427

; <label>:140:                                    ; preds = %135, %102
  %141 = phi i64 [ %103, %102 ], [ %138, %135 ], !dbg !405
  %142 = bitcast %struct.global_State* %96 to i8**, !dbg !405
  %143 = load i8*, i8** %142, align 8, !dbg !405, !tbaa !409
  %144 = shl nsw i64 %141, 3, !dbg !405
  %145 = tail call i8* @luaM_realloc_(%struct.lua_State* %0, i8* %143, i64 %144, i64 0) #3, !dbg !405
  store i32 %1, i32* %99, align 4, !dbg !429, !tbaa !402
  store i8* %98, i8** %142, align 8, !dbg !430, !tbaa !409
  br label %146, !dbg !431

; <label>:146:                                    ; preds = %2, %140
  ret void, !dbg !431
}

; Function Attrs: noredzone
declare hidden i8* @luaM_realloc_(%struct.lua_State*, i8*, i64, i64) local_unnamed_addr #1

; Function Attrs: noredzone
declare hidden i8* @luaM_toobig(%struct.lua_State*) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define hidden %union.TString* @luaS_newlstr(%struct.lua_State*, i8*, i64) local_unnamed_addr #0 !dbg !432 {
  %4 = trunc i64 %2 to i32, !dbg !450
  %5 = lshr i64 %2, 5, !dbg !452
  %6 = icmp ult i64 %5, %2, !dbg !455
  br i1 %6, label %7, label %23, !dbg !458

; <label>:7:                                      ; preds = %3
  %8 = xor i64 %5, -1
  br label %9, !dbg !458

; <label>:9:                                      ; preds = %7, %9
  %10 = phi i64 [ %2, %7 ], [ %21, %9 ]
  %11 = phi i32 [ %4, %7 ], [ %20, %9 ]
  %12 = shl i32 %11, 5, !dbg !459
  %13 = lshr i32 %11, 2, !dbg !460
  %14 = add i32 %12, %13, !dbg !461
  %15 = add i64 %10, -1, !dbg !462
  %16 = getelementptr inbounds i8, i8* %1, i64 %15, !dbg !462
  %17 = load i8, i8* %16, align 1, !dbg !462, !tbaa !415
  %18 = zext i8 %17 to i32, !dbg !462
  %19 = add i32 %14, %18, !dbg !463
  %20 = xor i32 %19, %11, !dbg !464
  %21 = add i64 %10, %8, !dbg !465
  %22 = icmp ugt i64 %21, %5, !dbg !455
  br i1 %22, label %9, label %23, !dbg !458, !llvm.loop !466

; <label>:23:                                     ; preds = %9, %3
  %24 = phi i32 [ %4, %3 ], [ %20, %9 ], !dbg !468
  %25 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !469
  %26 = load %struct.global_State*, %struct.global_State** %25, align 8, !dbg !469, !tbaa !366
  %27 = getelementptr inbounds %struct.global_State, %struct.global_State* %26, i64 0, i32 0, i32 0, !dbg !470
  %28 = load %union.GCObject**, %union.GCObject*** %27, align 8, !dbg !470, !tbaa !471
  %29 = getelementptr inbounds %struct.global_State, %struct.global_State* %26, i64 0, i32 0, i32 2, !dbg !472
  %30 = load i32, i32* %29, align 4, !dbg !472, !tbaa !473
  %31 = add nsw i32 %30, -1, !dbg !472
  %32 = and i32 %31, %24, !dbg !472
  %33 = sext i32 %32 to i64, !dbg !469
  %34 = getelementptr inbounds %union.GCObject*, %union.GCObject** %28, i64 %33, !dbg !469
  %35 = load %union.GCObject*, %union.GCObject** %34, align 8, !dbg !475, !tbaa !415
  %36 = icmp eq %union.GCObject* %35, null, !dbg !476
  br i1 %36, label %65, label %37, !dbg !477

; <label>:37:                                     ; preds = %23, %61
  %38 = phi %union.GCObject* [ %63, %61 ], [ %35, %23 ]
  %39 = getelementptr inbounds %union.GCObject, %union.GCObject* %38, i64 0, i32 0, i32 4, !dbg !478
  %40 = bitcast %struct.lua_TValue** %39 to i64*, !dbg !478
  %41 = load i64, i64* %40, align 8, !dbg !478, !tbaa !415
  %42 = icmp eq i64 %41, %2, !dbg !480
  br i1 %42, label %43, label %61, !dbg !481

; <label>:43:                                     ; preds = %37
  %44 = getelementptr inbounds %union.GCObject, %union.GCObject* %38, i64 0, i32 0, i32 5, !dbg !482
  %45 = bitcast %struct.lua_TValue** %44 to i8*, !dbg !482
  %46 = tail call i32 @memcmp(i8* %1, i8* nonnull %45, i64 %2) #3, !dbg !483
  %47 = icmp eq i32 %46, 0, !dbg !484
  br i1 %47, label %48, label %61, !dbg !485

; <label>:48:                                     ; preds = %43
  %49 = bitcast %union.GCObject* %38 to %union.TString*, !dbg !486
  %50 = getelementptr inbounds %union.GCObject, %union.GCObject* %38, i64 0, i32 0, i32 2, !dbg !487
  %51 = load i8, i8* %50, align 1, !dbg !487, !tbaa !415
  %52 = load %struct.global_State*, %struct.global_State** %25, align 8, !dbg !487, !tbaa !366
  %53 = getelementptr inbounds %struct.global_State, %struct.global_State* %52, i64 0, i32 3, !dbg !487
  %54 = load i8, i8* %53, align 8, !dbg !487, !tbaa !490
  %55 = xor i8 %54, 3, !dbg !487
  %56 = and i8 %51, 3, !dbg !487
  %57 = and i8 %56, %55, !dbg !487
  %58 = icmp eq i8 %57, 0, !dbg !487
  br i1 %58, label %112, label %59, !dbg !491

; <label>:59:                                     ; preds = %48
  %60 = xor i8 %51, 3, !dbg !492
  store i8 %60, i8* %50, align 1, !dbg !492, !tbaa !415
  br label %112, !dbg !492

; <label>:61:                                     ; preds = %43, %37
  %62 = getelementptr inbounds %union.GCObject, %union.GCObject* %38, i64 0, i32 0, i32 0, !dbg !493
  %63 = load %union.GCObject*, %union.GCObject** %62, align 8, !dbg !475, !tbaa !415
  %64 = icmp eq %union.GCObject* %63, null, !dbg !476
  br i1 %64, label %65, label %37, !dbg !477, !llvm.loop !494

; <label>:65:                                     ; preds = %61, %23
  %66 = add i64 %2, 1, !dbg !511
  %67 = icmp ugt i64 %66, -27, !dbg !513
  br i1 %67, label %68, label %70, !dbg !514

; <label>:68:                                     ; preds = %65
  %69 = tail call i8* @luaM_toobig(%struct.lua_State* %0) #3, !dbg !515
  br label %70, !dbg !515

; <label>:70:                                     ; preds = %68, %65
  %71 = add i64 %2, 25, !dbg !516
  %72 = tail call i8* @luaM_realloc_(%struct.lua_State* %0, i8* null, i64 0, i64 %71) #3, !dbg !516
  %73 = bitcast i8* %72 to %union.TString*, !dbg !516
  %74 = getelementptr inbounds i8, i8* %72, i64 16, !dbg !518
  %75 = bitcast i8* %74 to i64*, !dbg !518
  store i64 %2, i64* %75, align 8, !dbg !519, !tbaa !415
  %76 = getelementptr inbounds i8, i8* %72, i64 12, !dbg !520
  %77 = bitcast i8* %76 to i32*, !dbg !520
  store i32 %24, i32* %77, align 4, !dbg !521, !tbaa !415
  %78 = load %struct.global_State*, %struct.global_State** %25, align 8, !dbg !522, !tbaa !366
  %79 = getelementptr inbounds %struct.global_State, %struct.global_State* %78, i64 0, i32 3, !dbg !522
  %80 = load i8, i8* %79, align 8, !dbg !522, !tbaa !490
  %81 = and i8 %80, 3, !dbg !522
  %82 = getelementptr inbounds i8, i8* %72, i64 9, !dbg !523
  store i8 %81, i8* %82, align 1, !dbg !524, !tbaa !415
  %83 = getelementptr inbounds i8, i8* %72, i64 8, !dbg !525
  store i8 4, i8* %83, align 8, !dbg !526, !tbaa !415
  %84 = getelementptr inbounds i8, i8* %72, i64 10, !dbg !527
  store i8 0, i8* %84, align 2, !dbg !528, !tbaa !415
  %85 = getelementptr inbounds i8, i8* %72, i64 24, !dbg !529
  %86 = tail call i8* @memcpy(i8* nonnull %85, i8* %1, i64 %2) #3, !dbg !530
  %87 = getelementptr inbounds i8, i8* %85, i64 %2, !dbg !531
  store i8 0, i8* %87, align 1, !dbg !532, !tbaa !415
  %88 = load %struct.global_State*, %struct.global_State** %25, align 8, !dbg !533, !tbaa !366
  %89 = getelementptr inbounds %struct.global_State, %struct.global_State* %88, i64 0, i32 0, i32 2, !dbg !535
  %90 = load i32, i32* %89, align 4, !dbg !535, !tbaa !402
  %91 = add nsw i32 %90, -1, !dbg !535
  %92 = and i32 %91, %24, !dbg !535
  %93 = getelementptr inbounds %struct.global_State, %struct.global_State* %88, i64 0, i32 0, i32 0, !dbg !536
  %94 = load %union.GCObject**, %union.GCObject*** %93, align 8, !dbg !536, !tbaa !409
  %95 = zext i32 %92 to i64, !dbg !537
  %96 = getelementptr inbounds %union.GCObject*, %union.GCObject** %94, i64 %95, !dbg !537
  %97 = bitcast %union.GCObject** %96 to i64*, !dbg !537
  %98 = load i64, i64* %97, align 8, !dbg !537, !tbaa !395
  %99 = bitcast i8* %72 to i64*, !dbg !538
  store i64 %98, i64* %99, align 8, !dbg !538, !tbaa !415
  %100 = load %union.GCObject**, %union.GCObject*** %93, align 8, !dbg !539, !tbaa !409
  %101 = getelementptr inbounds %union.GCObject*, %union.GCObject** %100, i64 %95, !dbg !540
  %102 = bitcast %union.GCObject** %101 to i8**, !dbg !541
  store i8* %72, i8** %102, align 8, !dbg !541, !tbaa !395
  %103 = getelementptr inbounds %struct.global_State, %struct.global_State* %88, i64 0, i32 0, i32 1, !dbg !542
  %104 = load i32, i32* %103, align 8, !dbg !543, !tbaa !544
  %105 = add i32 %104, 1, !dbg !543
  store i32 %105, i32* %103, align 8, !dbg !543, !tbaa !544
  %106 = load i32, i32* %89, align 4, !dbg !545, !tbaa !402
  %107 = icmp ugt i32 %105, %106, !dbg !547
  %108 = icmp slt i32 %106, 1073741823, !dbg !548
  %109 = and i1 %107, %108, !dbg !549
  br i1 %109, label %110, label %112, !dbg !549

; <label>:110:                                    ; preds = %70
  %111 = shl nsw i32 %106, 1, !dbg !550
  tail call void @luaS_resize(%struct.lua_State* nonnull %0, i32 %111) #3, !dbg !551
  br label %112, !dbg !551

; <label>:112:                                    ; preds = %110, %70, %48, %59
  %113 = phi %union.TString* [ %49, %48 ], [ %49, %59 ], [ %73, %70 ], [ %73, %110 ], !dbg !552
  ret %union.TString* %113, !dbg !553
}

; Function Attrs: noredzone
declare dso_local i32 @memcmp(i8*, i8*, i64) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define hidden %union.Udata* @luaS_newudata(%struct.lua_State*, i64, %struct.Table*) local_unnamed_addr #0 !dbg !554 {
  %4 = icmp ugt i64 %1, -43, !dbg !567
  br i1 %4, label %5, label %7, !dbg !569

; <label>:5:                                      ; preds = %3
  %6 = tail call i8* @luaM_toobig(%struct.lua_State* %0) #3, !dbg !570
  br label %7, !dbg !570

; <label>:7:                                      ; preds = %5, %3
  %8 = add i64 %1, 40, !dbg !571
  %9 = tail call i8* @luaM_realloc_(%struct.lua_State* %0, i8* null, i64 0, i64 %8) #3, !dbg !571
  %10 = bitcast i8* %9 to %union.Udata*, !dbg !571
  %11 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !573
  %12 = load %struct.global_State*, %struct.global_State** %11, align 8, !dbg !573, !tbaa !366
  %13 = getelementptr inbounds %struct.global_State, %struct.global_State* %12, i64 0, i32 3, !dbg !573
  %14 = load i8, i8* %13, align 8, !dbg !573, !tbaa !490
  %15 = and i8 %14, 3, !dbg !573
  %16 = getelementptr inbounds i8, i8* %9, i64 9, !dbg !574
  store i8 %15, i8* %16, align 1, !dbg !575, !tbaa !415
  %17 = getelementptr inbounds i8, i8* %9, i64 8, !dbg !576
  store i8 7, i8* %17, align 8, !dbg !577, !tbaa !415
  %18 = getelementptr inbounds i8, i8* %9, i64 32, !dbg !578
  %19 = bitcast i8* %18 to i64*, !dbg !578
  store i64 %1, i64* %19, align 8, !dbg !579, !tbaa !415
  %20 = getelementptr inbounds i8, i8* %9, i64 16, !dbg !580
  %21 = bitcast i8* %20 to %struct.Table**, !dbg !580
  store %struct.Table* null, %struct.Table** %21, align 8, !dbg !581, !tbaa !415
  %22 = getelementptr inbounds i8, i8* %9, i64 24, !dbg !582
  %23 = bitcast i8* %22 to %struct.Table**, !dbg !582
  store %struct.Table* %2, %struct.Table** %23, align 8, !dbg !583, !tbaa !415
  %24 = load %struct.global_State*, %struct.global_State** %11, align 8, !dbg !584, !tbaa !366
  %25 = getelementptr inbounds %struct.global_State, %struct.global_State* %24, i64 0, i32 21, !dbg !585
  %26 = bitcast %struct.lua_State** %25 to i64**, !dbg !585
  %27 = load i64*, i64** %26, align 8, !dbg !585, !tbaa !586
  %28 = load i64, i64* %27, align 8, !dbg !587, !tbaa !588
  %29 = bitcast i8* %9 to i64*, !dbg !589
  store i64 %28, i64* %29, align 8, !dbg !589, !tbaa !415
  %30 = load %struct.global_State*, %struct.global_State** %11, align 8, !dbg !590, !tbaa !366
  %31 = getelementptr inbounds %struct.global_State, %struct.global_State* %30, i64 0, i32 21, !dbg !591
  %32 = bitcast %struct.lua_State** %31 to i8***, !dbg !591
  %33 = load i8**, i8*** %32, align 8, !dbg !591, !tbaa !586
  store i8* %9, i8** %33, align 8, !dbg !592, !tbaa !588
  ret %union.Udata* %10, !dbg !593
}

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }
attributes #4 = { nounwind }

!llvm.module.flags = !{!340, !341, !342}
!llvm.ident = !{!343}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lstring.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !44, !31, !84, !42, !19, !255, !338, !17, !5, !212, !173, !150}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "GCObject", file: !7, line: 36, baseType: !8)
!7 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lobject.h", directory: "/root/.unikraft/apps/redis/build")
!8 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "GCObject", file: !9, line: 136, size: 1472, elements: !10)
!9 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lstate.h", directory: "/root/.unikraft/apps/redis/build")
!10 = !{!11, !21, !49, !109, !334, !335, !336, !337}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "gch", scope: !8, file: !9, line: 137, baseType: !12, size: 128)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "GCheader", file: !7, line: 51, baseType: !13)
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GCheader", file: !7, line: 49, size: 128, elements: !14)
!14 = !{!15, !16, !20}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !13, file: !7, line: 50, baseType: !5, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !13, file: !7, line: 50, baseType: !17, size: 8, offset: 64)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "lu_byte", file: !18, line: 27, baseType: !19)
!18 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/llimits.h", directory: "/root/.unikraft/apps/redis/build")
!19 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !13, file: !7, line: 50, baseType: !17, size: 8, offset: 72)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "ts", scope: !8, file: !9, line: 138, baseType: !22, size: 192)
!22 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "TString", file: !7, line: 199, size: 192, elements: !23)
!23 = !{!24, !34}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !22, file: !7, line: 200, baseType: !25, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "L_Umaxalign", file: !18, line: 47, baseType: !26)
!26 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !18, line: 47, size: 64, elements: !27)
!27 = !{!28, !30, !32}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !26, file: !18, line: 47, baseType: !29, size: 64)
!29 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !26, file: !18, line: 47, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !26, file: !18, line: 47, baseType: !33, size: 64)
!33 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "tsv", scope: !22, file: !7, line: 206, baseType: !35, size: 192)
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !22, file: !7, line: 201, size: 192, elements: !36)
!36 = !{!37, !38, !39, !40, !41, !43}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !35, file: !7, line: 202, baseType: !5, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !35, file: !7, line: 202, baseType: !17, size: 8, offset: 64)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !35, file: !7, line: 202, baseType: !17, size: 8, offset: 72)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !35, file: !7, line: 203, baseType: !17, size: 8, offset: 80)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !35, file: !7, line: 204, baseType: !42, size: 32, offset: 96)
!42 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !35, file: !7, line: 205, baseType: !44, size: 64, offset: 128)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !45, line: 40, baseType: !46)
!45 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !47, line: 129, baseType: !48)
!47 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!48 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !8, file: !9, line: 139, baseType: !50, size: 320)
!50 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "Udata", file: !7, line: 215, size: 320, elements: !51)
!51 = !{!52, !53}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !50, file: !7, line: 216, baseType: !25, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "uv", scope: !50, file: !7, line: 222, baseType: !54, size: 320)
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !50, file: !7, line: 217, size: 320, elements: !55)
!55 = !{!56, !57, !58, !59, !107, !108}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !54, file: !7, line: 218, baseType: !5, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !54, file: !7, line: 218, baseType: !17, size: 8, offset: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !54, file: !7, line: 218, baseType: !17, size: 8, offset: 72)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "metatable", scope: !54, file: !7, line: 219, baseType: !60, size: 64, offset: 128)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Table", file: !7, line: 338, size: 512, elements: !62)
!62 = !{!63, !64, !65, !66, !67, !68, !69, !86, !104, !105, !106}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !61, file: !7, line: 339, baseType: !5, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !61, file: !7, line: 339, baseType: !17, size: 8, offset: 64)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !61, file: !7, line: 339, baseType: !17, size: 8, offset: 72)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !61, file: !7, line: 340, baseType: !17, size: 8, offset: 80)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "lsizenode", scope: !61, file: !7, line: 341, baseType: !17, size: 8, offset: 88)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "metatable", scope: !61, file: !7, line: 342, baseType: !60, size: 64, offset: 128)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "array", scope: !61, file: !7, line: 343, baseType: !70, size: 64, offset: 192)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "TValue", file: !7, line: 75, baseType: !72)
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lua_TValue", file: !7, line: 73, size: 128, elements: !73)
!73 = !{!74, !85}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !72, file: !7, line: 74, baseType: !75, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "Value", file: !7, line: 64, baseType: !76)
!76 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !7, line: 59, size: 64, elements: !77)
!77 = !{!78, !79, !80, !83}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !76, file: !7, line: 60, baseType: !5, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !76, file: !7, line: 61, baseType: !31, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !76, file: !7, line: 62, baseType: !81, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Number", file: !82, line: 99, baseType: !29)
!82 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lua.h", directory: "/root/.unikraft/apps/redis/build")
!83 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !76, file: !7, line: 63, baseType: !84, size: 32)
!84 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !72, file: !7, line: 74, baseType: !84, size: 32, offset: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !61, file: !7, line: 344, baseType: !87, size: 64, offset: 256)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "Node", file: !7, line: 335, baseType: !89)
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Node", file: !7, line: 332, size: 320, elements: !90)
!90 = !{!91, !92}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "i_val", scope: !89, file: !7, line: 333, baseType: !71, size: 128)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "i_key", scope: !89, file: !7, line: 334, baseType: !93, size: 192, offset: 128)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "TKey", file: !7, line: 329, baseType: !94)
!94 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "TKey", file: !7, line: 323, size: 192, elements: !95)
!95 = !{!96, !103}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "nk", scope: !94, file: !7, line: 327, baseType: !97, size: 192)
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !94, file: !7, line: 324, size: 192, elements: !98)
!98 = !{!99, !100, !101}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !97, file: !7, line: 325, baseType: !75, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !97, file: !7, line: 325, baseType: !84, size: 32, offset: 64)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !97, file: !7, line: 326, baseType: !102, size: 64, offset: 128)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "tvk", scope: !94, file: !7, line: 328, baseType: !71, size: 128)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "lastfree", scope: !61, file: !7, line: 345, baseType: !87, size: 64, offset: 320)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "gclist", scope: !61, file: !7, line: 346, baseType: !5, size: 64, offset: 384)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "sizearray", scope: !61, file: !7, line: 347, baseType: !84, size: 32, offset: 448)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "env", scope: !54, file: !7, line: 220, baseType: !60, size: 64, offset: 192)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !54, file: !7, line: 221, baseType: !44, size: 64, offset: 256)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !8, file: !9, line: 140, baseType: !110, size: 448)
!110 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "Closure", file: !7, line: 309, size: 448, elements: !111)
!111 = !{!112, !283}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !110, file: !7, line: 310, baseType: !113, size: 448)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "CClosure", file: !7, line: 299, baseType: !114)
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "CClosure", file: !7, line: 295, size: 448, elements: !115)
!115 = !{!116, !117, !118, !119, !120, !121, !122, !123, !279}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !114, file: !7, line: 296, baseType: !5, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !114, file: !7, line: 296, baseType: !17, size: 8, offset: 64)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !114, file: !7, line: 296, baseType: !17, size: 8, offset: 72)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "isC", scope: !114, file: !7, line: 296, baseType: !17, size: 8, offset: 80)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "nupvalues", scope: !114, file: !7, line: 296, baseType: !17, size: 8, offset: 88)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "gclist", scope: !114, file: !7, line: 296, baseType: !5, size: 64, offset: 128)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "env", scope: !114, file: !7, line: 296, baseType: !60, size: 64, offset: 192)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !114, file: !7, line: 297, baseType: !124, size: 64, offset: 256)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_CFunction", file: !82, line: 52, baseType: !125)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = !DISubroutineType(types: !127)
!127 = !{!84, !128}
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_State", file: !82, line: 50, baseType: !130)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lua_State", file: !9, line: 100, size: 1472, elements: !131)
!131 = !{!132, !133, !134, !135, !136, !138, !139, !216, !230, !231, !232, !233, !234, !235, !236, !237, !239, !240, !241, !242, !243, !244, !269, !270, !271, !272, !273, !276}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !130, file: !9, line: 101, baseType: !5, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !130, file: !9, line: 101, baseType: !17, size: 8, offset: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !130, file: !9, line: 101, baseType: !17, size: 8, offset: 72)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !130, file: !9, line: 102, baseType: !17, size: 8, offset: 80)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !130, file: !9, line: 103, baseType: !137, size: 64, offset: 128)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "StkId", file: !7, line: 193, baseType: !70)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !130, file: !9, line: 104, baseType: !137, size: 64, offset: 192)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "l_G", scope: !130, file: !9, line: 105, baseType: !140, size: 64, offset: 256)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "global_State", file: !9, line: 94, baseType: !142)
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "global_State", file: !9, line: 68, size: 3456, elements: !143)
!143 = !{!144, !152, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !177, !179, !180, !181, !182, !183, !184, !185, !186, !188, !206, !210}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "strt", scope: !142, file: !9, line: 69, baseType: !145, size: 128)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "stringtable", file: !9, line: 42, baseType: !146)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stringtable", file: !9, line: 38, size: 128, elements: !147)
!147 = !{!148, !149, !151}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !146, file: !9, line: 39, baseType: !4, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "nuse", scope: !146, file: !9, line: 40, baseType: !150, size: 32, offset: 64)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "lu_int32", file: !18, line: 18, baseType: !42)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !146, file: !9, line: 41, baseType: !84, size: 32, offset: 96)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "frealloc", scope: !142, file: !9, line: 70, baseType: !153, size: 64, offset: 128)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Alloc", file: !82, line: 66, baseType: !154)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!155 = !DISubroutineType(types: !156)
!156 = !{!31, !31, !31, !44, !44}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "ud", scope: !142, file: !9, line: 71, baseType: !31, size: 64, offset: 192)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "currentwhite", scope: !142, file: !9, line: 72, baseType: !17, size: 8, offset: 256)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "gcstate", scope: !142, file: !9, line: 73, baseType: !17, size: 8, offset: 264)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "sweepstrgc", scope: !142, file: !9, line: 74, baseType: !84, size: 32, offset: 288)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "rootgc", scope: !142, file: !9, line: 75, baseType: !5, size: 64, offset: 320)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "sweepgc", scope: !142, file: !9, line: 76, baseType: !4, size: 64, offset: 384)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "gray", scope: !142, file: !9, line: 77, baseType: !5, size: 64, offset: 448)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "grayagain", scope: !142, file: !9, line: 78, baseType: !5, size: 64, offset: 512)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "weak", scope: !142, file: !9, line: 79, baseType: !5, size: 64, offset: 576)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "tmudata", scope: !142, file: !9, line: 80, baseType: !5, size: 64, offset: 640)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "buff", scope: !142, file: !9, line: 81, baseType: !168, size: 192, offset: 704)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "Mbuffer", file: !169, line: 28, baseType: !170)
!169 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lzio.h", directory: "/root/.unikraft/apps/redis/build")
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Mbuffer", file: !169, line: 24, size: 192, elements: !171)
!171 = !{!172, !175, !176}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !170, file: !169, line: 25, baseType: !173, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !170, file: !169, line: 26, baseType: !44, size: 64, offset: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "buffsize", scope: !170, file: !169, line: 27, baseType: !44, size: 64, offset: 128)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "GCthreshold", scope: !142, file: !9, line: 82, baseType: !178, size: 64, offset: 896)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "lu_mem", file: !18, line: 20, baseType: !44)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "totalbytes", scope: !142, file: !9, line: 83, baseType: !178, size: 64, offset: 960)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "estimate", scope: !142, file: !9, line: 84, baseType: !178, size: 64, offset: 1024)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "gcdept", scope: !142, file: !9, line: 85, baseType: !178, size: 64, offset: 1088)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "gcpause", scope: !142, file: !9, line: 86, baseType: !84, size: 32, offset: 1152)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "gcstepmul", scope: !142, file: !9, line: 87, baseType: !84, size: 32, offset: 1184)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "panic", scope: !142, file: !9, line: 88, baseType: !124, size: 64, offset: 1216)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "l_registry", scope: !142, file: !9, line: 89, baseType: !71, size: 128, offset: 1280)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "mainthread", scope: !142, file: !9, line: 90, baseType: !187, size: 64, offset: 1408)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "uvhead", scope: !142, file: !9, line: 91, baseType: !189, size: 320, offset: 1472)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "UpVal", file: !7, line: 284, baseType: !190)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "UpVal", file: !7, line: 274, size: 320, elements: !191)
!191 = !{!192, !193, !194, !195, !196}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !190, file: !7, line: 275, baseType: !5, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !190, file: !7, line: 275, baseType: !17, size: 8, offset: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !190, file: !7, line: 275, baseType: !17, size: 8, offset: 72)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !190, file: !7, line: 276, baseType: !70, size: 64, offset: 128)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !190, file: !7, line: 283, baseType: !197, size: 128, offset: 192)
!197 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !190, file: !7, line: 277, size: 128, elements: !198)
!198 = !{!199, !200}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !197, file: !7, line: 278, baseType: !71, size: 128)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !197, file: !7, line: 282, baseType: !201, size: 128)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !197, file: !7, line: 279, size: 128, elements: !202)
!202 = !{!203, !205}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !201, file: !7, line: 280, baseType: !204, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !201, file: !7, line: 281, baseType: !204, size: 64, offset: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "mt", scope: !142, file: !9, line: 92, baseType: !207, size: 576, offset: 1792)
!207 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 576, elements: !208)
!208 = !{!209}
!209 = !DISubrange(count: 9)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "tmname", scope: !142, file: !9, line: 93, baseType: !211, size: 1088, offset: 2368)
!211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !212, size: 1088, elements: !214)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "TString", file: !7, line: 207, baseType: !22)
!214 = !{!215}
!215 = !DISubrange(count: 17)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "ci", scope: !130, file: !9, line: 106, baseType: !217, size: 64, offset: 320)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "CallInfo", file: !9, line: 55, baseType: !219)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "CallInfo", file: !9, line: 48, size: 320, elements: !220)
!220 = !{!221, !222, !223, !224, !228, !229}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !219, file: !9, line: 49, baseType: !137, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !219, file: !9, line: 50, baseType: !137, size: 64, offset: 64)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !219, file: !9, line: 51, baseType: !137, size: 64, offset: 128)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "savedpc", scope: !219, file: !9, line: 52, baseType: !225, size: 64, offset: 192)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !227)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "Instruction", file: !18, line: 88, baseType: !150)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "nresults", scope: !219, file: !9, line: 53, baseType: !84, size: 32, offset: 256)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "tailcalls", scope: !219, file: !9, line: 54, baseType: !84, size: 32, offset: 288)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "savedpc", scope: !130, file: !9, line: 107, baseType: !225, size: 64, offset: 384)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "stack_last", scope: !130, file: !9, line: 108, baseType: !137, size: 64, offset: 448)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !130, file: !9, line: 109, baseType: !137, size: 64, offset: 512)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "end_ci", scope: !130, file: !9, line: 110, baseType: !217, size: 64, offset: 576)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "base_ci", scope: !130, file: !9, line: 111, baseType: !217, size: 64, offset: 640)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "stacksize", scope: !130, file: !9, line: 112, baseType: !84, size: 32, offset: 704)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "size_ci", scope: !130, file: !9, line: 113, baseType: !84, size: 32, offset: 736)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "nCcalls", scope: !130, file: !9, line: 114, baseType: !238, size: 16, offset: 768)
!238 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "baseCcalls", scope: !130, file: !9, line: 115, baseType: !238, size: 16, offset: 784)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "hookmask", scope: !130, file: !9, line: 116, baseType: !17, size: 8, offset: 800)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "allowhook", scope: !130, file: !9, line: 117, baseType: !17, size: 8, offset: 808)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "basehookcount", scope: !130, file: !9, line: 118, baseType: !84, size: 32, offset: 832)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "hookcount", scope: !130, file: !9, line: 119, baseType: !84, size: 32, offset: 864)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "hook", scope: !130, file: !9, line: 120, baseType: !245, size: 64, offset: 896)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Hook", file: !82, line: 330, baseType: !246)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = !DISubroutineType(types: !248)
!248 = !{null, !128, !249}
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Debug", file: !82, line: 326, baseType: !251)
!251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lua_Debug", file: !82, line: 346, size: 960, elements: !252)
!252 = !{!253, !254, !257, !258, !259, !260, !261, !262, !263, !264, !268}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !251, file: !82, line: 347, baseType: !84, size: 32)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !251, file: !82, line: 348, baseType: !255, size: 64, offset: 64)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !174)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "namewhat", scope: !251, file: !82, line: 349, baseType: !255, size: 64, offset: 128)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "what", scope: !251, file: !82, line: 350, baseType: !255, size: 64, offset: 192)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !251, file: !82, line: 351, baseType: !255, size: 64, offset: 256)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "currentline", scope: !251, file: !82, line: 352, baseType: !84, size: 32, offset: 320)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "nups", scope: !251, file: !82, line: 353, baseType: !84, size: 32, offset: 352)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "linedefined", scope: !251, file: !82, line: 354, baseType: !84, size: 32, offset: 384)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "lastlinedefined", scope: !251, file: !82, line: 355, baseType: !84, size: 32, offset: 416)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "short_src", scope: !251, file: !82, line: 356, baseType: !265, size: 480, offset: 448)
!265 = !DICompositeType(tag: DW_TAG_array_type, baseType: !174, size: 480, elements: !266)
!266 = !{!267}
!267 = !DISubrange(count: 60)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "i_ci", scope: !251, file: !82, line: 358, baseType: !84, size: 32, offset: 928)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "l_gt", scope: !130, file: !9, line: 121, baseType: !71, size: 128, offset: 960)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "env", scope: !130, file: !9, line: 122, baseType: !71, size: 128, offset: 1088)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "openupval", scope: !130, file: !9, line: 123, baseType: !5, size: 64, offset: 1216)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "gclist", scope: !130, file: !9, line: 124, baseType: !5, size: 64, offset: 1280)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "errorJmp", scope: !130, file: !9, line: 125, baseType: !274, size: 64, offset: 1344)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = !DICompositeType(tag: DW_TAG_structure_type, name: "lua_longjmp", file: !9, line: 18, flags: DIFlagFwdDecl)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "errfunc", scope: !130, file: !9, line: 126, baseType: !277, size: 64, offset: 1408)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !278, line: 49, baseType: !33)
!278 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!279 = !DIDerivedType(tag: DW_TAG_member, name: "upvalue", scope: !114, file: !7, line: 298, baseType: !280, size: 128, offset: 320)
!280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, size: 128, elements: !281)
!281 = !{!282}
!282 = !DISubrange(count: 1)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !110, file: !7, line: 311, baseType: !284, size: 384)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "LClosure", file: !7, line: 306, baseType: !285)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "LClosure", file: !7, line: 302, size: 384, elements: !286)
!286 = !{!287, !288, !289, !290, !291, !292, !293, !294, !331}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !285, file: !7, line: 303, baseType: !5, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !285, file: !7, line: 303, baseType: !17, size: 8, offset: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !285, file: !7, line: 303, baseType: !17, size: 8, offset: 72)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "isC", scope: !285, file: !7, line: 303, baseType: !17, size: 8, offset: 80)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "nupvalues", scope: !285, file: !7, line: 303, baseType: !17, size: 8, offset: 88)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "gclist", scope: !285, file: !7, line: 303, baseType: !5, size: 64, offset: 128)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "env", scope: !285, file: !7, line: 303, baseType: !60, size: 64, offset: 192)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !285, file: !7, line: 304, baseType: !295, size: 64, offset: 256)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Proto", file: !7, line: 231, size: 960, elements: !297)
!297 = !{!298, !299, !300, !301, !302, !304, !306, !308, !315, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !296, file: !7, line: 232, baseType: !5, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !296, file: !7, line: 232, baseType: !17, size: 8, offset: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !296, file: !7, line: 232, baseType: !17, size: 8, offset: 72)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !296, file: !7, line: 233, baseType: !70, size: 64, offset: 128)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !296, file: !7, line: 234, baseType: !303, size: 64, offset: 192)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !296, file: !7, line: 235, baseType: !305, size: 64, offset: 256)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "lineinfo", scope: !296, file: !7, line: 236, baseType: !307, size: 64, offset: 320)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "locvars", scope: !296, file: !7, line: 237, baseType: !309, size: 64, offset: 384)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "LocVar", file: !7, line: 262, size: 128, elements: !311)
!311 = !{!312, !313, !314}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "varname", scope: !310, file: !7, line: 263, baseType: !212, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "startpc", scope: !310, file: !7, line: 264, baseType: !84, size: 32, offset: 64)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "endpc", scope: !310, file: !7, line: 265, baseType: !84, size: 32, offset: 96)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "upvalues", scope: !296, file: !7, line: 238, baseType: !316, size: 64, offset: 448)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !296, file: !7, line: 239, baseType: !212, size: 64, offset: 512)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "sizeupvalues", scope: !296, file: !7, line: 240, baseType: !84, size: 32, offset: 576)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "sizek", scope: !296, file: !7, line: 241, baseType: !84, size: 32, offset: 608)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "sizecode", scope: !296, file: !7, line: 242, baseType: !84, size: 32, offset: 640)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "sizelineinfo", scope: !296, file: !7, line: 243, baseType: !84, size: 32, offset: 672)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "sizep", scope: !296, file: !7, line: 244, baseType: !84, size: 32, offset: 704)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "sizelocvars", scope: !296, file: !7, line: 245, baseType: !84, size: 32, offset: 736)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "linedefined", scope: !296, file: !7, line: 246, baseType: !84, size: 32, offset: 768)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "lastlinedefined", scope: !296, file: !7, line: 247, baseType: !84, size: 32, offset: 800)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "gclist", scope: !296, file: !7, line: 248, baseType: !5, size: 64, offset: 832)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "nups", scope: !296, file: !7, line: 249, baseType: !17, size: 8, offset: 896)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "numparams", scope: !296, file: !7, line: 250, baseType: !17, size: 8, offset: 904)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "is_vararg", scope: !296, file: !7, line: 251, baseType: !17, size: 8, offset: 912)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "maxstacksize", scope: !296, file: !7, line: 252, baseType: !17, size: 8, offset: 920)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "upvals", scope: !285, file: !7, line: 305, baseType: !332, size: 64, offset: 320)
!332 = !DICompositeType(tag: DW_TAG_array_type, baseType: !333, size: 64, elements: !281)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "h", scope: !8, file: !9, line: 141, baseType: !61, size: 512)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !8, file: !9, line: 142, baseType: !296, size: 960)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "uv", scope: !8, file: !9, line: 143, baseType: !190, size: 320)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "th", scope: !8, file: !9, line: 144, baseType: !130, size: 1472)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "Udata", file: !7, line: 223, baseType: !50)
!340 = !{i32 2, !"Dwarf Version", i32 4}
!341 = !{i32 2, !"Debug Info Version", i32 3}
!342 = !{i32 1, !"wchar_size", i32 4}
!343 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!344 = distinct !DISubprogram(name: "luaS_resize", scope: !1, file: !1, line: 22, type: !345, isLocal: false, isDefinition: true, scopeLine: 22, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !347)
!345 = !DISubroutineType(types: !346)
!346 = !{null, !128, !84}
!347 = !{!348, !349, !350, !351, !353, !354, !358, !360, !361}
!348 = !DILocalVariable(name: "L", arg: 1, scope: !344, file: !1, line: 22, type: !128)
!349 = !DILocalVariable(name: "newsize", arg: 2, scope: !344, file: !1, line: 22, type: !84)
!350 = !DILocalVariable(name: "newhash", scope: !344, file: !1, line: 23, type: !4)
!351 = !DILocalVariable(name: "tb", scope: !344, file: !1, line: 24, type: !352)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!353 = !DILocalVariable(name: "i", scope: !344, file: !1, line: 25, type: !84)
!354 = !DILocalVariable(name: "p", scope: !355, file: !1, line: 33, type: !5)
!355 = distinct !DILexicalBlock(scope: !356, file: !1, line: 32, column: 30)
!356 = distinct !DILexicalBlock(scope: !357, file: !1, line: 32, column: 3)
!357 = distinct !DILexicalBlock(scope: !344, file: !1, line: 32, column: 3)
!358 = !DILocalVariable(name: "next", scope: !359, file: !1, line: 35, type: !5)
!359 = distinct !DILexicalBlock(scope: !355, file: !1, line: 34, column: 15)
!360 = !DILocalVariable(name: "h", scope: !359, file: !1, line: 36, type: !42)
!361 = !DILocalVariable(name: "h1", scope: !359, file: !1, line: 37, type: !84)
!362 = !DILocation(line: 22, column: 30, scope: !344)
!363 = !DILocation(line: 22, column: 37, scope: !344)
!364 = !DILocation(line: 26, column: 7, scope: !365)
!365 = distinct !DILexicalBlock(scope: !344, file: !1, line: 26, column: 7)
!366 = !{!367, !368, i64 32}
!367 = !{!"lua_State", !368, i64 0, !369, i64 8, !369, i64 9, !369, i64 10, !368, i64 16, !368, i64 24, !368, i64 32, !368, i64 40, !368, i64 48, !368, i64 56, !368, i64 64, !368, i64 72, !368, i64 80, !371, i64 88, !371, i64 92, !372, i64 96, !372, i64 98, !369, i64 100, !369, i64 101, !371, i64 104, !371, i64 108, !368, i64 112, !373, i64 120, !373, i64 136, !368, i64 152, !368, i64 160, !368, i64 168, !374, i64 176}
!368 = !{!"any pointer", !369, i64 0}
!369 = !{!"omnipotent char", !370, i64 0}
!370 = !{!"Simple C/C++ TBAA"}
!371 = !{!"int", !369, i64 0}
!372 = !{!"short", !369, i64 0}
!373 = !{!"lua_TValue", !369, i64 0, !371, i64 8}
!374 = !{!"long", !369, i64 0}
!375 = !DILocation(line: 26, column: 13, scope: !365)
!376 = !{!377, !369, i64 33}
!377 = !{!"global_State", !378, i64 0, !368, i64 16, !368, i64 24, !369, i64 32, !369, i64 33, !371, i64 36, !368, i64 40, !368, i64 48, !368, i64 56, !368, i64 64, !368, i64 72, !368, i64 80, !379, i64 88, !374, i64 112, !374, i64 120, !374, i64 128, !374, i64 136, !371, i64 144, !371, i64 148, !368, i64 152, !373, i64 160, !368, i64 176, !380, i64 184, !369, i64 224, !369, i64 296}
!378 = !{!"stringtable", !368, i64 0, !371, i64 8, !371, i64 12}
!379 = !{!"Mbuffer", !368, i64 0, !374, i64 8, !374, i64 16}
!380 = !{!"UpVal", !368, i64 0, !369, i64 8, !369, i64 9, !368, i64 16, !369, i64 24}
!381 = !DILocation(line: 26, column: 21, scope: !365)
!382 = !DILocation(line: 26, column: 7, scope: !344)
!383 = !DILocation(line: 28, column: 13, scope: !344)
!384 = !DILocation(line: 23, column: 14, scope: !344)
!385 = !DILocation(line: 29, column: 9, scope: !344)
!386 = !DILocation(line: 24, column: 16, scope: !344)
!387 = !DILocation(line: 25, column: 7, scope: !344)
!388 = !DILocation(line: 30, column: 3, scope: !389)
!389 = distinct !DILexicalBlock(scope: !344, file: !1, line: 30, column: 3)
!390 = !DILocation(line: 30, column: 14, scope: !391)
!391 = distinct !DILexicalBlock(scope: !389, file: !1, line: 30, column: 3)
!392 = !DILocation(line: 30, column: 29, scope: !391)
!393 = !DILocation(line: 30, column: 25, scope: !391)
!394 = !DILocation(line: 30, column: 40, scope: !391)
!395 = !{!368, !368, i64 0}
!396 = distinct !{!396, !388, !397, !398}
!397 = !DILocation(line: 30, column: 42, scope: !389)
!398 = !{!"llvm.loop.isvectorized", i32 1}
!399 = distinct !{!399, !400}
!400 = !{!"llvm.loop.unroll.disable"}
!401 = !DILocation(line: 32, column: 19, scope: !356)
!402 = !{!378, !371, i64 12}
!403 = !DILocation(line: 32, column: 14, scope: !356)
!404 = !DILocation(line: 32, column: 3, scope: !357)
!405 = !DILocation(line: 44, column: 3, scope: !344)
!406 = distinct !{!406, !388, !397, !407, !398}
!407 = !{!"llvm.loop.unroll.runtime.disable"}
!408 = !DILocation(line: 33, column: 23, scope: !355)
!409 = !{!378, !368, i64 0}
!410 = !DILocation(line: 33, column: 19, scope: !355)
!411 = !DILocation(line: 33, column: 15, scope: !355)
!412 = !DILocation(line: 34, column: 5, scope: !355)
!413 = !DILocation(line: 0, scope: !359)
!414 = !DILocation(line: 35, column: 31, scope: !359)
!415 = !{!369, !369, i64 0}
!416 = !DILocation(line: 35, column: 17, scope: !359)
!417 = !DILocation(line: 36, column: 35, scope: !359)
!418 = !DILocation(line: 36, column: 20, scope: !359)
!419 = !DILocation(line: 37, column: 16, scope: !359)
!420 = !DILocation(line: 37, column: 11, scope: !359)
!421 = !DILocation(line: 39, column: 21, scope: !359)
!422 = !DILocation(line: 39, column: 19, scope: !359)
!423 = !DILocation(line: 40, column: 19, scope: !359)
!424 = distinct !{!424, !412, !425}
!425 = !DILocation(line: 42, column: 5, scope: !355)
!426 = !DILocation(line: 32, column: 26, scope: !356)
!427 = distinct !{!427, !404, !428}
!428 = !DILocation(line: 43, column: 3, scope: !357)
!429 = !DILocation(line: 45, column: 12, scope: !344)
!430 = !DILocation(line: 46, column: 12, scope: !344)
!431 = !DILocation(line: 47, column: 1, scope: !344)
!432 = distinct !DISubprogram(name: "luaS_newlstr", scope: !1, file: !1, line: 75, type: !433, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !435)
!433 = !DISubroutineType(types: !434)
!434 = !{!212, !128, !255, !44}
!435 = !{!436, !437, !438, !439, !440, !441, !442, !443}
!436 = !DILocalVariable(name: "L", arg: 1, scope: !432, file: !1, line: 75, type: !128)
!437 = !DILocalVariable(name: "str", arg: 2, scope: !432, file: !1, line: 75, type: !255)
!438 = !DILocalVariable(name: "l", arg: 3, scope: !432, file: !1, line: 75, type: !44)
!439 = !DILocalVariable(name: "o", scope: !432, file: !1, line: 76, type: !5)
!440 = !DILocalVariable(name: "h", scope: !432, file: !1, line: 77, type: !42)
!441 = !DILocalVariable(name: "step", scope: !432, file: !1, line: 78, type: !44)
!442 = !DILocalVariable(name: "l1", scope: !432, file: !1, line: 79, type: !44)
!443 = !DILocalVariable(name: "ts", scope: !444, file: !1, line: 85, type: !212)
!444 = distinct !DILexicalBlock(scope: !445, file: !1, line: 84, column: 25)
!445 = distinct !DILexicalBlock(scope: !446, file: !1, line: 82, column: 3)
!446 = distinct !DILexicalBlock(scope: !432, file: !1, line: 82, column: 3)
!447 = !DILocation(line: 75, column: 35, scope: !432)
!448 = !DILocation(line: 75, column: 50, scope: !432)
!449 = !DILocation(line: 75, column: 62, scope: !432)
!450 = !DILocation(line: 77, column: 20, scope: !432)
!451 = !DILocation(line: 77, column: 16, scope: !432)
!452 = !DILocation(line: 78, column: 19, scope: !432)
!453 = !DILocation(line: 78, column: 10, scope: !432)
!454 = !DILocation(line: 79, column: 10, scope: !432)
!455 = !DILocation(line: 80, column: 16, scope: !456)
!456 = distinct !DILexicalBlock(scope: !457, file: !1, line: 80, column: 3)
!457 = distinct !DILexicalBlock(scope: !432, file: !1, line: 80, column: 3)
!458 = !DILocation(line: 80, column: 3, scope: !457)
!459 = !DILocation(line: 81, column: 16, scope: !456)
!460 = !DILocation(line: 81, column: 23, scope: !456)
!461 = !DILocation(line: 81, column: 20, scope: !456)
!462 = !DILocation(line: 81, column: 28, scope: !456)
!463 = !DILocation(line: 81, column: 27, scope: !456)
!464 = !DILocation(line: 81, column: 11, scope: !456)
!465 = !DILocation(line: 80, column: 26, scope: !456)
!466 = distinct !{!466, !458, !467}
!467 = !DILocation(line: 81, column: 58, scope: !457)
!468 = !DILocation(line: 0, scope: !456)
!469 = !DILocation(line: 82, column: 12, scope: !446)
!470 = !DILocation(line: 82, column: 23, scope: !446)
!471 = !{!377, !368, i64 0}
!472 = !DILocation(line: 82, column: 28, scope: !446)
!473 = !{!377, !371, i64 12}
!474 = !DILocation(line: 76, column: 13, scope: !432)
!475 = !DILocation(line: 0, scope: !445)
!476 = !DILocation(line: 83, column: 10, scope: !445)
!477 = !DILocation(line: 82, column: 3, scope: !446)
!478 = !DILocation(line: 86, column: 17, scope: !479)
!479 = distinct !DILexicalBlock(scope: !444, file: !1, line: 86, column: 9)
!480 = !DILocation(line: 86, column: 21, scope: !479)
!481 = !DILocation(line: 86, column: 26, scope: !479)
!482 = !DILocation(line: 86, column: 42, scope: !479)
!483 = !DILocation(line: 86, column: 30, scope: !479)
!484 = !DILocation(line: 86, column: 57, scope: !479)
!485 = !DILocation(line: 86, column: 9, scope: !444)
!486 = !DILocation(line: 85, column: 19, scope: !444)
!487 = !DILocation(line: 88, column: 11, scope: !488)
!488 = distinct !DILexicalBlock(scope: !489, file: !1, line: 88, column: 11)
!489 = distinct !DILexicalBlock(scope: !479, file: !1, line: 86, column: 64)
!490 = !{!377, !369, i64 32}
!491 = !DILocation(line: 88, column: 11, scope: !489)
!492 = !DILocation(line: 88, column: 28, scope: !488)
!493 = !DILocation(line: 84, column: 19, scope: !445)
!494 = distinct !{!494, !477, !495}
!495 = !DILocation(line: 91, column: 3, scope: !446)
!496 = !DILocalVariable(name: "L", arg: 1, scope: !497, file: !1, line: 50, type: !128)
!497 = distinct !DISubprogram(name: "newlstr", scope: !1, file: !1, line: 50, type: !498, isLocal: true, isDefinition: true, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !500)
!498 = !DISubroutineType(types: !499)
!499 = !{!212, !128, !255, !44, !42}
!500 = !{!496, !501, !502, !503, !504, !505}
!501 = !DILocalVariable(name: "str", arg: 2, scope: !497, file: !1, line: 50, type: !255)
!502 = !DILocalVariable(name: "l", arg: 3, scope: !497, file: !1, line: 50, type: !44)
!503 = !DILocalVariable(name: "h", arg: 4, scope: !497, file: !1, line: 51, type: !42)
!504 = !DILocalVariable(name: "ts", scope: !497, file: !1, line: 52, type: !212)
!505 = !DILocalVariable(name: "tb", scope: !497, file: !1, line: 53, type: !352)
!506 = !DILocation(line: 50, column: 37, scope: !497, inlinedAt: !507)
!507 = distinct !DILocation(line: 92, column: 10, scope: !432)
!508 = !DILocation(line: 50, column: 52, scope: !497, inlinedAt: !507)
!509 = !DILocation(line: 50, column: 64, scope: !497, inlinedAt: !507)
!510 = !DILocation(line: 51, column: 53, scope: !497, inlinedAt: !507)
!511 = !DILocation(line: 54, column: 8, scope: !512, inlinedAt: !507)
!512 = distinct !DILexicalBlock(scope: !497, file: !1, line: 54, column: 7)
!513 = !DILocation(line: 54, column: 11, scope: !512, inlinedAt: !507)
!514 = !DILocation(line: 54, column: 7, scope: !497, inlinedAt: !507)
!515 = !DILocation(line: 55, column: 5, scope: !512, inlinedAt: !507)
!516 = !DILocation(line: 56, column: 8, scope: !497, inlinedAt: !507)
!517 = !DILocation(line: 52, column: 12, scope: !497, inlinedAt: !507)
!518 = !DILocation(line: 57, column: 11, scope: !497, inlinedAt: !507)
!519 = !DILocation(line: 57, column: 15, scope: !497, inlinedAt: !507)
!520 = !DILocation(line: 58, column: 11, scope: !497, inlinedAt: !507)
!521 = !DILocation(line: 58, column: 16, scope: !497, inlinedAt: !507)
!522 = !DILocation(line: 59, column: 20, scope: !497, inlinedAt: !507)
!523 = !DILocation(line: 59, column: 11, scope: !497, inlinedAt: !507)
!524 = !DILocation(line: 59, column: 18, scope: !497, inlinedAt: !507)
!525 = !DILocation(line: 60, column: 11, scope: !497, inlinedAt: !507)
!526 = !DILocation(line: 60, column: 14, scope: !497, inlinedAt: !507)
!527 = !DILocation(line: 61, column: 11, scope: !497, inlinedAt: !507)
!528 = !DILocation(line: 61, column: 20, scope: !497, inlinedAt: !507)
!529 = !DILocation(line: 62, column: 12, scope: !497, inlinedAt: !507)
!530 = !DILocation(line: 62, column: 3, scope: !497, inlinedAt: !507)
!531 = !DILocation(line: 63, column: 3, scope: !497, inlinedAt: !507)
!532 = !DILocation(line: 63, column: 23, scope: !497, inlinedAt: !507)
!533 = !DILocation(line: 64, column: 9, scope: !497, inlinedAt: !507)
!534 = !DILocation(line: 53, column: 16, scope: !497, inlinedAt: !507)
!535 = !DILocation(line: 65, column: 7, scope: !497, inlinedAt: !507)
!536 = !DILocation(line: 66, column: 22, scope: !497, inlinedAt: !507)
!537 = !DILocation(line: 66, column: 18, scope: !497, inlinedAt: !507)
!538 = !DILocation(line: 66, column: 16, scope: !497, inlinedAt: !507)
!539 = !DILocation(line: 67, column: 7, scope: !497, inlinedAt: !507)
!540 = !DILocation(line: 67, column: 3, scope: !497, inlinedAt: !507)
!541 = !DILocation(line: 67, column: 15, scope: !497, inlinedAt: !507)
!542 = !DILocation(line: 68, column: 7, scope: !497, inlinedAt: !507)
!543 = !DILocation(line: 68, column: 11, scope: !497, inlinedAt: !507)
!544 = !{!378, !371, i64 8}
!545 = !DILocation(line: 69, column: 18, scope: !546, inlinedAt: !507)
!546 = distinct !DILexicalBlock(scope: !497, file: !1, line: 69, column: 7)
!547 = !DILocation(line: 69, column: 16, scope: !546, inlinedAt: !507)
!548 = !DILocation(line: 69, column: 55, scope: !546, inlinedAt: !507)
!549 = !DILocation(line: 69, column: 43, scope: !546, inlinedAt: !507)
!550 = !DILocation(line: 70, column: 28, scope: !546, inlinedAt: !507)
!551 = !DILocation(line: 70, column: 5, scope: !546, inlinedAt: !507)
!552 = !DILocation(line: 0, scope: !432)
!553 = !DILocation(line: 93, column: 1, scope: !432)
!554 = distinct !DISubprogram(name: "luaS_newudata", scope: !1, file: !1, line: 96, type: !555, isLocal: false, isDefinition: true, scopeLine: 96, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !559)
!555 = !DISubroutineType(types: !556)
!556 = !{!338, !128, !44, !557}
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "Table", file: !7, line: 348, baseType: !61)
!559 = !{!560, !561, !562, !563}
!560 = !DILocalVariable(name: "L", arg: 1, scope: !554, file: !1, line: 96, type: !128)
!561 = !DILocalVariable(name: "s", arg: 2, scope: !554, file: !1, line: 96, type: !44)
!562 = !DILocalVariable(name: "e", arg: 3, scope: !554, file: !1, line: 96, type: !557)
!563 = !DILocalVariable(name: "u", scope: !554, file: !1, line: 97, type: !338)
!564 = !DILocation(line: 96, column: 34, scope: !554)
!565 = !DILocation(line: 96, column: 44, scope: !554)
!566 = !DILocation(line: 96, column: 54, scope: !554)
!567 = !DILocation(line: 98, column: 9, scope: !568)
!568 = distinct !DILexicalBlock(scope: !554, file: !1, line: 98, column: 7)
!569 = !DILocation(line: 98, column: 7, scope: !554)
!570 = !DILocation(line: 99, column: 5, scope: !568)
!571 = !DILocation(line: 100, column: 7, scope: !554)
!572 = !DILocation(line: 97, column: 10, scope: !554)
!573 = !DILocation(line: 101, column: 18, scope: !554)
!574 = !DILocation(line: 101, column: 9, scope: !554)
!575 = !DILocation(line: 101, column: 16, scope: !554)
!576 = !DILocation(line: 102, column: 9, scope: !554)
!577 = !DILocation(line: 102, column: 12, scope: !554)
!578 = !DILocation(line: 103, column: 9, scope: !554)
!579 = !DILocation(line: 103, column: 13, scope: !554)
!580 = !DILocation(line: 104, column: 9, scope: !554)
!581 = !DILocation(line: 104, column: 19, scope: !554)
!582 = !DILocation(line: 105, column: 9, scope: !554)
!583 = !DILocation(line: 105, column: 13, scope: !554)
!584 = !DILocation(line: 107, column: 16, scope: !554)
!585 = !DILocation(line: 107, column: 22, scope: !554)
!586 = !{!377, !368, i64 176}
!587 = !DILocation(line: 107, column: 34, scope: !554)
!588 = !{!367, !368, i64 0}
!589 = !DILocation(line: 107, column: 14, scope: !554)
!590 = !DILocation(line: 108, column: 3, scope: !554)
!591 = !DILocation(line: 108, column: 9, scope: !554)
!592 = !DILocation(line: 108, column: 26, scope: !554)
!593 = !DILocation(line: 109, column: 3, scope: !554)
