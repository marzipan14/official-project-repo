; ModuleID = '/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/ltable.c'
source_filename = "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/ltable.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Node = type { %struct.lua_TValue, %union.TKey }
%struct.lua_TValue = type { %union.Value, i32 }
%union.Value = type { %union.GCObject* }
%union.GCObject = type { %struct.lua_State }
%struct.lua_State = type { %union.GCObject*, i8, i8, i8, %struct.lua_TValue*, %struct.lua_TValue*, %struct.global_State*, %struct.CallInfo*, i32*, %struct.lua_TValue*, %struct.lua_TValue*, %struct.CallInfo*, %struct.CallInfo*, i32, i32, i16, i16, i8, i8, i32, i32, void (%struct.lua_State*, %struct.lua_Debug*)*, %struct.lua_TValue, %struct.lua_TValue, %union.GCObject*, %union.GCObject*, %struct.lua_longjmp*, i64 }
%struct.global_State = type { %struct.stringtable, i8* (i8*, i8*, i64, i64)*, i8*, i8, i8, i32, %union.GCObject*, %union.GCObject**, %union.GCObject*, %union.GCObject*, %union.GCObject*, %union.GCObject*, %struct.Mbuffer, i64, i64, i64, i64, i32, i32, i32 (%struct.lua_State*)*, %struct.lua_TValue, %struct.lua_State*, %struct.UpVal, [9 x %struct.Table*], [17 x %union.TString*] }
%struct.stringtable = type { %union.GCObject**, i32, i32 }
%struct.Mbuffer = type { i8*, i64, i64 }
%struct.UpVal = type { %union.GCObject*, i8, i8, %struct.lua_TValue*, %union.anon }
%union.anon = type { %struct.lua_TValue }
%struct.Table = type { %union.GCObject*, i8, i8, i8, i8, %struct.Table*, %struct.lua_TValue*, %struct.Node*, %struct.Node*, %union.GCObject*, i32 }
%union.TString = type { %struct.anon.1 }
%struct.anon.1 = type { %union.GCObject*, i8, i8, i8, i32, i64 }
%struct.CallInfo = type { %struct.lua_TValue*, %struct.lua_TValue*, %struct.lua_TValue*, i32*, i32, i32 }
%struct.lua_Debug = type { i32, i8*, i8*, i8*, i8*, i32, i32, i32, i32, [60 x i8], i32 }
%struct.lua_longjmp = type opaque
%union.TKey = type { %struct.anon.0 }
%struct.anon.0 = type { %union.Value, i32, %struct.Node* }
%struct.GCheader = type { %union.GCObject*, i8, i8 }

@dummynode_ = internal constant %struct.Node zeroinitializer, align 8, !dbg !0
@luaO_nilobject_ = external hidden constant %struct.lua_TValue, align 8
@.str = private unnamed_addr constant [19 x i8] c"table index is nil\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"table index is NaN\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"invalid key to 'next'\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"table overflow\00", align 1

; Function Attrs: noredzone nounwind
define hidden i32 @luaH_next(%struct.lua_State*, %struct.Table* nocapture readonly, %struct.lua_TValue*) local_unnamed_addr #0 !dbg !348 {
  %4 = alloca double, align 8
  %5 = alloca [2 x i32], align 4
  %6 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2, i64 0, i32 1, !dbg !418
  %7 = load i32, i32* %6, align 8, !dbg !418, !tbaa !420
  switch i32 %7, label %92 [
    i32 0, label %144
    i32 3, label %8
    i32 2, label %77
    i32 4, label %49
    i32 1, label %64
  ], !dbg !425

; <label>:8:                                      ; preds = %3
  %9 = bitcast %struct.lua_TValue* %2 to double*, !dbg !426
  %10 = load double, double* %9, align 8, !dbg !426, !tbaa !437
  %11 = fptosi double %10 to i32, !dbg !439
  %12 = sitofp i32 %11 to double, !dbg !441
  %13 = fcmp oeq double %10, %12, !dbg !441
  %14 = icmp sgt i32 %11, 0, !dbg !443
  %15 = and i1 %14, %13
  br i1 %15, label %16, label %22

; <label>:16:                                     ; preds = %8
  %17 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 10, !dbg !445
  %18 = load i32, i32* %17, align 8, !dbg !445, !tbaa !446
  %19 = icmp slt i32 %18, %11, !dbg !449
  br i1 %19, label %22, label %20, !dbg !450

; <label>:20:                                     ; preds = %16
  %21 = add nsw i32 %11, -1, !dbg !451
  br label %144, !dbg !452

; <label>:22:                                     ; preds = %16, %8
  %23 = bitcast double* %4 to i8*, !dbg !453
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #5, !dbg !453
  store double %10, double* %4, align 8, !tbaa !455
  %24 = bitcast [2 x i32]* %5 to i8*, !dbg !457
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %24) #5, !dbg !457
  %25 = fcmp oeq double %10, 0.000000e+00, !dbg !458
  br i1 %25, label %26, label %29, !dbg !460

; <label>:26:                                     ; preds = %22
  %27 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 7, !dbg !461
  %28 = load %struct.Node*, %struct.Node** %27, align 8, !dbg !461, !tbaa !462
  br label %47, !dbg !463

; <label>:29:                                     ; preds = %22
  %30 = call i8* @memcpy(i8* nonnull %24, i8* nonnull %23, i64 8) #6, !dbg !464
  %31 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %32 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1, !dbg !466
  %33 = load i32, i32* %32, align 4, !dbg !466, !tbaa !469
  %34 = load i32, i32* %31, align 4, !dbg !470, !tbaa !469
  %35 = add i32 %34, %33, !dbg !470
  store i32 %35, i32* %31, align 4, !dbg !470, !tbaa !469
  %36 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 7, !dbg !471
  %37 = load %struct.Node*, %struct.Node** %36, align 8, !dbg !471, !tbaa !462
  %38 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 4, !dbg !471
  %39 = load i8, i8* %38, align 1, !dbg !471, !tbaa !472
  %40 = zext i8 %39 to i32, !dbg !471
  %41 = shl nsw i32 -1, %40, !dbg !471
  %42 = or i32 %41, 1, !dbg !471
  %43 = xor i32 %42, -2, !dbg !471
  %44 = urem i32 %35, %43, !dbg !471
  %45 = zext i32 %44 to i64, !dbg !471
  %46 = getelementptr inbounds %struct.Node, %struct.Node* %37, i64 %45, !dbg !471
  br label %47, !dbg !473

; <label>:47:                                     ; preds = %29, %26
  %48 = phi %struct.Node* [ %28, %26 ], [ %46, %29 ], !dbg !474
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %24) #5, !dbg !475
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #5, !dbg !475
  br label %107, !dbg !476

; <label>:49:                                     ; preds = %3
  %50 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 7, !dbg !477
  %51 = load %struct.Node*, %struct.Node** %50, align 8, !dbg !477, !tbaa !462
  %52 = bitcast %struct.lua_TValue* %2 to %struct.anon.1**, !dbg !477
  %53 = load %struct.anon.1*, %struct.anon.1** %52, align 8, !dbg !477, !tbaa !437
  %54 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %53, i64 0, i32 4, !dbg !477
  %55 = load i32, i32* %54, align 4, !dbg !477, !tbaa !437
  %56 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 4, !dbg !477
  %57 = load i8, i8* %56, align 1, !dbg !477, !tbaa !472
  %58 = zext i8 %57 to i32, !dbg !477
  %59 = shl nsw i32 -1, %58, !dbg !477
  %60 = xor i32 %59, -1, !dbg !477
  %61 = and i32 %55, %60, !dbg !477
  %62 = sext i32 %61 to i64, !dbg !477
  %63 = getelementptr inbounds %struct.Node, %struct.Node* %51, i64 %62, !dbg !477
  br label %107, !dbg !478

; <label>:64:                                     ; preds = %3
  %65 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 7, !dbg !479
  %66 = load %struct.Node*, %struct.Node** %65, align 8, !dbg !479, !tbaa !462
  %67 = bitcast %struct.lua_TValue* %2 to i32*, !dbg !479
  %68 = load i32, i32* %67, align 8, !dbg !479, !tbaa !437
  %69 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 4, !dbg !479
  %70 = load i8, i8* %69, align 1, !dbg !479, !tbaa !472
  %71 = zext i8 %70 to i32, !dbg !479
  %72 = shl nsw i32 -1, %71, !dbg !479
  %73 = xor i32 %72, -1, !dbg !479
  %74 = and i32 %68, %73, !dbg !479
  %75 = sext i32 %74 to i64, !dbg !479
  %76 = getelementptr inbounds %struct.Node, %struct.Node* %66, i64 %75, !dbg !479
  br label %107, !dbg !480

; <label>:77:                                     ; preds = %3
  %78 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 7, !dbg !481
  %79 = load %struct.Node*, %struct.Node** %78, align 8, !dbg !481, !tbaa !462
  %80 = bitcast %struct.lua_TValue* %2 to i64*, !dbg !481
  %81 = load i64, i64* %80, align 8, !dbg !481, !tbaa !437
  %82 = trunc i64 %81 to i32, !dbg !481
  %83 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 4, !dbg !481
  %84 = load i8, i8* %83, align 1, !dbg !481, !tbaa !472
  %85 = zext i8 %84 to i32, !dbg !481
  %86 = shl nsw i32 -1, %85, !dbg !481
  %87 = or i32 %86, 1, !dbg !481
  %88 = xor i32 %87, -2, !dbg !481
  %89 = urem i32 %82, %88, !dbg !481
  %90 = zext i32 %89 to i64, !dbg !481
  %91 = getelementptr inbounds %struct.Node, %struct.Node* %79, i64 %90, !dbg !481
  br label %107, !dbg !482

; <label>:92:                                     ; preds = %3
  %93 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 7, !dbg !483
  %94 = load %struct.Node*, %struct.Node** %93, align 8, !dbg !483, !tbaa !462
  %95 = bitcast %struct.lua_TValue* %2 to i64*, !dbg !483
  %96 = load i64, i64* %95, align 8, !dbg !483, !tbaa !437
  %97 = trunc i64 %96 to i32, !dbg !483
  %98 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 4, !dbg !483
  %99 = load i8, i8* %98, align 1, !dbg !483, !tbaa !472
  %100 = zext i8 %99 to i32, !dbg !483
  %101 = shl nsw i32 -1, %100, !dbg !483
  %102 = or i32 %101, 1, !dbg !483
  %103 = xor i32 %102, -2, !dbg !483
  %104 = urem i32 %97, %103, !dbg !483
  %105 = zext i32 %104 to i64, !dbg !483
  %106 = getelementptr inbounds %struct.Node, %struct.Node* %94, i64 %105, !dbg !483
  br label %107, !dbg !484

; <label>:107:                                    ; preds = %92, %77, %64, %49, %47
  %108 = phi %struct.Node* [ %106, %92 ], [ %91, %77 ], [ %76, %64 ], [ %63, %49 ], [ %48, %47 ], !dbg !485
  %109 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2, i64 0, i32 0, i32 0
  br label %110, !dbg !487

; <label>:110:                                    ; preds = %139, %107
  %111 = phi %struct.Node* [ %108, %107 ], [ %141, %139 ], !dbg !488
  %112 = getelementptr inbounds %struct.Node, %struct.Node* %111, i64 0, i32 1, !dbg !491
  %113 = bitcast %union.TKey* %112 to %struct.lua_TValue*, !dbg !491
  %114 = call i32 @luaO_rawequalObj(%struct.lua_TValue* nonnull %113, %struct.lua_TValue* %2) #6, !dbg !492
  %115 = icmp eq i32 %114, 0, !dbg !492
  br i1 %115, label %116, label %128, !dbg !493

; <label>:116:                                    ; preds = %110
  %117 = getelementptr inbounds %struct.Node, %struct.Node* %111, i64 0, i32 1, i32 0, i32 1, !dbg !494
  %118 = load i32, i32* %117, align 8, !dbg !494, !tbaa !437
  %119 = icmp eq i32 %118, 11, !dbg !495
  br i1 %119, label %120, label %139, !dbg !496

; <label>:120:                                    ; preds = %116
  %121 = load i32, i32* %6, align 8, !dbg !497, !tbaa !420
  %122 = icmp sgt i32 %121, 3, !dbg !497
  br i1 %122, label %123, label %139, !dbg !498

; <label>:123:                                    ; preds = %120
  %124 = getelementptr inbounds %union.TKey, %union.TKey* %112, i64 0, i32 0, i32 0, i32 0, !dbg !499
  %125 = load %union.GCObject*, %union.GCObject** %124, align 8, !dbg !499, !tbaa !437
  %126 = load %union.GCObject*, %union.GCObject** %109, align 8, !dbg !500, !tbaa !437
  %127 = icmp eq %union.GCObject* %125, %126, !dbg !501
  br i1 %127, label %128, label %139, !dbg !502

; <label>:128:                                    ; preds = %123, %110
  %129 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 7, !dbg !503
  %130 = bitcast %struct.Node** %129 to i64*, !dbg !503
  %131 = load i64, i64* %130, align 8, !dbg !503, !tbaa !462
  %132 = ptrtoint %struct.Node* %111 to i64, !dbg !503
  %133 = sub i64 %132, %131, !dbg !503
  %134 = sdiv exact i64 %133, 40, !dbg !503
  %135 = trunc i64 %134 to i32, !dbg !503
  %136 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 10, !dbg !505
  %137 = load i32, i32* %136, align 8, !dbg !505, !tbaa !446
  %138 = add nsw i32 %137, %135, !dbg !506
  br label %144, !dbg !507

; <label>:139:                                    ; preds = %123, %120, %116
  %140 = getelementptr inbounds %struct.Node, %struct.Node* %111, i64 0, i32 1, i32 0, i32 2, !dbg !508
  %141 = load %struct.Node*, %struct.Node** %140, align 8, !dbg !508, !tbaa !437
  %142 = icmp eq %struct.Node* %141, null, !dbg !509
  br i1 %142, label %143, label %110, !dbg !509, !llvm.loop !510

; <label>:143:                                    ; preds = %139
  call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !513
  br label %144, !dbg !514

; <label>:144:                                    ; preds = %3, %20, %128, %143
  %145 = phi i32 [ %21, %20 ], [ -1, %3 ], [ %138, %128 ], [ 0, %143 ], !dbg !515
  %146 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 10
  %147 = load i32, i32* %146, align 8, !tbaa !446
  %148 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 6
  %149 = sext i32 %145 to i64, !dbg !517
  %150 = sext i32 %147 to i64, !dbg !517
  br label %151, !dbg !517

; <label>:151:                                    ; preds = %155, %144
  %152 = phi i64 [ %153, %155 ], [ %149, %144 ]
  %153 = add nsw i64 %152, 1, !dbg !518
  %154 = icmp slt i64 %153, %150, !dbg !519
  br i1 %154, label %155, label %174, !dbg !520

; <label>:155:                                    ; preds = %151
  %156 = load %struct.lua_TValue*, %struct.lua_TValue** %148, align 8, !dbg !521, !tbaa !522
  %157 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %156, i64 %153, i32 1, !dbg !521
  %158 = load i32, i32* %157, align 8, !dbg !521, !tbaa !420
  %159 = icmp eq i32 %158, 0, !dbg !521
  br i1 %159, label %151, label %160, !dbg !523, !llvm.loop !524

; <label>:160:                                    ; preds = %155
  %161 = trunc i64 %152 to i32, !dbg !521
  %162 = add nsw i32 %161, 2, !dbg !526
  %163 = sitofp i32 %162 to double, !dbg !526
  %164 = bitcast %struct.lua_TValue* %2 to double*, !dbg !526
  store double %163, double* %164, align 8, !dbg !526, !tbaa !437
  store i32 3, i32* %6, align 8, !dbg !526, !tbaa !420
  %165 = load %struct.lua_TValue*, %struct.lua_TValue** %148, align 8, !dbg !527, !tbaa !522
  %166 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %165, i64 %153, !dbg !527
  %167 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2, i64 1, !dbg !527
  %168 = bitcast %struct.lua_TValue* %166 to i64*, !dbg !527
  %169 = bitcast %struct.lua_TValue* %167 to i64*, !dbg !527
  %170 = load i64, i64* %168, align 8, !dbg !527
  store i64 %170, i64* %169, align 8, !dbg !527
  %171 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %165, i64 %153, i32 1, !dbg !527
  %172 = load i32, i32* %171, align 8, !dbg !527, !tbaa !420
  %173 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2, i64 1, i32 1, !dbg !527
  store i32 %172, i32* %173, align 8, !dbg !527, !tbaa !420
  br label %211, !dbg !528

; <label>:174:                                    ; preds = %151
  %175 = trunc i64 %153 to i32, !dbg !529
  %176 = sub i32 %175, %147, !dbg !529
  %177 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 4, !dbg !530
  %178 = load i8, i8* %177, align 1, !dbg !530, !tbaa !472
  %179 = zext i8 %178 to i32, !dbg !530
  %180 = shl i32 1, %179, !dbg !530
  %181 = icmp slt i32 %176, %180, !dbg !531
  br i1 %181, label %182, label %211, !dbg !532

; <label>:182:                                    ; preds = %174
  %183 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 7
  %184 = load %struct.Node*, %struct.Node** %183, align 8, !tbaa !462
  %185 = sext i32 %176 to i64, !dbg !532
  %186 = sext i32 %180 to i64
  br label %189, !dbg !532

; <label>:187:                                    ; preds = %189
  %188 = icmp slt i64 %194, %186, !dbg !531
  br i1 %188, label %189, label %211, !dbg !532, !llvm.loop !533

; <label>:189:                                    ; preds = %182, %187
  %190 = phi i64 [ %185, %182 ], [ %194, %187 ]
  %191 = getelementptr inbounds %struct.Node, %struct.Node* %184, i64 %190, i32 0, i32 1, !dbg !535
  %192 = load i32, i32* %191, align 8, !dbg !535, !tbaa !536
  %193 = icmp eq i32 %192, 0, !dbg !535
  %194 = add nsw i64 %190, 1, !dbg !538
  br i1 %193, label %187, label %195, !dbg !539

; <label>:195:                                    ; preds = %189
  %196 = getelementptr inbounds %struct.Node, %struct.Node* %184, i64 %190, i32 1, !dbg !540
  %197 = bitcast %union.TKey* %196 to i64*, !dbg !540
  %198 = bitcast %struct.lua_TValue* %2 to i64*, !dbg !540
  %199 = load i64, i64* %197, align 8, !dbg !540
  store i64 %199, i64* %198, align 8, !dbg !540
  %200 = getelementptr inbounds %struct.Node, %struct.Node* %184, i64 %190, i32 1, i32 0, i32 1, !dbg !540
  %201 = load i32, i32* %200, align 8, !dbg !540, !tbaa !420
  store i32 %201, i32* %6, align 8, !dbg !540, !tbaa !420
  %202 = load %struct.Node*, %struct.Node** %183, align 8, !dbg !541, !tbaa !462
  %203 = getelementptr inbounds %struct.Node, %struct.Node* %202, i64 %190, i32 0, !dbg !541
  %204 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2, i64 1, !dbg !541
  %205 = bitcast %struct.lua_TValue* %203 to i64*, !dbg !541
  %206 = bitcast %struct.lua_TValue* %204 to i64*, !dbg !541
  %207 = load i64, i64* %205, align 8, !dbg !541
  store i64 %207, i64* %206, align 8, !dbg !541
  %208 = getelementptr inbounds %struct.Node, %struct.Node* %202, i64 %190, i32 0, i32 1, !dbg !541
  %209 = load i32, i32* %208, align 8, !dbg !541, !tbaa !420
  %210 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2, i64 1, i32 1, !dbg !541
  store i32 %209, i32* %210, align 8, !dbg !541, !tbaa !420
  br label %211, !dbg !542

; <label>:211:                                    ; preds = %187, %174, %195, %160
  %212 = phi i32 [ 1, %160 ], [ 1, %195 ], [ 0, %174 ], [ 0, %187 ], !dbg !543
  ret i32 %212, !dbg !544
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #2

; Function Attrs: noredzone nounwind
define hidden void @luaH_resizearray(%struct.lua_State*, %struct.Table*, i32) local_unnamed_addr #0 !dbg !545 {
  %4 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 7, !dbg !556
  %5 = load %struct.Node*, %struct.Node** %4, align 8, !dbg !556, !tbaa !462
  %6 = icmp eq %struct.Node* %5, @dummynode_, !dbg !557
  br i1 %6, label %12, label %7, !dbg !558

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 4, !dbg !559
  %9 = load i8, i8* %8, align 1, !dbg !559, !tbaa !472
  %10 = zext i8 %9 to i32, !dbg !559
  %11 = shl i32 1, %10, !dbg !559
  br label %12, !dbg !558

; <label>:12:                                     ; preds = %3, %7
  %13 = phi i32 [ %11, %7 ], [ 0, %3 ], !dbg !558
  tail call fastcc void @resize(%struct.lua_State* %0, %struct.Table* nonnull %1, i32 %2, i32 %13) #7, !dbg !561
  ret void, !dbg !562
}

; Function Attrs: noredzone nounwind
define internal fastcc void @resize(%struct.lua_State*, %struct.Table*, i32, i32) unnamed_addr #0 !dbg !563 {
  %5 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 10, !dbg !596
  %6 = load i32, i32* %5, align 8, !dbg !596, !tbaa !446
  %7 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 4, !dbg !598
  %8 = load i8, i8* %7, align 1, !dbg !598, !tbaa !472
  %9 = zext i8 %8 to i32, !dbg !599
  %10 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 7, !dbg !601
  %11 = load %struct.Node*, %struct.Node** %10, align 8, !dbg !601, !tbaa !462
  %12 = icmp slt i32 %6, %2, !dbg !603
  br i1 %12, label %13, label %64, !dbg !605

; <label>:13:                                     ; preds = %4
  %14 = icmp sgt i32 %2, -2, !dbg !616
  br i1 %14, label %15, label %24, !dbg !616

; <label>:15:                                     ; preds = %13
  %16 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 6, !dbg !616
  %17 = bitcast %struct.lua_TValue** %16 to i8**, !dbg !616
  %18 = load i8*, i8** %17, align 8, !dbg !616, !tbaa !522
  %19 = sext i32 %6 to i64, !dbg !616
  %20 = shl nsw i64 %19, 4, !dbg !616
  %21 = sext i32 %2 to i64, !dbg !616
  %22 = shl nsw i64 %21, 4, !dbg !616
  %23 = tail call i8* @luaM_realloc_(%struct.lua_State* %0, i8* %18, i64 %20, i64 %22) #6, !dbg !616
  br label %28, !dbg !616

; <label>:24:                                     ; preds = %13
  %25 = tail call i8* @luaM_toobig(%struct.lua_State* %0) #6, !dbg !616
  %26 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 6, !dbg !616
  %27 = bitcast %struct.lua_TValue** %26 to i8**, !dbg !616
  br label %28, !dbg !616

; <label>:28:                                     ; preds = %24, %15
  %29 = phi i8** [ %27, %24 ], [ %17, %15 ], !dbg !616
  %30 = phi i8* [ %25, %24 ], [ %23, %15 ], !dbg !616
  store i8* %30, i8** %29, align 8, !dbg !616, !tbaa !522
  %31 = load i32, i32* %5, align 8, !dbg !617, !tbaa !446
  %32 = icmp slt i32 %31, %2, !dbg !620
  %33 = bitcast i8* %30 to %struct.lua_TValue*, !dbg !622
  br i1 %32, label %34, label %63, !dbg !622

; <label>:34:                                     ; preds = %28
  %35 = sext i32 %31 to i64, !dbg !622
  %36 = sext i32 %2 to i64
  %37 = sub nsw i64 %36, %35, !dbg !622
  %38 = xor i64 %35, -1, !dbg !622
  %39 = add nsw i64 %38, %36, !dbg !622
  %40 = and i64 %37, 3, !dbg !622
  %41 = icmp eq i64 %40, 0, !dbg !622
  br i1 %41, label %49, label %42, !dbg !622

; <label>:42:                                     ; preds = %34, %42
  %43 = phi i64 [ %46, %42 ], [ %35, %34 ]
  %44 = phi i64 [ %47, %42 ], [ %40, %34 ]
  %45 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %33, i64 %43, i32 1, !dbg !623
  store i32 0, i32* %45, align 8, !dbg !623, !tbaa !420
  %46 = add nsw i64 %43, 1, !dbg !624
  %47 = add i64 %44, -1, !dbg !622
  %48 = icmp eq i64 %47, 0, !dbg !622
  br i1 %48, label %49, label %42, !dbg !622, !llvm.loop !625

; <label>:49:                                     ; preds = %42, %34
  %50 = phi i64 [ %35, %34 ], [ %46, %42 ]
  %51 = icmp ult i64 %39, 3, !dbg !622
  br i1 %51, label %63, label %52, !dbg !622

; <label>:52:                                     ; preds = %49, %52
  %53 = phi i64 [ %61, %52 ], [ %50, %49 ]
  %54 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %33, i64 %53, i32 1, !dbg !623
  store i32 0, i32* %54, align 8, !dbg !623, !tbaa !420
  %55 = add nsw i64 %53, 1, !dbg !624
  %56 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %33, i64 %55, i32 1, !dbg !623
  store i32 0, i32* %56, align 8, !dbg !623, !tbaa !420
  %57 = add nsw i64 %53, 2, !dbg !624
  %58 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %33, i64 %57, i32 1, !dbg !623
  store i32 0, i32* %58, align 8, !dbg !623, !tbaa !420
  %59 = add nsw i64 %53, 3, !dbg !624
  %60 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %33, i64 %59, i32 1, !dbg !623
  store i32 0, i32* %60, align 8, !dbg !623, !tbaa !420
  %61 = add nsw i64 %53, 4, !dbg !624
  %62 = icmp eq i64 %61, %36, !dbg !620
  br i1 %62, label %63, label %52, !dbg !622, !llvm.loop !627

; <label>:63:                                     ; preds = %49, %52, %28
  store i32 %2, i32* %5, align 8, !dbg !630, !tbaa !446
  br label %64, !dbg !631

; <label>:64:                                     ; preds = %63, %4
  tail call fastcc void @setnodevector(%struct.lua_State* %0, %struct.Table* nonnull %1, i32 %3) #7, !dbg !632
  %65 = icmp sgt i32 %6, %2, !dbg !633
  br i1 %65, label %66, label %102, !dbg !634

; <label>:66:                                     ; preds = %64
  store i32 %2, i32* %5, align 8, !dbg !635, !tbaa !446
  %67 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 6
  %68 = sext i32 %2 to i64, !dbg !637
  br label %69, !dbg !637

; <label>:69:                                     ; preds = %85, %66
  %70 = phi i64 [ %68, %66 ], [ %75, %85 ]
  %71 = load %struct.lua_TValue*, %struct.lua_TValue** %67, align 8, !dbg !638, !tbaa !522
  %72 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %71, i64 %70, i32 1, !dbg !638
  %73 = load i32, i32* %72, align 8, !dbg !638, !tbaa !420
  %74 = icmp eq i32 %73, 0, !dbg !638
  %75 = add nsw i64 %70, 1, !dbg !639
  %76 = trunc i64 %75 to i32, !dbg !639
  br i1 %74, label %85, label %77, !dbg !640

; <label>:77:                                     ; preds = %69
  %78 = tail call %struct.lua_TValue* @luaH_setnum(%struct.lua_State* %0, %struct.Table* nonnull %1, i32 %76) #7, !dbg !641
  %79 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %71, i64 %70, i32 0, !dbg !641
  %80 = bitcast %union.Value* %79 to i64*, !dbg !641
  %81 = bitcast %struct.lua_TValue* %78 to i64*, !dbg !641
  %82 = load i64, i64* %80, align 8, !dbg !641
  store i64 %82, i64* %81, align 8, !dbg !641
  %83 = load i32, i32* %72, align 8, !dbg !641, !tbaa !420
  %84 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %78, i64 0, i32 1, !dbg !641
  store i32 %83, i32* %84, align 8, !dbg !641, !tbaa !420
  br label %85, !dbg !641

; <label>:85:                                     ; preds = %69, %77
  %86 = icmp eq i32 %6, %76, !dbg !642
  br i1 %86, label %87, label %69, !dbg !637, !llvm.loop !643

; <label>:87:                                     ; preds = %85
  %88 = icmp sgt i32 %2, -2, !dbg !645
  br i1 %88, label %89, label %96, !dbg !645

; <label>:89:                                     ; preds = %87
  %90 = bitcast %struct.lua_TValue** %67 to i8**, !dbg !645
  %91 = load i8*, i8** %90, align 8, !dbg !645, !tbaa !522
  %92 = sext i32 %6 to i64, !dbg !645
  %93 = shl nsw i64 %92, 4, !dbg !645
  %94 = shl nsw i64 %68, 4, !dbg !645
  %95 = tail call i8* @luaM_realloc_(%struct.lua_State* %0, i8* %91, i64 %93, i64 %94) #6, !dbg !645
  br label %99, !dbg !645

; <label>:96:                                     ; preds = %87
  %97 = tail call i8* @luaM_toobig(%struct.lua_State* %0) #6, !dbg !645
  %98 = bitcast %struct.lua_TValue** %67 to i8**, !dbg !645
  br label %99, !dbg !645

; <label>:99:                                     ; preds = %96, %89
  %100 = phi i8** [ %98, %96 ], [ %90, %89 ], !dbg !645
  %101 = phi i8* [ %97, %96 ], [ %95, %89 ], !dbg !645
  store i8* %101, i8** %100, align 8, !dbg !645, !tbaa !522
  br label %102, !dbg !646

; <label>:102:                                    ; preds = %99, %64
  %103 = shl i32 1, %9, !dbg !647
  %104 = icmp eq i8 %8, 31, !dbg !648
  br i1 %104, label %140, label %105, !dbg !649

; <label>:105:                                    ; preds = %102
  %106 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 3
  %107 = sext i32 %103 to i64, !dbg !649
  br label %108, !dbg !649

; <label>:108:                                    ; preds = %105, %138
  %109 = phi i64 [ %107, %105 ], [ %110, %138 ]
  %110 = add nsw i64 %109, -1, !dbg !650
  %111 = getelementptr inbounds %struct.Node, %struct.Node* %11, i64 %110, i32 0, i32 1, !dbg !651
  %112 = load i32, i32* %111, align 8, !dbg !651, !tbaa !536
  %113 = icmp eq i32 %112, 0, !dbg !651
  br i1 %113, label %138, label %114, !dbg !652

; <label>:114:                                    ; preds = %108
  %115 = getelementptr inbounds %struct.Node, %struct.Node* %11, i64 %110, !dbg !653
  %116 = getelementptr inbounds %struct.Node, %struct.Node* %11, i64 %110, i32 1, !dbg !655
  %117 = bitcast %union.TKey* %116 to %struct.lua_TValue*, !dbg !655
  %118 = tail call %struct.lua_TValue* @luaH_get(%struct.Table* %1, %struct.lua_TValue* nonnull %117) #6, !dbg !668
  store i8 0, i8* %106, align 2, !dbg !670, !tbaa !671
  %119 = icmp eq %struct.lua_TValue* %118, @luaO_nilobject_, !dbg !672
  br i1 %119, label %120, label %131, !dbg !674

; <label>:120:                                    ; preds = %114
  %121 = getelementptr inbounds %struct.Node, %struct.Node* %11, i64 %110, i32 1, i32 0, i32 1, !dbg !675
  %122 = load i32, i32* %121, align 8, !dbg !675, !tbaa !420
  switch i32 %122, label %129 [
    i32 0, label %123
    i32 3, label %124
  ], !dbg !678

; <label>:123:                                    ; preds = %120
  tail call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0)) #6, !dbg !679
  br label %129, !dbg !679

; <label>:124:                                    ; preds = %120
  %125 = bitcast %union.TKey* %116 to double*, !dbg !680
  %126 = load double, double* %125, align 8, !dbg !680, !tbaa !437
  %127 = fcmp ord double %126, 0.000000e+00, !dbg !680
  br i1 %127, label %129, label %128, !dbg !682

; <label>:128:                                    ; preds = %124
  tail call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !683
  br label %129, !dbg !683

; <label>:129:                                    ; preds = %128, %124, %123, %120
  %130 = tail call fastcc %struct.lua_TValue* @newkey(%struct.lua_State* %0, %struct.Table* nonnull %1, %struct.lua_TValue* nonnull %117) #6, !dbg !684
  br label %131, !dbg !685

; <label>:131:                                    ; preds = %114, %129
  %132 = phi %struct.lua_TValue* [ %130, %129 ], [ %118, %114 ], !dbg !686
  %133 = bitcast %struct.Node* %115 to i64*, !dbg !655
  %134 = bitcast %struct.lua_TValue* %132 to i64*, !dbg !655
  %135 = load i64, i64* %133, align 8, !dbg !655
  store i64 %135, i64* %134, align 8, !dbg !655
  %136 = load i32, i32* %111, align 8, !dbg !655, !tbaa !420
  %137 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %132, i64 0, i32 1, !dbg !655
  store i32 %136, i32* %137, align 8, !dbg !655, !tbaa !420
  br label %138, !dbg !655

; <label>:138:                                    ; preds = %131, %108
  %139 = icmp sgt i64 %109, 1, !dbg !648
  br i1 %139, label %108, label %140, !dbg !649, !llvm.loop !687

; <label>:140:                                    ; preds = %138, %102
  %141 = icmp eq %struct.Node* %11, @dummynode_, !dbg !689
  br i1 %141, label %147, label %142, !dbg !691

; <label>:142:                                    ; preds = %140
  %143 = bitcast %struct.Node* %11 to i8*, !dbg !692
  %144 = sext i32 %103 to i64, !dbg !692
  %145 = mul nsw i64 %144, 40, !dbg !692
  %146 = tail call i8* @luaM_realloc_(%struct.lua_State* %0, i8* %143, i64 %145, i64 0) #6, !dbg !692
  br label %147, !dbg !692

; <label>:147:                                    ; preds = %140, %142
  ret void, !dbg !693
}

; Function Attrs: noredzone nounwind
define hidden %struct.Table* @luaH_new(%struct.lua_State*, i32, i32) local_unnamed_addr #0 !dbg !694 {
  %4 = tail call i8* @luaM_realloc_(%struct.lua_State* %0, i8* null, i64 0, i64 64) #6, !dbg !705
  %5 = bitcast i8* %4 to %struct.Table*, !dbg !705
  %6 = bitcast i8* %4 to %union.GCObject*, !dbg !707
  tail call void @luaC_link(%struct.lua_State* %0, %union.GCObject* %6, i8 zeroext 5) #6, !dbg !708
  %7 = getelementptr inbounds i8, i8* %4, i64 16, !dbg !709
  %8 = bitcast i8* %7 to %struct.Table**, !dbg !709
  store %struct.Table* null, %struct.Table** %8, align 8, !dbg !710, !tbaa !711
  %9 = getelementptr inbounds i8, i8* %4, i64 10, !dbg !712
  store i8 -1, i8* %9, align 2, !dbg !713, !tbaa !671
  %10 = getelementptr inbounds i8, i8* %4, i64 24, !dbg !714
  %11 = bitcast i8* %10 to %struct.lua_TValue**, !dbg !714
  store %struct.lua_TValue* null, %struct.lua_TValue** %11, align 8, !dbg !715, !tbaa !522
  %12 = getelementptr inbounds i8, i8* %4, i64 56, !dbg !716
  %13 = bitcast i8* %12 to i32*, !dbg !716
  store i32 0, i32* %13, align 8, !dbg !717, !tbaa !446
  %14 = getelementptr inbounds i8, i8* %4, i64 11, !dbg !718
  store i8 0, i8* %14, align 1, !dbg !719, !tbaa !472
  %15 = getelementptr inbounds i8, i8* %4, i64 32, !dbg !720
  %16 = bitcast i8* %15 to %struct.Node**, !dbg !720
  store %struct.Node* @dummynode_, %struct.Node** %16, align 8, !dbg !721, !tbaa !462
  %17 = icmp sgt i32 %1, -2, !dbg !726
  br i1 %17, label %18, label %22, !dbg !726

; <label>:18:                                     ; preds = %3
  %19 = sext i32 %1 to i64, !dbg !726
  %20 = shl nsw i64 %19, 4, !dbg !726
  %21 = tail call i8* @luaM_realloc_(%struct.lua_State* %0, i8* null, i64 0, i64 %20) #6, !dbg !726
  br label %24, !dbg !726

; <label>:22:                                     ; preds = %3
  %23 = tail call i8* @luaM_toobig(%struct.lua_State* %0) #6, !dbg !726
  br label %24, !dbg !726

; <label>:24:                                     ; preds = %22, %18
  %25 = phi i8* [ %23, %22 ], [ %21, %18 ], !dbg !726
  %26 = bitcast i8* %10 to i8**, !dbg !726
  store i8* %25, i8** %26, align 8, !dbg !726, !tbaa !522
  %27 = load i32, i32* %13, align 8, !dbg !727, !tbaa !446
  %28 = icmp slt i32 %27, %1, !dbg !729
  %29 = bitcast i8* %25 to %struct.lua_TValue*, !dbg !730
  br i1 %28, label %30, label %59, !dbg !730

; <label>:30:                                     ; preds = %24
  %31 = sext i32 %27 to i64, !dbg !730
  %32 = sext i32 %1 to i64
  %33 = sub nsw i64 %32, %31, !dbg !730
  %34 = xor i64 %31, -1, !dbg !730
  %35 = add nsw i64 %34, %32, !dbg !730
  %36 = and i64 %33, 3, !dbg !730
  %37 = icmp eq i64 %36, 0, !dbg !730
  br i1 %37, label %45, label %38, !dbg !730

; <label>:38:                                     ; preds = %30, %38
  %39 = phi i64 [ %42, %38 ], [ %31, %30 ]
  %40 = phi i64 [ %43, %38 ], [ %36, %30 ]
  %41 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %29, i64 %39, i32 1, !dbg !731
  store i32 0, i32* %41, align 8, !dbg !731, !tbaa !420
  %42 = add nsw i64 %39, 1, !dbg !732
  %43 = add i64 %40, -1, !dbg !730
  %44 = icmp eq i64 %43, 0, !dbg !730
  br i1 %44, label %45, label %38, !dbg !730, !llvm.loop !733

; <label>:45:                                     ; preds = %38, %30
  %46 = phi i64 [ %31, %30 ], [ %42, %38 ]
  %47 = icmp ult i64 %35, 3, !dbg !730
  br i1 %47, label %59, label %48, !dbg !730

; <label>:48:                                     ; preds = %45, %48
  %49 = phi i64 [ %57, %48 ], [ %46, %45 ]
  %50 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %29, i64 %49, i32 1, !dbg !731
  store i32 0, i32* %50, align 8, !dbg !731, !tbaa !420
  %51 = add nsw i64 %49, 1, !dbg !732
  %52 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %29, i64 %51, i32 1, !dbg !731
  store i32 0, i32* %52, align 8, !dbg !731, !tbaa !420
  %53 = add nsw i64 %49, 2, !dbg !732
  %54 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %29, i64 %53, i32 1, !dbg !731
  store i32 0, i32* %54, align 8, !dbg !731, !tbaa !420
  %55 = add nsw i64 %49, 3, !dbg !732
  %56 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %29, i64 %55, i32 1, !dbg !731
  store i32 0, i32* %56, align 8, !dbg !731, !tbaa !420
  %57 = add nsw i64 %49, 4, !dbg !732
  %58 = icmp eq i64 %57, %32, !dbg !729
  br i1 %58, label %59, label %48, !dbg !730, !llvm.loop !627

; <label>:59:                                     ; preds = %45, %48, %24
  store i32 %1, i32* %13, align 8, !dbg !734, !tbaa !446
  tail call fastcc void @setnodevector(%struct.lua_State* %0, %struct.Table* %5, i32 %2) #7, !dbg !735
  ret %struct.Table* %5, !dbg !736
}

; Function Attrs: noredzone
declare hidden i8* @luaM_realloc_(%struct.lua_State*, i8*, i64, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare hidden void @luaC_link(%struct.lua_State*, %union.GCObject*, i8 zeroext) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal fastcc void @setnodevector(%struct.lua_State*, %struct.Table* nocapture, i32) unnamed_addr #0 !dbg !737 {
  %4 = icmp eq i32 %2, 0, !dbg !753
  br i1 %4, label %5, label %7, !dbg !754

; <label>:5:                                      ; preds = %3
  %6 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 7, !dbg !755
  store %struct.Node* @dummynode_, %struct.Node** %6, align 8, !dbg !757, !tbaa !462
  br label %43, !dbg !759

; <label>:7:                                      ; preds = %3
  %8 = add nsw i32 %2, -1, !dbg !760
  %9 = tail call i32 @luaO_log2(i32 %8) #6, !dbg !760
  %10 = add nsw i32 %9, 1, !dbg !760
  %11 = icmp sgt i32 %9, 25, !dbg !761
  br i1 %11, label %12, label %13, !dbg !763

; <label>:12:                                     ; preds = %7
  tail call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !764
  br label %13, !dbg !764

; <label>:13:                                     ; preds = %12, %7
  %14 = shl i32 1, %10, !dbg !765
  %15 = icmp sgt i32 %14, -2, !dbg !766
  br i1 %15, label %16, label %20, !dbg !766

; <label>:16:                                     ; preds = %13
  %17 = sext i32 %14 to i64, !dbg !766
  %18 = mul nsw i64 %17, 40, !dbg !766
  %19 = tail call i8* @luaM_realloc_(%struct.lua_State* %0, i8* null, i64 0, i64 %18) #6, !dbg !766
  br label %22, !dbg !766

; <label>:20:                                     ; preds = %13
  %21 = tail call i8* @luaM_toobig(%struct.lua_State* %0) #6, !dbg !766
  br label %22, !dbg !766

; <label>:22:                                     ; preds = %20, %16
  %23 = phi i8* [ %19, %16 ], [ %21, %20 ], !dbg !766
  %24 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 7, !dbg !767
  %25 = bitcast %struct.Node** %24 to i8**, !dbg !768
  store i8* %23, i8** %25, align 8, !dbg !768, !tbaa !462
  %26 = icmp eq i32 %10, 31, !dbg !770
  %27 = bitcast i8* %23 to %struct.Node*, !dbg !771
  br i1 %26, label %39, label %28, !dbg !771

; <label>:28:                                     ; preds = %22
  %29 = sext i32 %14 to i64, !dbg !772
  br label %30, !dbg !772

; <label>:30:                                     ; preds = %30, %28
  %31 = phi %struct.Node* [ %27, %28 ], [ %38, %30 ], !dbg !772
  %32 = phi i64 [ 0, %28 ], [ %36, %30 ]
  %33 = getelementptr inbounds %struct.Node, %struct.Node* %31, i64 %32, i32 1, i32 0, i32 2, !dbg !773
  store %struct.Node* null, %struct.Node** %33, align 8, !dbg !774, !tbaa !437
  %34 = getelementptr inbounds %struct.Node, %struct.Node* %31, i64 %32, i32 1, i32 0, i32 1, !dbg !775
  store i32 0, i32* %34, align 8, !dbg !775, !tbaa !437
  %35 = getelementptr inbounds %struct.Node, %struct.Node* %31, i64 %32, i32 0, i32 1, !dbg !776
  store i32 0, i32* %35, align 8, !dbg !776, !tbaa !536
  %36 = add nuw nsw i64 %32, 1, !dbg !777
  %37 = icmp slt i64 %36, %29, !dbg !770
  %38 = load %struct.Node*, %struct.Node** %24, align 8, !dbg !778, !tbaa !462
  br i1 %37, label %30, label %39, !dbg !771, !llvm.loop !779

; <label>:39:                                     ; preds = %30, %22
  %40 = phi i64 [ -2147483648, %22 ], [ %29, %30 ]
  %41 = phi %struct.Node* [ %27, %22 ], [ %38, %30 ], !dbg !781
  %42 = trunc i32 %10 to i8
  br label %43

; <label>:43:                                     ; preds = %39, %5
  %44 = phi %struct.Node* [ @dummynode_, %5 ], [ %41, %39 ], !dbg !781
  %45 = phi i8 [ 0, %5 ], [ %42, %39 ]
  %46 = phi i64 [ 0, %5 ], [ %40, %39 ]
  %47 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 4, !dbg !782
  store i8 %45, i8* %47, align 1, !dbg !783, !tbaa !472
  %48 = getelementptr inbounds %struct.Node, %struct.Node* %44, i64 %46, !dbg !781
  %49 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 8, !dbg !784
  store %struct.Node* %48, %struct.Node** %49, align 8, !dbg !785, !tbaa !786
  ret void, !dbg !787
}

; Function Attrs: noredzone nounwind
define hidden void @luaH_free(%struct.lua_State*, %struct.Table*) local_unnamed_addr #0 !dbg !788 {
  %3 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 7, !dbg !796
  %4 = load %struct.Node*, %struct.Node** %3, align 8, !dbg !796, !tbaa !462
  %5 = icmp eq %struct.Node* %4, @dummynode_, !dbg !798
  br i1 %5, label %15, label %6, !dbg !799

; <label>:6:                                      ; preds = %2
  %7 = bitcast %struct.Node* %4 to i8*, !dbg !800
  %8 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 4, !dbg !800
  %9 = load i8, i8* %8, align 1, !dbg !800, !tbaa !472
  %10 = zext i8 %9 to i32, !dbg !800
  %11 = shl i32 1, %10, !dbg !800
  %12 = sext i32 %11 to i64, !dbg !800
  %13 = mul nsw i64 %12, 40, !dbg !800
  %14 = tail call i8* @luaM_realloc_(%struct.lua_State* %0, i8* %7, i64 %13, i64 0) #6, !dbg !800
  br label %15, !dbg !800

; <label>:15:                                     ; preds = %2, %6
  %16 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 6, !dbg !801
  %17 = bitcast %struct.lua_TValue** %16 to i8**, !dbg !801
  %18 = load i8*, i8** %17, align 8, !dbg !801, !tbaa !522
  %19 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 10, !dbg !801
  %20 = load i32, i32* %19, align 8, !dbg !801, !tbaa !446
  %21 = sext i32 %20 to i64, !dbg !801
  %22 = shl nsw i64 %21, 4, !dbg !801
  %23 = tail call i8* @luaM_realloc_(%struct.lua_State* %0, i8* %18, i64 %22, i64 0) #6, !dbg !801
  %24 = bitcast %struct.Table* %1 to i8*, !dbg !802
  %25 = tail call i8* @luaM_realloc_(%struct.lua_State* %0, i8* %24, i64 64, i64 0) #6, !dbg !802
  ret void, !dbg !803
}

; Function Attrs: noredzone nounwind
define hidden %struct.lua_TValue* @luaH_getnum(%struct.Table* nocapture readonly, i32) local_unnamed_addr #0 !dbg !804 {
  %3 = alloca double, align 8
  %4 = alloca [2 x i32], align 4
  %5 = add nsw i32 %1, -1, !dbg !818
  %6 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 10, !dbg !819
  %7 = load i32, i32* %6, align 8, !dbg !819, !tbaa !446
  %8 = icmp ult i32 %5, %7, !dbg !820
  br i1 %8, label %9, label %14, !dbg !821

; <label>:9:                                      ; preds = %2
  %10 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 6, !dbg !822
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8, !dbg !822, !tbaa !522
  %12 = sext i32 %5 to i64, !dbg !823
  %13 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %11, i64 %12, !dbg !823
  br label %58, !dbg !824

; <label>:14:                                     ; preds = %2
  %15 = sitofp i32 %1 to double, !dbg !825
  %16 = bitcast double* %3 to i8*, !dbg !827
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %16), !dbg !827
  store double %15, double* %3, align 8, !tbaa !455
  %17 = bitcast [2 x i32]* %4 to i8*, !dbg !829
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %17) #5, !dbg !829
  %18 = icmp eq i32 %1, 0, !dbg !830
  br i1 %18, label %19, label %22, !dbg !831

; <label>:19:                                     ; preds = %14
  %20 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 7, !dbg !832
  %21 = load %struct.Node*, %struct.Node** %20, align 8, !dbg !832, !tbaa !462
  br label %40, !dbg !833

; <label>:22:                                     ; preds = %14
  %23 = call i8* @memcpy(i8* nonnull %17, i8* nonnull %16, i64 8) #6, !dbg !834
  %24 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %25 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1, !dbg !836
  %26 = load i32, i32* %25, align 4, !dbg !836, !tbaa !469
  %27 = load i32, i32* %24, align 4, !dbg !837, !tbaa !469
  %28 = add i32 %27, %26, !dbg !837
  store i32 %28, i32* %24, align 4, !dbg !837, !tbaa !469
  %29 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 7, !dbg !838
  %30 = load %struct.Node*, %struct.Node** %29, align 8, !dbg !838, !tbaa !462
  %31 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 4, !dbg !838
  %32 = load i8, i8* %31, align 1, !dbg !838, !tbaa !472
  %33 = zext i8 %32 to i32, !dbg !838
  %34 = shl nsw i32 -1, %33, !dbg !838
  %35 = or i32 %34, 1, !dbg !838
  %36 = xor i32 %35, -2, !dbg !838
  %37 = urem i32 %28, %36, !dbg !838
  %38 = zext i32 %37 to i64, !dbg !838
  %39 = getelementptr inbounds %struct.Node, %struct.Node* %30, i64 %38, !dbg !838
  br label %40, !dbg !839

; <label>:40:                                     ; preds = %19, %22
  %41 = phi %struct.Node* [ %21, %19 ], [ %39, %22 ], !dbg !840
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %17) #5, !dbg !841
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %16), !dbg !841
  br label %42, !dbg !843

; <label>:42:                                     ; preds = %54, %40
  %43 = phi %struct.Node* [ %41, %40 ], [ %56, %54 ], !dbg !844
  %44 = getelementptr inbounds %struct.Node, %struct.Node* %43, i64 0, i32 1, i32 0, i32 1, !dbg !847
  %45 = load i32, i32* %44, align 8, !dbg !847, !tbaa !437
  %46 = icmp eq i32 %45, 3, !dbg !847
  br i1 %46, label %47, label %54, !dbg !848

; <label>:47:                                     ; preds = %42
  %48 = getelementptr inbounds %struct.Node, %struct.Node* %43, i64 0, i32 1, i32 0, i32 0, !dbg !849
  %49 = bitcast %union.Value* %48 to double*, !dbg !849
  %50 = load double, double* %49, align 8, !dbg !849, !tbaa !437
  %51 = fcmp oeq double %50, %15, !dbg !849
  br i1 %51, label %52, label %54, !dbg !850

; <label>:52:                                     ; preds = %47
  %53 = getelementptr inbounds %struct.Node, %struct.Node* %43, i64 0, i32 0, !dbg !851
  br label %58, !dbg !852

; <label>:54:                                     ; preds = %47, %42
  %55 = getelementptr inbounds %struct.Node, %struct.Node* %43, i64 0, i32 1, i32 0, i32 2, !dbg !853
  %56 = load %struct.Node*, %struct.Node** %55, align 8, !dbg !853, !tbaa !437
  %57 = icmp eq %struct.Node* %56, null, !dbg !854
  br i1 %57, label %58, label %42, !dbg !854, !llvm.loop !855

; <label>:58:                                     ; preds = %54, %52, %9
  %59 = phi %struct.lua_TValue* [ %13, %9 ], [ %53, %52 ], [ @luaO_nilobject_, %54 ], !dbg !844
  ret %struct.lua_TValue* %59, !dbg !857
}

; Function Attrs: noredzone nounwind readonly
define hidden %struct.lua_TValue* @luaH_getstr(%struct.Table* nocapture readonly, %union.TString* readonly) local_unnamed_addr #4 !dbg !858 {
  %3 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 7, !dbg !867
  %4 = load %struct.Node*, %struct.Node** %3, align 8, !dbg !867, !tbaa !462
  %5 = getelementptr inbounds %union.TString, %union.TString* %1, i64 0, i32 0, i32 4, !dbg !867
  %6 = load i32, i32* %5, align 4, !dbg !867, !tbaa !437
  %7 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 4, !dbg !867
  %8 = load i8, i8* %7, align 1, !dbg !867, !tbaa !472
  %9 = zext i8 %8 to i32, !dbg !867
  %10 = shl nsw i32 -1, %9, !dbg !867
  %11 = xor i32 %10, -1, !dbg !867
  %12 = and i32 %6, %11, !dbg !867
  %13 = sext i32 %12 to i64, !dbg !867
  %14 = getelementptr inbounds %struct.Node, %struct.Node* %4, i64 %13, !dbg !867
  br label %15, !dbg !869

; <label>:15:                                     ; preds = %27, %2
  %16 = phi %struct.Node* [ %14, %2 ], [ %29, %27 ], !dbg !870
  %17 = getelementptr inbounds %struct.Node, %struct.Node* %16, i64 0, i32 1, i32 0, i32 1, !dbg !873
  %18 = load i32, i32* %17, align 8, !dbg !873, !tbaa !437
  %19 = icmp eq i32 %18, 4, !dbg !873
  br i1 %19, label %20, label %27, !dbg !874

; <label>:20:                                     ; preds = %15
  %21 = getelementptr inbounds %struct.Node, %struct.Node* %16, i64 0, i32 1, i32 0, i32 0, i32 0, !dbg !875
  %22 = bitcast %union.GCObject** %21 to %union.TString**, !dbg !875
  %23 = load %union.TString*, %union.TString** %22, align 8, !dbg !875, !tbaa !437
  %24 = icmp eq %union.TString* %23, %1, !dbg !876
  br i1 %24, label %25, label %27, !dbg !877

; <label>:25:                                     ; preds = %20
  %26 = getelementptr inbounds %struct.Node, %struct.Node* %16, i64 0, i32 0, !dbg !878
  br label %31, !dbg !879

; <label>:27:                                     ; preds = %20, %15
  %28 = getelementptr inbounds %struct.Node, %struct.Node* %16, i64 0, i32 1, i32 0, i32 2, !dbg !880
  %29 = load %struct.Node*, %struct.Node** %28, align 8, !dbg !880, !tbaa !437
  %30 = icmp eq %struct.Node* %29, null, !dbg !881
  br i1 %30, label %31, label %15, !dbg !881, !llvm.loop !882

; <label>:31:                                     ; preds = %27, %25
  %32 = phi %struct.lua_TValue* [ %26, %25 ], [ @luaO_nilobject_, %27 ], !dbg !884
  ret %struct.lua_TValue* %32, !dbg !885
}

; Function Attrs: noredzone nounwind
define hidden %struct.lua_TValue* @luaH_get(%struct.Table* nocapture readonly, %struct.lua_TValue*) local_unnamed_addr #0 !dbg !886 {
  %3 = alloca double, align 8
  %4 = alloca [2 x i32], align 4
  %5 = alloca double, align 8
  %6 = alloca [2 x i32], align 4
  %7 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1, i64 0, i32 1, !dbg !907
  %8 = load i32, i32* %7, align 8, !dbg !907, !tbaa !420
  switch i32 %8, label %156 [
    i32 0, label %185
    i32 4, label %9
    i32 3, label %40
    i32 2, label %141
    i32 1, label %128
  ], !dbg !908

; <label>:9:                                      ; preds = %2
  %10 = bitcast %struct.lua_TValue* %1 to %union.TString**, !dbg !909
  %11 = load %union.TString*, %union.TString** %10, align 8, !dbg !909, !tbaa !437
  %12 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 7, !dbg !913
  %13 = load %struct.Node*, %struct.Node** %12, align 8, !dbg !913, !tbaa !462
  %14 = getelementptr inbounds %union.TString, %union.TString* %11, i64 0, i32 0, i32 4, !dbg !913
  %15 = load i32, i32* %14, align 4, !dbg !913, !tbaa !437
  %16 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 4, !dbg !913
  %17 = load i8, i8* %16, align 1, !dbg !913, !tbaa !472
  %18 = zext i8 %17 to i32, !dbg !913
  %19 = shl nsw i32 -1, %18, !dbg !913
  %20 = xor i32 %19, -1, !dbg !913
  %21 = and i32 %15, %20, !dbg !913
  %22 = sext i32 %21 to i64, !dbg !913
  %23 = getelementptr inbounds %struct.Node, %struct.Node* %13, i64 %22, !dbg !913
  br label %24, !dbg !915

; <label>:24:                                     ; preds = %36, %9
  %25 = phi %struct.Node* [ %23, %9 ], [ %38, %36 ], !dbg !916
  %26 = getelementptr inbounds %struct.Node, %struct.Node* %25, i64 0, i32 1, i32 0, i32 1, !dbg !917
  %27 = load i32, i32* %26, align 8, !dbg !917, !tbaa !437
  %28 = icmp eq i32 %27, 4, !dbg !917
  br i1 %28, label %29, label %36, !dbg !918

; <label>:29:                                     ; preds = %24
  %30 = getelementptr inbounds %struct.Node, %struct.Node* %25, i64 0, i32 1, i32 0, i32 0, i32 0, !dbg !919
  %31 = bitcast %union.GCObject** %30 to %union.TString**, !dbg !919
  %32 = load %union.TString*, %union.TString** %31, align 8, !dbg !919, !tbaa !437
  %33 = icmp eq %union.TString* %32, %11, !dbg !920
  br i1 %33, label %34, label %36, !dbg !921

; <label>:34:                                     ; preds = %29
  %35 = getelementptr inbounds %struct.Node, %struct.Node* %25, i64 0, i32 0, !dbg !922
  br label %185, !dbg !923

; <label>:36:                                     ; preds = %29, %24
  %37 = getelementptr inbounds %struct.Node, %struct.Node* %25, i64 0, i32 1, i32 0, i32 2, !dbg !924
  %38 = load %struct.Node*, %struct.Node** %37, align 8, !dbg !924, !tbaa !437
  %39 = icmp eq %struct.Node* %38, null, !dbg !925
  br i1 %39, label %185, label %24, !dbg !925, !llvm.loop !882

; <label>:40:                                     ; preds = %2
  %41 = bitcast %struct.lua_TValue* %1 to double*, !dbg !926
  %42 = load double, double* %41, align 8, !dbg !926, !tbaa !437
  %43 = fptosi double %42 to i32, !dbg !928
  %44 = sitofp i32 %43 to double, !dbg !930
  %45 = fcmp oeq double %42, %44, !dbg !930
  br i1 %45, label %46, label %99, !dbg !931

; <label>:46:                                     ; preds = %40
  %47 = add nsw i32 %43, -1, !dbg !934
  %48 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 10, !dbg !935
  %49 = load i32, i32* %48, align 8, !dbg !935, !tbaa !446
  %50 = icmp ult i32 %47, %49, !dbg !936
  br i1 %50, label %51, label %56, !dbg !937

; <label>:51:                                     ; preds = %46
  %52 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 6, !dbg !938
  %53 = load %struct.lua_TValue*, %struct.lua_TValue** %52, align 8, !dbg !938, !tbaa !522
  %54 = sext i32 %47 to i64, !dbg !939
  %55 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %53, i64 %54, !dbg !939
  br label %185, !dbg !940

; <label>:56:                                     ; preds = %46
  %57 = bitcast double* %3 to i8*, !dbg !942
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %57) #5, !dbg !942
  store double %44, double* %3, align 8, !tbaa !455
  %58 = bitcast [2 x i32]* %4 to i8*, !dbg !944
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %58) #5, !dbg !944
  %59 = icmp eq i32 %43, 0, !dbg !945
  br i1 %59, label %60, label %63, !dbg !946

; <label>:60:                                     ; preds = %56
  %61 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 7, !dbg !947
  %62 = load %struct.Node*, %struct.Node** %61, align 8, !dbg !947, !tbaa !462
  br label %81, !dbg !948

; <label>:63:                                     ; preds = %56
  %64 = call i8* @memcpy(i8* nonnull %58, i8* nonnull %57, i64 8) #6, !dbg !949
  %65 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %66 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1, !dbg !951
  %67 = load i32, i32* %66, align 4, !dbg !951, !tbaa !469
  %68 = load i32, i32* %65, align 4, !dbg !952, !tbaa !469
  %69 = add i32 %68, %67, !dbg !952
  store i32 %69, i32* %65, align 4, !dbg !952, !tbaa !469
  %70 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 7, !dbg !953
  %71 = load %struct.Node*, %struct.Node** %70, align 8, !dbg !953, !tbaa !462
  %72 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 4, !dbg !953
  %73 = load i8, i8* %72, align 1, !dbg !953, !tbaa !472
  %74 = zext i8 %73 to i32, !dbg !953
  %75 = shl nsw i32 -1, %74, !dbg !953
  %76 = or i32 %75, 1, !dbg !953
  %77 = xor i32 %76, -2, !dbg !953
  %78 = urem i32 %69, %77, !dbg !953
  %79 = zext i32 %78 to i64, !dbg !953
  %80 = getelementptr inbounds %struct.Node, %struct.Node* %71, i64 %79, !dbg !953
  br label %81, !dbg !954

; <label>:81:                                     ; preds = %63, %60
  %82 = phi %struct.Node* [ %62, %60 ], [ %80, %63 ], !dbg !955
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %58) #5, !dbg !956
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %57) #5, !dbg !956
  br label %83, !dbg !958

; <label>:83:                                     ; preds = %95, %81
  %84 = phi %struct.Node* [ %82, %81 ], [ %97, %95 ], !dbg !959
  %85 = getelementptr inbounds %struct.Node, %struct.Node* %84, i64 0, i32 1, i32 0, i32 1, !dbg !960
  %86 = load i32, i32* %85, align 8, !dbg !960, !tbaa !437
  %87 = icmp eq i32 %86, 3, !dbg !960
  br i1 %87, label %88, label %95, !dbg !961

; <label>:88:                                     ; preds = %83
  %89 = getelementptr inbounds %struct.Node, %struct.Node* %84, i64 0, i32 1, i32 0, i32 0, !dbg !962
  %90 = bitcast %union.Value* %89 to double*, !dbg !962
  %91 = load double, double* %90, align 8, !dbg !962, !tbaa !437
  %92 = fcmp oeq double %91, %44, !dbg !962
  br i1 %92, label %93, label %95, !dbg !963

; <label>:93:                                     ; preds = %88
  %94 = getelementptr inbounds %struct.Node, %struct.Node* %84, i64 0, i32 0, !dbg !964
  br label %185, !dbg !965

; <label>:95:                                     ; preds = %88, %83
  %96 = getelementptr inbounds %struct.Node, %struct.Node* %84, i64 0, i32 1, i32 0, i32 2, !dbg !966
  %97 = load %struct.Node*, %struct.Node** %96, align 8, !dbg !966, !tbaa !437
  %98 = icmp eq %struct.Node* %97, null, !dbg !967
  br i1 %98, label %185, label %83, !dbg !967, !llvm.loop !855

; <label>:99:                                     ; preds = %40
  %100 = bitcast %struct.lua_TValue* %1 to double*, !dbg !968
  %101 = load double, double* %100, align 8, !dbg !968, !tbaa !437
  %102 = bitcast double* %5 to i8*, !dbg !969
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %102), !dbg !969
  store double %101, double* %5, align 8, !tbaa !455
  %103 = bitcast [2 x i32]* %6 to i8*, !dbg !971
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %103) #5, !dbg !971
  %104 = fcmp oeq double %101, 0.000000e+00, !dbg !972
  br i1 %104, label %105, label %108, !dbg !973

; <label>:105:                                    ; preds = %99
  %106 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 7, !dbg !974
  %107 = load %struct.Node*, %struct.Node** %106, align 8, !dbg !974, !tbaa !462
  br label %126, !dbg !975

; <label>:108:                                    ; preds = %99
  %109 = call i8* @memcpy(i8* nonnull %103, i8* nonnull %102, i64 8) #6, !dbg !976
  %110 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %111 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1, !dbg !978
  %112 = load i32, i32* %111, align 4, !dbg !978, !tbaa !469
  %113 = load i32, i32* %110, align 4, !dbg !979, !tbaa !469
  %114 = add i32 %113, %112, !dbg !979
  store i32 %114, i32* %110, align 4, !dbg !979, !tbaa !469
  %115 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 7, !dbg !980
  %116 = load %struct.Node*, %struct.Node** %115, align 8, !dbg !980, !tbaa !462
  %117 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 4, !dbg !980
  %118 = load i8, i8* %117, align 1, !dbg !980, !tbaa !472
  %119 = zext i8 %118 to i32, !dbg !980
  %120 = shl nsw i32 -1, %119, !dbg !980
  %121 = or i32 %120, 1, !dbg !980
  %122 = xor i32 %121, -2, !dbg !980
  %123 = urem i32 %114, %122, !dbg !980
  %124 = zext i32 %123 to i64, !dbg !980
  %125 = getelementptr inbounds %struct.Node, %struct.Node* %116, i64 %124, !dbg !980
  br label %126, !dbg !981

; <label>:126:                                    ; preds = %105, %108
  %127 = phi %struct.Node* [ %107, %105 ], [ %125, %108 ], !dbg !982
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %103) #5, !dbg !983
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %102), !dbg !983
  br label %171, !dbg !984

; <label>:128:                                    ; preds = %2
  %129 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 7, !dbg !985
  %130 = load %struct.Node*, %struct.Node** %129, align 8, !dbg !985, !tbaa !462
  %131 = bitcast %struct.lua_TValue* %1 to i32*, !dbg !985
  %132 = load i32, i32* %131, align 8, !dbg !985, !tbaa !437
  %133 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 4, !dbg !985
  %134 = load i8, i8* %133, align 1, !dbg !985, !tbaa !472
  %135 = zext i8 %134 to i32, !dbg !985
  %136 = shl nsw i32 -1, %135, !dbg !985
  %137 = xor i32 %136, -1, !dbg !985
  %138 = and i32 %132, %137, !dbg !985
  %139 = sext i32 %138 to i64, !dbg !985
  %140 = getelementptr inbounds %struct.Node, %struct.Node* %130, i64 %139, !dbg !985
  br label %171, !dbg !986

; <label>:141:                                    ; preds = %2
  %142 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 7, !dbg !987
  %143 = load %struct.Node*, %struct.Node** %142, align 8, !dbg !987, !tbaa !462
  %144 = bitcast %struct.lua_TValue* %1 to i64*, !dbg !987
  %145 = load i64, i64* %144, align 8, !dbg !987, !tbaa !437
  %146 = trunc i64 %145 to i32, !dbg !987
  %147 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 4, !dbg !987
  %148 = load i8, i8* %147, align 1, !dbg !987, !tbaa !472
  %149 = zext i8 %148 to i32, !dbg !987
  %150 = shl nsw i32 -1, %149, !dbg !987
  %151 = or i32 %150, 1, !dbg !987
  %152 = xor i32 %151, -2, !dbg !987
  %153 = urem i32 %146, %152, !dbg !987
  %154 = zext i32 %153 to i64, !dbg !987
  %155 = getelementptr inbounds %struct.Node, %struct.Node* %143, i64 %154, !dbg !987
  br label %171, !dbg !988

; <label>:156:                                    ; preds = %2
  %157 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 7, !dbg !989
  %158 = load %struct.Node*, %struct.Node** %157, align 8, !dbg !989, !tbaa !462
  %159 = bitcast %struct.lua_TValue* %1 to i64*, !dbg !989
  %160 = load i64, i64* %159, align 8, !dbg !989, !tbaa !437
  %161 = trunc i64 %160 to i32, !dbg !989
  %162 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 4, !dbg !989
  %163 = load i8, i8* %162, align 1, !dbg !989, !tbaa !472
  %164 = zext i8 %163 to i32, !dbg !989
  %165 = shl nsw i32 -1, %164, !dbg !989
  %166 = or i32 %165, 1, !dbg !989
  %167 = xor i32 %166, -2, !dbg !989
  %168 = urem i32 %161, %167, !dbg !989
  %169 = zext i32 %168 to i64, !dbg !989
  %170 = getelementptr inbounds %struct.Node, %struct.Node* %158, i64 %169, !dbg !989
  br label %171, !dbg !990

; <label>:171:                                    ; preds = %126, %128, %141, %156
  %172 = phi %struct.Node* [ %127, %126 ], [ %140, %128 ], [ %155, %141 ], [ %170, %156 ]
  br label %173, !dbg !991

; <label>:173:                                    ; preds = %171, %181
  %174 = phi %struct.Node* [ %183, %181 ], [ %172, %171 ], !dbg !994
  %175 = getelementptr inbounds %struct.Node, %struct.Node* %174, i64 0, i32 1, !dbg !991
  %176 = bitcast %union.TKey* %175 to %struct.lua_TValue*, !dbg !991
  %177 = call i32 @luaO_rawequalObj(%struct.lua_TValue* nonnull %176, %struct.lua_TValue* %1) #6, !dbg !996
  %178 = icmp eq i32 %177, 0, !dbg !996
  br i1 %178, label %181, label %179, !dbg !997

; <label>:179:                                    ; preds = %173
  %180 = getelementptr inbounds %struct.Node, %struct.Node* %174, i64 0, i32 0, !dbg !998
  br label %185, !dbg !999

; <label>:181:                                    ; preds = %173
  %182 = getelementptr inbounds %struct.Node, %struct.Node* %174, i64 0, i32 1, i32 0, i32 2, !dbg !1000
  %183 = load %struct.Node*, %struct.Node** %182, align 8, !dbg !1000, !tbaa !437
  %184 = icmp eq %struct.Node* %183, null, !dbg !1001
  br i1 %184, label %185, label %173, !dbg !1001, !llvm.loop !1002

; <label>:185:                                    ; preds = %95, %36, %181, %2, %93, %51, %34, %179
  %186 = phi %struct.lua_TValue* [ @luaO_nilobject_, %2 ], [ %180, %179 ], [ %35, %34 ], [ %94, %93 ], [ %55, %51 ], [ @luaO_nilobject_, %181 ], [ @luaO_nilobject_, %36 ], [ @luaO_nilobject_, %95 ], !dbg !1005
  ret %struct.lua_TValue* %186, !dbg !1006
}

; Function Attrs: noredzone
declare hidden i32 @luaO_rawequalObj(%struct.lua_TValue*, %struct.lua_TValue*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define hidden %struct.lua_TValue* @luaH_set(%struct.lua_State*, %struct.Table*, %struct.lua_TValue*) local_unnamed_addr #0 !dbg !657 {
  %4 = tail call %struct.lua_TValue* @luaH_get(%struct.Table* %1, %struct.lua_TValue* %2) #7, !dbg !1010
  %5 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 3, !dbg !1012
  store i8 0, i8* %5, align 2, !dbg !1013, !tbaa !671
  %6 = icmp eq %struct.lua_TValue* %4, @luaO_nilobject_, !dbg !1014
  br i1 %6, label %7, label %18, !dbg !1015

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2, i64 0, i32 1, !dbg !1016
  %9 = load i32, i32* %8, align 8, !dbg !1016, !tbaa !420
  switch i32 %9, label %16 [
    i32 0, label %10
    i32 3, label %11
  ], !dbg !1017

; <label>:10:                                     ; preds = %7
  tail call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0)) #6, !dbg !1018
  br label %16, !dbg !1018

; <label>:11:                                     ; preds = %7
  %12 = bitcast %struct.lua_TValue* %2 to double*, !dbg !1019
  %13 = load double, double* %12, align 8, !dbg !1019, !tbaa !437
  %14 = fcmp ord double %13, 0.000000e+00, !dbg !1019
  br i1 %14, label %16, label %15, !dbg !1020

; <label>:15:                                     ; preds = %11
  tail call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1021
  br label %16, !dbg !1021

; <label>:16:                                     ; preds = %7, %11, %15, %10
  %17 = tail call fastcc %struct.lua_TValue* @newkey(%struct.lua_State* %0, %struct.Table* nonnull %1, %struct.lua_TValue* nonnull %2) #7, !dbg !1022
  br label %18, !dbg !1023

; <label>:18:                                     ; preds = %3, %16
  %19 = phi %struct.lua_TValue* [ %17, %16 ], [ %4, %3 ], !dbg !1024
  ret %struct.lua_TValue* %19, !dbg !1025
}

; Function Attrs: noredzone
declare hidden void @luaG_runerror(%struct.lua_State*, i8*, ...) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal fastcc %struct.lua_TValue* @newkey(%struct.lua_State*, %struct.Table*, %struct.lua_TValue*) unnamed_addr #0 !dbg !1026 {
  %4 = alloca double, align 8
  %5 = alloca [2 x i32], align 4
  %6 = alloca double, align 8
  %7 = alloca [2 x i32], align 4
  %8 = alloca [27 x i32], align 16
  %9 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2, i64 0, i32 1, !dbg !1066
  %10 = load i32, i32* %9, align 8, !dbg !1066, !tbaa !420
  switch i32 %10, label %84 [
    i32 3, label %11
    i32 4, label %41
    i32 1, label %56
    i32 2, label %69
  ], !dbg !1067

; <label>:11:                                     ; preds = %3
  %12 = bitcast %struct.lua_TValue* %2 to double*, !dbg !1068
  %13 = load double, double* %12, align 8, !dbg !1068, !tbaa !437
  %14 = bitcast double* %6 to i8*, !dbg !1069
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %14), !dbg !1069
  store double %13, double* %6, align 8, !tbaa !455
  %15 = bitcast [2 x i32]* %7 to i8*, !dbg !1071
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %15) #5, !dbg !1071
  %16 = fcmp oeq double %13, 0.000000e+00, !dbg !1072
  br i1 %16, label %17, label %20, !dbg !1073

; <label>:17:                                     ; preds = %11
  %18 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 7, !dbg !1074
  %19 = load %struct.Node*, %struct.Node** %18, align 8, !dbg !1074, !tbaa !462
  br label %38, !dbg !1075

; <label>:20:                                     ; preds = %11
  %21 = call i8* @memcpy(i8* nonnull %15, i8* nonnull %14, i64 8) #6, !dbg !1076
  %22 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %23 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1, !dbg !1078
  %24 = load i32, i32* %23, align 4, !dbg !1078, !tbaa !469
  %25 = load i32, i32* %22, align 4, !dbg !1079, !tbaa !469
  %26 = add i32 %25, %24, !dbg !1079
  store i32 %26, i32* %22, align 4, !dbg !1079, !tbaa !469
  %27 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 7, !dbg !1080
  %28 = load %struct.Node*, %struct.Node** %27, align 8, !dbg !1080, !tbaa !462
  %29 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 4, !dbg !1080
  %30 = load i8, i8* %29, align 1, !dbg !1080, !tbaa !472
  %31 = zext i8 %30 to i32, !dbg !1080
  %32 = shl nsw i32 -1, %31, !dbg !1080
  %33 = or i32 %32, 1, !dbg !1080
  %34 = xor i32 %33, -2, !dbg !1080
  %35 = urem i32 %26, %34, !dbg !1080
  %36 = zext i32 %35 to i64, !dbg !1080
  %37 = getelementptr inbounds %struct.Node, %struct.Node* %28, i64 %36, !dbg !1080
  br label %38, !dbg !1081

; <label>:38:                                     ; preds = %17, %20
  %39 = phi %struct.Node* [ %19, %17 ], [ %28, %20 ]
  %40 = phi %struct.Node* [ %19, %17 ], [ %37, %20 ], !dbg !1082
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %15) #5, !dbg !1083
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %14), !dbg !1083
  br label %99, !dbg !1084

; <label>:41:                                     ; preds = %3
  %42 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 7, !dbg !1085
  %43 = load %struct.Node*, %struct.Node** %42, align 8, !dbg !1085, !tbaa !462
  %44 = bitcast %struct.lua_TValue* %2 to %struct.anon.1**, !dbg !1085
  %45 = load %struct.anon.1*, %struct.anon.1** %44, align 8, !dbg !1085, !tbaa !437
  %46 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %45, i64 0, i32 4, !dbg !1085
  %47 = load i32, i32* %46, align 4, !dbg !1085, !tbaa !437
  %48 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 4, !dbg !1085
  %49 = load i8, i8* %48, align 1, !dbg !1085, !tbaa !472
  %50 = zext i8 %49 to i32, !dbg !1085
  %51 = shl nsw i32 -1, %50, !dbg !1085
  %52 = xor i32 %51, -1, !dbg !1085
  %53 = and i32 %47, %52, !dbg !1085
  %54 = sext i32 %53 to i64, !dbg !1085
  %55 = getelementptr inbounds %struct.Node, %struct.Node* %43, i64 %54, !dbg !1085
  br label %99, !dbg !1086

; <label>:56:                                     ; preds = %3
  %57 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 7, !dbg !1087
  %58 = load %struct.Node*, %struct.Node** %57, align 8, !dbg !1087, !tbaa !462
  %59 = bitcast %struct.lua_TValue* %2 to i32*, !dbg !1087
  %60 = load i32, i32* %59, align 8, !dbg !1087, !tbaa !437
  %61 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 4, !dbg !1087
  %62 = load i8, i8* %61, align 1, !dbg !1087, !tbaa !472
  %63 = zext i8 %62 to i32, !dbg !1087
  %64 = shl nsw i32 -1, %63, !dbg !1087
  %65 = xor i32 %64, -1, !dbg !1087
  %66 = and i32 %60, %65, !dbg !1087
  %67 = sext i32 %66 to i64, !dbg !1087
  %68 = getelementptr inbounds %struct.Node, %struct.Node* %58, i64 %67, !dbg !1087
  br label %99, !dbg !1088

; <label>:69:                                     ; preds = %3
  %70 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 7, !dbg !1089
  %71 = load %struct.Node*, %struct.Node** %70, align 8, !dbg !1089, !tbaa !462
  %72 = bitcast %struct.lua_TValue* %2 to i64*, !dbg !1089
  %73 = load i64, i64* %72, align 8, !dbg !1089, !tbaa !437
  %74 = trunc i64 %73 to i32, !dbg !1089
  %75 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 4, !dbg !1089
  %76 = load i8, i8* %75, align 1, !dbg !1089, !tbaa !472
  %77 = zext i8 %76 to i32, !dbg !1089
  %78 = shl nsw i32 -1, %77, !dbg !1089
  %79 = or i32 %78, 1, !dbg !1089
  %80 = xor i32 %79, -2, !dbg !1089
  %81 = urem i32 %74, %80, !dbg !1089
  %82 = zext i32 %81 to i64, !dbg !1089
  %83 = getelementptr inbounds %struct.Node, %struct.Node* %71, i64 %82, !dbg !1089
  br label %99, !dbg !1090

; <label>:84:                                     ; preds = %3
  %85 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 7, !dbg !1091
  %86 = load %struct.Node*, %struct.Node** %85, align 8, !dbg !1091, !tbaa !462
  %87 = bitcast %struct.lua_TValue* %2 to i64*, !dbg !1091
  %88 = load i64, i64* %87, align 8, !dbg !1091, !tbaa !437
  %89 = trunc i64 %88 to i32, !dbg !1091
  %90 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 4, !dbg !1091
  %91 = load i8, i8* %90, align 1, !dbg !1091, !tbaa !472
  %92 = zext i8 %91 to i32, !dbg !1091
  %93 = shl nsw i32 -1, %92, !dbg !1091
  %94 = or i32 %93, 1, !dbg !1091
  %95 = xor i32 %94, -2, !dbg !1091
  %96 = urem i32 %89, %95, !dbg !1091
  %97 = zext i32 %96 to i64, !dbg !1091
  %98 = getelementptr inbounds %struct.Node, %struct.Node* %86, i64 %97, !dbg !1091
  br label %99, !dbg !1092

; <label>:99:                                     ; preds = %38, %41, %56, %69, %84
  %100 = phi %struct.Node* [ %86, %84 ], [ %71, %69 ], [ %58, %56 ], [ %43, %41 ], [ %39, %38 ]
  %101 = phi %struct.Node* [ %98, %84 ], [ %83, %69 ], [ %68, %56 ], [ %55, %41 ], [ %40, %38 ], !dbg !1093
  %102 = getelementptr inbounds %struct.Node, %struct.Node* %101, i64 0, i32 0, i32 1, !dbg !1095
  %103 = load i32, i32* %102, align 8, !dbg !1095, !tbaa !536
  %104 = icmp ne i32 %103, 0, !dbg !1095
  %105 = icmp eq %struct.Node* %101, @dummynode_, !dbg !1096
  %106 = or i1 %105, %104, !dbg !1097
  br i1 %106, label %107, label %434, !dbg !1097

; <label>:107:                                    ; preds = %99
  %108 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 8
  %109 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 7
  %110 = load %struct.Node*, %struct.Node** %108, align 8, !dbg !1105, !tbaa !786
  br label %111, !dbg !1106

; <label>:111:                                    ; preds = %115, %107
  %112 = phi %struct.Node* [ %113, %115 ], [ %110, %107 ], !dbg !1105
  %113 = getelementptr inbounds %struct.Node, %struct.Node* %112, i64 -1, !dbg !1105
  store %struct.Node* %113, %struct.Node** %108, align 8, !dbg !1105, !tbaa !786
  %114 = icmp ugt %struct.Node* %112, %100, !dbg !1107
  br i1 %114, label %115, label %119, !dbg !1106

; <label>:115:                                    ; preds = %111
  %116 = getelementptr inbounds %struct.Node, %struct.Node* %112, i64 -1, i32 1, i32 0, i32 1, !dbg !1108
  %117 = load i32, i32* %116, align 8, !dbg !1108, !tbaa !437
  %118 = icmp eq i32 %117, 0, !dbg !1108
  br i1 %118, label %336, label %111, !dbg !1111, !llvm.loop !1112

; <label>:119:                                    ; preds = %111
  %120 = bitcast [27 x i32]* %8 to i8*, !dbg !1118
  call void @llvm.lifetime.start.p0i8(i64 108, i8* nonnull %120) #5, !dbg !1118
  %121 = bitcast [27 x i32]* %8 to <4 x i32>*, !dbg !1120
  store <4 x i32> zeroinitializer, <4 x i32>* %121, align 16, !dbg !1120, !tbaa !469
  %122 = getelementptr inbounds [27 x i32], [27 x i32]* %8, i64 0, i64 4, !dbg !1123
  %123 = bitcast i32* %122 to <4 x i32>*, !dbg !1120
  store <4 x i32> zeroinitializer, <4 x i32>* %123, align 16, !dbg !1120, !tbaa !469
  %124 = getelementptr inbounds [27 x i32], [27 x i32]* %8, i64 0, i64 8, !dbg !1123
  %125 = bitcast i32* %124 to <4 x i32>*, !dbg !1120
  store <4 x i32> zeroinitializer, <4 x i32>* %125, align 16, !dbg !1120, !tbaa !469
  %126 = getelementptr inbounds [27 x i32], [27 x i32]* %8, i64 0, i64 12, !dbg !1123
  %127 = bitcast i32* %126 to <4 x i32>*, !dbg !1120
  store <4 x i32> zeroinitializer, <4 x i32>* %127, align 16, !dbg !1120, !tbaa !469
  %128 = getelementptr inbounds [27 x i32], [27 x i32]* %8, i64 0, i64 16, !dbg !1123
  %129 = bitcast i32* %128 to <4 x i32>*, !dbg !1120
  store <4 x i32> zeroinitializer, <4 x i32>* %129, align 16, !dbg !1120, !tbaa !469
  %130 = getelementptr inbounds [27 x i32], [27 x i32]* %8, i64 0, i64 20, !dbg !1123
  %131 = bitcast i32* %130 to <4 x i32>*, !dbg !1120
  store <4 x i32> zeroinitializer, <4 x i32>* %131, align 16, !dbg !1120, !tbaa !469
  %132 = getelementptr inbounds [27 x i32], [27 x i32]* %8, i64 0, i64 24, !dbg !1123
  store i32 0, i32* %132, align 16, !dbg !1120, !tbaa !469
  %133 = getelementptr inbounds [27 x i32], [27 x i32]* %8, i64 0, i64 25, !dbg !1123
  store i32 0, i32* %133, align 4, !dbg !1120, !tbaa !469
  %134 = getelementptr inbounds [27 x i32], [27 x i32]* %8, i64 0, i64 26, !dbg !1123
  store i32 0, i32* %134, align 8, !dbg !1120, !tbaa !469
  %135 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 10
  %136 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 6
  %137 = load i32, i32* %135, align 8, !tbaa !446
  br label %138, !dbg !1146

; <label>:138:                                    ; preds = %210, %119
  %139 = phi i64 [ 0, %119 ], [ %217, %210 ]
  %140 = phi i32 [ 1, %119 ], [ %211, %210 ]
  %141 = phi i32 [ 0, %119 ], [ %216, %210 ]
  %142 = phi i32 [ 1, %119 ], [ %218, %210 ]
  %143 = icmp sgt i32 %142, %137, !dbg !1149
  br i1 %143, label %144, label %146, !dbg !1151

; <label>:144:                                    ; preds = %138
  %145 = icmp sgt i32 %140, %137, !dbg !1152
  br i1 %145, label %220, label %146, !dbg !1155

; <label>:146:                                    ; preds = %144, %138
  %147 = phi i32 [ %137, %144 ], [ %142, %138 ], !dbg !1156
  %148 = icmp sgt i32 %140, %147, !dbg !1157
  br i1 %148, label %210, label %149, !dbg !1160

; <label>:149:                                    ; preds = %146
  %150 = load %struct.lua_TValue*, %struct.lua_TValue** %136, align 8, !tbaa !522
  %151 = sext i32 %140 to i64, !dbg !1160
  %152 = sext i32 %147 to i64, !dbg !1160
  %153 = icmp sgt i64 %152, %151, !dbg !1160
  %154 = select i1 %153, i64 %152, i64 %151, !dbg !1160
  %155 = add nsw i64 %154, 1, !dbg !1160
  %156 = sub nsw i64 %155, %151, !dbg !1160
  %157 = icmp ult i64 %156, 9, !dbg !1160
  br i1 %157, label %194, label %158, !dbg !1160

; <label>:158:                                    ; preds = %149
  %159 = and i64 %156, 7, !dbg !1160
  %160 = icmp eq i64 %159, 0, !dbg !1160
  %161 = select i1 %160, i64 8, i64 %159, !dbg !1160
  %162 = sub nsw i64 %156, %161, !dbg !1160
  %163 = add nsw i64 %162, %151, !dbg !1160
  br label %164, !dbg !1160

; <label>:164:                                    ; preds = %164, %158
  %165 = phi i64 [ 0, %158 ], [ %185, %164 ]
  %166 = phi <4 x i32> [ zeroinitializer, %158 ], [ %183, %164 ]
  %167 = phi <4 x i32> [ zeroinitializer, %158 ], [ %184, %164 ]
  %168 = add i64 %165, %151
  %169 = add nsw i64 %168, -1, !dbg !1161
  %170 = add i64 %168, 3, !dbg !1161
  %171 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %150, i64 %169, i32 1, !dbg !1161
  %172 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %150, i64 %170, i32 1, !dbg !1161
  %173 = bitcast i32* %171 to <16 x i32>*, !dbg !1161
  %174 = bitcast i32* %172 to <16 x i32>*, !dbg !1161
  %175 = load <16 x i32>, <16 x i32>* %173, align 8, !dbg !1161, !tbaa !420
  %176 = load <16 x i32>, <16 x i32>* %174, align 8, !dbg !1161, !tbaa !420
  %177 = shufflevector <16 x i32> %175, <16 x i32> undef, <4 x i32> <i32 0, i32 4, i32 8, i32 12>, !dbg !1161
  %178 = shufflevector <16 x i32> %176, <16 x i32> undef, <4 x i32> <i32 0, i32 4, i32 8, i32 12>, !dbg !1161
  %179 = icmp ne <4 x i32> %177, zeroinitializer, !dbg !1161
  %180 = icmp ne <4 x i32> %178, zeroinitializer, !dbg !1161
  %181 = zext <4 x i1> %179 to <4 x i32>, !dbg !1164
  %182 = zext <4 x i1> %180 to <4 x i32>, !dbg !1164
  %183 = add nuw nsw <4 x i32> %166, %181, !dbg !1164
  %184 = add nuw nsw <4 x i32> %167, %182, !dbg !1164
  %185 = add i64 %165, 8
  %186 = icmp eq i64 %185, %162
  br i1 %186, label %187, label %164, !llvm.loop !1165

; <label>:187:                                    ; preds = %164
  %188 = add nuw <4 x i32> %184, %183, !dbg !1164
  %189 = shufflevector <4 x i32> %188, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>, !dbg !1164
  %190 = add <4 x i32> %188, %189, !dbg !1164
  %191 = shufflevector <4 x i32> %190, <4 x i32> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>, !dbg !1164
  %192 = add <4 x i32> %190, %191, !dbg !1164
  %193 = extractelement <4 x i32> %192, i32 0, !dbg !1164
  br label %194, !dbg !1160

; <label>:194:                                    ; preds = %187, %149
  %195 = phi i64 [ %151, %149 ], [ %163, %187 ]
  %196 = phi i32 [ 0, %149 ], [ %193, %187 ]
  br label %197, !dbg !1161

; <label>:197:                                    ; preds = %194, %197
  %198 = phi i64 [ %206, %197 ], [ %195, %194 ]
  %199 = phi i32 [ %205, %197 ], [ %196, %194 ]
  %200 = add nsw i64 %198, -1, !dbg !1161
  %201 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %150, i64 %200, i32 1, !dbg !1161
  %202 = load i32, i32* %201, align 8, !dbg !1161, !tbaa !420
  %203 = icmp ne i32 %202, 0, !dbg !1161
  %204 = zext i1 %203 to i32, !dbg !1164
  %205 = add nuw nsw i32 %199, %204, !dbg !1164
  %206 = add nsw i64 %198, 1, !dbg !1169
  %207 = icmp slt i64 %198, %152, !dbg !1157
  br i1 %207, label %197, label %208, !dbg !1160, !llvm.loop !1170

; <label>:208:                                    ; preds = %197
  %209 = trunc i64 %206 to i32, !dbg !1172
  br label %210, !dbg !1172

; <label>:210:                                    ; preds = %208, %146
  %211 = phi i32 [ %140, %146 ], [ %209, %208 ], !dbg !1173
  %212 = phi i32 [ 0, %146 ], [ %205, %208 ], !dbg !1147
  %213 = getelementptr inbounds [27 x i32], [27 x i32]* %8, i64 0, i64 %139, !dbg !1172
  %214 = load i32, i32* %213, align 4, !dbg !1174, !tbaa !469
  %215 = add nsw i32 %214, %212, !dbg !1174
  store i32 %215, i32* %213, align 4, !dbg !1174, !tbaa !469
  %216 = add nuw nsw i32 %212, %141, !dbg !1175
  %217 = add nuw nsw i64 %139, 1, !dbg !1176
  %218 = shl nsw i32 %142, 1, !dbg !1177
  %219 = icmp ult i64 %217, 27, !dbg !1178
  br i1 %219, label %138, label %220, !dbg !1146, !llvm.loop !1179

; <label>:220:                                    ; preds = %210, %144
  %221 = phi i32 [ %141, %144 ], [ %216, %210 ], !dbg !1142
  %222 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 4, !dbg !1201
  %223 = load i8, i8* %222, align 1, !dbg !1201, !tbaa !472
  %224 = zext i8 %223 to i32, !dbg !1201
  %225 = shl nsw i32 -1, %224, !dbg !1202
  %226 = xor i32 %225, -1, !dbg !1202
  %227 = sext i32 %226 to i64, !dbg !1204
  br label %228, !dbg !1204

; <label>:228:                                    ; preds = %265, %220
  %229 = phi %struct.Node* [ %100, %220 ], [ %267, %265 ], !dbg !1205
  %230 = phi i64 [ %227, %220 ], [ %266, %265 ]
  %231 = phi i32 [ 0, %220 ], [ %263, %265 ]
  %232 = phi i32 [ 0, %220 ], [ %262, %265 ]
  %233 = getelementptr inbounds %struct.Node, %struct.Node* %229, i64 %230, i32 0, i32 1, !dbg !1206
  %234 = load i32, i32* %233, align 8, !dbg !1206, !tbaa !536
  %235 = icmp eq i32 %234, 0, !dbg !1206
  br i1 %235, label %261, label %236, !dbg !1208

; <label>:236:                                    ; preds = %228
  %237 = getelementptr inbounds %struct.Node, %struct.Node* %229, i64 %230, i32 1, i32 0, i32 1, !dbg !1219
  %238 = load i32, i32* %237, align 8, !dbg !1219, !tbaa !420
  %239 = icmp eq i32 %238, 3, !dbg !1219
  br i1 %239, label %240, label %257, !dbg !1221

; <label>:240:                                    ; preds = %236
  %241 = getelementptr inbounds %struct.Node, %struct.Node* %229, i64 %230, i32 1, !dbg !1222
  %242 = bitcast %union.TKey* %241 to double*, !dbg !1223
  %243 = load double, double* %242, align 8, !dbg !1223, !tbaa !437
  %244 = fptosi double %243 to i32, !dbg !1227
  %245 = sitofp i32 %244 to double, !dbg !1229
  %246 = fcmp une double %243, %245, !dbg !1229
  br i1 %246, label %257, label %247

; <label>:247:                                    ; preds = %240
  %248 = add i32 %244, -1, !dbg !1231
  %249 = icmp ult i32 %248, 67108864, !dbg !1231
  br i1 %249, label %250, label %257, !dbg !1231

; <label>:250:                                    ; preds = %247
  %251 = call i32 @luaO_log2(i32 %248) #6, !dbg !1233
  %252 = add nsw i32 %251, 1, !dbg !1233
  %253 = sext i32 %252 to i64, !dbg !1235
  %254 = getelementptr inbounds [27 x i32], [27 x i32]* %8, i64 0, i64 %253, !dbg !1235
  %255 = load i32, i32* %254, align 4, !dbg !1236, !tbaa !469
  %256 = add nsw i32 %255, 1, !dbg !1236
  store i32 %256, i32* %254, align 4, !dbg !1236, !tbaa !469
  br label %257, !dbg !1237

; <label>:257:                                    ; preds = %250, %247, %240, %236
  %258 = phi i32 [ 1, %250 ], [ 0, %247 ], [ 0, %236 ], [ 0, %240 ], !dbg !1238
  %259 = add nsw i32 %258, %232, !dbg !1239
  %260 = add nsw i32 %231, 1, !dbg !1240
  br label %261, !dbg !1241

; <label>:261:                                    ; preds = %257, %228
  %262 = phi i32 [ %232, %228 ], [ %259, %257 ], !dbg !1242
  %263 = phi i32 [ %231, %228 ], [ %260, %257 ], !dbg !1242
  %264 = icmp eq i64 %230, 0
  br i1 %264, label %268, label %265, !dbg !1204, !llvm.loop !1243

; <label>:265:                                    ; preds = %261
  %266 = add nsw i64 %230, -1, !dbg !1202
  %267 = load %struct.Node*, %struct.Node** %109, align 8, !dbg !1205, !tbaa !462
  br label %228, !dbg !1204

; <label>:268:                                    ; preds = %261
  %269 = add nsw i32 %262, %221, !dbg !1246
  %270 = load i32, i32* %9, align 8, !dbg !1252, !tbaa !420
  %271 = icmp eq i32 %270, 3, !dbg !1252
  br i1 %271, label %272, label %288, !dbg !1253

; <label>:272:                                    ; preds = %268
  %273 = bitcast %struct.lua_TValue* %2 to double*, !dbg !1254
  %274 = load double, double* %273, align 8, !dbg !1254, !tbaa !437
  %275 = fptosi double %274 to i32, !dbg !1256
  %276 = sitofp i32 %275 to double, !dbg !1258
  %277 = fcmp une double %274, %276, !dbg !1258
  br i1 %277, label %288, label %278

; <label>:278:                                    ; preds = %272
  %279 = add i32 %275, -1, !dbg !1260
  %280 = icmp ult i32 %279, 67108864, !dbg !1260
  br i1 %280, label %281, label %288, !dbg !1260

; <label>:281:                                    ; preds = %278
  %282 = call i32 @luaO_log2(i32 %279) #6, !dbg !1261
  %283 = add nsw i32 %282, 1, !dbg !1261
  %284 = sext i32 %283 to i64, !dbg !1262
  %285 = getelementptr inbounds [27 x i32], [27 x i32]* %8, i64 0, i64 %284, !dbg !1262
  %286 = load i32, i32* %285, align 4, !dbg !1263, !tbaa !469
  %287 = add nsw i32 %286, 1, !dbg !1263
  store i32 %287, i32* %285, align 4, !dbg !1263, !tbaa !469
  br label %288, !dbg !1264

; <label>:288:                                    ; preds = %281, %278, %272, %268
  %289 = phi i32 [ 1, %281 ], [ 0, %278 ], [ 0, %268 ], [ 0, %272 ], !dbg !1265
  %290 = add nsw i32 %269, %289, !dbg !1266
  %291 = icmp sgt i32 %290, 0, !dbg !1285
  br i1 %291, label %292, label %317, !dbg !1288

; <label>:292:                                    ; preds = %288, %312
  %293 = phi i64 [ %313, %312 ], [ 0, %288 ]
  %294 = phi i32 [ %315, %312 ], [ 0, %288 ]
  %295 = phi i32 [ %310, %312 ], [ 0, %288 ]
  %296 = phi i32 [ %309, %312 ], [ 0, %288 ]
  %297 = phi i32 [ %308, %312 ], [ 0, %288 ]
  %298 = phi i32 [ %314, %312 ], [ 1, %288 ]
  %299 = getelementptr inbounds [27 x i32], [27 x i32]* %8, i64 0, i64 %293, !dbg !1289
  %300 = load i32, i32* %299, align 4, !dbg !1289, !tbaa !469
  %301 = icmp sgt i32 %300, 0, !dbg !1292
  br i1 %301, label %302, label %307, !dbg !1293

; <label>:302:                                    ; preds = %292
  %303 = add nsw i32 %300, %297, !dbg !1294
  %304 = icmp sgt i32 %303, %294, !dbg !1296
  %305 = select i1 %304, i32 %303, i32 %296, !dbg !1298
  %306 = select i1 %304, i32 %298, i32 %295, !dbg !1298
  br label %307, !dbg !1298

; <label>:307:                                    ; preds = %302, %292
  %308 = phi i32 [ %297, %292 ], [ %303, %302 ], !dbg !1299
  %309 = phi i32 [ %296, %292 ], [ %305, %302 ], !dbg !1299
  %310 = phi i32 [ %295, %292 ], [ %306, %302 ], !dbg !1299
  %311 = icmp eq i32 %308, %290, !dbg !1300
  br i1 %311, label %317, label %312, !dbg !1302

; <label>:312:                                    ; preds = %307
  %313 = add nuw i64 %293, 1, !dbg !1303
  %314 = shl nsw i32 %298, 1, !dbg !1304
  %315 = and i32 %298, 2147483647, !dbg !1305
  %316 = icmp slt i32 %315, %290, !dbg !1285
  br i1 %316, label %292, label %317, !dbg !1288, !llvm.loop !1306

; <label>:317:                                    ; preds = %307, %312, %288
  %318 = phi i32 [ 0, %288 ], [ %309, %312 ], [ %309, %307 ], !dbg !1299
  %319 = phi i32 [ 0, %288 ], [ %310, %312 ], [ %310, %307 ], !dbg !1299
  %320 = add i32 %221, 1, !dbg !1310
  %321 = add i32 %320, %263, !dbg !1311
  %322 = sub i32 %321, %318, !dbg !1312
  call fastcc void @resize(%struct.lua_State* %0, %struct.Table* %1, i32 %319, i32 %322) #6, !dbg !1313
  call void @llvm.lifetime.end.p0i8(i64 108, i8* nonnull %120) #5, !dbg !1314
  %323 = call %struct.lua_TValue* @luaH_get(%struct.Table* %1, %struct.lua_TValue* %2) #6, !dbg !1319
  %324 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 3, !dbg !1321
  store i8 0, i8* %324, align 2, !dbg !1322, !tbaa !671
  %325 = icmp eq %struct.lua_TValue* %323, @luaO_nilobject_, !dbg !1323
  br i1 %325, label %326, label %459, !dbg !1324

; <label>:326:                                    ; preds = %317
  %327 = load i32, i32* %9, align 8, !dbg !1325, !tbaa !420
  switch i32 %327, label %334 [
    i32 0, label %328
    i32 3, label %329
  ], !dbg !1326

; <label>:328:                                    ; preds = %326
  call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0)) #6, !dbg !1327
  br label %334, !dbg !1327

; <label>:329:                                    ; preds = %326
  %330 = bitcast %struct.lua_TValue* %2 to double*, !dbg !1328
  %331 = load double, double* %330, align 8, !dbg !1328, !tbaa !437
  %332 = fcmp ord double %331, 0.000000e+00, !dbg !1328
  br i1 %332, label %334, label %333, !dbg !1329

; <label>:333:                                    ; preds = %329
  call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1330
  br label %334, !dbg !1330

; <label>:334:                                    ; preds = %333, %329, %328, %326
  %335 = call fastcc %struct.lua_TValue* @newkey(%struct.lua_State* %0, %struct.Table* nonnull %1, %struct.lua_TValue* nonnull %2) #6, !dbg !1331
  br label %459, !dbg !1332

; <label>:336:                                    ; preds = %115
  %337 = getelementptr inbounds %struct.Node, %struct.Node* %101, i64 0, i32 1, !dbg !1334
  %338 = getelementptr inbounds %struct.Node, %struct.Node* %101, i64 0, i32 1, i32 0, i32 1, !dbg !1336
  %339 = load i32, i32* %338, align 8, !dbg !1336, !tbaa !420
  switch i32 %339, label %402 [
    i32 3, label %340
    i32 4, label %365
    i32 1, label %378
    i32 2, label %389
  ], !dbg !1337

; <label>:340:                                    ; preds = %336
  %341 = bitcast %union.TKey* %337 to double*, !dbg !1338
  %342 = load double, double* %341, align 8, !dbg !1338, !tbaa !437
  %343 = bitcast double* %4 to i8*, !dbg !1339
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %343), !dbg !1339
  store double %342, double* %4, align 8, !tbaa !455
  %344 = bitcast [2 x i32]* %5 to i8*, !dbg !1341
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %344) #5, !dbg !1341
  %345 = fcmp oeq double %342, 0.000000e+00, !dbg !1342
  br i1 %345, label %363, label %346, !dbg !1343

; <label>:346:                                    ; preds = %340
  %347 = call i8* @memcpy(i8* nonnull %344, i8* nonnull %343, i64 8) #6, !dbg !1344
  %348 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %349 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1, !dbg !1346
  %350 = load i32, i32* %349, align 4, !dbg !1346, !tbaa !469
  %351 = load i32, i32* %348, align 4, !dbg !1347, !tbaa !469
  %352 = add i32 %351, %350, !dbg !1347
  store i32 %352, i32* %348, align 4, !dbg !1347, !tbaa !469
  %353 = load %struct.Node*, %struct.Node** %109, align 8, !dbg !1348, !tbaa !462
  %354 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 4, !dbg !1348
  %355 = load i8, i8* %354, align 1, !dbg !1348, !tbaa !472
  %356 = zext i8 %355 to i32, !dbg !1348
  %357 = shl nsw i32 -1, %356, !dbg !1348
  %358 = or i32 %357, 1, !dbg !1348
  %359 = xor i32 %358, -2, !dbg !1348
  %360 = urem i32 %352, %359, !dbg !1348
  %361 = zext i32 %360 to i64, !dbg !1348
  %362 = getelementptr inbounds %struct.Node, %struct.Node* %353, i64 %361, !dbg !1348
  br label %363, !dbg !1349

; <label>:363:                                    ; preds = %340, %346
  %364 = phi %struct.Node* [ %362, %346 ], [ %100, %340 ], !dbg !1350
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %344) #5, !dbg !1351
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %343), !dbg !1351
  br label %415, !dbg !1352

; <label>:365:                                    ; preds = %336
  %366 = bitcast %union.TKey* %337 to %struct.anon.1**, !dbg !1353
  %367 = load %struct.anon.1*, %struct.anon.1** %366, align 8, !dbg !1353, !tbaa !437
  %368 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %367, i64 0, i32 4, !dbg !1353
  %369 = load i32, i32* %368, align 4, !dbg !1353, !tbaa !437
  %370 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 4, !dbg !1353
  %371 = load i8, i8* %370, align 1, !dbg !1353, !tbaa !472
  %372 = zext i8 %371 to i32, !dbg !1353
  %373 = shl nsw i32 -1, %372, !dbg !1353
  %374 = xor i32 %373, -1, !dbg !1353
  %375 = and i32 %369, %374, !dbg !1353
  %376 = sext i32 %375 to i64, !dbg !1353
  %377 = getelementptr inbounds %struct.Node, %struct.Node* %100, i64 %376, !dbg !1353
  br label %415, !dbg !1354

; <label>:378:                                    ; preds = %336
  %379 = bitcast %union.TKey* %337 to i32*, !dbg !1355
  %380 = load i32, i32* %379, align 8, !dbg !1355, !tbaa !437
  %381 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 4, !dbg !1355
  %382 = load i8, i8* %381, align 1, !dbg !1355, !tbaa !472
  %383 = zext i8 %382 to i32, !dbg !1355
  %384 = shl nsw i32 -1, %383, !dbg !1355
  %385 = xor i32 %384, -1, !dbg !1355
  %386 = and i32 %380, %385, !dbg !1355
  %387 = sext i32 %386 to i64, !dbg !1355
  %388 = getelementptr inbounds %struct.Node, %struct.Node* %100, i64 %387, !dbg !1355
  br label %415, !dbg !1356

; <label>:389:                                    ; preds = %336
  %390 = bitcast %union.TKey* %337 to i64*, !dbg !1357
  %391 = load i64, i64* %390, align 8, !dbg !1357, !tbaa !437
  %392 = trunc i64 %391 to i32, !dbg !1357
  %393 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 4, !dbg !1357
  %394 = load i8, i8* %393, align 1, !dbg !1357, !tbaa !472
  %395 = zext i8 %394 to i32, !dbg !1357
  %396 = shl nsw i32 -1, %395, !dbg !1357
  %397 = or i32 %396, 1, !dbg !1357
  %398 = xor i32 %397, -2, !dbg !1357
  %399 = urem i32 %392, %398, !dbg !1357
  %400 = zext i32 %399 to i64, !dbg !1357
  %401 = getelementptr inbounds %struct.Node, %struct.Node* %100, i64 %400, !dbg !1357
  br label %415, !dbg !1358

; <label>:402:                                    ; preds = %336
  %403 = bitcast %union.TKey* %337 to i64*, !dbg !1359
  %404 = load i64, i64* %403, align 8, !dbg !1359, !tbaa !437
  %405 = trunc i64 %404 to i32, !dbg !1359
  %406 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 4, !dbg !1359
  %407 = load i8, i8* %406, align 1, !dbg !1359, !tbaa !472
  %408 = zext i8 %407 to i32, !dbg !1359
  %409 = shl nsw i32 -1, %408, !dbg !1359
  %410 = or i32 %409, 1, !dbg !1359
  %411 = xor i32 %410, -2, !dbg !1359
  %412 = urem i32 %405, %411, !dbg !1359
  %413 = zext i32 %412 to i64, !dbg !1359
  %414 = getelementptr inbounds %struct.Node, %struct.Node* %100, i64 %413, !dbg !1359
  br label %415, !dbg !1361

; <label>:415:                                    ; preds = %363, %365, %378, %389, %402
  %416 = phi %struct.Node* [ %414, %402 ], [ %401, %389 ], [ %388, %378 ], [ %377, %365 ], [ %364, %363 ], !dbg !1362
  %417 = icmp eq %struct.Node* %416, %101, !dbg !1364
  br i1 %417, label %428, label %418, !dbg !1366

; <label>:418:                                    ; preds = %415, %418
  %419 = phi %struct.Node* [ %421, %418 ], [ %416, %415 ], !dbg !1367
  %420 = getelementptr inbounds %struct.Node, %struct.Node* %419, i64 0, i32 1, i32 0, i32 2, !dbg !1369
  %421 = load %struct.Node*, %struct.Node** %420, align 8, !dbg !1369, !tbaa !437
  %422 = icmp eq %struct.Node* %421, %101, !dbg !1370
  br i1 %422, label %423, label %418, !dbg !1371, !llvm.loop !1372

; <label>:423:                                    ; preds = %418
  %424 = getelementptr inbounds %struct.Node, %struct.Node* %419, i64 0, i32 1, i32 0, i32 2, !dbg !1369
  store %struct.Node* %113, %struct.Node** %424, align 8, !dbg !1374, !tbaa !437
  %425 = bitcast %struct.Node* %113 to i8*, !dbg !1375
  %426 = bitcast %struct.Node* %101 to i8*, !dbg !1375
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %425, i8* align 8 %426, i64 40, i1 false), !dbg !1375, !tbaa.struct !1376
  %427 = getelementptr inbounds %struct.Node, %struct.Node* %101, i64 0, i32 1, i32 0, i32 2, !dbg !1378
  store %struct.Node* null, %struct.Node** %427, align 8, !dbg !1379, !tbaa !437
  store i32 0, i32* %102, align 8, !dbg !1380, !tbaa !536
  br label %434, !dbg !1381

; <label>:428:                                    ; preds = %415
  %429 = getelementptr inbounds %struct.Node, %struct.Node* %101, i64 0, i32 1, i32 0, i32 2, !dbg !1382
  %430 = bitcast %struct.Node** %429 to i64*, !dbg !1382
  %431 = load i64, i64* %430, align 8, !dbg !1382, !tbaa !437
  %432 = getelementptr inbounds %struct.Node, %struct.Node* %112, i64 -1, i32 1, i32 0, i32 2, !dbg !1384
  %433 = bitcast %struct.Node** %432 to i64*, !dbg !1385
  store i64 %431, i64* %433, align 8, !dbg !1385, !tbaa !437
  store %struct.Node* %113, %struct.Node** %429, align 8, !dbg !1386, !tbaa !437
  br label %434

; <label>:434:                                    ; preds = %423, %428, %99
  %435 = phi %struct.Node* [ %101, %99 ], [ %113, %428 ], [ %101, %423 ], !dbg !1094
  %436 = getelementptr inbounds %struct.Node, %struct.Node* %435, i64 0, i32 1, i32 0, !dbg !1387
  %437 = bitcast %struct.lua_TValue* %2 to i64*, !dbg !1388
  %438 = bitcast %struct.anon.0* %436 to i64*, !dbg !1388
  %439 = load i64, i64* %437, align 8, !dbg !1388
  store i64 %439, i64* %438, align 8, !dbg !1388
  %440 = load i32, i32* %9, align 8, !dbg !1389, !tbaa !420
  %441 = getelementptr inbounds %struct.Node, %struct.Node* %435, i64 0, i32 1, i32 0, i32 1, !dbg !1390
  store i32 %440, i32* %441, align 8, !dbg !1391, !tbaa !437
  %442 = load i32, i32* %9, align 8, !dbg !1392, !tbaa !420
  %443 = icmp sgt i32 %442, 3, !dbg !1392
  br i1 %443, label %444, label %457, !dbg !1392

; <label>:444:                                    ; preds = %434
  %445 = bitcast %struct.lua_TValue* %2 to %struct.GCheader**, !dbg !1392
  %446 = load %struct.GCheader*, %struct.GCheader** %445, align 8, !dbg !1392, !tbaa !437
  %447 = getelementptr inbounds %struct.GCheader, %struct.GCheader* %446, i64 0, i32 2, !dbg !1392
  %448 = load i8, i8* %447, align 1, !dbg !1392, !tbaa !437
  %449 = and i8 %448, 3, !dbg !1392
  %450 = icmp eq i8 %449, 0, !dbg !1392
  br i1 %450, label %457, label %451, !dbg !1392

; <label>:451:                                    ; preds = %444
  %452 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 2, !dbg !1392
  %453 = load i8, i8* %452, align 1, !dbg !1392, !tbaa !437
  %454 = and i8 %453, 4, !dbg !1392
  %455 = icmp eq i8 %454, 0, !dbg !1392
  br i1 %455, label %457, label %456, !dbg !1395

; <label>:456:                                    ; preds = %451
  call void @luaC_barrierback(%struct.lua_State* %0, %struct.Table* nonnull %1) #6, !dbg !1392
  br label %457, !dbg !1392

; <label>:457:                                    ; preds = %451, %444, %456, %434
  %458 = getelementptr inbounds %struct.Node, %struct.Node* %435, i64 0, i32 0, !dbg !1396
  br label %459, !dbg !1397

; <label>:459:                                    ; preds = %317, %334, %457
  %460 = phi %struct.lua_TValue* [ %458, %457 ], [ %335, %334 ], [ %323, %317 ], !dbg !1398
  ret %struct.lua_TValue* %460, !dbg !1399
}

; Function Attrs: noredzone nounwind
define hidden %struct.lua_TValue* @luaH_setnum(%struct.lua_State*, %struct.Table*, i32) local_unnamed_addr #0 !dbg !1400 {
  %4 = alloca double, align 8
  %5 = alloca [2 x i32], align 4
  %6 = alloca %struct.lua_TValue, align 8
  %7 = add nsw i32 %2, -1, !dbg !1421
  %8 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 10, !dbg !1422
  %9 = load i32, i32* %8, align 8, !dbg !1422, !tbaa !446
  %10 = icmp ult i32 %7, %9, !dbg !1423
  br i1 %10, label %11, label %16, !dbg !1424

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 6, !dbg !1425
  %13 = load %struct.lua_TValue*, %struct.lua_TValue** %12, align 8, !dbg !1425, !tbaa !522
  %14 = sext i32 %7 to i64, !dbg !1426
  %15 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %13, i64 %14, !dbg !1426
  br label %60, !dbg !1427

; <label>:16:                                     ; preds = %3
  %17 = sitofp i32 %2 to double, !dbg !1428
  %18 = bitcast double* %4 to i8*, !dbg !1430
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %18) #5, !dbg !1430
  store double %17, double* %4, align 8, !tbaa !455
  %19 = bitcast [2 x i32]* %5 to i8*, !dbg !1432
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %19) #5, !dbg !1432
  %20 = icmp eq i32 %2, 0, !dbg !1433
  br i1 %20, label %21, label %24, !dbg !1434

; <label>:21:                                     ; preds = %16
  %22 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 7, !dbg !1435
  %23 = load %struct.Node*, %struct.Node** %22, align 8, !dbg !1435, !tbaa !462
  br label %42, !dbg !1436

; <label>:24:                                     ; preds = %16
  %25 = call i8* @memcpy(i8* nonnull %19, i8* nonnull %18, i64 8) #6, !dbg !1437
  %26 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %27 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1, !dbg !1439
  %28 = load i32, i32* %27, align 4, !dbg !1439, !tbaa !469
  %29 = load i32, i32* %26, align 4, !dbg !1440, !tbaa !469
  %30 = add i32 %29, %28, !dbg !1440
  store i32 %30, i32* %26, align 4, !dbg !1440, !tbaa !469
  %31 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 7, !dbg !1441
  %32 = load %struct.Node*, %struct.Node** %31, align 8, !dbg !1441, !tbaa !462
  %33 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 4, !dbg !1441
  %34 = load i8, i8* %33, align 1, !dbg !1441, !tbaa !472
  %35 = zext i8 %34 to i32, !dbg !1441
  %36 = shl nsw i32 -1, %35, !dbg !1441
  %37 = or i32 %36, 1, !dbg !1441
  %38 = xor i32 %37, -2, !dbg !1441
  %39 = urem i32 %30, %38, !dbg !1441
  %40 = zext i32 %39 to i64, !dbg !1441
  %41 = getelementptr inbounds %struct.Node, %struct.Node* %32, i64 %40, !dbg !1441
  br label %42, !dbg !1442

; <label>:42:                                     ; preds = %24, %21
  %43 = phi %struct.Node* [ %23, %21 ], [ %41, %24 ], !dbg !1443
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #5, !dbg !1444
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #5, !dbg !1444
  br label %44, !dbg !1446

; <label>:44:                                     ; preds = %56, %42
  %45 = phi %struct.Node* [ %43, %42 ], [ %58, %56 ], !dbg !1447
  %46 = getelementptr inbounds %struct.Node, %struct.Node* %45, i64 0, i32 1, i32 0, i32 1, !dbg !1448
  %47 = load i32, i32* %46, align 8, !dbg !1448, !tbaa !437
  %48 = icmp eq i32 %47, 3, !dbg !1448
  br i1 %48, label %49, label %56, !dbg !1449

; <label>:49:                                     ; preds = %44
  %50 = getelementptr inbounds %struct.Node, %struct.Node* %45, i64 0, i32 1, i32 0, i32 0, !dbg !1450
  %51 = bitcast %union.Value* %50 to double*, !dbg !1450
  %52 = load double, double* %51, align 8, !dbg !1450, !tbaa !437
  %53 = fcmp oeq double %52, %17, !dbg !1450
  br i1 %53, label %54, label %56, !dbg !1451

; <label>:54:                                     ; preds = %49
  %55 = getelementptr inbounds %struct.Node, %struct.Node* %45, i64 0, i32 0, !dbg !1452
  br label %60, !dbg !1453

; <label>:56:                                     ; preds = %49, %44
  %57 = getelementptr inbounds %struct.Node, %struct.Node* %45, i64 0, i32 1, i32 0, i32 2, !dbg !1454
  %58 = load %struct.Node*, %struct.Node** %57, align 8, !dbg !1454, !tbaa !437
  %59 = icmp eq %struct.Node* %58, null, !dbg !1455
  br i1 %59, label %65, label %44, !dbg !1455, !llvm.loop !855

; <label>:60:                                     ; preds = %11, %54
  %61 = phi %struct.lua_TValue* [ %15, %11 ], [ %55, %54 ], !dbg !1447
  %62 = icmp eq %struct.lua_TValue* %61, @luaO_nilobject_, !dbg !1457
  br i1 %62, label %63, label %71, !dbg !1458

; <label>:63:                                     ; preds = %60
  %64 = sitofp i32 %2 to double, !dbg !1459
  br label %65, !dbg !1458

; <label>:65:                                     ; preds = %56, %63
  %66 = phi double [ %64, %63 ], [ %17, %56 ], !dbg !1459
  %67 = bitcast %struct.lua_TValue* %6 to i8*, !dbg !1460
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %67) #5, !dbg !1460
  %68 = bitcast %struct.lua_TValue* %6 to double*, !dbg !1459
  store double %66, double* %68, align 8, !dbg !1459, !tbaa !437
  %69 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %6, i64 0, i32 1, !dbg !1459
  store i32 3, i32* %69, align 8, !dbg !1459, !tbaa !420
  %70 = call fastcc %struct.lua_TValue* @newkey(%struct.lua_State* %0, %struct.Table* %1, %struct.lua_TValue* nonnull %6) #7, !dbg !1462
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %67) #5, !dbg !1463
  br label %71

; <label>:71:                                     ; preds = %60, %65
  %72 = phi %struct.lua_TValue* [ %70, %65 ], [ %61, %60 ], !dbg !1464
  ret %struct.lua_TValue* %72, !dbg !1465
}

; Function Attrs: noredzone nounwind
define hidden %struct.lua_TValue* @luaH_setstr(%struct.lua_State*, %struct.Table*, %union.TString*) local_unnamed_addr #0 !dbg !1466 {
  %4 = alloca %struct.lua_TValue, align 8
  %5 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 7, !dbg !1485
  %6 = load %struct.Node*, %struct.Node** %5, align 8, !dbg !1485, !tbaa !462
  %7 = getelementptr inbounds %union.TString, %union.TString* %2, i64 0, i32 0, i32 4, !dbg !1485
  %8 = load i32, i32* %7, align 4, !dbg !1485, !tbaa !437
  %9 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 4, !dbg !1485
  %10 = load i8, i8* %9, align 1, !dbg !1485, !tbaa !472
  %11 = zext i8 %10 to i32, !dbg !1485
  %12 = shl nsw i32 -1, %11, !dbg !1485
  %13 = xor i32 %12, -1, !dbg !1485
  %14 = and i32 %8, %13, !dbg !1485
  %15 = sext i32 %14 to i64, !dbg !1485
  %16 = getelementptr inbounds %struct.Node, %struct.Node* %6, i64 %15, !dbg !1485
  br label %17, !dbg !1487

; <label>:17:                                     ; preds = %27, %3
  %18 = phi %struct.Node* [ %16, %3 ], [ %29, %27 ], !dbg !1488
  %19 = getelementptr inbounds %struct.Node, %struct.Node* %18, i64 0, i32 1, i32 0, i32 1, !dbg !1489
  %20 = load i32, i32* %19, align 8, !dbg !1489, !tbaa !437
  %21 = icmp eq i32 %20, 4, !dbg !1489
  br i1 %21, label %22, label %27, !dbg !1490

; <label>:22:                                     ; preds = %17
  %23 = getelementptr inbounds %struct.Node, %struct.Node* %18, i64 0, i32 1, i32 0, i32 0, i32 0, !dbg !1491
  %24 = bitcast %union.GCObject** %23 to %union.TString**, !dbg !1491
  %25 = load %union.TString*, %union.TString** %24, align 8, !dbg !1491, !tbaa !437
  %26 = icmp eq %union.TString* %25, %2, !dbg !1492
  br i1 %26, label %31, label %27, !dbg !1493

; <label>:27:                                     ; preds = %22, %17
  %28 = getelementptr inbounds %struct.Node, %struct.Node* %18, i64 0, i32 1, i32 0, i32 2, !dbg !1494
  %29 = load %struct.Node*, %struct.Node** %28, align 8, !dbg !1494, !tbaa !437
  %30 = icmp eq %struct.Node* %29, null, !dbg !1495
  br i1 %30, label %34, label %17, !dbg !1495, !llvm.loop !882

; <label>:31:                                     ; preds = %22
  %32 = getelementptr inbounds %struct.Node, %struct.Node* %18, i64 0, i32 0, !dbg !1496
  %33 = icmp eq %struct.lua_TValue* %32, @luaO_nilobject_, !dbg !1498
  br i1 %33, label %34, label %39, !dbg !1499

; <label>:34:                                     ; preds = %27, %31
  %35 = bitcast %struct.lua_TValue* %4 to i8*, !dbg !1500
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %35) #5, !dbg !1500
  %36 = bitcast %struct.lua_TValue* %4 to %union.TString**, !dbg !1501
  store %union.TString* %2, %union.TString** %36, align 8, !dbg !1501, !tbaa !437
  %37 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %4, i64 0, i32 1, !dbg !1501
  store i32 4, i32* %37, align 8, !dbg !1501, !tbaa !420
  %38 = call fastcc %struct.lua_TValue* @newkey(%struct.lua_State* %0, %struct.Table* %1, %struct.lua_TValue* nonnull %4) #7, !dbg !1503
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %35) #5, !dbg !1504
  br label %39

; <label>:39:                                     ; preds = %31, %34
  %40 = phi %struct.lua_TValue* [ %38, %34 ], [ %32, %31 ], !dbg !1505
  ret %struct.lua_TValue* %40, !dbg !1506
}

; Function Attrs: noredzone nounwind
define hidden i32 @luaH_getn(%struct.Table* nocapture readonly) local_unnamed_addr #0 !dbg !1507 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca [2 x i32], align 4
  %6 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 10, !dbg !1543
  %7 = load i32, i32* %6, align 8, !dbg !1543, !tbaa !446
  %8 = icmp eq i32 %7, 0, !dbg !1545
  br i1 %8, label %33, label %9, !dbg !1546

; <label>:9:                                      ; preds = %1
  %10 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 6, !dbg !1547
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8, !dbg !1547, !tbaa !522
  %12 = add i32 %7, -1, !dbg !1547
  %13 = zext i32 %12 to i64, !dbg !1547
  %14 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %11, i64 %13, i32 1, !dbg !1547
  %15 = load i32, i32* %14, align 8, !dbg !1547, !tbaa !420
  %16 = icmp eq i32 %15, 0, !dbg !1547
  br i1 %16, label %17, label %33, !dbg !1548

; <label>:17:                                     ; preds = %9
  %18 = icmp ugt i32 %7, 1, !dbg !1550
  br i1 %18, label %19, label %222, !dbg !1551

; <label>:19:                                     ; preds = %17, %19
  %20 = phi i32 [ %30, %19 ], [ 0, %17 ]
  %21 = phi i32 [ %29, %19 ], [ %7, %17 ]
  %22 = add i32 %20, %21, !dbg !1552
  %23 = lshr i32 %22, 1, !dbg !1553
  %24 = add nsw i32 %23, -1, !dbg !1555
  %25 = zext i32 %24 to i64, !dbg !1555
  %26 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %11, i64 %25, i32 1, !dbg !1555
  %27 = load i32, i32* %26, align 8, !dbg !1555, !tbaa !420
  %28 = icmp eq i32 %27, 0, !dbg !1555
  %29 = select i1 %28, i32 %23, i32 %21, !dbg !1557
  %30 = select i1 %28, i32 %20, i32 %23, !dbg !1557
  %31 = sub i32 %29, %30, !dbg !1558
  %32 = icmp ugt i32 %31, 1, !dbg !1550
  br i1 %32, label %19, label %222, !dbg !1551, !llvm.loop !1559

; <label>:33:                                     ; preds = %1, %9
  %34 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 7, !dbg !1561
  %35 = load %struct.Node*, %struct.Node** %34, align 8, !dbg !1561, !tbaa !462
  %36 = icmp eq %struct.Node* %35, @dummynode_, !dbg !1562
  br i1 %36, label %222, label %37, !dbg !1563

; <label>:37:                                     ; preds = %33
  %38 = add i32 %7, 1, !dbg !1567
  %39 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 6
  %40 = bitcast double* %4 to i8*
  %41 = bitcast [2 x i32]* %5 to i8*
  %42 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %43 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  %44 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 4
  br label %45, !dbg !1568

; <label>:45:                                     ; preds = %106, %37
  %46 = phi %struct.Node* [ %35, %37 ], [ %93, %106 ]
  %47 = phi i32 [ %7, %37 ], [ %107, %106 ], !dbg !1569
  %48 = phi i32 [ %38, %37 ], [ %104, %106 ], !dbg !1570
  %49 = phi i32 [ %7, %37 ], [ %48, %106 ], !dbg !1570
  %50 = add nsw i32 %48, -1, !dbg !1573
  %51 = icmp ult i32 %50, %47, !dbg !1574
  br i1 %51, label %52, label %56, !dbg !1575

; <label>:52:                                     ; preds = %45
  %53 = load %struct.lua_TValue*, %struct.lua_TValue** %39, align 8, !dbg !1576, !tbaa !522
  %54 = sext i32 %50 to i64, !dbg !1577
  %55 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %53, i64 %54, !dbg !1577
  br label %92, !dbg !1578

; <label>:56:                                     ; preds = %45
  %57 = sitofp i32 %48 to double, !dbg !1579
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %40) #5, !dbg !1581
  store double %57, double* %4, align 8, !tbaa !455
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %41) #5, !dbg !1583
  %58 = icmp eq i32 %48, 0, !dbg !1584
  br i1 %58, label %73, label %59, !dbg !1585

; <label>:59:                                     ; preds = %56
  %60 = call i8* @memcpy(i8* nonnull %41, i8* nonnull %40, i64 8) #6, !dbg !1586
  %61 = load i32, i32* %43, align 4, !dbg !1588, !tbaa !469
  %62 = load i32, i32* %42, align 4, !dbg !1589, !tbaa !469
  %63 = add i32 %62, %61, !dbg !1589
  store i32 %63, i32* %42, align 4, !dbg !1589, !tbaa !469
  %64 = load %struct.Node*, %struct.Node** %34, align 8, !dbg !1590, !tbaa !462
  %65 = load i8, i8* %44, align 1, !dbg !1590, !tbaa !472
  %66 = zext i8 %65 to i32, !dbg !1590
  %67 = shl nsw i32 -1, %66, !dbg !1590
  %68 = or i32 %67, 1, !dbg !1590
  %69 = xor i32 %68, -2, !dbg !1590
  %70 = urem i32 %63, %69, !dbg !1590
  %71 = zext i32 %70 to i64, !dbg !1590
  %72 = getelementptr inbounds %struct.Node, %struct.Node* %64, i64 %71, !dbg !1590
  br label %73, !dbg !1591

; <label>:73:                                     ; preds = %56, %59
  %74 = phi %struct.Node* [ %64, %59 ], [ %46, %56 ]
  %75 = phi %struct.Node* [ %72, %59 ], [ %46, %56 ], !dbg !1592
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %41) #5, !dbg !1593
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %40) #5, !dbg !1593
  br label %76, !dbg !1595

; <label>:76:                                     ; preds = %88, %73
  %77 = phi %struct.Node* [ %75, %73 ], [ %90, %88 ], !dbg !1596
  %78 = getelementptr inbounds %struct.Node, %struct.Node* %77, i64 0, i32 1, i32 0, i32 1, !dbg !1597
  %79 = load i32, i32* %78, align 8, !dbg !1597, !tbaa !437
  %80 = icmp eq i32 %79, 3, !dbg !1597
  br i1 %80, label %81, label %88, !dbg !1598

; <label>:81:                                     ; preds = %76
  %82 = getelementptr inbounds %struct.Node, %struct.Node* %77, i64 0, i32 1, i32 0, i32 0, !dbg !1599
  %83 = bitcast %union.Value* %82 to double*, !dbg !1599
  %84 = load double, double* %83, align 8, !dbg !1599, !tbaa !437
  %85 = fcmp oeq double %84, %57, !dbg !1599
  br i1 %85, label %86, label %88, !dbg !1600

; <label>:86:                                     ; preds = %81
  %87 = getelementptr inbounds %struct.Node, %struct.Node* %77, i64 0, i32 0, !dbg !1601
  br label %92, !dbg !1602

; <label>:88:                                     ; preds = %81, %76
  %89 = getelementptr inbounds %struct.Node, %struct.Node* %77, i64 0, i32 1, i32 0, i32 2, !dbg !1603
  %90 = load %struct.Node*, %struct.Node** %89, align 8, !dbg !1603, !tbaa !437
  %91 = icmp eq %struct.Node* %90, null, !dbg !1604
  br i1 %91, label %92, label %76, !dbg !1604, !llvm.loop !855

; <label>:92:                                     ; preds = %88, %86, %52
  %93 = phi %struct.Node* [ %46, %52 ], [ %74, %86 ], [ %74, %88 ]
  %94 = phi %struct.lua_TValue* [ %55, %52 ], [ %87, %86 ], [ @luaO_nilobject_, %88 ], !dbg !1596
  %95 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %94, i64 0, i32 1, !dbg !1605
  %96 = load i32, i32* %95, align 8, !dbg !1605, !tbaa !420
  %97 = icmp eq i32 %96, 0, !dbg !1605
  br i1 %97, label %98, label %103, !dbg !1568

; <label>:98:                                     ; preds = %92
  %99 = sub i32 %48, %49, !dbg !1606
  %100 = icmp ugt i32 %99, 1, !dbg !1607
  br i1 %100, label %101, label %222, !dbg !1608

; <label>:101:                                    ; preds = %98
  %102 = bitcast double* %2 to i8*
  br label %163, !dbg !1608

; <label>:103:                                    ; preds = %92
  %104 = shl i32 %48, 1, !dbg !1609
  %105 = icmp ugt i32 %104, 2147483645, !dbg !1610
  br i1 %105, label %108, label %106, !dbg !1611, !llvm.loop !1612

; <label>:106:                                    ; preds = %103
  %107 = load i32, i32* %6, align 8, !dbg !1569, !tbaa !446
  br label %45, !dbg !1611

; <label>:108:                                    ; preds = %103
  %109 = bitcast double* %3 to i8*
  br label %110, !dbg !1615

; <label>:110:                                    ; preds = %156, %108
  %111 = phi %struct.Node* [ %157, %156 ], [ %93, %108 ]
  %112 = phi i32 [ %162, %156 ], [ 1, %108 ], !dbg !1616
  %113 = add i32 %112, -1, !dbg !1615
  %114 = load i32, i32* %6, align 8, !dbg !1619, !tbaa !446
  %115 = icmp ult i32 %113, %114, !dbg !1620
  br i1 %115, label %116, label %120, !dbg !1621

; <label>:116:                                    ; preds = %110
  %117 = load %struct.lua_TValue*, %struct.lua_TValue** %39, align 8, !dbg !1622, !tbaa !522
  %118 = sext i32 %113 to i64, !dbg !1623
  %119 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %117, i64 %118, !dbg !1623
  br label %156, !dbg !1624

; <label>:120:                                    ; preds = %110
  %121 = sitofp i32 %112 to double, !dbg !1625
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %109) #5, !dbg !1627
  store double %121, double* %3, align 8, !tbaa !455
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %41) #5, !dbg !1629
  %122 = icmp eq i32 %112, 0, !dbg !1630
  br i1 %122, label %137, label %123, !dbg !1631

; <label>:123:                                    ; preds = %120
  %124 = call i8* @memcpy(i8* nonnull %41, i8* nonnull %109, i64 8) #6, !dbg !1632
  %125 = load i32, i32* %43, align 4, !dbg !1634, !tbaa !469
  %126 = load i32, i32* %42, align 4, !dbg !1635, !tbaa !469
  %127 = add i32 %126, %125, !dbg !1635
  store i32 %127, i32* %42, align 4, !dbg !1635, !tbaa !469
  %128 = load %struct.Node*, %struct.Node** %34, align 8, !dbg !1636, !tbaa !462
  %129 = load i8, i8* %44, align 1, !dbg !1636, !tbaa !472
  %130 = zext i8 %129 to i32, !dbg !1636
  %131 = shl nsw i32 -1, %130, !dbg !1636
  %132 = or i32 %131, 1, !dbg !1636
  %133 = xor i32 %132, -2, !dbg !1636
  %134 = urem i32 %127, %133, !dbg !1636
  %135 = zext i32 %134 to i64, !dbg !1636
  %136 = getelementptr inbounds %struct.Node, %struct.Node* %128, i64 %135, !dbg !1636
  br label %137, !dbg !1637

; <label>:137:                                    ; preds = %120, %123
  %138 = phi %struct.Node* [ %128, %123 ], [ %111, %120 ]
  %139 = phi %struct.Node* [ %136, %123 ], [ %111, %120 ], !dbg !1638
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %41) #5, !dbg !1639
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %109) #5, !dbg !1639
  br label %140, !dbg !1641

; <label>:140:                                    ; preds = %152, %137
  %141 = phi %struct.Node* [ %139, %137 ], [ %154, %152 ], !dbg !1642
  %142 = getelementptr inbounds %struct.Node, %struct.Node* %141, i64 0, i32 1, i32 0, i32 1, !dbg !1643
  %143 = load i32, i32* %142, align 8, !dbg !1643, !tbaa !437
  %144 = icmp eq i32 %143, 3, !dbg !1643
  br i1 %144, label %145, label %152, !dbg !1644

; <label>:145:                                    ; preds = %140
  %146 = getelementptr inbounds %struct.Node, %struct.Node* %141, i64 0, i32 1, i32 0, i32 0, !dbg !1645
  %147 = bitcast %union.Value* %146 to double*, !dbg !1645
  %148 = load double, double* %147, align 8, !dbg !1645, !tbaa !437
  %149 = fcmp oeq double %148, %121, !dbg !1645
  br i1 %149, label %150, label %152, !dbg !1646

; <label>:150:                                    ; preds = %145
  %151 = getelementptr inbounds %struct.Node, %struct.Node* %141, i64 0, i32 0, !dbg !1647
  br label %156, !dbg !1648

; <label>:152:                                    ; preds = %145, %140
  %153 = getelementptr inbounds %struct.Node, %struct.Node* %141, i64 0, i32 1, i32 0, i32 2, !dbg !1649
  %154 = load %struct.Node*, %struct.Node** %153, align 8, !dbg !1649, !tbaa !437
  %155 = icmp eq %struct.Node* %154, null, !dbg !1650
  br i1 %155, label %156, label %140, !dbg !1650, !llvm.loop !855

; <label>:156:                                    ; preds = %152, %150, %116
  %157 = phi %struct.Node* [ %111, %116 ], [ %138, %150 ], [ %138, %152 ]
  %158 = phi %struct.lua_TValue* [ %119, %116 ], [ %151, %150 ], [ @luaO_nilobject_, %152 ], !dbg !1642
  %159 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %158, i64 0, i32 1, !dbg !1651
  %160 = load i32, i32* %159, align 8, !dbg !1651, !tbaa !420
  %161 = icmp eq i32 %160, 0, !dbg !1651
  %162 = add i32 %112, 1, !dbg !1652
  br i1 %161, label %222, label %110, !dbg !1653, !llvm.loop !1654

; <label>:163:                                    ; preds = %212, %101
  %164 = phi %struct.Node* [ %93, %101 ], [ %213, %212 ]
  %165 = phi i32 [ %49, %101 ], [ %219, %212 ]
  %166 = phi i32 [ %48, %101 ], [ %218, %212 ]
  %167 = add i32 %166, %165, !dbg !1657
  %168 = lshr i32 %167, 1, !dbg !1658
  %169 = add nsw i32 %168, -1, !dbg !1662
  %170 = load i32, i32* %6, align 8, !dbg !1663, !tbaa !446
  %171 = icmp ult i32 %169, %170, !dbg !1664
  br i1 %171, label %172, label %176, !dbg !1665

; <label>:172:                                    ; preds = %163
  %173 = load %struct.lua_TValue*, %struct.lua_TValue** %39, align 8, !dbg !1666, !tbaa !522
  %174 = sext i32 %169 to i64, !dbg !1667
  %175 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %173, i64 %174, !dbg !1667
  br label %212, !dbg !1668

; <label>:176:                                    ; preds = %163
  %177 = sitofp i32 %168 to double, !dbg !1669
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %102) #5, !dbg !1671
  store double %177, double* %2, align 8, !tbaa !455
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %41) #5, !dbg !1673
  %178 = icmp eq i32 %168, 0, !dbg !1674
  br i1 %178, label %193, label %179, !dbg !1675

; <label>:179:                                    ; preds = %176
  %180 = call i8* @memcpy(i8* nonnull %41, i8* nonnull %102, i64 8) #6, !dbg !1676
  %181 = load i32, i32* %43, align 4, !dbg !1678, !tbaa !469
  %182 = load i32, i32* %42, align 4, !dbg !1679, !tbaa !469
  %183 = add i32 %182, %181, !dbg !1679
  store i32 %183, i32* %42, align 4, !dbg !1679, !tbaa !469
  %184 = load %struct.Node*, %struct.Node** %34, align 8, !dbg !1680, !tbaa !462
  %185 = load i8, i8* %44, align 1, !dbg !1680, !tbaa !472
  %186 = zext i8 %185 to i32, !dbg !1680
  %187 = shl nsw i32 -1, %186, !dbg !1680
  %188 = or i32 %187, 1, !dbg !1680
  %189 = xor i32 %188, -2, !dbg !1680
  %190 = urem i32 %183, %189, !dbg !1680
  %191 = zext i32 %190 to i64, !dbg !1680
  %192 = getelementptr inbounds %struct.Node, %struct.Node* %184, i64 %191, !dbg !1680
  br label %193, !dbg !1681

; <label>:193:                                    ; preds = %176, %179
  %194 = phi %struct.Node* [ %184, %179 ], [ %164, %176 ]
  %195 = phi %struct.Node* [ %192, %179 ], [ %164, %176 ], !dbg !1682
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %41) #5, !dbg !1683
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %102) #5, !dbg !1683
  br label %196, !dbg !1685

; <label>:196:                                    ; preds = %208, %193
  %197 = phi %struct.Node* [ %195, %193 ], [ %210, %208 ], !dbg !1686
  %198 = getelementptr inbounds %struct.Node, %struct.Node* %197, i64 0, i32 1, i32 0, i32 1, !dbg !1687
  %199 = load i32, i32* %198, align 8, !dbg !1687, !tbaa !437
  %200 = icmp eq i32 %199, 3, !dbg !1687
  br i1 %200, label %201, label %208, !dbg !1688

; <label>:201:                                    ; preds = %196
  %202 = getelementptr inbounds %struct.Node, %struct.Node* %197, i64 0, i32 1, i32 0, i32 0, !dbg !1689
  %203 = bitcast %union.Value* %202 to double*, !dbg !1689
  %204 = load double, double* %203, align 8, !dbg !1689, !tbaa !437
  %205 = fcmp oeq double %204, %177, !dbg !1689
  br i1 %205, label %206, label %208, !dbg !1690

; <label>:206:                                    ; preds = %201
  %207 = getelementptr inbounds %struct.Node, %struct.Node* %197, i64 0, i32 0, !dbg !1691
  br label %212, !dbg !1692

; <label>:208:                                    ; preds = %201, %196
  %209 = getelementptr inbounds %struct.Node, %struct.Node* %197, i64 0, i32 1, i32 0, i32 2, !dbg !1693
  %210 = load %struct.Node*, %struct.Node** %209, align 8, !dbg !1693, !tbaa !437
  %211 = icmp eq %struct.Node* %210, null, !dbg !1694
  br i1 %211, label %212, label %196, !dbg !1694, !llvm.loop !855

; <label>:212:                                    ; preds = %208, %206, %172
  %213 = phi %struct.Node* [ %164, %172 ], [ %194, %206 ], [ %194, %208 ]
  %214 = phi %struct.lua_TValue* [ %175, %172 ], [ %207, %206 ], [ @luaO_nilobject_, %208 ], !dbg !1686
  %215 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %214, i64 0, i32 1, !dbg !1695
  %216 = load i32, i32* %215, align 8, !dbg !1695, !tbaa !420
  %217 = icmp eq i32 %216, 0, !dbg !1695
  %218 = select i1 %217, i32 %168, i32 %166, !dbg !1696
  %219 = select i1 %217, i32 %165, i32 %168, !dbg !1696
  %220 = sub i32 %218, %219, !dbg !1606
  %221 = icmp ugt i32 %220, 1, !dbg !1607
  br i1 %221, label %163, label %222, !dbg !1608, !llvm.loop !1697

; <label>:222:                                    ; preds = %19, %156, %212, %17, %98, %33
  %223 = phi i32 [ %7, %33 ], [ %49, %98 ], [ 0, %17 ], [ %219, %212 ], [ %113, %156 ], [ %30, %19 ], !dbg !1700
  ret i32 %223, !dbg !1701
}

; Function Attrs: noredzone
declare hidden i8* @luaM_toobig(%struct.lua_State*) local_unnamed_addr #3

; Function Attrs: noredzone
declare hidden i32 @luaO_log2(i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare hidden void @luaC_barrierback(%struct.lua_State*, %struct.Table*) local_unnamed_addr #3

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noredzone nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nobuiltin noredzone nounwind }
attributes #7 = { nobuiltin noredzone }

!llvm.module.flags = !{!344, !345, !346}
!llvm.ident = !{!347}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "dummynode_", scope: !2, file: !3, line: 75, type: !343, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !342)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/ltable.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !{}
!5 = !{!6, !9, !39, !15, !26, !322, !50, !90, !101, !52, !155}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Number", file: !7, line: 99, baseType: !8)
!7 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lua.h", directory: "/root/.unikraft/apps/redis/build")
!8 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "Table", file: !11, line: 348, baseType: !12)
!11 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lobject.h", directory: "/root/.unikraft/apps/redis/build")
!12 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Table", file: !11, line: 338, size: 512, elements: !13)
!13 = !{!14, !315, !316, !317, !318, !319, !320, !321, !339, !340, !341}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !12, file: !11, line: 339, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "GCObject", file: !11, line: 36, baseType: !17)
!17 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "GCObject", file: !18, line: 136, size: 1472, elements: !19)
!18 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lstate.h", directory: "/root/.unikraft/apps/redis/build")
!19 = !{!20, !30, !57, !71, !311, !312, !313, !314}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "gch", scope: !17, file: !18, line: 137, baseType: !21, size: 128)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "GCheader", file: !11, line: 51, baseType: !22)
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GCheader", file: !11, line: 49, size: 128, elements: !23)
!23 = !{!24, !25, !29}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !22, file: !11, line: 50, baseType: !15, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !22, file: !11, line: 50, baseType: !26, size: 8, offset: 64)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "lu_byte", file: !27, line: 27, baseType: !28)
!27 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/llimits.h", directory: "/root/.unikraft/apps/redis/build")
!28 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !22, file: !11, line: 50, baseType: !26, size: 8, offset: 72)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "ts", scope: !17, file: !18, line: 138, baseType: !31, size: 192)
!31 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "TString", file: !11, line: 199, size: 192, elements: !32)
!32 = !{!33, !42}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !31, file: !11, line: 200, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "L_Umaxalign", file: !27, line: 47, baseType: !35)
!35 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !27, line: 47, size: 64, elements: !36)
!36 = !{!37, !38, !40}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !35, file: !27, line: 47, baseType: !8, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !35, file: !27, line: 47, baseType: !39, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !35, file: !27, line: 47, baseType: !41, size: 64)
!41 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "tsv", scope: !31, file: !11, line: 206, baseType: !43, size: 192)
!43 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !31, file: !11, line: 201, size: 192, elements: !44)
!44 = !{!45, !46, !47, !48, !49, !51}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !43, file: !11, line: 202, baseType: !15, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !43, file: !11, line: 202, baseType: !26, size: 8, offset: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !43, file: !11, line: 202, baseType: !26, size: 8, offset: 72)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !43, file: !11, line: 203, baseType: !26, size: 8, offset: 80)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !43, file: !11, line: 204, baseType: !50, size: 32, offset: 96)
!50 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !43, file: !11, line: 205, baseType: !52, size: 64, offset: 128)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !53, line: 40, baseType: !54)
!53 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !55, line: 129, baseType: !56)
!55 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!56 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !17, file: !18, line: 139, baseType: !58, size: 320)
!58 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "Udata", file: !11, line: 215, size: 320, elements: !59)
!59 = !{!60, !61}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !58, file: !11, line: 216, baseType: !34, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "uv", scope: !58, file: !11, line: 222, baseType: !62, size: 320)
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !58, file: !11, line: 217, size: 320, elements: !63)
!63 = !{!64, !65, !66, !67, !69, !70}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !62, file: !11, line: 218, baseType: !15, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !62, file: !11, line: 218, baseType: !26, size: 8, offset: 64)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !62, file: !11, line: 218, baseType: !26, size: 8, offset: 72)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "metatable", scope: !62, file: !11, line: 219, baseType: !68, size: 64, offset: 128)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "env", scope: !62, file: !11, line: 220, baseType: !68, size: 64, offset: 192)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !62, file: !11, line: 221, baseType: !52, size: 64, offset: 256)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !17, file: !18, line: 140, baseType: !72, size: 448)
!72 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "Closure", file: !11, line: 309, size: 448, elements: !73)
!73 = !{!74, !260}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !72, file: !11, line: 310, baseType: !75, size: 448)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "CClosure", file: !11, line: 299, baseType: !76)
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "CClosure", file: !11, line: 295, size: 448, elements: !77)
!77 = !{!78, !79, !80, !81, !82, !83, !84, !85, !256}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !76, file: !11, line: 296, baseType: !15, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !76, file: !11, line: 296, baseType: !26, size: 8, offset: 64)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !76, file: !11, line: 296, baseType: !26, size: 8, offset: 72)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "isC", scope: !76, file: !11, line: 296, baseType: !26, size: 8, offset: 80)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "nupvalues", scope: !76, file: !11, line: 296, baseType: !26, size: 8, offset: 88)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "gclist", scope: !76, file: !11, line: 296, baseType: !15, size: 64, offset: 128)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "env", scope: !76, file: !11, line: 296, baseType: !68, size: 64, offset: 192)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !76, file: !11, line: 297, baseType: !86, size: 64, offset: 256)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_CFunction", file: !7, line: 52, baseType: !87)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DISubroutineType(types: !89)
!89 = !{!90, !91}
!90 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_State", file: !7, line: 50, baseType: !93)
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lua_State", file: !18, line: 100, size: 1472, elements: !94)
!94 = !{!95, !96, !97, !98, !99, !114, !115, !193, !207, !208, !209, !210, !211, !212, !213, !214, !216, !217, !218, !219, !220, !221, !246, !247, !248, !249, !250, !253}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !93, file: !18, line: 101, baseType: !15, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !93, file: !18, line: 101, baseType: !26, size: 8, offset: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !93, file: !18, line: 101, baseType: !26, size: 8, offset: 72)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !93, file: !18, line: 102, baseType: !26, size: 8, offset: 80)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !93, file: !18, line: 103, baseType: !100, size: 64, offset: 128)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "StkId", file: !11, line: 193, baseType: !101)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "TValue", file: !11, line: 75, baseType: !103)
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lua_TValue", file: !11, line: 73, size: 128, elements: !104)
!104 = !{!105, !113}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !103, file: !11, line: 74, baseType: !106, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "Value", file: !11, line: 64, baseType: !107)
!107 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !11, line: 59, size: 64, elements: !108)
!108 = !{!109, !110, !111, !112}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !107, file: !11, line: 60, baseType: !15, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !107, file: !11, line: 61, baseType: !39, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !107, file: !11, line: 62, baseType: !6, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !107, file: !11, line: 63, baseType: !90, size: 32)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !103, file: !11, line: 74, baseType: !90, size: 32, offset: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !93, file: !18, line: 104, baseType: !100, size: 64, offset: 192)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "l_G", scope: !93, file: !18, line: 105, baseType: !116, size: 64, offset: 256)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "global_State", file: !18, line: 94, baseType: !118)
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "global_State", file: !18, line: 68, size: 3456, elements: !119)
!119 = !{!120, !129, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !154, !156, !157, !158, !159, !160, !161, !162, !163, !165, !183, !187}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "strt", scope: !118, file: !18, line: 69, baseType: !121, size: 128)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "stringtable", file: !18, line: 42, baseType: !122)
!122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stringtable", file: !18, line: 38, size: 128, elements: !123)
!123 = !{!124, !126, !128}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !122, file: !18, line: 39, baseType: !125, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "nuse", scope: !122, file: !18, line: 40, baseType: !127, size: 32, offset: 64)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "lu_int32", file: !27, line: 18, baseType: !50)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !122, file: !18, line: 41, baseType: !90, size: 32, offset: 96)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "frealloc", scope: !118, file: !18, line: 70, baseType: !130, size: 64, offset: 128)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Alloc", file: !7, line: 66, baseType: !131)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DISubroutineType(types: !133)
!133 = !{!39, !39, !39, !52, !52}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "ud", scope: !118, file: !18, line: 71, baseType: !39, size: 64, offset: 192)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "currentwhite", scope: !118, file: !18, line: 72, baseType: !26, size: 8, offset: 256)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "gcstate", scope: !118, file: !18, line: 73, baseType: !26, size: 8, offset: 264)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "sweepstrgc", scope: !118, file: !18, line: 74, baseType: !90, size: 32, offset: 288)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "rootgc", scope: !118, file: !18, line: 75, baseType: !15, size: 64, offset: 320)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "sweepgc", scope: !118, file: !18, line: 76, baseType: !125, size: 64, offset: 384)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "gray", scope: !118, file: !18, line: 77, baseType: !15, size: 64, offset: 448)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "grayagain", scope: !118, file: !18, line: 78, baseType: !15, size: 64, offset: 512)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "weak", scope: !118, file: !18, line: 79, baseType: !15, size: 64, offset: 576)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "tmudata", scope: !118, file: !18, line: 80, baseType: !15, size: 64, offset: 640)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "buff", scope: !118, file: !18, line: 81, baseType: !145, size: 192, offset: 704)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "Mbuffer", file: !146, line: 28, baseType: !147)
!146 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lzio.h", directory: "/root/.unikraft/apps/redis/build")
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Mbuffer", file: !146, line: 24, size: 192, elements: !148)
!148 = !{!149, !152, !153}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !147, file: !146, line: 25, baseType: !150, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!151 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !147, file: !146, line: 26, baseType: !52, size: 64, offset: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "buffsize", scope: !147, file: !146, line: 27, baseType: !52, size: 64, offset: 128)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "GCthreshold", scope: !118, file: !18, line: 82, baseType: !155, size: 64, offset: 896)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "lu_mem", file: !27, line: 20, baseType: !52)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "totalbytes", scope: !118, file: !18, line: 83, baseType: !155, size: 64, offset: 960)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "estimate", scope: !118, file: !18, line: 84, baseType: !155, size: 64, offset: 1024)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "gcdept", scope: !118, file: !18, line: 85, baseType: !155, size: 64, offset: 1088)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "gcpause", scope: !118, file: !18, line: 86, baseType: !90, size: 32, offset: 1152)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "gcstepmul", scope: !118, file: !18, line: 87, baseType: !90, size: 32, offset: 1184)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "panic", scope: !118, file: !18, line: 88, baseType: !86, size: 64, offset: 1216)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "l_registry", scope: !118, file: !18, line: 89, baseType: !102, size: 128, offset: 1280)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "mainthread", scope: !118, file: !18, line: 90, baseType: !164, size: 64, offset: 1408)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "uvhead", scope: !118, file: !18, line: 91, baseType: !166, size: 320, offset: 1472)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "UpVal", file: !11, line: 284, baseType: !167)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "UpVal", file: !11, line: 274, size: 320, elements: !168)
!168 = !{!169, !170, !171, !172, !173}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !167, file: !11, line: 275, baseType: !15, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !167, file: !11, line: 275, baseType: !26, size: 8, offset: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !167, file: !11, line: 275, baseType: !26, size: 8, offset: 72)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !167, file: !11, line: 276, baseType: !101, size: 64, offset: 128)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !167, file: !11, line: 283, baseType: !174, size: 128, offset: 192)
!174 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !167, file: !11, line: 277, size: 128, elements: !175)
!175 = !{!176, !177}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !174, file: !11, line: 278, baseType: !102, size: 128)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !174, file: !11, line: 282, baseType: !178, size: 128)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !174, file: !11, line: 279, size: 128, elements: !179)
!179 = !{!180, !182}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !178, file: !11, line: 280, baseType: !181, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !178, file: !11, line: 281, baseType: !181, size: 64, offset: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "mt", scope: !118, file: !18, line: 92, baseType: !184, size: 576, offset: 1792)
!184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 576, elements: !185)
!185 = !{!186}
!186 = !DISubrange(count: 9)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "tmname", scope: !118, file: !18, line: 93, baseType: !188, size: 1088, offset: 2368)
!188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 1088, elements: !191)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "TString", file: !11, line: 207, baseType: !31)
!191 = !{!192}
!192 = !DISubrange(count: 17)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "ci", scope: !93, file: !18, line: 106, baseType: !194, size: 64, offset: 320)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "CallInfo", file: !18, line: 55, baseType: !196)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "CallInfo", file: !18, line: 48, size: 320, elements: !197)
!197 = !{!198, !199, !200, !201, !205, !206}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !196, file: !18, line: 49, baseType: !100, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !196, file: !18, line: 50, baseType: !100, size: 64, offset: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !196, file: !18, line: 51, baseType: !100, size: 64, offset: 128)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "savedpc", scope: !196, file: !18, line: 52, baseType: !202, size: 64, offset: 192)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !204)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "Instruction", file: !27, line: 88, baseType: !127)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "nresults", scope: !196, file: !18, line: 53, baseType: !90, size: 32, offset: 256)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "tailcalls", scope: !196, file: !18, line: 54, baseType: !90, size: 32, offset: 288)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "savedpc", scope: !93, file: !18, line: 107, baseType: !202, size: 64, offset: 384)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "stack_last", scope: !93, file: !18, line: 108, baseType: !100, size: 64, offset: 448)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !93, file: !18, line: 109, baseType: !100, size: 64, offset: 512)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "end_ci", scope: !93, file: !18, line: 110, baseType: !194, size: 64, offset: 576)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "base_ci", scope: !93, file: !18, line: 111, baseType: !194, size: 64, offset: 640)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "stacksize", scope: !93, file: !18, line: 112, baseType: !90, size: 32, offset: 704)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "size_ci", scope: !93, file: !18, line: 113, baseType: !90, size: 32, offset: 736)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "nCcalls", scope: !93, file: !18, line: 114, baseType: !215, size: 16, offset: 768)
!215 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "baseCcalls", scope: !93, file: !18, line: 115, baseType: !215, size: 16, offset: 784)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "hookmask", scope: !93, file: !18, line: 116, baseType: !26, size: 8, offset: 800)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "allowhook", scope: !93, file: !18, line: 117, baseType: !26, size: 8, offset: 808)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "basehookcount", scope: !93, file: !18, line: 118, baseType: !90, size: 32, offset: 832)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "hookcount", scope: !93, file: !18, line: 119, baseType: !90, size: 32, offset: 864)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "hook", scope: !93, file: !18, line: 120, baseType: !222, size: 64, offset: 896)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Hook", file: !7, line: 330, baseType: !223)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = !DISubroutineType(types: !225)
!225 = !{null, !91, !226}
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Debug", file: !7, line: 326, baseType: !228)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lua_Debug", file: !7, line: 346, size: 960, elements: !229)
!229 = !{!230, !231, !234, !235, !236, !237, !238, !239, !240, !241, !245}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !228, file: !7, line: 347, baseType: !90, size: 32)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !228, file: !7, line: 348, baseType: !232, size: 64, offset: 64)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !151)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "namewhat", scope: !228, file: !7, line: 349, baseType: !232, size: 64, offset: 128)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "what", scope: !228, file: !7, line: 350, baseType: !232, size: 64, offset: 192)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !228, file: !7, line: 351, baseType: !232, size: 64, offset: 256)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "currentline", scope: !228, file: !7, line: 352, baseType: !90, size: 32, offset: 320)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "nups", scope: !228, file: !7, line: 353, baseType: !90, size: 32, offset: 352)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "linedefined", scope: !228, file: !7, line: 354, baseType: !90, size: 32, offset: 384)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "lastlinedefined", scope: !228, file: !7, line: 355, baseType: !90, size: 32, offset: 416)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "short_src", scope: !228, file: !7, line: 356, baseType: !242, size: 480, offset: 448)
!242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, size: 480, elements: !243)
!243 = !{!244}
!244 = !DISubrange(count: 60)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "i_ci", scope: !228, file: !7, line: 358, baseType: !90, size: 32, offset: 928)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "l_gt", scope: !93, file: !18, line: 121, baseType: !102, size: 128, offset: 960)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "env", scope: !93, file: !18, line: 122, baseType: !102, size: 128, offset: 1088)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "openupval", scope: !93, file: !18, line: 123, baseType: !15, size: 64, offset: 1216)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "gclist", scope: !93, file: !18, line: 124, baseType: !15, size: 64, offset: 1280)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "errorJmp", scope: !93, file: !18, line: 125, baseType: !251, size: 64, offset: 1344)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = !DICompositeType(tag: DW_TAG_structure_type, name: "lua_longjmp", file: !18, line: 18, flags: DIFlagFwdDecl)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "errfunc", scope: !93, file: !18, line: 126, baseType: !254, size: 64, offset: 1408)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !255, line: 49, baseType: !41)
!255 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!256 = !DIDerivedType(tag: DW_TAG_member, name: "upvalue", scope: !76, file: !11, line: 298, baseType: !257, size: 128, offset: 320)
!257 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 128, elements: !258)
!258 = !{!259}
!259 = !DISubrange(count: 1)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !72, file: !11, line: 311, baseType: !261, size: 384)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "LClosure", file: !11, line: 306, baseType: !262)
!262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "LClosure", file: !11, line: 302, size: 384, elements: !263)
!263 = !{!264, !265, !266, !267, !268, !269, !270, !271, !308}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !262, file: !11, line: 303, baseType: !15, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !262, file: !11, line: 303, baseType: !26, size: 8, offset: 64)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !262, file: !11, line: 303, baseType: !26, size: 8, offset: 72)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "isC", scope: !262, file: !11, line: 303, baseType: !26, size: 8, offset: 80)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "nupvalues", scope: !262, file: !11, line: 303, baseType: !26, size: 8, offset: 88)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "gclist", scope: !262, file: !11, line: 303, baseType: !15, size: 64, offset: 128)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "env", scope: !262, file: !11, line: 303, baseType: !68, size: 64, offset: 192)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !262, file: !11, line: 304, baseType: !272, size: 64, offset: 256)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Proto", file: !11, line: 231, size: 960, elements: !274)
!274 = !{!275, !276, !277, !278, !279, !281, !283, !285, !292, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !273, file: !11, line: 232, baseType: !15, size: 64)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !273, file: !11, line: 232, baseType: !26, size: 8, offset: 64)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !273, file: !11, line: 232, baseType: !26, size: 8, offset: 72)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !273, file: !11, line: 233, baseType: !101, size: 64, offset: 128)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !273, file: !11, line: 234, baseType: !280, size: 64, offset: 192)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !273, file: !11, line: 235, baseType: !282, size: 64, offset: 256)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "lineinfo", scope: !273, file: !11, line: 236, baseType: !284, size: 64, offset: 320)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "locvars", scope: !273, file: !11, line: 237, baseType: !286, size: 64, offset: 384)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "LocVar", file: !11, line: 262, size: 128, elements: !288)
!288 = !{!289, !290, !291}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "varname", scope: !287, file: !11, line: 263, baseType: !189, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "startpc", scope: !287, file: !11, line: 264, baseType: !90, size: 32, offset: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "endpc", scope: !287, file: !11, line: 265, baseType: !90, size: 32, offset: 96)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "upvalues", scope: !273, file: !11, line: 238, baseType: !293, size: 64, offset: 448)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !273, file: !11, line: 239, baseType: !189, size: 64, offset: 512)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "sizeupvalues", scope: !273, file: !11, line: 240, baseType: !90, size: 32, offset: 576)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "sizek", scope: !273, file: !11, line: 241, baseType: !90, size: 32, offset: 608)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "sizecode", scope: !273, file: !11, line: 242, baseType: !90, size: 32, offset: 640)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "sizelineinfo", scope: !273, file: !11, line: 243, baseType: !90, size: 32, offset: 672)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "sizep", scope: !273, file: !11, line: 244, baseType: !90, size: 32, offset: 704)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "sizelocvars", scope: !273, file: !11, line: 245, baseType: !90, size: 32, offset: 736)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "linedefined", scope: !273, file: !11, line: 246, baseType: !90, size: 32, offset: 768)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "lastlinedefined", scope: !273, file: !11, line: 247, baseType: !90, size: 32, offset: 800)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "gclist", scope: !273, file: !11, line: 248, baseType: !15, size: 64, offset: 832)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "nups", scope: !273, file: !11, line: 249, baseType: !26, size: 8, offset: 896)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "numparams", scope: !273, file: !11, line: 250, baseType: !26, size: 8, offset: 904)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "is_vararg", scope: !273, file: !11, line: 251, baseType: !26, size: 8, offset: 912)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "maxstacksize", scope: !273, file: !11, line: 252, baseType: !26, size: 8, offset: 920)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "upvals", scope: !262, file: !11, line: 305, baseType: !309, size: 64, offset: 320)
!309 = !DICompositeType(tag: DW_TAG_array_type, baseType: !310, size: 64, elements: !258)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "h", scope: !17, file: !18, line: 141, baseType: !12, size: 512)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !17, file: !18, line: 142, baseType: !273, size: 960)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "uv", scope: !17, file: !18, line: 143, baseType: !167, size: 320)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "th", scope: !17, file: !18, line: 144, baseType: !93, size: 1472)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !12, file: !11, line: 339, baseType: !26, size: 8, offset: 64)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !12, file: !11, line: 339, baseType: !26, size: 8, offset: 72)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !12, file: !11, line: 340, baseType: !26, size: 8, offset: 80)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "lsizenode", scope: !12, file: !11, line: 341, baseType: !26, size: 8, offset: 88)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "metatable", scope: !12, file: !11, line: 342, baseType: !68, size: 64, offset: 128)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "array", scope: !12, file: !11, line: 343, baseType: !101, size: 64, offset: 192)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !12, file: !11, line: 344, baseType: !322, size: 64, offset: 256)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "Node", file: !11, line: 335, baseType: !324)
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Node", file: !11, line: 332, size: 320, elements: !325)
!325 = !{!326, !327}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "i_val", scope: !324, file: !11, line: 333, baseType: !102, size: 128)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "i_key", scope: !324, file: !11, line: 334, baseType: !328, size: 192, offset: 128)
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "TKey", file: !11, line: 329, baseType: !329)
!329 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "TKey", file: !11, line: 323, size: 192, elements: !330)
!330 = !{!331, !338}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "nk", scope: !329, file: !11, line: 327, baseType: !332, size: 192)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !329, file: !11, line: 324, size: 192, elements: !333)
!333 = !{!334, !335, !336}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !332, file: !11, line: 325, baseType: !106, size: 64)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !332, file: !11, line: 325, baseType: !90, size: 32, offset: 64)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !332, file: !11, line: 326, baseType: !337, size: 64, offset: 128)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "tvk", scope: !329, file: !11, line: 328, baseType: !102, size: 128)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "lastfree", scope: !12, file: !11, line: 345, baseType: !322, size: 64, offset: 320)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "gclist", scope: !12, file: !11, line: 346, baseType: !15, size: 64, offset: 384)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "sizearray", scope: !12, file: !11, line: 347, baseType: !90, size: 32, offset: 448)
!342 = !{!0}
!343 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !323)
!344 = !{i32 2, !"Dwarf Version", i32 4}
!345 = !{i32 2, !"Debug Info Version", i32 3}
!346 = !{i32 1, !"wchar_size", i32 4}
!347 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!348 = distinct !DISubprogram(name: "luaH_next", scope: !3, file: !3, line: 162, type: !349, isLocal: false, isDefinition: true, scopeLine: 162, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !351)
!349 = !DISubroutineType(types: !350)
!350 = !{!90, !91, !9, !100}
!351 = !{!352, !353, !354, !355, !356, !363, !367, !368, !375, !376, !378}
!352 = !DILocalVariable(name: "L", arg: 1, scope: !348, file: !3, line: 162, type: !91)
!353 = !DILocalVariable(name: "t", arg: 2, scope: !348, file: !3, line: 162, type: !9)
!354 = !DILocalVariable(name: "key", arg: 3, scope: !348, file: !3, line: 162, type: !100)
!355 = !DILocalVariable(name: "i", scope: !348, file: !3, line: 163, type: !90)
!356 = !DILocalVariable(name: "i_o", scope: !357, file: !3, line: 166, type: !101)
!357 = distinct !DILexicalBlock(scope: !358, file: !3, line: 166, column: 7)
!358 = distinct !DILexicalBlock(scope: !359, file: !3, line: 165, column: 33)
!359 = distinct !DILexicalBlock(scope: !360, file: !3, line: 165, column: 9)
!360 = distinct !DILexicalBlock(scope: !361, file: !3, line: 164, column: 36)
!361 = distinct !DILexicalBlock(scope: !362, file: !3, line: 164, column: 3)
!362 = distinct !DILexicalBlock(scope: !348, file: !3, line: 164, column: 3)
!363 = !DILocalVariable(name: "o2", scope: !364, file: !3, line: 167, type: !365)
!364 = distinct !DILexicalBlock(scope: !358, file: !3, line: 167, column: 7)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !102)
!367 = !DILocalVariable(name: "o1", scope: !364, file: !3, line: 167, type: !101)
!368 = !DILocalVariable(name: "o2", scope: !369, file: !3, line: 173, type: !365)
!369 = distinct !DILexicalBlock(scope: !370, file: !3, line: 173, column: 7)
!370 = distinct !DILexicalBlock(scope: !371, file: !3, line: 172, column: 38)
!371 = distinct !DILexicalBlock(scope: !372, file: !3, line: 172, column: 9)
!372 = distinct !DILexicalBlock(scope: !373, file: !3, line: 171, column: 49)
!373 = distinct !DILexicalBlock(scope: !374, file: !3, line: 171, column: 3)
!374 = distinct !DILexicalBlock(scope: !348, file: !3, line: 171, column: 3)
!375 = !DILocalVariable(name: "o1", scope: !369, file: !3, line: 173, type: !101)
!376 = !DILocalVariable(name: "o2", scope: !377, file: !3, line: 174, type: !365)
!377 = distinct !DILexicalBlock(scope: !370, file: !3, line: 174, column: 7)
!378 = !DILocalVariable(name: "o1", scope: !377, file: !3, line: 174, type: !101)
!379 = !DILocalVariable(name: "a", scope: !380, file: !3, line: 85, type: !389)
!380 = distinct !DISubprogram(name: "hashnum", scope: !3, file: !3, line: 84, type: !381, isLocal: true, isDefinition: true, scopeLine: 84, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !385)
!381 = !DISubroutineType(types: !382)
!382 = !{!322, !383, !6}
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!385 = !{!386, !387, !379, !388}
!386 = !DILocalVariable(name: "t", arg: 1, scope: !380, file: !3, line: 84, type: !383)
!387 = !DILocalVariable(name: "n", arg: 2, scope: !380, file: !3, line: 84, type: !6)
!388 = !DILocalVariable(name: "i", scope: !380, file: !3, line: 86, type: !90)
!389 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 64, elements: !390)
!390 = !{!391}
!391 = !DISubrange(count: 2)
!392 = !DILocation(line: 85, column: 16, scope: !380, inlinedAt: !393)
!393 = distinct !DILocation(line: 103, column: 14, scope: !394, inlinedAt: !401)
!394 = distinct !DILexicalBlock(scope: !395, file: !3, line: 101, column: 23)
!395 = distinct !DISubprogram(name: "mainposition", scope: !3, file: !3, line: 100, type: !396, isLocal: true, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !398)
!396 = !DISubroutineType(types: !397)
!397 = !{!322, !383, !365}
!398 = !{!399, !400}
!399 = !DILocalVariable(name: "t", arg: 1, scope: !395, file: !3, line: 100, type: !383)
!400 = !DILocalVariable(name: "key", arg: 2, scope: !395, file: !3, line: 100, type: !365)
!401 = distinct !DILocation(line: 144, column: 15, scope: !402, inlinedAt: !411)
!402 = distinct !DILexicalBlock(scope: !403, file: !3, line: 143, column: 8)
!403 = distinct !DILexicalBlock(scope: !404, file: !3, line: 141, column: 7)
!404 = distinct !DISubprogram(name: "findindex", scope: !3, file: !3, line: 137, type: !349, isLocal: true, isDefinition: true, scopeLine: 137, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !405)
!405 = !{!406, !407, !408, !409, !410}
!406 = !DILocalVariable(name: "L", arg: 1, scope: !404, file: !3, line: 137, type: !91)
!407 = !DILocalVariable(name: "t", arg: 2, scope: !404, file: !3, line: 137, type: !9)
!408 = !DILocalVariable(name: "key", arg: 3, scope: !404, file: !3, line: 137, type: !100)
!409 = !DILocalVariable(name: "i", scope: !404, file: !3, line: 138, type: !90)
!410 = !DILocalVariable(name: "n", scope: !402, file: !3, line: 144, type: !322)
!411 = distinct !DILocation(line: 163, column: 11, scope: !348)
!412 = !DILocation(line: 162, column: 27, scope: !348)
!413 = !DILocation(line: 162, column: 37, scope: !348)
!414 = !DILocation(line: 162, column: 46, scope: !348)
!415 = !DILocation(line: 137, column: 34, scope: !404, inlinedAt: !411)
!416 = !DILocation(line: 137, column: 44, scope: !404, inlinedAt: !411)
!417 = !DILocation(line: 137, column: 53, scope: !404, inlinedAt: !411)
!418 = !DILocation(line: 139, column: 7, scope: !419, inlinedAt: !411)
!419 = distinct !DILexicalBlock(scope: !404, file: !3, line: 139, column: 7)
!420 = !{!421, !424, i64 8}
!421 = !{!"lua_TValue", !422, i64 0, !424, i64 8}
!422 = !{!"omnipotent char", !423, i64 0}
!423 = !{!"Simple C/C++ TBAA"}
!424 = !{!"int", !422, i64 0}
!425 = !DILocation(line: 139, column: 7, scope: !404, inlinedAt: !411)
!426 = !DILocation(line: 122, column: 20, scope: !427, inlinedAt: !436)
!427 = distinct !DILexicalBlock(scope: !428, file: !3, line: 121, column: 24)
!428 = distinct !DILexicalBlock(scope: !429, file: !3, line: 121, column: 7)
!429 = distinct !DISubprogram(name: "arrayindex", scope: !3, file: !3, line: 120, type: !430, isLocal: true, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !432)
!430 = !DISubroutineType(types: !431)
!431 = !{!90, !365}
!432 = !{!433, !434, !435}
!433 = !DILocalVariable(name: "key", arg: 1, scope: !429, file: !3, line: 120, type: !365)
!434 = !DILocalVariable(name: "n", scope: !427, file: !3, line: 122, type: !6)
!435 = !DILocalVariable(name: "k", scope: !427, file: !3, line: 123, type: !90)
!436 = distinct !DILocation(line: 140, column: 7, scope: !404, inlinedAt: !411)
!437 = !{!422, !422, i64 0}
!438 = !DILocation(line: 122, column: 16, scope: !427, inlinedAt: !436)
!439 = !DILocation(line: 124, column: 5, scope: !427, inlinedAt: !436)
!440 = !DILocation(line: 123, column: 9, scope: !427, inlinedAt: !436)
!441 = !DILocation(line: 125, column: 9, scope: !442, inlinedAt: !436)
!442 = distinct !DILexicalBlock(scope: !427, file: !3, line: 125, column: 9)
!443 = !DILocation(line: 141, column: 9, scope: !403, inlinedAt: !411)
!444 = !DILocation(line: 138, column: 7, scope: !404, inlinedAt: !411)
!445 = !DILocation(line: 141, column: 24, scope: !403, inlinedAt: !411)
!446 = !{!447, !424, i64 56}
!447 = !{!"Table", !448, i64 0, !422, i64 8, !422, i64 9, !422, i64 10, !422, i64 11, !448, i64 16, !448, i64 24, !448, i64 32, !448, i64 40, !448, i64 48, !424, i64 56}
!448 = !{!"any pointer", !422, i64 0}
!449 = !DILocation(line: 141, column: 18, scope: !403, inlinedAt: !411)
!450 = !DILocation(line: 141, column: 7, scope: !404, inlinedAt: !411)
!451 = !DILocation(line: 142, column: 13, scope: !403, inlinedAt: !411)
!452 = !DILocation(line: 142, column: 5, scope: !403, inlinedAt: !411)
!453 = !DILocation(line: 84, column: 36, scope: !380, inlinedAt: !393)
!454 = !DILocation(line: 84, column: 50, scope: !380, inlinedAt: !393)
!455 = !{!456, !456, i64 0}
!456 = !{!"double", !422, i64 0}
!457 = !DILocation(line: 85, column: 3, scope: !380, inlinedAt: !393)
!458 = !DILocation(line: 87, column: 7, scope: !459, inlinedAt: !393)
!459 = distinct !DILexicalBlock(scope: !380, file: !3, line: 87, column: 7)
!460 = !DILocation(line: 87, column: 7, scope: !380, inlinedAt: !393)
!461 = !DILocation(line: 88, column: 12, scope: !459, inlinedAt: !393)
!462 = !{!447, !448, i64 32}
!463 = !DILocation(line: 88, column: 5, scope: !459, inlinedAt: !393)
!464 = !DILocation(line: 89, column: 3, scope: !380, inlinedAt: !393)
!465 = !DILocation(line: 86, column: 7, scope: !380, inlinedAt: !393)
!466 = !DILocation(line: 90, column: 41, scope: !467, inlinedAt: !393)
!467 = distinct !DILexicalBlock(scope: !468, file: !3, line: 90, column: 3)
!468 = distinct !DILexicalBlock(scope: !380, file: !3, line: 90, column: 3)
!469 = !{!424, !424, i64 0}
!470 = !DILocation(line: 90, column: 38, scope: !467, inlinedAt: !393)
!471 = !DILocation(line: 91, column: 10, scope: !380, inlinedAt: !393)
!472 = !{!447, !422, i64 11}
!473 = !DILocation(line: 91, column: 3, scope: !380, inlinedAt: !393)
!474 = !DILocation(line: 0, scope: !380, inlinedAt: !393)
!475 = !DILocation(line: 92, column: 1, scope: !380, inlinedAt: !393)
!476 = !DILocation(line: 103, column: 7, scope: !394, inlinedAt: !401)
!477 = !DILocation(line: 105, column: 14, scope: !394, inlinedAt: !401)
!478 = !DILocation(line: 105, column: 7, scope: !394, inlinedAt: !401)
!479 = !DILocation(line: 107, column: 14, scope: !394, inlinedAt: !401)
!480 = !DILocation(line: 107, column: 7, scope: !394, inlinedAt: !401)
!481 = !DILocation(line: 109, column: 14, scope: !394, inlinedAt: !401)
!482 = !DILocation(line: 109, column: 7, scope: !394, inlinedAt: !401)
!483 = !DILocation(line: 111, column: 14, scope: !394, inlinedAt: !401)
!484 = !DILocation(line: 111, column: 7, scope: !394, inlinedAt: !401)
!485 = !DILocation(line: 0, scope: !394, inlinedAt: !401)
!486 = !DILocation(line: 144, column: 11, scope: !402, inlinedAt: !411)
!487 = !DILocation(line: 145, column: 5, scope: !402, inlinedAt: !411)
!488 = !DILocation(line: 0, scope: !489, inlinedAt: !411)
!489 = distinct !DILexicalBlock(scope: !490, file: !3, line: 147, column: 11)
!490 = distinct !DILexicalBlock(scope: !402, file: !3, line: 145, column: 8)
!491 = !DILocation(line: 147, column: 28, scope: !489, inlinedAt: !411)
!492 = !DILocation(line: 147, column: 11, scope: !489, inlinedAt: !411)
!493 = !DILocation(line: 147, column: 46, scope: !489, inlinedAt: !411)
!494 = !DILocation(line: 148, column: 14, scope: !489, inlinedAt: !411)
!495 = !DILocation(line: 148, column: 29, scope: !489, inlinedAt: !411)
!496 = !DILocation(line: 148, column: 45, scope: !489, inlinedAt: !411)
!497 = !DILocation(line: 148, column: 48, scope: !489, inlinedAt: !411)
!498 = !DILocation(line: 148, column: 67, scope: !489, inlinedAt: !411)
!499 = !DILocation(line: 149, column: 14, scope: !489, inlinedAt: !411)
!500 = !DILocation(line: 149, column: 34, scope: !489, inlinedAt: !411)
!501 = !DILocation(line: 149, column: 31, scope: !489, inlinedAt: !411)
!502 = !DILocation(line: 147, column: 11, scope: !490, inlinedAt: !411)
!503 = !DILocation(line: 150, column: 13, scope: !504, inlinedAt: !411)
!504 = distinct !DILexicalBlock(scope: !489, file: !3, line: 149, column: 49)
!505 = !DILocation(line: 152, column: 23, scope: !504, inlinedAt: !411)
!506 = !DILocation(line: 152, column: 18, scope: !504, inlinedAt: !411)
!507 = !DILocation(line: 152, column: 9, scope: !504, inlinedAt: !411)
!508 = !DILocation(line: 154, column: 16, scope: !489, inlinedAt: !411)
!509 = !DILocation(line: 155, column: 5, scope: !490, inlinedAt: !411)
!510 = distinct !{!510, !511, !512}
!511 = !DILocation(line: 145, column: 5, scope: !402)
!512 = !DILocation(line: 155, column: 15, scope: !402)
!513 = !DILocation(line: 156, column: 5, scope: !402, inlinedAt: !411)
!514 = !DILocation(line: 157, column: 5, scope: !402, inlinedAt: !411)
!515 = !DILocation(line: 0, scope: !504, inlinedAt: !411)
!516 = !DILocation(line: 163, column: 7, scope: !348)
!517 = !DILocation(line: 164, column: 8, scope: !362)
!518 = !DILocation(line: 0, scope: !361)
!519 = !DILocation(line: 164, column: 15, scope: !361)
!520 = !DILocation(line: 164, column: 3, scope: !362)
!521 = !DILocation(line: 165, column: 10, scope: !359)
!522 = !{!447, !448, i64 24}
!523 = !DILocation(line: 165, column: 9, scope: !360)
!524 = distinct !{!524, !520, !525}
!525 = !DILocation(line: 170, column: 3, scope: !362)
!526 = !DILocation(line: 166, column: 7, scope: !357)
!527 = !DILocation(line: 167, column: 7, scope: !364)
!528 = !DILocation(line: 168, column: 7, scope: !358)
!529 = !DILocation(line: 171, column: 10, scope: !374)
!530 = !DILocation(line: 171, column: 31, scope: !373)
!531 = !DILocation(line: 171, column: 29, scope: !373)
!532 = !DILocation(line: 171, column: 3, scope: !374)
!533 = distinct !{!533, !532, !534}
!534 = !DILocation(line: 177, column: 3, scope: !374)
!535 = !DILocation(line: 172, column: 10, scope: !371)
!536 = !{!537, !424, i64 8}
!537 = !{!"Node", !421, i64 0, !422, i64 16}
!538 = !DILocation(line: 171, column: 45, scope: !373)
!539 = !DILocation(line: 172, column: 9, scope: !372)
!540 = !DILocation(line: 173, column: 7, scope: !369)
!541 = !DILocation(line: 174, column: 7, scope: !377)
!542 = !DILocation(line: 175, column: 7, scope: !370)
!543 = !DILocation(line: 0, scope: !348)
!544 = !DILocation(line: 179, column: 1, scope: !348)
!545 = distinct !DISubprogram(name: "luaH_resizearray", scope: !3, file: !3, line: 327, type: !546, isLocal: false, isDefinition: true, scopeLine: 327, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !548)
!546 = !DISubroutineType(types: !547)
!547 = !{null, !91, !9, !90}
!548 = !{!549, !550, !551, !552}
!549 = !DILocalVariable(name: "L", arg: 1, scope: !545, file: !3, line: 327, type: !91)
!550 = !DILocalVariable(name: "t", arg: 2, scope: !545, file: !3, line: 327, type: !9)
!551 = !DILocalVariable(name: "nasize", arg: 3, scope: !545, file: !3, line: 327, type: !90)
!552 = !DILocalVariable(name: "nsize", scope: !545, file: !3, line: 328, type: !90)
!553 = !DILocation(line: 327, column: 35, scope: !545)
!554 = !DILocation(line: 327, column: 45, scope: !545)
!555 = !DILocation(line: 327, column: 52, scope: !545)
!556 = !DILocation(line: 328, column: 19, scope: !545)
!557 = !DILocation(line: 328, column: 24, scope: !545)
!558 = !DILocation(line: 328, column: 15, scope: !545)
!559 = !DILocation(line: 328, column: 44, scope: !545)
!560 = !DILocation(line: 328, column: 7, scope: !545)
!561 = !DILocation(line: 329, column: 3, scope: !545)
!562 = !DILocation(line: 330, column: 1, scope: !545)
!563 = distinct !DISubprogram(name: "resize", scope: !3, file: !3, line: 297, type: !564, isLocal: true, isDefinition: true, scopeLine: 297, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !566)
!564 = !DISubroutineType(types: !565)
!565 = !{null, !91, !9, !90, !90}
!566 = !{!567, !568, !569, !570, !571, !572, !573, !574, !575, !583, !584, !588, !591}
!567 = !DILocalVariable(name: "L", arg: 1, scope: !563, file: !3, line: 297, type: !91)
!568 = !DILocalVariable(name: "t", arg: 2, scope: !563, file: !3, line: 297, type: !9)
!569 = !DILocalVariable(name: "nasize", arg: 3, scope: !563, file: !3, line: 297, type: !90)
!570 = !DILocalVariable(name: "nhsize", arg: 4, scope: !563, file: !3, line: 297, type: !90)
!571 = !DILocalVariable(name: "i", scope: !563, file: !3, line: 298, type: !90)
!572 = !DILocalVariable(name: "oldasize", scope: !563, file: !3, line: 299, type: !90)
!573 = !DILocalVariable(name: "oldhsize", scope: !563, file: !3, line: 300, type: !90)
!574 = !DILocalVariable(name: "nold", scope: !563, file: !3, line: 301, type: !322)
!575 = !DILocalVariable(name: "o2", scope: !576, file: !3, line: 311, type: !365)
!576 = distinct !DILexicalBlock(scope: !577, file: !3, line: 311, column: 9)
!577 = distinct !DILexicalBlock(scope: !578, file: !3, line: 310, column: 11)
!578 = distinct !DILexicalBlock(scope: !579, file: !3, line: 309, column: 37)
!579 = distinct !DILexicalBlock(scope: !580, file: !3, line: 309, column: 5)
!580 = distinct !DILexicalBlock(scope: !581, file: !3, line: 309, column: 5)
!581 = distinct !DILexicalBlock(scope: !582, file: !3, line: 306, column: 26)
!582 = distinct !DILexicalBlock(scope: !563, file: !3, line: 306, column: 7)
!583 = !DILocalVariable(name: "o1", scope: !576, file: !3, line: 311, type: !101)
!584 = !DILocalVariable(name: "old", scope: !585, file: !3, line: 318, type: !322)
!585 = distinct !DILexicalBlock(scope: !586, file: !3, line: 317, column: 46)
!586 = distinct !DILexicalBlock(scope: !587, file: !3, line: 317, column: 3)
!587 = distinct !DILexicalBlock(scope: !563, file: !3, line: 317, column: 3)
!588 = !DILocalVariable(name: "o2", scope: !589, file: !3, line: 320, type: !365)
!589 = distinct !DILexicalBlock(scope: !590, file: !3, line: 320, column: 7)
!590 = distinct !DILexicalBlock(scope: !585, file: !3, line: 319, column: 9)
!591 = !DILocalVariable(name: "o1", scope: !589, file: !3, line: 320, type: !101)
!592 = !DILocation(line: 297, column: 32, scope: !563)
!593 = !DILocation(line: 297, column: 42, scope: !563)
!594 = !DILocation(line: 297, column: 49, scope: !563)
!595 = !DILocation(line: 297, column: 61, scope: !563)
!596 = !DILocation(line: 299, column: 21, scope: !563)
!597 = !DILocation(line: 299, column: 7, scope: !563)
!598 = !DILocation(line: 300, column: 21, scope: !563)
!599 = !DILocation(line: 300, column: 18, scope: !563)
!600 = !DILocation(line: 300, column: 7, scope: !563)
!601 = !DILocation(line: 301, column: 19, scope: !563)
!602 = !DILocation(line: 301, column: 9, scope: !563)
!603 = !DILocation(line: 302, column: 14, scope: !604)
!604 = distinct !DILexicalBlock(scope: !563, file: !3, line: 302, column: 7)
!605 = !DILocation(line: 302, column: 7, scope: !563)
!606 = !DILocalVariable(name: "L", arg: 1, scope: !607, file: !3, line: 263, type: !91)
!607 = distinct !DISubprogram(name: "setarrayvector", scope: !3, file: !3, line: 263, type: !546, isLocal: true, isDefinition: true, scopeLine: 263, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !608)
!608 = !{!606, !609, !610, !611}
!609 = !DILocalVariable(name: "t", arg: 2, scope: !607, file: !3, line: 263, type: !9)
!610 = !DILocalVariable(name: "size", arg: 3, scope: !607, file: !3, line: 263, type: !90)
!611 = !DILocalVariable(name: "i", scope: !607, file: !3, line: 264, type: !90)
!612 = !DILocation(line: 263, column: 40, scope: !607, inlinedAt: !613)
!613 = distinct !DILocation(line: 303, column: 5, scope: !604)
!614 = !DILocation(line: 263, column: 50, scope: !607, inlinedAt: !613)
!615 = !DILocation(line: 263, column: 57, scope: !607, inlinedAt: !613)
!616 = !DILocation(line: 265, column: 3, scope: !607, inlinedAt: !613)
!617 = !DILocation(line: 266, column: 13, scope: !618, inlinedAt: !613)
!618 = distinct !DILexicalBlock(scope: !607, file: !3, line: 266, column: 3)
!619 = !DILocation(line: 264, column: 7, scope: !607, inlinedAt: !613)
!620 = !DILocation(line: 266, column: 25, scope: !621, inlinedAt: !613)
!621 = distinct !DILexicalBlock(scope: !618, file: !3, line: 266, column: 3)
!622 = !DILocation(line: 266, column: 3, scope: !618, inlinedAt: !613)
!623 = !DILocation(line: 267, column: 6, scope: !621, inlinedAt: !613)
!624 = !DILocation(line: 266, column: 33, scope: !621, inlinedAt: !613)
!625 = distinct !{!625, !626}
!626 = !{!"llvm.loop.unroll.disable"}
!627 = distinct !{!627, !628, !629}
!628 = !DILocation(line: 266, column: 3, scope: !618)
!629 = !DILocation(line: 267, column: 6, scope: !618)
!630 = !DILocation(line: 268, column: 16, scope: !607, inlinedAt: !613)
!631 = !DILocation(line: 303, column: 5, scope: !604)
!632 = !DILocation(line: 305, column: 3, scope: !563)
!633 = !DILocation(line: 306, column: 14, scope: !582)
!634 = !DILocation(line: 306, column: 7, scope: !563)
!635 = !DILocation(line: 307, column: 18, scope: !581)
!636 = !DILocation(line: 298, column: 7, scope: !563)
!637 = !DILocation(line: 309, column: 5, scope: !580)
!638 = !DILocation(line: 310, column: 12, scope: !577)
!639 = !DILocation(line: 0, scope: !576)
!640 = !DILocation(line: 310, column: 11, scope: !578)
!641 = !DILocation(line: 311, column: 9, scope: !576)
!642 = !DILocation(line: 309, column: 21, scope: !579)
!643 = distinct !{!643, !637, !644}
!644 = !DILocation(line: 312, column: 5, scope: !580)
!645 = !DILocation(line: 314, column: 5, scope: !581)
!646 = !DILocation(line: 315, column: 3, scope: !581)
!647 = !DILocation(line: 317, column: 12, scope: !587)
!648 = !DILocation(line: 317, column: 35, scope: !586)
!649 = !DILocation(line: 317, column: 3, scope: !587)
!650 = !DILocation(line: 0, scope: !586)
!651 = !DILocation(line: 319, column: 10, scope: !590)
!652 = !DILocation(line: 319, column: 9, scope: !585)
!653 = !DILocation(line: 318, column: 21, scope: !585)
!654 = !DILocation(line: 318, column: 11, scope: !585)
!655 = !DILocation(line: 320, column: 7, scope: !589)
!656 = !DILocalVariable(name: "L", arg: 1, scope: !657, file: !3, line: 494, type: !91)
!657 = distinct !DISubprogram(name: "luaH_set", scope: !3, file: !3, line: 494, type: !658, isLocal: false, isDefinition: true, scopeLine: 494, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !660)
!658 = !DISubroutineType(types: !659)
!659 = !{!101, !91, !9, !365}
!660 = !{!656, !661, !662, !663}
!661 = !DILocalVariable(name: "t", arg: 2, scope: !657, file: !3, line: 494, type: !9)
!662 = !DILocalVariable(name: "key", arg: 3, scope: !657, file: !3, line: 494, type: !365)
!663 = !DILocalVariable(name: "p", scope: !657, file: !3, line: 495, type: !365)
!664 = !DILocation(line: 494, column: 30, scope: !657, inlinedAt: !665)
!665 = distinct !DILocation(line: 320, column: 7, scope: !589)
!666 = !DILocation(line: 494, column: 40, scope: !657, inlinedAt: !665)
!667 = !DILocation(line: 494, column: 57, scope: !657, inlinedAt: !665)
!668 = !DILocation(line: 495, column: 21, scope: !657, inlinedAt: !665)
!669 = !DILocation(line: 495, column: 17, scope: !657, inlinedAt: !665)
!670 = !DILocation(line: 496, column: 12, scope: !657, inlinedAt: !665)
!671 = !{!447, !422, i64 10}
!672 = !DILocation(line: 497, column: 9, scope: !673, inlinedAt: !665)
!673 = distinct !DILexicalBlock(scope: !657, file: !3, line: 497, column: 7)
!674 = !DILocation(line: 497, column: 7, scope: !657, inlinedAt: !665)
!675 = !DILocation(line: 500, column: 9, scope: !676, inlinedAt: !665)
!676 = distinct !DILexicalBlock(scope: !677, file: !3, line: 500, column: 9)
!677 = distinct !DILexicalBlock(scope: !673, file: !3, line: 499, column: 8)
!678 = !DILocation(line: 500, column: 9, scope: !677, inlinedAt: !665)
!679 = !DILocation(line: 500, column: 23, scope: !676, inlinedAt: !665)
!680 = !DILocation(line: 501, column: 33, scope: !681, inlinedAt: !665)
!681 = distinct !DILexicalBlock(scope: !676, file: !3, line: 501, column: 14)
!682 = !DILocation(line: 501, column: 14, scope: !676, inlinedAt: !665)
!683 = !DILocation(line: 502, column: 7, scope: !681, inlinedAt: !665)
!684 = !DILocation(line: 503, column: 12, scope: !677, inlinedAt: !665)
!685 = !DILocation(line: 503, column: 5, scope: !677, inlinedAt: !665)
!686 = !DILocation(line: 0, scope: !677, inlinedAt: !665)
!687 = distinct !{!687, !649, !688}
!688 = !DILocation(line: 321, column: 3, scope: !587)
!689 = !DILocation(line: 322, column: 12, scope: !690)
!690 = distinct !DILexicalBlock(scope: !563, file: !3, line: 322, column: 7)
!691 = !DILocation(line: 322, column: 7, scope: !563)
!692 = !DILocation(line: 323, column: 5, scope: !690)
!693 = !DILocation(line: 324, column: 1, scope: !563)
!694 = distinct !DISubprogram(name: "luaH_new", scope: !3, file: !3, line: 358, type: !695, isLocal: false, isDefinition: true, scopeLine: 358, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !697)
!695 = !DISubroutineType(types: !696)
!696 = !{!9, !91, !90, !90}
!697 = !{!698, !699, !700, !701}
!698 = !DILocalVariable(name: "L", arg: 1, scope: !694, file: !3, line: 358, type: !91)
!699 = !DILocalVariable(name: "narray", arg: 2, scope: !694, file: !3, line: 358, type: !90)
!700 = !DILocalVariable(name: "nhash", arg: 3, scope: !694, file: !3, line: 358, type: !90)
!701 = !DILocalVariable(name: "t", scope: !694, file: !3, line: 359, type: !9)
!702 = !DILocation(line: 358, column: 29, scope: !694)
!703 = !DILocation(line: 358, column: 36, scope: !694)
!704 = !DILocation(line: 358, column: 48, scope: !694)
!705 = !DILocation(line: 359, column: 14, scope: !694)
!706 = !DILocation(line: 359, column: 10, scope: !694)
!707 = !DILocation(line: 360, column: 16, scope: !694)
!708 = !DILocation(line: 360, column: 3, scope: !694)
!709 = !DILocation(line: 361, column: 6, scope: !694)
!710 = !DILocation(line: 361, column: 16, scope: !694)
!711 = !{!447, !448, i64 16}
!712 = !DILocation(line: 362, column: 6, scope: !694)
!713 = !DILocation(line: 362, column: 12, scope: !694)
!714 = !DILocation(line: 364, column: 6, scope: !694)
!715 = !DILocation(line: 364, column: 12, scope: !694)
!716 = !DILocation(line: 365, column: 6, scope: !694)
!717 = !DILocation(line: 365, column: 16, scope: !694)
!718 = !DILocation(line: 366, column: 6, scope: !694)
!719 = !DILocation(line: 366, column: 16, scope: !694)
!720 = !DILocation(line: 367, column: 6, scope: !694)
!721 = !DILocation(line: 367, column: 11, scope: !694)
!722 = !DILocation(line: 263, column: 40, scope: !607, inlinedAt: !723)
!723 = distinct !DILocation(line: 368, column: 3, scope: !694)
!724 = !DILocation(line: 263, column: 50, scope: !607, inlinedAt: !723)
!725 = !DILocation(line: 263, column: 57, scope: !607, inlinedAt: !723)
!726 = !DILocation(line: 265, column: 3, scope: !607, inlinedAt: !723)
!727 = !DILocation(line: 266, column: 13, scope: !618, inlinedAt: !723)
!728 = !DILocation(line: 264, column: 7, scope: !607, inlinedAt: !723)
!729 = !DILocation(line: 266, column: 25, scope: !621, inlinedAt: !723)
!730 = !DILocation(line: 266, column: 3, scope: !618, inlinedAt: !723)
!731 = !DILocation(line: 267, column: 6, scope: !621, inlinedAt: !723)
!732 = !DILocation(line: 266, column: 33, scope: !621, inlinedAt: !723)
!733 = distinct !{!733, !626}
!734 = !DILocation(line: 268, column: 16, scope: !607, inlinedAt: !723)
!735 = !DILocation(line: 369, column: 3, scope: !694)
!736 = !DILocation(line: 370, column: 3, scope: !694)
!737 = distinct !DISubprogram(name: "setnodevector", scope: !3, file: !3, line: 272, type: !546, isLocal: true, isDefinition: true, scopeLine: 272, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !738)
!738 = !{!739, !740, !741, !742, !743, !746}
!739 = !DILocalVariable(name: "L", arg: 1, scope: !737, file: !3, line: 272, type: !91)
!740 = !DILocalVariable(name: "t", arg: 2, scope: !737, file: !3, line: 272, type: !9)
!741 = !DILocalVariable(name: "size", arg: 3, scope: !737, file: !3, line: 272, type: !90)
!742 = !DILocalVariable(name: "lsize", scope: !737, file: !3, line: 273, type: !90)
!743 = !DILocalVariable(name: "i", scope: !744, file: !3, line: 279, type: !90)
!744 = distinct !DILexicalBlock(scope: !745, file: !3, line: 278, column: 8)
!745 = distinct !DILexicalBlock(scope: !737, file: !3, line: 274, column: 7)
!746 = !DILocalVariable(name: "n", scope: !747, file: !3, line: 286, type: !322)
!747 = distinct !DILexicalBlock(scope: !748, file: !3, line: 285, column: 28)
!748 = distinct !DILexicalBlock(scope: !749, file: !3, line: 285, column: 5)
!749 = distinct !DILexicalBlock(scope: !744, file: !3, line: 285, column: 5)
!750 = !DILocation(line: 272, column: 39, scope: !737)
!751 = !DILocation(line: 272, column: 49, scope: !737)
!752 = !DILocation(line: 272, column: 56, scope: !737)
!753 = !DILocation(line: 274, column: 12, scope: !745)
!754 = !DILocation(line: 274, column: 7, scope: !737)
!755 = !DILocation(line: 275, column: 8, scope: !756)
!756 = distinct !DILexicalBlock(scope: !745, file: !3, line: 274, column: 18)
!757 = !DILocation(line: 275, column: 13, scope: !756)
!758 = !DILocation(line: 273, column: 7, scope: !737)
!759 = !DILocation(line: 277, column: 3, scope: !756)
!760 = !DILocation(line: 280, column: 13, scope: !744)
!761 = !DILocation(line: 281, column: 15, scope: !762)
!762 = distinct !DILexicalBlock(scope: !744, file: !3, line: 281, column: 9)
!763 = !DILocation(line: 281, column: 9, scope: !744)
!764 = !DILocation(line: 282, column: 7, scope: !762)
!765 = !DILocation(line: 283, column: 12, scope: !744)
!766 = !DILocation(line: 284, column: 15, scope: !744)
!767 = !DILocation(line: 284, column: 8, scope: !744)
!768 = !DILocation(line: 284, column: 13, scope: !744)
!769 = !DILocation(line: 279, column: 9, scope: !744)
!770 = !DILocation(line: 285, column: 16, scope: !748)
!771 = !DILocation(line: 285, column: 5, scope: !749)
!772 = !DILocation(line: 286, column: 17, scope: !747)
!773 = !DILocation(line: 287, column: 7, scope: !747)
!774 = !DILocation(line: 287, column: 16, scope: !747)
!775 = !DILocation(line: 288, column: 7, scope: !747)
!776 = !DILocation(line: 289, column: 7, scope: !747)
!777 = !DILocation(line: 285, column: 24, scope: !748)
!778 = !DILocation(line: 0, scope: !737)
!779 = distinct !{!779, !771, !780}
!780 = !DILocation(line: 290, column: 5, scope: !749)
!781 = !DILocation(line: 293, column: 17, scope: !737)
!782 = !DILocation(line: 292, column: 6, scope: !737)
!783 = !DILocation(line: 292, column: 16, scope: !737)
!784 = !DILocation(line: 293, column: 6, scope: !737)
!785 = !DILocation(line: 293, column: 15, scope: !737)
!786 = !{!447, !448, i64 40}
!787 = !DILocation(line: 294, column: 1, scope: !737)
!788 = distinct !DISubprogram(name: "luaH_free", scope: !3, file: !3, line: 374, type: !789, isLocal: false, isDefinition: true, scopeLine: 374, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !791)
!789 = !DISubroutineType(types: !790)
!790 = !{null, !91, !9}
!791 = !{!792, !793}
!792 = !DILocalVariable(name: "L", arg: 1, scope: !788, file: !3, line: 374, type: !91)
!793 = !DILocalVariable(name: "t", arg: 2, scope: !788, file: !3, line: 374, type: !9)
!794 = !DILocation(line: 374, column: 28, scope: !788)
!795 = !DILocation(line: 374, column: 38, scope: !788)
!796 = !DILocation(line: 375, column: 10, scope: !797)
!797 = distinct !DILexicalBlock(scope: !788, file: !3, line: 375, column: 7)
!798 = !DILocation(line: 375, column: 15, scope: !797)
!799 = !DILocation(line: 375, column: 7, scope: !788)
!800 = !DILocation(line: 376, column: 5, scope: !797)
!801 = !DILocation(line: 377, column: 3, scope: !788)
!802 = !DILocation(line: 378, column: 3, scope: !788)
!803 = !DILocation(line: 379, column: 1, scope: !788)
!804 = distinct !DISubprogram(name: "luaH_getnum", scope: !3, file: !3, line: 435, type: !805, isLocal: false, isDefinition: true, scopeLine: 435, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !807)
!805 = !DISubroutineType(types: !806)
!806 = !{!365, !9, !90}
!807 = !{!808, !809, !810, !813}
!808 = !DILocalVariable(name: "t", arg: 1, scope: !804, file: !3, line: 435, type: !9)
!809 = !DILocalVariable(name: "key", arg: 2, scope: !804, file: !3, line: 435, type: !90)
!810 = !DILocalVariable(name: "nk", scope: !811, file: !3, line: 440, type: !6)
!811 = distinct !DILexicalBlock(scope: !812, file: !3, line: 439, column: 8)
!812 = distinct !DILexicalBlock(scope: !804, file: !3, line: 437, column: 7)
!813 = !DILocalVariable(name: "n", scope: !811, file: !3, line: 441, type: !322)
!814 = !DILocation(line: 85, column: 16, scope: !380, inlinedAt: !815)
!815 = distinct !DILocation(line: 441, column: 15, scope: !811)
!816 = !DILocation(line: 435, column: 35, scope: !804)
!817 = !DILocation(line: 435, column: 42, scope: !804)
!818 = !DILocation(line: 437, column: 7, scope: !812)
!819 = !DILocation(line: 437, column: 35, scope: !812)
!820 = !DILocation(line: 437, column: 33, scope: !812)
!821 = !DILocation(line: 437, column: 7, scope: !804)
!822 = !DILocation(line: 438, column: 16, scope: !812)
!823 = !DILocation(line: 438, column: 13, scope: !812)
!824 = !DILocation(line: 438, column: 5, scope: !812)
!825 = !DILocation(line: 440, column: 21, scope: !811)
!826 = !DILocation(line: 440, column: 16, scope: !811)
!827 = !DILocation(line: 84, column: 36, scope: !380, inlinedAt: !815)
!828 = !DILocation(line: 84, column: 50, scope: !380, inlinedAt: !815)
!829 = !DILocation(line: 85, column: 3, scope: !380, inlinedAt: !815)
!830 = !DILocation(line: 87, column: 7, scope: !459, inlinedAt: !815)
!831 = !DILocation(line: 87, column: 7, scope: !380, inlinedAt: !815)
!832 = !DILocation(line: 88, column: 12, scope: !459, inlinedAt: !815)
!833 = !DILocation(line: 88, column: 5, scope: !459, inlinedAt: !815)
!834 = !DILocation(line: 89, column: 3, scope: !380, inlinedAt: !815)
!835 = !DILocation(line: 86, column: 7, scope: !380, inlinedAt: !815)
!836 = !DILocation(line: 90, column: 41, scope: !467, inlinedAt: !815)
!837 = !DILocation(line: 90, column: 38, scope: !467, inlinedAt: !815)
!838 = !DILocation(line: 91, column: 10, scope: !380, inlinedAt: !815)
!839 = !DILocation(line: 91, column: 3, scope: !380, inlinedAt: !815)
!840 = !DILocation(line: 0, scope: !380, inlinedAt: !815)
!841 = !DILocation(line: 92, column: 1, scope: !380, inlinedAt: !815)
!842 = !DILocation(line: 441, column: 11, scope: !811)
!843 = !DILocation(line: 442, column: 5, scope: !811)
!844 = !DILocation(line: 0, scope: !845)
!845 = distinct !DILexicalBlock(scope: !846, file: !3, line: 443, column: 11)
!846 = distinct !DILexicalBlock(scope: !811, file: !3, line: 442, column: 8)
!847 = !DILocation(line: 443, column: 11, scope: !845)
!848 = !DILocation(line: 443, column: 31, scope: !845)
!849 = !DILocation(line: 443, column: 34, scope: !845)
!850 = !DILocation(line: 443, column: 11, scope: !846)
!851 = !DILocation(line: 444, column: 16, scope: !845)
!852 = !DILocation(line: 444, column: 9, scope: !845)
!853 = !DILocation(line: 445, column: 16, scope: !845)
!854 = !DILocation(line: 446, column: 5, scope: !846)
!855 = distinct !{!855, !843, !856}
!856 = !DILocation(line: 446, column: 15, scope: !811)
!857 = !DILocation(line: 449, column: 1, scope: !804)
!858 = distinct !DISubprogram(name: "luaH_getstr", scope: !3, file: !3, line: 455, type: !859, isLocal: false, isDefinition: true, scopeLine: 455, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !861)
!859 = !DISubroutineType(types: !860)
!860 = !{!365, !9, !189}
!861 = !{!862, !863, !864}
!862 = !DILocalVariable(name: "t", arg: 1, scope: !858, file: !3, line: 455, type: !9)
!863 = !DILocalVariable(name: "key", arg: 2, scope: !858, file: !3, line: 455, type: !189)
!864 = !DILocalVariable(name: "n", scope: !858, file: !3, line: 456, type: !322)
!865 = !DILocation(line: 455, column: 35, scope: !858)
!866 = !DILocation(line: 455, column: 47, scope: !858)
!867 = !DILocation(line: 456, column: 13, scope: !858)
!868 = !DILocation(line: 456, column: 9, scope: !858)
!869 = !DILocation(line: 457, column: 3, scope: !858)
!870 = !DILocation(line: 0, scope: !871)
!871 = distinct !DILexicalBlock(scope: !872, file: !3, line: 458, column: 9)
!872 = distinct !DILexicalBlock(scope: !858, file: !3, line: 457, column: 6)
!873 = !DILocation(line: 458, column: 9, scope: !871)
!874 = !DILocation(line: 458, column: 29, scope: !871)
!875 = !DILocation(line: 458, column: 32, scope: !871)
!876 = !DILocation(line: 458, column: 52, scope: !871)
!877 = !DILocation(line: 458, column: 9, scope: !872)
!878 = !DILocation(line: 459, column: 14, scope: !871)
!879 = !DILocation(line: 459, column: 7, scope: !871)
!880 = !DILocation(line: 460, column: 14, scope: !871)
!881 = !DILocation(line: 461, column: 3, scope: !872)
!882 = distinct !{!882, !869, !883}
!883 = !DILocation(line: 461, column: 13, scope: !858)
!884 = !DILocation(line: 0, scope: !858)
!885 = !DILocation(line: 463, column: 1, scope: !858)
!886 = distinct !DISubprogram(name: "luaH_get", scope: !3, file: !3, line: 469, type: !887, isLocal: false, isDefinition: true, scopeLine: 469, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !889)
!887 = !DISubroutineType(types: !888)
!888 = !{!365, !9, !365}
!889 = !{!890, !891, !892, !895, !896}
!890 = !DILocalVariable(name: "t", arg: 1, scope: !886, file: !3, line: 469, type: !9)
!891 = !DILocalVariable(name: "key", arg: 2, scope: !886, file: !3, line: 469, type: !365)
!892 = !DILocalVariable(name: "k", scope: !893, file: !3, line: 474, type: !90)
!893 = distinct !DILexicalBlock(scope: !894, file: !3, line: 473, column: 23)
!894 = distinct !DILexicalBlock(scope: !886, file: !3, line: 470, column: 23)
!895 = !DILocalVariable(name: "n", scope: !893, file: !3, line: 475, type: !6)
!896 = !DILocalVariable(name: "n", scope: !897, file: !3, line: 482, type: !322)
!897 = distinct !DILexicalBlock(scope: !894, file: !3, line: 481, column: 14)
!898 = !DILocation(line: 85, column: 16, scope: !380, inlinedAt: !899)
!899 = distinct !DILocation(line: 441, column: 15, scope: !811, inlinedAt: !900)
!900 = distinct !DILocation(line: 478, column: 16, scope: !901)
!901 = distinct !DILexicalBlock(scope: !893, file: !3, line: 477, column: 11)
!902 = !DILocation(line: 85, column: 16, scope: !380, inlinedAt: !903)
!903 = distinct !DILocation(line: 103, column: 14, scope: !394, inlinedAt: !904)
!904 = distinct !DILocation(line: 482, column: 17, scope: !897)
!905 = !DILocation(line: 469, column: 32, scope: !886)
!906 = !DILocation(line: 469, column: 49, scope: !886)
!907 = !DILocation(line: 470, column: 11, scope: !886)
!908 = !DILocation(line: 470, column: 3, scope: !886)
!909 = !DILocation(line: 472, column: 45, scope: !894)
!910 = !DILocation(line: 455, column: 35, scope: !858, inlinedAt: !911)
!911 = distinct !DILocation(line: 472, column: 30, scope: !894)
!912 = !DILocation(line: 455, column: 47, scope: !858, inlinedAt: !911)
!913 = !DILocation(line: 456, column: 13, scope: !858, inlinedAt: !911)
!914 = !DILocation(line: 456, column: 9, scope: !858, inlinedAt: !911)
!915 = !DILocation(line: 457, column: 3, scope: !858, inlinedAt: !911)
!916 = !DILocation(line: 0, scope: !871, inlinedAt: !911)
!917 = !DILocation(line: 458, column: 9, scope: !871, inlinedAt: !911)
!918 = !DILocation(line: 458, column: 29, scope: !871, inlinedAt: !911)
!919 = !DILocation(line: 458, column: 32, scope: !871, inlinedAt: !911)
!920 = !DILocation(line: 458, column: 52, scope: !871, inlinedAt: !911)
!921 = !DILocation(line: 458, column: 9, scope: !872, inlinedAt: !911)
!922 = !DILocation(line: 459, column: 14, scope: !871, inlinedAt: !911)
!923 = !DILocation(line: 459, column: 7, scope: !871, inlinedAt: !911)
!924 = !DILocation(line: 460, column: 14, scope: !871, inlinedAt: !911)
!925 = !DILocation(line: 461, column: 3, scope: !872, inlinedAt: !911)
!926 = !DILocation(line: 475, column: 22, scope: !893)
!927 = !DILocation(line: 475, column: 18, scope: !893)
!928 = !DILocation(line: 476, column: 7, scope: !893)
!929 = !DILocation(line: 474, column: 11, scope: !893)
!930 = !DILocation(line: 477, column: 11, scope: !901)
!931 = !DILocation(line: 477, column: 11, scope: !893)
!932 = !DILocation(line: 435, column: 35, scope: !804, inlinedAt: !900)
!933 = !DILocation(line: 435, column: 42, scope: !804, inlinedAt: !900)
!934 = !DILocation(line: 437, column: 7, scope: !812, inlinedAt: !900)
!935 = !DILocation(line: 437, column: 35, scope: !812, inlinedAt: !900)
!936 = !DILocation(line: 437, column: 33, scope: !812, inlinedAt: !900)
!937 = !DILocation(line: 437, column: 7, scope: !804, inlinedAt: !900)
!938 = !DILocation(line: 438, column: 16, scope: !812, inlinedAt: !900)
!939 = !DILocation(line: 438, column: 13, scope: !812, inlinedAt: !900)
!940 = !DILocation(line: 438, column: 5, scope: !812, inlinedAt: !900)
!941 = !DILocation(line: 440, column: 16, scope: !811, inlinedAt: !900)
!942 = !DILocation(line: 84, column: 36, scope: !380, inlinedAt: !899)
!943 = !DILocation(line: 84, column: 50, scope: !380, inlinedAt: !899)
!944 = !DILocation(line: 85, column: 3, scope: !380, inlinedAt: !899)
!945 = !DILocation(line: 87, column: 7, scope: !459, inlinedAt: !899)
!946 = !DILocation(line: 87, column: 7, scope: !380, inlinedAt: !899)
!947 = !DILocation(line: 88, column: 12, scope: !459, inlinedAt: !899)
!948 = !DILocation(line: 88, column: 5, scope: !459, inlinedAt: !899)
!949 = !DILocation(line: 89, column: 3, scope: !380, inlinedAt: !899)
!950 = !DILocation(line: 86, column: 7, scope: !380, inlinedAt: !899)
!951 = !DILocation(line: 90, column: 41, scope: !467, inlinedAt: !899)
!952 = !DILocation(line: 90, column: 38, scope: !467, inlinedAt: !899)
!953 = !DILocation(line: 91, column: 10, scope: !380, inlinedAt: !899)
!954 = !DILocation(line: 91, column: 3, scope: !380, inlinedAt: !899)
!955 = !DILocation(line: 0, scope: !380, inlinedAt: !899)
!956 = !DILocation(line: 92, column: 1, scope: !380, inlinedAt: !899)
!957 = !DILocation(line: 441, column: 11, scope: !811, inlinedAt: !900)
!958 = !DILocation(line: 442, column: 5, scope: !811, inlinedAt: !900)
!959 = !DILocation(line: 0, scope: !845, inlinedAt: !900)
!960 = !DILocation(line: 443, column: 11, scope: !845, inlinedAt: !900)
!961 = !DILocation(line: 443, column: 31, scope: !845, inlinedAt: !900)
!962 = !DILocation(line: 443, column: 34, scope: !845, inlinedAt: !900)
!963 = !DILocation(line: 443, column: 11, scope: !846, inlinedAt: !900)
!964 = !DILocation(line: 444, column: 16, scope: !845, inlinedAt: !900)
!965 = !DILocation(line: 444, column: 9, scope: !845, inlinedAt: !900)
!966 = !DILocation(line: 445, column: 16, scope: !845, inlinedAt: !900)
!967 = !DILocation(line: 446, column: 5, scope: !846, inlinedAt: !900)
!968 = !DILocation(line: 103, column: 25, scope: !394, inlinedAt: !904)
!969 = !DILocation(line: 84, column: 36, scope: !380, inlinedAt: !903)
!970 = !DILocation(line: 84, column: 50, scope: !380, inlinedAt: !903)
!971 = !DILocation(line: 85, column: 3, scope: !380, inlinedAt: !903)
!972 = !DILocation(line: 87, column: 7, scope: !459, inlinedAt: !903)
!973 = !DILocation(line: 87, column: 7, scope: !380, inlinedAt: !903)
!974 = !DILocation(line: 88, column: 12, scope: !459, inlinedAt: !903)
!975 = !DILocation(line: 88, column: 5, scope: !459, inlinedAt: !903)
!976 = !DILocation(line: 89, column: 3, scope: !380, inlinedAt: !903)
!977 = !DILocation(line: 86, column: 7, scope: !380, inlinedAt: !903)
!978 = !DILocation(line: 90, column: 41, scope: !467, inlinedAt: !903)
!979 = !DILocation(line: 90, column: 38, scope: !467, inlinedAt: !903)
!980 = !DILocation(line: 91, column: 10, scope: !380, inlinedAt: !903)
!981 = !DILocation(line: 91, column: 3, scope: !380, inlinedAt: !903)
!982 = !DILocation(line: 0, scope: !380, inlinedAt: !903)
!983 = !DILocation(line: 92, column: 1, scope: !380, inlinedAt: !903)
!984 = !DILocation(line: 103, column: 7, scope: !394, inlinedAt: !904)
!985 = !DILocation(line: 107, column: 14, scope: !394, inlinedAt: !904)
!986 = !DILocation(line: 107, column: 7, scope: !394, inlinedAt: !904)
!987 = !DILocation(line: 109, column: 14, scope: !394, inlinedAt: !904)
!988 = !DILocation(line: 109, column: 7, scope: !394, inlinedAt: !904)
!989 = !DILocation(line: 111, column: 14, scope: !394, inlinedAt: !904)
!990 = !DILocation(line: 111, column: 7, scope: !394, inlinedAt: !904)
!991 = !DILocation(line: 484, column: 30, scope: !992)
!992 = distinct !DILexicalBlock(scope: !993, file: !3, line: 484, column: 13)
!993 = distinct !DILexicalBlock(scope: !897, file: !3, line: 483, column: 10)
!994 = !DILocation(line: 0, scope: !992)
!995 = !DILocation(line: 482, column: 13, scope: !897)
!996 = !DILocation(line: 484, column: 13, scope: !992)
!997 = !DILocation(line: 484, column: 13, scope: !993)
!998 = !DILocation(line: 485, column: 18, scope: !992)
!999 = !DILocation(line: 485, column: 11, scope: !992)
!1000 = !DILocation(line: 486, column: 18, scope: !992)
!1001 = !DILocation(line: 487, column: 7, scope: !993)
!1002 = distinct !{!1002, !1003, !1004}
!1003 = !DILocation(line: 483, column: 7, scope: !897)
!1004 = !DILocation(line: 487, column: 17, scope: !897)
!1005 = !DILocation(line: 0, scope: !894)
!1006 = !DILocation(line: 491, column: 1, scope: !886)
!1007 = !DILocation(line: 494, column: 30, scope: !657)
!1008 = !DILocation(line: 494, column: 40, scope: !657)
!1009 = !DILocation(line: 494, column: 57, scope: !657)
!1010 = !DILocation(line: 495, column: 21, scope: !657)
!1011 = !DILocation(line: 495, column: 17, scope: !657)
!1012 = !DILocation(line: 496, column: 6, scope: !657)
!1013 = !DILocation(line: 496, column: 12, scope: !657)
!1014 = !DILocation(line: 497, column: 9, scope: !673)
!1015 = !DILocation(line: 497, column: 7, scope: !657)
!1016 = !DILocation(line: 500, column: 9, scope: !676)
!1017 = !DILocation(line: 500, column: 9, scope: !677)
!1018 = !DILocation(line: 500, column: 23, scope: !676)
!1019 = !DILocation(line: 501, column: 33, scope: !681)
!1020 = !DILocation(line: 501, column: 14, scope: !676)
!1021 = !DILocation(line: 502, column: 7, scope: !681)
!1022 = !DILocation(line: 503, column: 12, scope: !677)
!1023 = !DILocation(line: 503, column: 5, scope: !677)
!1024 = !DILocation(line: 0, scope: !677)
!1025 = !DILocation(line: 505, column: 1, scope: !657)
!1026 = distinct !DISubprogram(name: "newkey", scope: !3, file: !3, line: 399, type: !658, isLocal: true, isDefinition: true, scopeLine: 399, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1027)
!1027 = !{!1028, !1029, !1030, !1031, !1032, !1035}
!1028 = !DILocalVariable(name: "L", arg: 1, scope: !1026, file: !3, line: 399, type: !91)
!1029 = !DILocalVariable(name: "t", arg: 2, scope: !1026, file: !3, line: 399, type: !9)
!1030 = !DILocalVariable(name: "key", arg: 3, scope: !1026, file: !3, line: 399, type: !365)
!1031 = !DILocalVariable(name: "mp", scope: !1026, file: !3, line: 400, type: !322)
!1032 = !DILocalVariable(name: "othern", scope: !1033, file: !3, line: 402, type: !322)
!1033 = distinct !DILexicalBlock(scope: !1034, file: !3, line: 401, column: 46)
!1034 = distinct !DILexicalBlock(scope: !1026, file: !3, line: 401, column: 7)
!1035 = !DILocalVariable(name: "n", scope: !1033, file: !3, line: 403, type: !322)
!1036 = !DILocation(line: 85, column: 16, scope: !380, inlinedAt: !1037)
!1037 = distinct !DILocation(line: 103, column: 14, scope: !394, inlinedAt: !1038)
!1038 = distinct !DILocation(line: 409, column: 14, scope: !1033)
!1039 = !DILocation(line: 85, column: 16, scope: !380, inlinedAt: !1040)
!1040 = distinct !DILocation(line: 103, column: 14, scope: !394, inlinedAt: !1041)
!1041 = distinct !DILocation(line: 400, column: 14, scope: !1026)
!1042 = !DILocalVariable(name: "nums", scope: !1043, file: !3, line: 335, type: !1054)
!1043 = distinct !DISubprogram(name: "rehash", scope: !3, file: !3, line: 333, type: !1044, isLocal: true, isDefinition: true, scopeLine: 333, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1046)
!1044 = !DISubroutineType(types: !1045)
!1045 = !{null, !91, !9, !365}
!1046 = !{!1047, !1048, !1049, !1050, !1051, !1042, !1052, !1053}
!1047 = !DILocalVariable(name: "L", arg: 1, scope: !1043, file: !3, line: 333, type: !91)
!1048 = !DILocalVariable(name: "t", arg: 2, scope: !1043, file: !3, line: 333, type: !9)
!1049 = !DILocalVariable(name: "ek", arg: 3, scope: !1043, file: !3, line: 333, type: !365)
!1050 = !DILocalVariable(name: "nasize", scope: !1043, file: !3, line: 334, type: !90)
!1051 = !DILocalVariable(name: "na", scope: !1043, file: !3, line: 334, type: !90)
!1052 = !DILocalVariable(name: "i", scope: !1043, file: !3, line: 336, type: !90)
!1053 = !DILocalVariable(name: "totaluse", scope: !1043, file: !3, line: 337, type: !90)
!1054 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 864, elements: !1055)
!1055 = !{!1056}
!1056 = !DISubrange(count: 27)
!1057 = !DILocation(line: 335, column: 7, scope: !1043, inlinedAt: !1058)
!1058 = distinct !DILocation(line: 405, column: 7, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1060, file: !3, line: 404, column: 20)
!1060 = distinct !DILexicalBlock(scope: !1033, file: !3, line: 404, column: 9)
!1061 = !DILocation(line: 399, column: 35, scope: !1026)
!1062 = !DILocation(line: 399, column: 45, scope: !1026)
!1063 = !DILocation(line: 399, column: 62, scope: !1026)
!1064 = !DILocation(line: 100, column: 41, scope: !395, inlinedAt: !1041)
!1065 = !DILocation(line: 100, column: 58, scope: !395, inlinedAt: !1041)
!1066 = !DILocation(line: 101, column: 11, scope: !395, inlinedAt: !1041)
!1067 = !DILocation(line: 101, column: 3, scope: !395, inlinedAt: !1041)
!1068 = !DILocation(line: 103, column: 25, scope: !394, inlinedAt: !1041)
!1069 = !DILocation(line: 84, column: 36, scope: !380, inlinedAt: !1040)
!1070 = !DILocation(line: 84, column: 50, scope: !380, inlinedAt: !1040)
!1071 = !DILocation(line: 85, column: 3, scope: !380, inlinedAt: !1040)
!1072 = !DILocation(line: 87, column: 7, scope: !459, inlinedAt: !1040)
!1073 = !DILocation(line: 87, column: 7, scope: !380, inlinedAt: !1040)
!1074 = !DILocation(line: 88, column: 12, scope: !459, inlinedAt: !1040)
!1075 = !DILocation(line: 88, column: 5, scope: !459, inlinedAt: !1040)
!1076 = !DILocation(line: 89, column: 3, scope: !380, inlinedAt: !1040)
!1077 = !DILocation(line: 86, column: 7, scope: !380, inlinedAt: !1040)
!1078 = !DILocation(line: 90, column: 41, scope: !467, inlinedAt: !1040)
!1079 = !DILocation(line: 90, column: 38, scope: !467, inlinedAt: !1040)
!1080 = !DILocation(line: 91, column: 10, scope: !380, inlinedAt: !1040)
!1081 = !DILocation(line: 91, column: 3, scope: !380, inlinedAt: !1040)
!1082 = !DILocation(line: 0, scope: !380, inlinedAt: !1040)
!1083 = !DILocation(line: 92, column: 1, scope: !380, inlinedAt: !1040)
!1084 = !DILocation(line: 103, column: 7, scope: !394, inlinedAt: !1041)
!1085 = !DILocation(line: 105, column: 14, scope: !394, inlinedAt: !1041)
!1086 = !DILocation(line: 105, column: 7, scope: !394, inlinedAt: !1041)
!1087 = !DILocation(line: 107, column: 14, scope: !394, inlinedAt: !1041)
!1088 = !DILocation(line: 107, column: 7, scope: !394, inlinedAt: !1041)
!1089 = !DILocation(line: 109, column: 14, scope: !394, inlinedAt: !1041)
!1090 = !DILocation(line: 109, column: 7, scope: !394, inlinedAt: !1041)
!1091 = !DILocation(line: 111, column: 14, scope: !394, inlinedAt: !1041)
!1092 = !DILocation(line: 111, column: 7, scope: !394, inlinedAt: !1041)
!1093 = !DILocation(line: 0, scope: !394, inlinedAt: !1041)
!1094 = !DILocation(line: 400, column: 9, scope: !1026)
!1095 = !DILocation(line: 401, column: 8, scope: !1034)
!1096 = !DILocation(line: 401, column: 32, scope: !1034)
!1097 = !DILocation(line: 401, column: 26, scope: !1034)
!1098 = !DILocalVariable(name: "t", arg: 1, scope: !1099, file: !3, line: 382, type: !9)
!1099 = distinct !DISubprogram(name: "getfreepos", scope: !3, file: !3, line: 382, type: !1100, isLocal: true, isDefinition: true, scopeLine: 382, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1102)
!1100 = !DISubroutineType(types: !1101)
!1101 = !{!322, !9}
!1102 = !{!1098}
!1103 = !DILocation(line: 382, column: 33, scope: !1099, inlinedAt: !1104)
!1104 = distinct !DILocation(line: 403, column: 15, scope: !1033)
!1105 = !DILocation(line: 383, column: 21, scope: !1099, inlinedAt: !1104)
!1106 = !DILocation(line: 383, column: 3, scope: !1099, inlinedAt: !1104)
!1107 = !DILocation(line: 383, column: 24, scope: !1099, inlinedAt: !1104)
!1108 = !DILocation(line: 384, column: 9, scope: !1109, inlinedAt: !1104)
!1109 = distinct !DILexicalBlock(scope: !1110, file: !3, line: 384, column: 9)
!1110 = distinct !DILexicalBlock(scope: !1099, file: !3, line: 383, column: 35)
!1111 = !DILocation(line: 384, column: 9, scope: !1110, inlinedAt: !1104)
!1112 = distinct !{!1112, !1113, !1114}
!1113 = !DILocation(line: 383, column: 3, scope: !1099)
!1114 = !DILocation(line: 386, column: 3, scope: !1099)
!1115 = !DILocation(line: 333, column: 32, scope: !1043, inlinedAt: !1058)
!1116 = !DILocation(line: 333, column: 42, scope: !1043, inlinedAt: !1058)
!1117 = !DILocation(line: 333, column: 59, scope: !1043, inlinedAt: !1058)
!1118 = !DILocation(line: 335, column: 3, scope: !1043, inlinedAt: !1058)
!1119 = !DILocation(line: 336, column: 7, scope: !1043, inlinedAt: !1058)
!1120 = !DILocation(line: 338, column: 38, scope: !1121, inlinedAt: !1058)
!1121 = distinct !DILexicalBlock(scope: !1122, file: !3, line: 338, column: 3)
!1122 = distinct !DILexicalBlock(scope: !1043, file: !3, line: 338, column: 3)
!1123 = !DILocation(line: 338, column: 30, scope: !1121, inlinedAt: !1058)
!1124 = !DILocalVariable(name: "t", arg: 1, scope: !1125, file: !3, line: 222, type: !383)
!1125 = distinct !DISubprogram(name: "numusearray", scope: !3, file: !3, line: 222, type: !1126, isLocal: true, isDefinition: true, scopeLine: 222, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1128)
!1126 = !DISubroutineType(types: !1127)
!1127 = !{!90, !383, !284}
!1128 = !{!1124, !1129, !1130, !1131, !1132, !1133, !1134, !1138}
!1129 = !DILocalVariable(name: "nums", arg: 2, scope: !1125, file: !3, line: 222, type: !284)
!1130 = !DILocalVariable(name: "lg", scope: !1125, file: !3, line: 223, type: !90)
!1131 = !DILocalVariable(name: "ttlg", scope: !1125, file: !3, line: 224, type: !90)
!1132 = !DILocalVariable(name: "ause", scope: !1125, file: !3, line: 225, type: !90)
!1133 = !DILocalVariable(name: "i", scope: !1125, file: !3, line: 226, type: !90)
!1134 = !DILocalVariable(name: "lc", scope: !1135, file: !3, line: 228, type: !90)
!1135 = distinct !DILexicalBlock(scope: !1136, file: !3, line: 227, column: 50)
!1136 = distinct !DILexicalBlock(scope: !1137, file: !3, line: 227, column: 3)
!1137 = distinct !DILexicalBlock(scope: !1125, file: !3, line: 227, column: 3)
!1138 = !DILocalVariable(name: "lim", scope: !1135, file: !3, line: 229, type: !90)
!1139 = !DILocation(line: 222, column: 38, scope: !1125, inlinedAt: !1140)
!1140 = distinct !DILocation(line: 339, column: 12, scope: !1043, inlinedAt: !1058)
!1141 = !DILocation(line: 222, column: 46, scope: !1125, inlinedAt: !1140)
!1142 = !DILocation(line: 225, column: 7, scope: !1125, inlinedAt: !1140)
!1143 = !DILocation(line: 226, column: 7, scope: !1125, inlinedAt: !1140)
!1144 = !DILocation(line: 223, column: 7, scope: !1125, inlinedAt: !1140)
!1145 = !DILocation(line: 224, column: 7, scope: !1125, inlinedAt: !1140)
!1146 = !DILocation(line: 227, column: 3, scope: !1137, inlinedAt: !1140)
!1147 = !DILocation(line: 228, column: 9, scope: !1135, inlinedAt: !1140)
!1148 = !DILocation(line: 229, column: 9, scope: !1135, inlinedAt: !1140)
!1149 = !DILocation(line: 230, column: 13, scope: !1150, inlinedAt: !1140)
!1150 = distinct !DILexicalBlock(scope: !1135, file: !3, line: 230, column: 9)
!1151 = !DILocation(line: 230, column: 9, scope: !1135, inlinedAt: !1140)
!1152 = !DILocation(line: 232, column: 13, scope: !1153, inlinedAt: !1140)
!1153 = distinct !DILexicalBlock(scope: !1154, file: !3, line: 232, column: 11)
!1154 = distinct !DILexicalBlock(scope: !1150, file: !3, line: 230, column: 29)
!1155 = !DILocation(line: 232, column: 11, scope: !1154, inlinedAt: !1140)
!1156 = !DILocation(line: 0, scope: !1135, inlinedAt: !1140)
!1157 = !DILocation(line: 236, column: 14, scope: !1158, inlinedAt: !1140)
!1158 = distinct !DILexicalBlock(scope: !1159, file: !3, line: 236, column: 5)
!1159 = distinct !DILexicalBlock(scope: !1135, file: !3, line: 236, column: 5)
!1160 = !DILocation(line: 236, column: 5, scope: !1159, inlinedAt: !1140)
!1161 = !DILocation(line: 237, column: 12, scope: !1162, inlinedAt: !1140)
!1162 = distinct !DILexicalBlock(scope: !1163, file: !3, line: 237, column: 11)
!1163 = distinct !DILexicalBlock(scope: !1158, file: !3, line: 236, column: 27)
!1164 = !DILocation(line: 237, column: 11, scope: !1163, inlinedAt: !1140)
!1165 = distinct !{!1165, !1166, !1167, !1168}
!1166 = !DILocation(line: 236, column: 5, scope: !1159)
!1167 = !DILocation(line: 239, column: 5, scope: !1159)
!1168 = !{!"llvm.loop.isvectorized", i32 1}
!1169 = !DILocation(line: 236, column: 23, scope: !1158, inlinedAt: !1140)
!1170 = distinct !{!1170, !1166, !1167, !1171, !1168}
!1171 = !{!"llvm.loop.unroll.runtime.disable"}
!1172 = !DILocation(line: 240, column: 5, scope: !1135, inlinedAt: !1140)
!1173 = !DILocation(line: 0, scope: !1158, inlinedAt: !1140)
!1174 = !DILocation(line: 240, column: 14, scope: !1135, inlinedAt: !1140)
!1175 = !DILocation(line: 241, column: 10, scope: !1135, inlinedAt: !1140)
!1176 = !DILocation(line: 227, column: 37, scope: !1136, inlinedAt: !1140)
!1177 = !DILocation(line: 227, column: 45, scope: !1136, inlinedAt: !1140)
!1178 = !DILocation(line: 227, column: 24, scope: !1136, inlinedAt: !1140)
!1179 = distinct !{!1179, !1180, !1181}
!1180 = !DILocation(line: 227, column: 3, scope: !1137)
!1181 = !DILocation(line: 242, column: 3, scope: !1137)
!1182 = !DILocation(line: 334, column: 7, scope: !1043, inlinedAt: !1058)
!1183 = !DILocation(line: 337, column: 7, scope: !1043, inlinedAt: !1058)
!1184 = !DILocalVariable(name: "t", arg: 1, scope: !1185, file: !3, line: 247, type: !383)
!1185 = distinct !DISubprogram(name: "numusehash", scope: !3, file: !3, line: 247, type: !1186, isLocal: true, isDefinition: true, scopeLine: 247, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1188)
!1186 = !DISubroutineType(types: !1187)
!1187 = !{!90, !383, !284, !284}
!1188 = !{!1184, !1189, !1190, !1191, !1192, !1193, !1194}
!1189 = !DILocalVariable(name: "nums", arg: 2, scope: !1185, file: !3, line: 247, type: !284)
!1190 = !DILocalVariable(name: "pnasize", arg: 3, scope: !1185, file: !3, line: 247, type: !284)
!1191 = !DILocalVariable(name: "totaluse", scope: !1185, file: !3, line: 248, type: !90)
!1192 = !DILocalVariable(name: "ause", scope: !1185, file: !3, line: 249, type: !90)
!1193 = !DILocalVariable(name: "i", scope: !1185, file: !3, line: 250, type: !90)
!1194 = !DILocalVariable(name: "n", scope: !1195, file: !3, line: 252, type: !322)
!1195 = distinct !DILexicalBlock(scope: !1185, file: !3, line: 251, column: 15)
!1196 = !DILocation(line: 247, column: 37, scope: !1185, inlinedAt: !1197)
!1197 = distinct !DILocation(line: 341, column: 15, scope: !1043, inlinedAt: !1058)
!1198 = !DILocation(line: 247, column: 45, scope: !1185, inlinedAt: !1197)
!1199 = !DILocation(line: 248, column: 7, scope: !1185, inlinedAt: !1197)
!1200 = !DILocation(line: 249, column: 7, scope: !1185, inlinedAt: !1197)
!1201 = !DILocation(line: 250, column: 11, scope: !1185, inlinedAt: !1197)
!1202 = !DILocation(line: 251, column: 11, scope: !1185, inlinedAt: !1197)
!1203 = !DILocation(line: 250, column: 7, scope: !1185, inlinedAt: !1197)
!1204 = !DILocation(line: 251, column: 3, scope: !1185, inlinedAt: !1197)
!1205 = !DILocation(line: 252, column: 19, scope: !1195, inlinedAt: !1197)
!1206 = !DILocation(line: 253, column: 10, scope: !1207, inlinedAt: !1197)
!1207 = distinct !DILexicalBlock(scope: !1195, file: !3, line: 253, column: 9)
!1208 = !DILocation(line: 253, column: 9, scope: !1195, inlinedAt: !1197)
!1209 = !DILocalVariable(name: "nums", arg: 2, scope: !1210, file: !3, line: 211, type: !284)
!1210 = distinct !DISubprogram(name: "countint", scope: !3, file: !3, line: 211, type: !1211, isLocal: true, isDefinition: true, scopeLine: 211, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1213)
!1211 = !DISubroutineType(types: !1212)
!1212 = !{!90, !365, !284}
!1213 = !{!1214, !1209, !1215}
!1214 = !DILocalVariable(name: "key", arg: 1, scope: !1210, file: !3, line: 211, type: !365)
!1215 = !DILocalVariable(name: "k", scope: !1210, file: !3, line: 212, type: !90)
!1216 = !DILocation(line: 211, column: 46, scope: !1210, inlinedAt: !1217)
!1217 = distinct !DILocation(line: 254, column: 15, scope: !1218, inlinedAt: !1197)
!1218 = distinct !DILexicalBlock(scope: !1207, file: !3, line: 253, column: 28)
!1219 = !DILocation(line: 121, column: 7, scope: !428, inlinedAt: !1220)
!1220 = distinct !DILocation(line: 212, column: 11, scope: !1210, inlinedAt: !1217)
!1221 = !DILocation(line: 121, column: 7, scope: !429, inlinedAt: !1220)
!1222 = !DILocation(line: 254, column: 24, scope: !1218, inlinedAt: !1197)
!1223 = !DILocation(line: 122, column: 20, scope: !427, inlinedAt: !1220)
!1224 = !DILocation(line: 211, column: 36, scope: !1210, inlinedAt: !1217)
!1225 = !DILocation(line: 120, column: 38, scope: !429, inlinedAt: !1220)
!1226 = !DILocation(line: 122, column: 16, scope: !427, inlinedAt: !1220)
!1227 = !DILocation(line: 124, column: 5, scope: !427, inlinedAt: !1220)
!1228 = !DILocation(line: 123, column: 9, scope: !427, inlinedAt: !1220)
!1229 = !DILocation(line: 125, column: 9, scope: !442, inlinedAt: !1220)
!1230 = !DILocation(line: 212, column: 7, scope: !1210, inlinedAt: !1217)
!1231 = !DILocation(line: 213, column: 13, scope: !1232, inlinedAt: !1217)
!1232 = distinct !DILexicalBlock(scope: !1210, file: !3, line: 213, column: 7)
!1233 = !DILocation(line: 214, column: 10, scope: !1234, inlinedAt: !1217)
!1234 = distinct !DILexicalBlock(scope: !1232, file: !3, line: 213, column: 31)
!1235 = !DILocation(line: 214, column: 5, scope: !1234, inlinedAt: !1217)
!1236 = !DILocation(line: 214, column: 22, scope: !1234, inlinedAt: !1217)
!1237 = !DILocation(line: 215, column: 5, scope: !1234, inlinedAt: !1217)
!1238 = !DILocation(line: 0, scope: !1232, inlinedAt: !1217)
!1239 = !DILocation(line: 254, column: 12, scope: !1218, inlinedAt: !1197)
!1240 = !DILocation(line: 255, column: 15, scope: !1218, inlinedAt: !1197)
!1241 = !DILocation(line: 256, column: 5, scope: !1218, inlinedAt: !1197)
!1242 = !DILocation(line: 0, scope: !1218, inlinedAt: !1197)
!1243 = distinct !{!1243, !1244, !1245}
!1244 = !DILocation(line: 251, column: 3, scope: !1185)
!1245 = !DILocation(line: 257, column: 3, scope: !1185)
!1246 = !DILocation(line: 258, column: 12, scope: !1185, inlinedAt: !1197)
!1247 = !DILocation(line: 211, column: 36, scope: !1210, inlinedAt: !1248)
!1248 = distinct !DILocation(line: 343, column: 13, scope: !1043, inlinedAt: !1058)
!1249 = !DILocation(line: 211, column: 46, scope: !1210, inlinedAt: !1248)
!1250 = !DILocation(line: 120, column: 38, scope: !429, inlinedAt: !1251)
!1251 = distinct !DILocation(line: 212, column: 11, scope: !1210, inlinedAt: !1248)
!1252 = !DILocation(line: 121, column: 7, scope: !428, inlinedAt: !1251)
!1253 = !DILocation(line: 121, column: 7, scope: !429, inlinedAt: !1251)
!1254 = !DILocation(line: 122, column: 20, scope: !427, inlinedAt: !1251)
!1255 = !DILocation(line: 122, column: 16, scope: !427, inlinedAt: !1251)
!1256 = !DILocation(line: 124, column: 5, scope: !427, inlinedAt: !1251)
!1257 = !DILocation(line: 123, column: 9, scope: !427, inlinedAt: !1251)
!1258 = !DILocation(line: 125, column: 9, scope: !442, inlinedAt: !1251)
!1259 = !DILocation(line: 212, column: 7, scope: !1210, inlinedAt: !1248)
!1260 = !DILocation(line: 213, column: 13, scope: !1232, inlinedAt: !1248)
!1261 = !DILocation(line: 214, column: 10, scope: !1234, inlinedAt: !1248)
!1262 = !DILocation(line: 214, column: 5, scope: !1234, inlinedAt: !1248)
!1263 = !DILocation(line: 214, column: 22, scope: !1234, inlinedAt: !1248)
!1264 = !DILocation(line: 215, column: 5, scope: !1234, inlinedAt: !1248)
!1265 = !DILocation(line: 0, scope: !1232, inlinedAt: !1248)
!1266 = !DILocation(line: 343, column: 10, scope: !1043, inlinedAt: !1058)
!1267 = !DILocalVariable(name: "nums", arg: 1, scope: !1268, file: !3, line: 189, type: !284)
!1268 = distinct !DISubprogram(name: "computesizes", scope: !3, file: !3, line: 189, type: !1269, isLocal: true, isDefinition: true, scopeLine: 189, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1271)
!1269 = !DISubroutineType(types: !1270)
!1270 = !{!90, !284, !284}
!1271 = !{!1267, !1272, !1273, !1274, !1275, !1276, !1277}
!1272 = !DILocalVariable(name: "narray", arg: 2, scope: !1268, file: !3, line: 189, type: !284)
!1273 = !DILocalVariable(name: "i", scope: !1268, file: !3, line: 190, type: !90)
!1274 = !DILocalVariable(name: "twotoi", scope: !1268, file: !3, line: 191, type: !90)
!1275 = !DILocalVariable(name: "a", scope: !1268, file: !3, line: 192, type: !90)
!1276 = !DILocalVariable(name: "na", scope: !1268, file: !3, line: 193, type: !90)
!1277 = !DILocalVariable(name: "n", scope: !1268, file: !3, line: 194, type: !90)
!1278 = !DILocation(line: 189, column: 30, scope: !1268, inlinedAt: !1279)
!1279 = distinct !DILocation(line: 346, column: 8, scope: !1043, inlinedAt: !1058)
!1280 = !DILocation(line: 192, column: 7, scope: !1268, inlinedAt: !1279)
!1281 = !DILocation(line: 193, column: 7, scope: !1268, inlinedAt: !1279)
!1282 = !DILocation(line: 194, column: 7, scope: !1268, inlinedAt: !1279)
!1283 = !DILocation(line: 190, column: 7, scope: !1268, inlinedAt: !1279)
!1284 = !DILocation(line: 191, column: 7, scope: !1268, inlinedAt: !1279)
!1285 = !DILocation(line: 195, column: 36, scope: !1286, inlinedAt: !1279)
!1286 = distinct !DILexicalBlock(scope: !1287, file: !3, line: 195, column: 3)
!1287 = distinct !DILexicalBlock(scope: !1268, file: !3, line: 195, column: 3)
!1288 = !DILocation(line: 195, column: 3, scope: !1287, inlinedAt: !1279)
!1289 = !DILocation(line: 196, column: 9, scope: !1290, inlinedAt: !1279)
!1290 = distinct !DILexicalBlock(scope: !1291, file: !3, line: 196, column: 9)
!1291 = distinct !DILexicalBlock(scope: !1286, file: !3, line: 195, column: 65)
!1292 = !DILocation(line: 196, column: 17, scope: !1290, inlinedAt: !1279)
!1293 = !DILocation(line: 196, column: 9, scope: !1291, inlinedAt: !1279)
!1294 = !DILocation(line: 197, column: 9, scope: !1295, inlinedAt: !1279)
!1295 = distinct !DILexicalBlock(scope: !1290, file: !3, line: 196, column: 22)
!1296 = !DILocation(line: 198, column: 13, scope: !1297, inlinedAt: !1279)
!1297 = distinct !DILexicalBlock(scope: !1295, file: !3, line: 198, column: 11)
!1298 = !DILocation(line: 198, column: 11, scope: !1295, inlinedAt: !1279)
!1299 = !DILocation(line: 0, scope: !1268, inlinedAt: !1279)
!1300 = !DILocation(line: 203, column: 11, scope: !1301, inlinedAt: !1279)
!1301 = distinct !DILexicalBlock(scope: !1291, file: !3, line: 203, column: 9)
!1302 = !DILocation(line: 203, column: 9, scope: !1291, inlinedAt: !1279)
!1303 = !DILocation(line: 195, column: 48, scope: !1286, inlinedAt: !1279)
!1304 = !DILocation(line: 195, column: 59, scope: !1286, inlinedAt: !1279)
!1305 = !DILocation(line: 195, column: 33, scope: !1286, inlinedAt: !1279)
!1306 = distinct !{!1306, !1307, !1308}
!1307 = !DILocation(line: 195, column: 3, scope: !1287)
!1308 = !DILocation(line: 204, column: 3, scope: !1287)
!1309 = !DILocation(line: 334, column: 15, scope: !1043, inlinedAt: !1058)
!1310 = !DILocation(line: 341, column: 12, scope: !1043, inlinedAt: !1058)
!1311 = !DILocation(line: 344, column: 11, scope: !1043, inlinedAt: !1058)
!1312 = !DILocation(line: 348, column: 33, scope: !1043, inlinedAt: !1058)
!1313 = !DILocation(line: 348, column: 3, scope: !1043, inlinedAt: !1058)
!1314 = !DILocation(line: 349, column: 1, scope: !1043, inlinedAt: !1058)
!1315 = !DILocation(line: 494, column: 30, scope: !657, inlinedAt: !1316)
!1316 = distinct !DILocation(line: 406, column: 14, scope: !1059)
!1317 = !DILocation(line: 494, column: 40, scope: !657, inlinedAt: !1316)
!1318 = !DILocation(line: 494, column: 57, scope: !657, inlinedAt: !1316)
!1319 = !DILocation(line: 495, column: 21, scope: !657, inlinedAt: !1316)
!1320 = !DILocation(line: 495, column: 17, scope: !657, inlinedAt: !1316)
!1321 = !DILocation(line: 496, column: 6, scope: !657, inlinedAt: !1316)
!1322 = !DILocation(line: 496, column: 12, scope: !657, inlinedAt: !1316)
!1323 = !DILocation(line: 497, column: 9, scope: !673, inlinedAt: !1316)
!1324 = !DILocation(line: 497, column: 7, scope: !657, inlinedAt: !1316)
!1325 = !DILocation(line: 500, column: 9, scope: !676, inlinedAt: !1316)
!1326 = !DILocation(line: 500, column: 9, scope: !677, inlinedAt: !1316)
!1327 = !DILocation(line: 500, column: 23, scope: !676, inlinedAt: !1316)
!1328 = !DILocation(line: 501, column: 33, scope: !681, inlinedAt: !1316)
!1329 = !DILocation(line: 501, column: 14, scope: !676, inlinedAt: !1316)
!1330 = !DILocation(line: 502, column: 7, scope: !681, inlinedAt: !1316)
!1331 = !DILocation(line: 503, column: 12, scope: !677, inlinedAt: !1316)
!1332 = !DILocation(line: 503, column: 5, scope: !677, inlinedAt: !1316)
!1333 = !DILocation(line: 403, column: 11, scope: !1033)
!1334 = !DILocation(line: 409, column: 30, scope: !1033)
!1335 = !DILocation(line: 100, column: 41, scope: !395, inlinedAt: !1038)
!1336 = !DILocation(line: 101, column: 11, scope: !395, inlinedAt: !1038)
!1337 = !DILocation(line: 101, column: 3, scope: !395, inlinedAt: !1038)
!1338 = !DILocation(line: 103, column: 25, scope: !394, inlinedAt: !1038)
!1339 = !DILocation(line: 84, column: 36, scope: !380, inlinedAt: !1037)
!1340 = !DILocation(line: 84, column: 50, scope: !380, inlinedAt: !1037)
!1341 = !DILocation(line: 85, column: 3, scope: !380, inlinedAt: !1037)
!1342 = !DILocation(line: 87, column: 7, scope: !459, inlinedAt: !1037)
!1343 = !DILocation(line: 87, column: 7, scope: !380, inlinedAt: !1037)
!1344 = !DILocation(line: 89, column: 3, scope: !380, inlinedAt: !1037)
!1345 = !DILocation(line: 86, column: 7, scope: !380, inlinedAt: !1037)
!1346 = !DILocation(line: 90, column: 41, scope: !467, inlinedAt: !1037)
!1347 = !DILocation(line: 90, column: 38, scope: !467, inlinedAt: !1037)
!1348 = !DILocation(line: 91, column: 10, scope: !380, inlinedAt: !1037)
!1349 = !DILocation(line: 91, column: 3, scope: !380, inlinedAt: !1037)
!1350 = !DILocation(line: 0, scope: !380, inlinedAt: !1037)
!1351 = !DILocation(line: 92, column: 1, scope: !380, inlinedAt: !1037)
!1352 = !DILocation(line: 103, column: 7, scope: !394, inlinedAt: !1038)
!1353 = !DILocation(line: 105, column: 14, scope: !394, inlinedAt: !1038)
!1354 = !DILocation(line: 105, column: 7, scope: !394, inlinedAt: !1038)
!1355 = !DILocation(line: 107, column: 14, scope: !394, inlinedAt: !1038)
!1356 = !DILocation(line: 107, column: 7, scope: !394, inlinedAt: !1038)
!1357 = !DILocation(line: 109, column: 14, scope: !394, inlinedAt: !1038)
!1358 = !DILocation(line: 109, column: 7, scope: !394, inlinedAt: !1038)
!1359 = !DILocation(line: 111, column: 14, scope: !394, inlinedAt: !1038)
!1360 = !DILocation(line: 100, column: 58, scope: !395, inlinedAt: !1038)
!1361 = !DILocation(line: 111, column: 7, scope: !394, inlinedAt: !1038)
!1362 = !DILocation(line: 0, scope: !394, inlinedAt: !1038)
!1363 = !DILocation(line: 402, column: 11, scope: !1033)
!1364 = !DILocation(line: 410, column: 16, scope: !1365)
!1365 = distinct !DILexicalBlock(scope: !1033, file: !3, line: 410, column: 9)
!1366 = !DILocation(line: 410, column: 9, scope: !1033)
!1367 = !DILocation(line: 0, scope: !1368)
!1368 = distinct !DILexicalBlock(scope: !1365, file: !3, line: 410, column: 23)
!1369 = !DILocation(line: 412, column: 14, scope: !1368)
!1370 = !DILocation(line: 412, column: 28, scope: !1368)
!1371 = !DILocation(line: 412, column: 7, scope: !1368)
!1372 = distinct !{!1372, !1371, !1373}
!1373 = !DILocation(line: 412, column: 44, scope: !1368)
!1374 = !DILocation(line: 413, column: 21, scope: !1368)
!1375 = !DILocation(line: 414, column: 12, scope: !1368)
!1376 = !{i64 0, i64 8, !1377, i64 0, i64 8, !1377, i64 0, i64 8, !455, i64 0, i64 4, !469, i64 8, i64 4, !469, i64 16, i64 8, !1377, i64 16, i64 8, !1377, i64 16, i64 8, !455, i64 16, i64 4, !469, i64 24, i64 4, !469, i64 32, i64 8, !1377, i64 16, i64 8, !1377, i64 16, i64 8, !1377, i64 16, i64 8, !455, i64 16, i64 4, !469, i64 24, i64 4, !469}
!1377 = !{!448, !448, i64 0}
!1378 = !DILocation(line: 415, column: 7, scope: !1368)
!1379 = !DILocation(line: 415, column: 17, scope: !1368)
!1380 = !DILocation(line: 416, column: 7, scope: !1368)
!1381 = !DILocation(line: 417, column: 5, scope: !1368)
!1382 = !DILocation(line: 420, column: 18, scope: !1383)
!1383 = distinct !DILexicalBlock(scope: !1365, file: !3, line: 418, column: 10)
!1384 = !DILocation(line: 420, column: 7, scope: !1383)
!1385 = !DILocation(line: 420, column: 16, scope: !1383)
!1386 = !DILocation(line: 421, column: 17, scope: !1383)
!1387 = !DILocation(line: 425, column: 3, scope: !1026)
!1388 = !DILocation(line: 425, column: 26, scope: !1026)
!1389 = !DILocation(line: 425, column: 53, scope: !1026)
!1390 = !DILocation(line: 425, column: 43, scope: !1026)
!1391 = !DILocation(line: 425, column: 46, scope: !1026)
!1392 = !DILocation(line: 426, column: 3, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !1394, file: !3, line: 426, column: 3)
!1394 = distinct !DILexicalBlock(scope: !1026, file: !3, line: 426, column: 3)
!1395 = !DILocation(line: 426, column: 3, scope: !1394)
!1396 = !DILocation(line: 428, column: 10, scope: !1026)
!1397 = !DILocation(line: 428, column: 3, scope: !1026)
!1398 = !DILocation(line: 0, scope: !1059)
!1399 = !DILocation(line: 429, column: 1, scope: !1026)
!1400 = distinct !DISubprogram(name: "luaH_setnum", scope: !3, file: !3, line: 508, type: !1401, isLocal: false, isDefinition: true, scopeLine: 508, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1403)
!1401 = !DISubroutineType(types: !1402)
!1402 = !{!101, !91, !9, !90}
!1403 = !{!1404, !1405, !1406, !1407, !1408, !1411}
!1404 = !DILocalVariable(name: "L", arg: 1, scope: !1400, file: !3, line: 508, type: !91)
!1405 = !DILocalVariable(name: "t", arg: 2, scope: !1400, file: !3, line: 508, type: !9)
!1406 = !DILocalVariable(name: "key", arg: 3, scope: !1400, file: !3, line: 508, type: !90)
!1407 = !DILocalVariable(name: "p", scope: !1400, file: !3, line: 509, type: !365)
!1408 = !DILocalVariable(name: "k", scope: !1409, file: !3, line: 513, type: !102)
!1409 = distinct !DILexicalBlock(scope: !1410, file: !3, line: 512, column: 8)
!1410 = distinct !DILexicalBlock(scope: !1400, file: !3, line: 510, column: 7)
!1411 = !DILocalVariable(name: "i_o", scope: !1412, file: !3, line: 514, type: !101)
!1412 = distinct !DILexicalBlock(scope: !1409, file: !3, line: 514, column: 5)
!1413 = !DILocation(line: 85, column: 16, scope: !380, inlinedAt: !1414)
!1414 = distinct !DILocation(line: 441, column: 15, scope: !811, inlinedAt: !1415)
!1415 = distinct !DILocation(line: 509, column: 21, scope: !1400)
!1416 = !DILocation(line: 508, column: 33, scope: !1400)
!1417 = !DILocation(line: 508, column: 43, scope: !1400)
!1418 = !DILocation(line: 508, column: 50, scope: !1400)
!1419 = !DILocation(line: 435, column: 35, scope: !804, inlinedAt: !1415)
!1420 = !DILocation(line: 435, column: 42, scope: !804, inlinedAt: !1415)
!1421 = !DILocation(line: 437, column: 7, scope: !812, inlinedAt: !1415)
!1422 = !DILocation(line: 437, column: 35, scope: !812, inlinedAt: !1415)
!1423 = !DILocation(line: 437, column: 33, scope: !812, inlinedAt: !1415)
!1424 = !DILocation(line: 437, column: 7, scope: !804, inlinedAt: !1415)
!1425 = !DILocation(line: 438, column: 16, scope: !812, inlinedAt: !1415)
!1426 = !DILocation(line: 438, column: 13, scope: !812, inlinedAt: !1415)
!1427 = !DILocation(line: 438, column: 5, scope: !812, inlinedAt: !1415)
!1428 = !DILocation(line: 440, column: 21, scope: !811, inlinedAt: !1415)
!1429 = !DILocation(line: 440, column: 16, scope: !811, inlinedAt: !1415)
!1430 = !DILocation(line: 84, column: 36, scope: !380, inlinedAt: !1414)
!1431 = !DILocation(line: 84, column: 50, scope: !380, inlinedAt: !1414)
!1432 = !DILocation(line: 85, column: 3, scope: !380, inlinedAt: !1414)
!1433 = !DILocation(line: 87, column: 7, scope: !459, inlinedAt: !1414)
!1434 = !DILocation(line: 87, column: 7, scope: !380, inlinedAt: !1414)
!1435 = !DILocation(line: 88, column: 12, scope: !459, inlinedAt: !1414)
!1436 = !DILocation(line: 88, column: 5, scope: !459, inlinedAt: !1414)
!1437 = !DILocation(line: 89, column: 3, scope: !380, inlinedAt: !1414)
!1438 = !DILocation(line: 86, column: 7, scope: !380, inlinedAt: !1414)
!1439 = !DILocation(line: 90, column: 41, scope: !467, inlinedAt: !1414)
!1440 = !DILocation(line: 90, column: 38, scope: !467, inlinedAt: !1414)
!1441 = !DILocation(line: 91, column: 10, scope: !380, inlinedAt: !1414)
!1442 = !DILocation(line: 91, column: 3, scope: !380, inlinedAt: !1414)
!1443 = !DILocation(line: 0, scope: !380, inlinedAt: !1414)
!1444 = !DILocation(line: 92, column: 1, scope: !380, inlinedAt: !1414)
!1445 = !DILocation(line: 441, column: 11, scope: !811, inlinedAt: !1415)
!1446 = !DILocation(line: 442, column: 5, scope: !811, inlinedAt: !1415)
!1447 = !DILocation(line: 0, scope: !845, inlinedAt: !1415)
!1448 = !DILocation(line: 443, column: 11, scope: !845, inlinedAt: !1415)
!1449 = !DILocation(line: 443, column: 31, scope: !845, inlinedAt: !1415)
!1450 = !DILocation(line: 443, column: 34, scope: !845, inlinedAt: !1415)
!1451 = !DILocation(line: 443, column: 11, scope: !846, inlinedAt: !1415)
!1452 = !DILocation(line: 444, column: 16, scope: !845, inlinedAt: !1415)
!1453 = !DILocation(line: 444, column: 9, scope: !845, inlinedAt: !1415)
!1454 = !DILocation(line: 445, column: 16, scope: !845, inlinedAt: !1415)
!1455 = !DILocation(line: 446, column: 5, scope: !846, inlinedAt: !1415)
!1456 = !DILocation(line: 509, column: 17, scope: !1400)
!1457 = !DILocation(line: 510, column: 9, scope: !1410)
!1458 = !DILocation(line: 510, column: 7, scope: !1400)
!1459 = !DILocation(line: 514, column: 5, scope: !1412)
!1460 = !DILocation(line: 513, column: 5, scope: !1409)
!1461 = !DILocation(line: 513, column: 12, scope: !1409)
!1462 = !DILocation(line: 515, column: 12, scope: !1409)
!1463 = !DILocation(line: 516, column: 3, scope: !1410)
!1464 = !DILocation(line: 0, scope: !1409)
!1465 = !DILocation(line: 517, column: 1, scope: !1400)
!1466 = distinct !DISubprogram(name: "luaH_setstr", scope: !3, file: !3, line: 520, type: !1467, isLocal: false, isDefinition: true, scopeLine: 520, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1469)
!1467 = !DISubroutineType(types: !1468)
!1468 = !{!101, !91, !9, !189}
!1469 = !{!1470, !1471, !1472, !1473, !1474, !1477}
!1470 = !DILocalVariable(name: "L", arg: 1, scope: !1466, file: !3, line: 520, type: !91)
!1471 = !DILocalVariable(name: "t", arg: 2, scope: !1466, file: !3, line: 520, type: !9)
!1472 = !DILocalVariable(name: "key", arg: 3, scope: !1466, file: !3, line: 520, type: !189)
!1473 = !DILocalVariable(name: "p", scope: !1466, file: !3, line: 521, type: !365)
!1474 = !DILocalVariable(name: "k", scope: !1475, file: !3, line: 525, type: !102)
!1475 = distinct !DILexicalBlock(scope: !1476, file: !3, line: 524, column: 8)
!1476 = distinct !DILexicalBlock(scope: !1466, file: !3, line: 522, column: 7)
!1477 = !DILocalVariable(name: "i_o", scope: !1478, file: !3, line: 526, type: !101)
!1478 = distinct !DILexicalBlock(scope: !1475, file: !3, line: 526, column: 5)
!1479 = !DILocation(line: 520, column: 33, scope: !1466)
!1480 = !DILocation(line: 520, column: 43, scope: !1466)
!1481 = !DILocation(line: 520, column: 55, scope: !1466)
!1482 = !DILocation(line: 455, column: 35, scope: !858, inlinedAt: !1483)
!1483 = distinct !DILocation(line: 521, column: 21, scope: !1466)
!1484 = !DILocation(line: 455, column: 47, scope: !858, inlinedAt: !1483)
!1485 = !DILocation(line: 456, column: 13, scope: !858, inlinedAt: !1483)
!1486 = !DILocation(line: 456, column: 9, scope: !858, inlinedAt: !1483)
!1487 = !DILocation(line: 457, column: 3, scope: !858, inlinedAt: !1483)
!1488 = !DILocation(line: 0, scope: !871, inlinedAt: !1483)
!1489 = !DILocation(line: 458, column: 9, scope: !871, inlinedAt: !1483)
!1490 = !DILocation(line: 458, column: 29, scope: !871, inlinedAt: !1483)
!1491 = !DILocation(line: 458, column: 32, scope: !871, inlinedAt: !1483)
!1492 = !DILocation(line: 458, column: 52, scope: !871, inlinedAt: !1483)
!1493 = !DILocation(line: 458, column: 9, scope: !872, inlinedAt: !1483)
!1494 = !DILocation(line: 460, column: 14, scope: !871, inlinedAt: !1483)
!1495 = !DILocation(line: 461, column: 3, scope: !872, inlinedAt: !1483)
!1496 = !DILocation(line: 459, column: 14, scope: !871, inlinedAt: !1483)
!1497 = !DILocation(line: 521, column: 17, scope: !1466)
!1498 = !DILocation(line: 522, column: 9, scope: !1476)
!1499 = !DILocation(line: 522, column: 7, scope: !1466)
!1500 = !DILocation(line: 525, column: 5, scope: !1475)
!1501 = !DILocation(line: 526, column: 5, scope: !1478)
!1502 = !DILocation(line: 525, column: 12, scope: !1475)
!1503 = !DILocation(line: 527, column: 12, scope: !1475)
!1504 = !DILocation(line: 528, column: 3, scope: !1476)
!1505 = !DILocation(line: 0, scope: !1475)
!1506 = !DILocation(line: 529, column: 1, scope: !1466)
!1507 = distinct !DISubprogram(name: "luaH_getn", scope: !3, file: !3, line: 560, type: !1508, isLocal: false, isDefinition: true, scopeLine: 560, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1510)
!1508 = !DISubroutineType(types: !1509)
!1509 = !{!90, !9}
!1510 = !{!1511, !1512, !1513, !1516}
!1511 = !DILocalVariable(name: "t", arg: 1, scope: !1507, file: !3, line: 560, type: !9)
!1512 = !DILocalVariable(name: "j", scope: !1507, file: !3, line: 561, type: !50)
!1513 = !DILocalVariable(name: "i", scope: !1514, file: !3, line: 564, type: !50)
!1514 = distinct !DILexicalBlock(scope: !1515, file: !3, line: 562, column: 43)
!1515 = distinct !DILexicalBlock(scope: !1507, file: !3, line: 562, column: 7)
!1516 = !DILocalVariable(name: "m", scope: !1517, file: !3, line: 566, type: !50)
!1517 = distinct !DILexicalBlock(scope: !1514, file: !3, line: 565, column: 23)
!1518 = !DILocation(line: 85, column: 16, scope: !380, inlinedAt: !1519)
!1519 = distinct !DILocation(line: 441, column: 15, scope: !811, inlinedAt: !1520)
!1520 = distinct !DILocation(line: 536, column: 11, scope: !1521, inlinedAt: !1530)
!1521 = distinct !DISubprogram(name: "unbound_search", scope: !3, file: !3, line: 532, type: !1522, isLocal: true, isDefinition: true, scopeLine: 532, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1524)
!1522 = !DISubroutineType(types: !1523)
!1523 = !{!90, !9, !50}
!1524 = !{!1525, !1526, !1527, !1528}
!1525 = !DILocalVariable(name: "t", arg: 1, scope: !1521, file: !3, line: 532, type: !9)
!1526 = !DILocalVariable(name: "j", arg: 2, scope: !1521, file: !3, line: 532, type: !50)
!1527 = !DILocalVariable(name: "i", scope: !1521, file: !3, line: 533, type: !50)
!1528 = !DILocalVariable(name: "m", scope: !1529, file: !3, line: 548, type: !50)
!1529 = distinct !DILexicalBlock(scope: !1521, file: !3, line: 547, column: 21)
!1530 = distinct !DILocation(line: 575, column: 15, scope: !1531)
!1531 = distinct !DILexicalBlock(scope: !1515, file: !3, line: 573, column: 12)
!1532 = !DILocation(line: 85, column: 16, scope: !380, inlinedAt: !1533)
!1533 = distinct !DILocation(line: 441, column: 15, scope: !811, inlinedAt: !1534)
!1534 = distinct !DILocation(line: 542, column: 15, scope: !1535, inlinedAt: !1530)
!1535 = distinct !DILexicalBlock(scope: !1536, file: !3, line: 539, column: 42)
!1536 = distinct !DILexicalBlock(scope: !1537, file: !3, line: 539, column: 9)
!1537 = distinct !DILexicalBlock(scope: !1521, file: !3, line: 536, column: 39)
!1538 = !DILocation(line: 85, column: 16, scope: !380, inlinedAt: !1539)
!1539 = distinct !DILocation(line: 441, column: 15, scope: !811, inlinedAt: !1540)
!1540 = distinct !DILocation(line: 549, column: 9, scope: !1541, inlinedAt: !1530)
!1541 = distinct !DILexicalBlock(scope: !1529, file: !3, line: 549, column: 9)
!1542 = !DILocation(line: 560, column: 23, scope: !1507)
!1543 = !DILocation(line: 561, column: 23, scope: !1507)
!1544 = !DILocation(line: 561, column: 16, scope: !1507)
!1545 = !DILocation(line: 562, column: 9, scope: !1515)
!1546 = !DILocation(line: 562, column: 13, scope: !1515)
!1547 = !DILocation(line: 562, column: 16, scope: !1515)
!1548 = !DILocation(line: 562, column: 7, scope: !1507)
!1549 = !DILocation(line: 564, column: 18, scope: !1514)
!1550 = !DILocation(line: 565, column: 18, scope: !1514)
!1551 = !DILocation(line: 565, column: 5, scope: !1514)
!1552 = !DILocation(line: 566, column: 26, scope: !1517)
!1553 = !DILocation(line: 566, column: 29, scope: !1517)
!1554 = !DILocation(line: 566, column: 20, scope: !1517)
!1555 = !DILocation(line: 567, column: 11, scope: !1556)
!1556 = distinct !DILexicalBlock(scope: !1517, file: !3, line: 567, column: 11)
!1557 = !DILocation(line: 567, column: 38, scope: !1556)
!1558 = !DILocation(line: 565, column: 14, scope: !1514)
!1559 = distinct !{!1559, !1551, !1560}
!1560 = !DILocation(line: 569, column: 5, scope: !1514)
!1561 = !DILocation(line: 573, column: 15, scope: !1531)
!1562 = !DILocation(line: 573, column: 20, scope: !1531)
!1563 = !DILocation(line: 573, column: 12, scope: !1515)
!1564 = !DILocation(line: 532, column: 35, scope: !1521, inlinedAt: !1530)
!1565 = !DILocation(line: 532, column: 51, scope: !1521, inlinedAt: !1530)
!1566 = !DILocation(line: 533, column: 16, scope: !1521, inlinedAt: !1530)
!1567 = !DILocation(line: 534, column: 4, scope: !1521, inlinedAt: !1530)
!1568 = !DILocation(line: 536, column: 3, scope: !1521, inlinedAt: !1530)
!1569 = !DILocation(line: 437, column: 35, scope: !812, inlinedAt: !1520)
!1570 = !DILocation(line: 0, scope: !1537, inlinedAt: !1530)
!1571 = !DILocation(line: 435, column: 35, scope: !804, inlinedAt: !1520)
!1572 = !DILocation(line: 435, column: 42, scope: !804, inlinedAt: !1520)
!1573 = !DILocation(line: 437, column: 7, scope: !812, inlinedAt: !1520)
!1574 = !DILocation(line: 437, column: 33, scope: !812, inlinedAt: !1520)
!1575 = !DILocation(line: 437, column: 7, scope: !804, inlinedAt: !1520)
!1576 = !DILocation(line: 438, column: 16, scope: !812, inlinedAt: !1520)
!1577 = !DILocation(line: 438, column: 13, scope: !812, inlinedAt: !1520)
!1578 = !DILocation(line: 438, column: 5, scope: !812, inlinedAt: !1520)
!1579 = !DILocation(line: 440, column: 21, scope: !811, inlinedAt: !1520)
!1580 = !DILocation(line: 440, column: 16, scope: !811, inlinedAt: !1520)
!1581 = !DILocation(line: 84, column: 36, scope: !380, inlinedAt: !1519)
!1582 = !DILocation(line: 84, column: 50, scope: !380, inlinedAt: !1519)
!1583 = !DILocation(line: 85, column: 3, scope: !380, inlinedAt: !1519)
!1584 = !DILocation(line: 87, column: 7, scope: !459, inlinedAt: !1519)
!1585 = !DILocation(line: 87, column: 7, scope: !380, inlinedAt: !1519)
!1586 = !DILocation(line: 89, column: 3, scope: !380, inlinedAt: !1519)
!1587 = !DILocation(line: 86, column: 7, scope: !380, inlinedAt: !1519)
!1588 = !DILocation(line: 90, column: 41, scope: !467, inlinedAt: !1519)
!1589 = !DILocation(line: 90, column: 38, scope: !467, inlinedAt: !1519)
!1590 = !DILocation(line: 91, column: 10, scope: !380, inlinedAt: !1519)
!1591 = !DILocation(line: 91, column: 3, scope: !380, inlinedAt: !1519)
!1592 = !DILocation(line: 0, scope: !380, inlinedAt: !1519)
!1593 = !DILocation(line: 92, column: 1, scope: !380, inlinedAt: !1519)
!1594 = !DILocation(line: 441, column: 11, scope: !811, inlinedAt: !1520)
!1595 = !DILocation(line: 442, column: 5, scope: !811, inlinedAt: !1520)
!1596 = !DILocation(line: 0, scope: !845, inlinedAt: !1520)
!1597 = !DILocation(line: 443, column: 11, scope: !845, inlinedAt: !1520)
!1598 = !DILocation(line: 443, column: 31, scope: !845, inlinedAt: !1520)
!1599 = !DILocation(line: 443, column: 34, scope: !845, inlinedAt: !1520)
!1600 = !DILocation(line: 443, column: 11, scope: !846, inlinedAt: !1520)
!1601 = !DILocation(line: 444, column: 16, scope: !845, inlinedAt: !1520)
!1602 = !DILocation(line: 444, column: 9, scope: !845, inlinedAt: !1520)
!1603 = !DILocation(line: 445, column: 16, scope: !845, inlinedAt: !1520)
!1604 = !DILocation(line: 446, column: 5, scope: !846, inlinedAt: !1520)
!1605 = !DILocation(line: 536, column: 11, scope: !1521, inlinedAt: !1530)
!1606 = !DILocation(line: 547, column: 12, scope: !1521, inlinedAt: !1530)
!1607 = !DILocation(line: 547, column: 16, scope: !1521, inlinedAt: !1530)
!1608 = !DILocation(line: 547, column: 3, scope: !1521, inlinedAt: !1530)
!1609 = !DILocation(line: 538, column: 7, scope: !1537, inlinedAt: !1530)
!1610 = !DILocation(line: 539, column: 11, scope: !1536, inlinedAt: !1530)
!1611 = !DILocation(line: 539, column: 9, scope: !1537, inlinedAt: !1530)
!1612 = distinct !{!1612, !1613, !1614}
!1613 = !DILocation(line: 536, column: 3, scope: !1521)
!1614 = !DILocation(line: 545, column: 3, scope: !1521)
!1615 = !DILocation(line: 437, column: 7, scope: !812, inlinedAt: !1534)
!1616 = !DILocation(line: 0, scope: !1535, inlinedAt: !1530)
!1617 = !DILocation(line: 435, column: 35, scope: !804, inlinedAt: !1534)
!1618 = !DILocation(line: 435, column: 42, scope: !804, inlinedAt: !1534)
!1619 = !DILocation(line: 437, column: 35, scope: !812, inlinedAt: !1534)
!1620 = !DILocation(line: 437, column: 33, scope: !812, inlinedAt: !1534)
!1621 = !DILocation(line: 437, column: 7, scope: !804, inlinedAt: !1534)
!1622 = !DILocation(line: 438, column: 16, scope: !812, inlinedAt: !1534)
!1623 = !DILocation(line: 438, column: 13, scope: !812, inlinedAt: !1534)
!1624 = !DILocation(line: 438, column: 5, scope: !812, inlinedAt: !1534)
!1625 = !DILocation(line: 440, column: 21, scope: !811, inlinedAt: !1534)
!1626 = !DILocation(line: 440, column: 16, scope: !811, inlinedAt: !1534)
!1627 = !DILocation(line: 84, column: 36, scope: !380, inlinedAt: !1533)
!1628 = !DILocation(line: 84, column: 50, scope: !380, inlinedAt: !1533)
!1629 = !DILocation(line: 85, column: 3, scope: !380, inlinedAt: !1533)
!1630 = !DILocation(line: 87, column: 7, scope: !459, inlinedAt: !1533)
!1631 = !DILocation(line: 87, column: 7, scope: !380, inlinedAt: !1533)
!1632 = !DILocation(line: 89, column: 3, scope: !380, inlinedAt: !1533)
!1633 = !DILocation(line: 86, column: 7, scope: !380, inlinedAt: !1533)
!1634 = !DILocation(line: 90, column: 41, scope: !467, inlinedAt: !1533)
!1635 = !DILocation(line: 90, column: 38, scope: !467, inlinedAt: !1533)
!1636 = !DILocation(line: 91, column: 10, scope: !380, inlinedAt: !1533)
!1637 = !DILocation(line: 91, column: 3, scope: !380, inlinedAt: !1533)
!1638 = !DILocation(line: 0, scope: !380, inlinedAt: !1533)
!1639 = !DILocation(line: 92, column: 1, scope: !380, inlinedAt: !1533)
!1640 = !DILocation(line: 441, column: 11, scope: !811, inlinedAt: !1534)
!1641 = !DILocation(line: 442, column: 5, scope: !811, inlinedAt: !1534)
!1642 = !DILocation(line: 0, scope: !845, inlinedAt: !1534)
!1643 = !DILocation(line: 443, column: 11, scope: !845, inlinedAt: !1534)
!1644 = !DILocation(line: 443, column: 31, scope: !845, inlinedAt: !1534)
!1645 = !DILocation(line: 443, column: 34, scope: !845, inlinedAt: !1534)
!1646 = !DILocation(line: 443, column: 11, scope: !846, inlinedAt: !1534)
!1647 = !DILocation(line: 444, column: 16, scope: !845, inlinedAt: !1534)
!1648 = !DILocation(line: 444, column: 9, scope: !845, inlinedAt: !1534)
!1649 = !DILocation(line: 445, column: 16, scope: !845, inlinedAt: !1534)
!1650 = !DILocation(line: 446, column: 5, scope: !846, inlinedAt: !1534)
!1651 = !DILocation(line: 542, column: 15, scope: !1535, inlinedAt: !1530)
!1652 = !DILocation(line: 542, column: 44, scope: !1535, inlinedAt: !1530)
!1653 = !DILocation(line: 542, column: 7, scope: !1535, inlinedAt: !1530)
!1654 = distinct !{!1654, !1655, !1656}
!1655 = !DILocation(line: 542, column: 7, scope: !1535)
!1656 = !DILocation(line: 542, column: 44, scope: !1535)
!1657 = !DILocation(line: 548, column: 24, scope: !1529, inlinedAt: !1530)
!1658 = !DILocation(line: 548, column: 27, scope: !1529, inlinedAt: !1530)
!1659 = !DILocation(line: 548, column: 18, scope: !1529, inlinedAt: !1530)
!1660 = !DILocation(line: 435, column: 35, scope: !804, inlinedAt: !1540)
!1661 = !DILocation(line: 435, column: 42, scope: !804, inlinedAt: !1540)
!1662 = !DILocation(line: 437, column: 7, scope: !812, inlinedAt: !1540)
!1663 = !DILocation(line: 437, column: 35, scope: !812, inlinedAt: !1540)
!1664 = !DILocation(line: 437, column: 33, scope: !812, inlinedAt: !1540)
!1665 = !DILocation(line: 437, column: 7, scope: !804, inlinedAt: !1540)
!1666 = !DILocation(line: 438, column: 16, scope: !812, inlinedAt: !1540)
!1667 = !DILocation(line: 438, column: 13, scope: !812, inlinedAt: !1540)
!1668 = !DILocation(line: 438, column: 5, scope: !812, inlinedAt: !1540)
!1669 = !DILocation(line: 440, column: 21, scope: !811, inlinedAt: !1540)
!1670 = !DILocation(line: 440, column: 16, scope: !811, inlinedAt: !1540)
!1671 = !DILocation(line: 84, column: 36, scope: !380, inlinedAt: !1539)
!1672 = !DILocation(line: 84, column: 50, scope: !380, inlinedAt: !1539)
!1673 = !DILocation(line: 85, column: 3, scope: !380, inlinedAt: !1539)
!1674 = !DILocation(line: 87, column: 7, scope: !459, inlinedAt: !1539)
!1675 = !DILocation(line: 87, column: 7, scope: !380, inlinedAt: !1539)
!1676 = !DILocation(line: 89, column: 3, scope: !380, inlinedAt: !1539)
!1677 = !DILocation(line: 86, column: 7, scope: !380, inlinedAt: !1539)
!1678 = !DILocation(line: 90, column: 41, scope: !467, inlinedAt: !1539)
!1679 = !DILocation(line: 90, column: 38, scope: !467, inlinedAt: !1539)
!1680 = !DILocation(line: 91, column: 10, scope: !380, inlinedAt: !1539)
!1681 = !DILocation(line: 91, column: 3, scope: !380, inlinedAt: !1539)
!1682 = !DILocation(line: 0, scope: !380, inlinedAt: !1539)
!1683 = !DILocation(line: 92, column: 1, scope: !380, inlinedAt: !1539)
!1684 = !DILocation(line: 441, column: 11, scope: !811, inlinedAt: !1540)
!1685 = !DILocation(line: 442, column: 5, scope: !811, inlinedAt: !1540)
!1686 = !DILocation(line: 0, scope: !845, inlinedAt: !1540)
!1687 = !DILocation(line: 443, column: 11, scope: !845, inlinedAt: !1540)
!1688 = !DILocation(line: 443, column: 31, scope: !845, inlinedAt: !1540)
!1689 = !DILocation(line: 443, column: 34, scope: !845, inlinedAt: !1540)
!1690 = !DILocation(line: 443, column: 11, scope: !846, inlinedAt: !1540)
!1691 = !DILocation(line: 444, column: 16, scope: !845, inlinedAt: !1540)
!1692 = !DILocation(line: 444, column: 9, scope: !845, inlinedAt: !1540)
!1693 = !DILocation(line: 445, column: 16, scope: !845, inlinedAt: !1540)
!1694 = !DILocation(line: 446, column: 5, scope: !846, inlinedAt: !1540)
!1695 = !DILocation(line: 549, column: 9, scope: !1541, inlinedAt: !1530)
!1696 = !DILocation(line: 549, column: 37, scope: !1541, inlinedAt: !1530)
!1697 = distinct !{!1697, !1698, !1699}
!1698 = !DILocation(line: 547, column: 3, scope: !1521)
!1699 = !DILocation(line: 551, column: 3, scope: !1521)
!1700 = !DILocation(line: 0, scope: !1531)
!1701 = !DILocation(line: 576, column: 1, scope: !1507)
