; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/search/hcreate_r.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/search/hcreate_r.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.hsearch_data = type { %struct.internal_head*, i64 }
%struct.internal_head = type { %struct.internal_entry* }
%struct.internal_entry = type { %struct.anon, %struct.entry }
%struct.anon = type { %struct.internal_entry* }
%struct.entry = type { i8*, i8* }

@__default_hash = external dso_local local_unnamed_addr global i32 (i8*, i64)*, align 8
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @hcreate_r(i64, %struct.hsearch_data* nocapture) local_unnamed_addr #0 !dbg !20 {
  %3 = getelementptr inbounds %struct.hsearch_data, %struct.hsearch_data* %1, i64 0, i32 0, !dbg !57
  %4 = load %struct.internal_head*, %struct.internal_head** %3, align 8, !dbg !57, !tbaa !59
  %5 = icmp eq %struct.internal_head* %4, null, !dbg !65
  br i1 %5, label %8, label %6, !dbg !66

; <label>:6:                                      ; preds = %2
  %7 = tail call i32* @__errno() #3, !dbg !67
  store i32 22, i32* %7, align 4, !dbg !69, !tbaa !70
  br label %119, !dbg !72

; <label>:8:                                      ; preds = %2
  %9 = icmp ugt i64 %0, 16, !dbg !73
  %10 = select i1 %9, i64 %0, i64 16, !dbg !73
  %11 = icmp ult i64 %10, 288230376151711744, !dbg !74
  %12 = select i1 %11, i64 %10, i64 288230376151711744, !dbg !74
  %13 = add nuw nsw i64 %12, 576460752303423487, !dbg !75
  %14 = and i64 %13, %12, !dbg !77
  %15 = icmp eq i64 %14, 0, !dbg !78
  br i1 %15, label %28, label %16, !dbg !79

; <label>:16:                                     ; preds = %8
  %17 = icmp eq i64 %12, 0, !dbg !81
  br i1 %17, label %24, label %18, !dbg !85

; <label>:18:                                     ; preds = %16, %18
  %19 = phi i32 [ %22, %18 ], [ 0, %16 ]
  %20 = phi i64 [ %21, %18 ], [ %12, %16 ]
  %21 = lshr i64 %20, 1, !dbg !86
  %22 = add nuw nsw i32 %19, 1, !dbg !87
  %23 = icmp eq i64 %21, 0, !dbg !81
  br i1 %23, label %24, label %18, !dbg !85, !llvm.loop !88

; <label>:24:                                     ; preds = %18, %16
  %25 = phi i32 [ 0, %16 ], [ %22, %18 ], !dbg !90
  %26 = shl i32 1, %25, !dbg !91
  %27 = sext i32 %26 to i64, !dbg !92
  br label %28, !dbg !93

; <label>:28:                                     ; preds = %8, %24
  %29 = phi i64 [ %27, %24 ], [ %12, %8 ], !dbg !94
  %30 = getelementptr inbounds %struct.hsearch_data, %struct.hsearch_data* %1, i64 0, i32 1, !dbg !96
  store i64 %29, i64* %30, align 8, !dbg !97, !tbaa !98
  %31 = shl nsw i64 %29, 3, !dbg !99
  %32 = tail call i8* @malloc(i64 %31) #3, !dbg !100
  %33 = bitcast %struct.hsearch_data* %1 to i8**, !dbg !101
  store i8* %32, i8** %33, align 8, !dbg !101, !tbaa !59
  %34 = icmp eq i8* %32, null, !dbg !102
  %35 = bitcast i8* %32 to %struct.internal_head*, !dbg !104
  br i1 %34, label %112, label %36, !dbg !104

; <label>:36:                                     ; preds = %28
  %37 = load i64, i64* %30, align 8, !dbg !106, !tbaa !98
  %38 = icmp eq i64 %37, 0, !dbg !109
  br i1 %38, label %119, label %39, !dbg !110

; <label>:39:                                     ; preds = %36
  %40 = icmp ult i64 %37, 4, !dbg !111
  br i1 %40, label %41, label %43, !dbg !111

; <label>:41:                                     ; preds = %110, %39
  %42 = phi i64 [ 0, %39 ], [ %44, %110 ]
  br label %114, !dbg !111

; <label>:43:                                     ; preds = %39
  %44 = and i64 %37, -4, !dbg !111
  %45 = add i64 %44, -4, !dbg !111
  %46 = lshr exact i64 %45, 2, !dbg !111
  %47 = add nuw nsw i64 %46, 1, !dbg !111
  %48 = and i64 %47, 7, !dbg !111
  %49 = icmp ult i64 %45, 28, !dbg !111
  br i1 %49, label %97, label %50, !dbg !111

; <label>:50:                                     ; preds = %43
  %51 = sub nsw i64 %47, %48, !dbg !111
  br label %52, !dbg !111

; <label>:52:                                     ; preds = %52, %50
  %53 = phi i64 [ 0, %50 ], [ %94, %52 ], !dbg !113
  %54 = phi i64 [ %51, %50 ], [ %95, %52 ]
  %55 = getelementptr inbounds %struct.internal_head, %struct.internal_head* %35, i64 %53, i32 0, !dbg !111
  %56 = bitcast %struct.internal_entry** %55 to <2 x %struct.internal_entry*>*, !dbg !111
  store <2 x %struct.internal_entry*> zeroinitializer, <2 x %struct.internal_entry*>* %56, align 8, !dbg !111, !tbaa !114
  %57 = getelementptr inbounds %struct.internal_entry*, %struct.internal_entry** %55, i64 2, !dbg !111
  %58 = bitcast %struct.internal_entry** %57 to <2 x %struct.internal_entry*>*, !dbg !111
  store <2 x %struct.internal_entry*> zeroinitializer, <2 x %struct.internal_entry*>* %58, align 8, !dbg !111, !tbaa !114
  %59 = or i64 %53, 4, !dbg !113
  %60 = getelementptr inbounds %struct.internal_head, %struct.internal_head* %35, i64 %59, i32 0, !dbg !111
  %61 = bitcast %struct.internal_entry** %60 to <2 x %struct.internal_entry*>*, !dbg !111
  store <2 x %struct.internal_entry*> zeroinitializer, <2 x %struct.internal_entry*>* %61, align 8, !dbg !111, !tbaa !114
  %62 = getelementptr inbounds %struct.internal_entry*, %struct.internal_entry** %60, i64 2, !dbg !111
  %63 = bitcast %struct.internal_entry** %62 to <2 x %struct.internal_entry*>*, !dbg !111
  store <2 x %struct.internal_entry*> zeroinitializer, <2 x %struct.internal_entry*>* %63, align 8, !dbg !111, !tbaa !114
  %64 = or i64 %53, 8, !dbg !113
  %65 = getelementptr inbounds %struct.internal_head, %struct.internal_head* %35, i64 %64, i32 0, !dbg !111
  %66 = bitcast %struct.internal_entry** %65 to <2 x %struct.internal_entry*>*, !dbg !111
  store <2 x %struct.internal_entry*> zeroinitializer, <2 x %struct.internal_entry*>* %66, align 8, !dbg !111, !tbaa !114
  %67 = getelementptr inbounds %struct.internal_entry*, %struct.internal_entry** %65, i64 2, !dbg !111
  %68 = bitcast %struct.internal_entry** %67 to <2 x %struct.internal_entry*>*, !dbg !111
  store <2 x %struct.internal_entry*> zeroinitializer, <2 x %struct.internal_entry*>* %68, align 8, !dbg !111, !tbaa !114
  %69 = or i64 %53, 12, !dbg !113
  %70 = getelementptr inbounds %struct.internal_head, %struct.internal_head* %35, i64 %69, i32 0, !dbg !111
  %71 = bitcast %struct.internal_entry** %70 to <2 x %struct.internal_entry*>*, !dbg !111
  store <2 x %struct.internal_entry*> zeroinitializer, <2 x %struct.internal_entry*>* %71, align 8, !dbg !111, !tbaa !114
  %72 = getelementptr inbounds %struct.internal_entry*, %struct.internal_entry** %70, i64 2, !dbg !111
  %73 = bitcast %struct.internal_entry** %72 to <2 x %struct.internal_entry*>*, !dbg !111
  store <2 x %struct.internal_entry*> zeroinitializer, <2 x %struct.internal_entry*>* %73, align 8, !dbg !111, !tbaa !114
  %74 = or i64 %53, 16, !dbg !113
  %75 = getelementptr inbounds %struct.internal_head, %struct.internal_head* %35, i64 %74, i32 0, !dbg !111
  %76 = bitcast %struct.internal_entry** %75 to <2 x %struct.internal_entry*>*, !dbg !111
  store <2 x %struct.internal_entry*> zeroinitializer, <2 x %struct.internal_entry*>* %76, align 8, !dbg !111, !tbaa !114
  %77 = getelementptr inbounds %struct.internal_entry*, %struct.internal_entry** %75, i64 2, !dbg !111
  %78 = bitcast %struct.internal_entry** %77 to <2 x %struct.internal_entry*>*, !dbg !111
  store <2 x %struct.internal_entry*> zeroinitializer, <2 x %struct.internal_entry*>* %78, align 8, !dbg !111, !tbaa !114
  %79 = or i64 %53, 20, !dbg !113
  %80 = getelementptr inbounds %struct.internal_head, %struct.internal_head* %35, i64 %79, i32 0, !dbg !111
  %81 = bitcast %struct.internal_entry** %80 to <2 x %struct.internal_entry*>*, !dbg !111
  store <2 x %struct.internal_entry*> zeroinitializer, <2 x %struct.internal_entry*>* %81, align 8, !dbg !111, !tbaa !114
  %82 = getelementptr inbounds %struct.internal_entry*, %struct.internal_entry** %80, i64 2, !dbg !111
  %83 = bitcast %struct.internal_entry** %82 to <2 x %struct.internal_entry*>*, !dbg !111
  store <2 x %struct.internal_entry*> zeroinitializer, <2 x %struct.internal_entry*>* %83, align 8, !dbg !111, !tbaa !114
  %84 = or i64 %53, 24, !dbg !113
  %85 = getelementptr inbounds %struct.internal_head, %struct.internal_head* %35, i64 %84, i32 0, !dbg !111
  %86 = bitcast %struct.internal_entry** %85 to <2 x %struct.internal_entry*>*, !dbg !111
  store <2 x %struct.internal_entry*> zeroinitializer, <2 x %struct.internal_entry*>* %86, align 8, !dbg !111, !tbaa !114
  %87 = getelementptr inbounds %struct.internal_entry*, %struct.internal_entry** %85, i64 2, !dbg !111
  %88 = bitcast %struct.internal_entry** %87 to <2 x %struct.internal_entry*>*, !dbg !111
  store <2 x %struct.internal_entry*> zeroinitializer, <2 x %struct.internal_entry*>* %88, align 8, !dbg !111, !tbaa !114
  %89 = or i64 %53, 28, !dbg !113
  %90 = getelementptr inbounds %struct.internal_head, %struct.internal_head* %35, i64 %89, i32 0, !dbg !111
  %91 = bitcast %struct.internal_entry** %90 to <2 x %struct.internal_entry*>*, !dbg !111
  store <2 x %struct.internal_entry*> zeroinitializer, <2 x %struct.internal_entry*>* %91, align 8, !dbg !111, !tbaa !114
  %92 = getelementptr inbounds %struct.internal_entry*, %struct.internal_entry** %90, i64 2, !dbg !111
  %93 = bitcast %struct.internal_entry** %92 to <2 x %struct.internal_entry*>*, !dbg !111
  store <2 x %struct.internal_entry*> zeroinitializer, <2 x %struct.internal_entry*>* %93, align 8, !dbg !111, !tbaa !114
  %94 = add i64 %53, 32, !dbg !113
  %95 = add i64 %54, -8, !dbg !113
  %96 = icmp eq i64 %95, 0, !dbg !113
  br i1 %96, label %97, label %52, !dbg !113, !llvm.loop !116

; <label>:97:                                     ; preds = %52, %43
  %98 = phi i64 [ 0, %43 ], [ %94, %52 ]
  %99 = icmp eq i64 %48, 0, !dbg !113
  br i1 %99, label %110, label %100, !dbg !113

; <label>:100:                                    ; preds = %97, %100
  %101 = phi i64 [ %107, %100 ], [ %98, %97 ], !dbg !113
  %102 = phi i64 [ %108, %100 ], [ %48, %97 ]
  %103 = getelementptr inbounds %struct.internal_head, %struct.internal_head* %35, i64 %101, i32 0, !dbg !111
  %104 = bitcast %struct.internal_entry** %103 to <2 x %struct.internal_entry*>*, !dbg !111
  store <2 x %struct.internal_entry*> zeroinitializer, <2 x %struct.internal_entry*>* %104, align 8, !dbg !111, !tbaa !114
  %105 = getelementptr inbounds %struct.internal_entry*, %struct.internal_entry** %103, i64 2, !dbg !111
  %106 = bitcast %struct.internal_entry** %105 to <2 x %struct.internal_entry*>*, !dbg !111
  store <2 x %struct.internal_entry*> zeroinitializer, <2 x %struct.internal_entry*>* %106, align 8, !dbg !111, !tbaa !114
  %107 = add i64 %101, 4, !dbg !113
  %108 = add i64 %102, -1, !dbg !113
  %109 = icmp eq i64 %108, 0, !dbg !113
  br i1 %109, label %110, label %100, !dbg !113, !llvm.loop !119

; <label>:110:                                    ; preds = %100, %97
  %111 = icmp eq i64 %37, %44
  br i1 %111, label %119, label %41, !dbg !111

; <label>:112:                                    ; preds = %28
  %113 = tail call i32* @__errno() #3, !dbg !121
  store i32 12, i32* %113, align 4, !dbg !123, !tbaa !70
  br label %119, !dbg !124

; <label>:114:                                    ; preds = %41, %114
  %115 = phi i64 [ %117, %114 ], [ %42, %41 ]
  %116 = getelementptr inbounds %struct.internal_head, %struct.internal_head* %35, i64 %115, i32 0, !dbg !111
  store %struct.internal_entry* null, %struct.internal_entry** %116, align 8, !dbg !111, !tbaa !114
  %117 = add nuw i64 %115, 1, !dbg !113
  %118 = icmp ult i64 %117, %37, !dbg !109
  br i1 %118, label %114, label %119, !dbg !110, !llvm.loop !125

; <label>:119:                                    ; preds = %114, %110, %36, %112, %6
  %120 = phi i32 [ 0, %6 ], [ 0, %112 ], [ 1, %36 ], [ 1, %110 ], [ 1, %114 ], !dbg !127
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !128
  ret i32 %120, !dbg !128
}

; Function Attrs: noredzone
declare dso_local i32* @__errno() local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i8* @malloc(i64) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local void @hdestroy_r(%struct.hsearch_data* nocapture) local_unnamed_addr #0 !dbg !129 {
  %2 = getelementptr inbounds %struct.hsearch_data, %struct.hsearch_data* %0, i64 0, i32 0, !dbg !135
  %3 = load %struct.internal_head*, %struct.internal_head** %2, align 8, !dbg !135, !tbaa !59
  %4 = icmp eq %struct.internal_head* %3, null, !dbg !137
  br i1 %4, label %7, label %5, !dbg !138

; <label>:5:                                      ; preds = %1
  %6 = bitcast %struct.internal_head* %3 to i8*, !dbg !139
  tail call void @free(i8* %6) #3, !dbg !140
  store %struct.internal_head* null, %struct.internal_head** %2, align 8, !dbg !141, !tbaa !59
  br label %7, !dbg !142

; <label>:7:                                      ; preds = %1, %5
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !142
  ret void, !dbg !142
}

; Function Attrs: noredzone
declare dso_local void @free(i8*) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local i32 @hsearch_r(i8*, i8*, i32, %struct.entry** nocapture, %struct.hsearch_data* nocapture readonly) local_unnamed_addr #0 !dbg !143 {
  %6 = tail call i64 @strlen(i8* %0) #3, !dbg !164
  %7 = load i32 (i8*, i64)*, i32 (i8*, i64)** @__default_hash, align 8, !dbg !166, !tbaa !167
  %8 = tail call i32 %7(i8* %0, i64 %6) #3, !dbg !168
  %9 = getelementptr inbounds %struct.hsearch_data, %struct.hsearch_data* %4, i64 0, i32 0, !dbg !170
  %10 = load %struct.internal_head*, %struct.internal_head** %9, align 8, !dbg !170, !tbaa !59
  %11 = zext i32 %8 to i64, !dbg !171
  %12 = getelementptr inbounds %struct.hsearch_data, %struct.hsearch_data* %4, i64 0, i32 1, !dbg !172
  %13 = load i64, i64* %12, align 8, !dbg !172, !tbaa !98
  %14 = add i64 %13, 4294967295, !dbg !173
  %15 = and i64 %14, %11, !dbg !174
  %16 = getelementptr inbounds %struct.internal_head, %struct.internal_head* %10, i64 %15, i32 0, !dbg !175
  %17 = load %struct.internal_entry*, %struct.internal_entry** %16, align 8, !dbg !177, !tbaa !167
  %18 = icmp eq %struct.internal_entry* %17, null, !dbg !179
  br i1 %18, label %31, label %19, !dbg !180

; <label>:19:                                     ; preds = %5, %25
  %20 = phi %struct.internal_entry* [ %27, %25 ], [ %17, %5 ]
  %21 = getelementptr inbounds %struct.internal_entry, %struct.internal_entry* %20, i64 0, i32 1, i32 0, !dbg !181
  %22 = load i8*, i8** %21, align 8, !dbg !181, !tbaa !183
  %23 = tail call i32 @strcmp(i8* %22, i8* %0) #3, !dbg !187
  %24 = icmp eq i32 %23, 0, !dbg !188
  br i1 %24, label %29, label %25, !dbg !189

; <label>:25:                                     ; preds = %19
  %26 = getelementptr inbounds %struct.internal_entry, %struct.internal_entry* %20, i64 0, i32 0, i32 0, !dbg !190
  %27 = load %struct.internal_entry*, %struct.internal_entry** %26, align 8, !dbg !177, !tbaa !167
  %28 = icmp eq %struct.internal_entry* %27, null, !dbg !179
  br i1 %28, label %31, label %19, !dbg !180, !llvm.loop !191

; <label>:29:                                     ; preds = %19
  %30 = getelementptr inbounds %struct.internal_entry, %struct.internal_entry* %20, i64 0, i32 1, !dbg !193
  store %struct.entry* %30, %struct.entry** %3, align 8, !dbg !196, !tbaa !167
  br label %48, !dbg !197

; <label>:31:                                     ; preds = %25, %5
  %32 = icmp eq i32 %2, 0, !dbg !198
  br i1 %32, label %33, label %34, !dbg !200

; <label>:33:                                     ; preds = %31
  store %struct.entry* null, %struct.entry** %3, align 8, !dbg !201, !tbaa !167
  br label %48, !dbg !203

; <label>:34:                                     ; preds = %31
  %35 = tail call i8* @malloc(i64 24) #3, !dbg !204
  %36 = icmp eq i8* %35, null, !dbg !205
  br i1 %36, label %37, label %38, !dbg !207

; <label>:37:                                     ; preds = %34
  store %struct.entry* null, %struct.entry** %3, align 8, !dbg !208, !tbaa !167
  br label %48, !dbg !210

; <label>:38:                                     ; preds = %34
  %39 = getelementptr inbounds i8, i8* %35, i64 8, !dbg !211
  %40 = bitcast i8* %39 to i8**, !dbg !212
  store i8* %0, i8** %40, align 8, !dbg !213, !tbaa !183
  %41 = getelementptr inbounds i8, i8* %35, i64 16, !dbg !214
  %42 = bitcast i8* %41 to i8**, !dbg !214
  store i8* %1, i8** %42, align 8, !dbg !215, !tbaa !216
  %43 = bitcast %struct.internal_entry** %16 to i64*, !dbg !217
  %44 = load i64, i64* %43, align 8, !dbg !217, !tbaa !114
  %45 = bitcast i8* %35 to i64*, !dbg !217
  store i64 %44, i64* %45, align 8, !dbg !217, !tbaa !219
  %46 = bitcast %struct.internal_entry** %16 to i8**, !dbg !217
  store i8* %35, i8** %46, align 8, !dbg !217, !tbaa !114
  %47 = bitcast %struct.entry** %3 to i8**, !dbg !220
  store i8* %39, i8** %47, align 8, !dbg !220, !tbaa !167
  br label %48, !dbg !221

; <label>:48:                                     ; preds = %38, %37, %33, %29
  %49 = phi i32 [ 1, %29 ], [ 0, %33 ], [ 0, %37 ], [ 1, %38 ], !dbg !222
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !223
  ret i32 %49, !dbg !223
}

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @strcmp(i8*, i8*) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!16, !17, !18}
!llvm.ident = !{!19}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !9)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/search/hcreate_r.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 21, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/search.h", directory: "/root/.unikraft/apps/redis/build")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8}
!7 = !DIEnumerator(name: "FIND", value: 0, isUnsigned: true)
!8 = !DIEnumerator(name: "ENTER", value: 1, isUnsigned: true)
!9 = !{!10, !11}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !12, line: 40, baseType: !13)
!12 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !14, line: 129, baseType: !15)
!14 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!15 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!16 = !{i32 2, !"Dwarf Version", i32 4}
!17 = !{i32 2, !"Debug Info Version", i32 3}
!18 = !{i32 1, !"wchar_size", i32 4}
!19 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!20 = distinct !DISubprogram(name: "hcreate_r", scope: !1, file: !1, line: 82, type: !21, isLocal: false, isDefinition: true, scopeLine: 83, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !50)
!21 = !DISubroutineType(types: !22)
!22 = !{!23, !11, !24}
!23 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hsearch_data", file: !4, line: 39, size: 128, elements: !26)
!26 = !{!27, !47}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "htable", scope: !25, file: !4, line: 41, baseType: !28, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "internal_head", file: !1, line: 66, size: 64, elements: !30)
!30 = !{!31}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "slh_first", scope: !29, file: !1, line: 66, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "internal_entry", file: !1, line: 62, size: 192, elements: !34)
!34 = !{!35, !39}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !33, file: !1, line: 63, baseType: !36, size: 64)
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !33, file: !1, line: 63, size: 64, elements: !37)
!37 = !{!38}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "sle_next", scope: !36, file: !1, line: 63, baseType: !32, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "ent", scope: !33, file: !1, line: 64, baseType: !40, size: 128, offset: 64)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENTRY", file: !4, line: 19, baseType: !41)
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "entry", file: !4, line: 16, size: 128, elements: !42)
!42 = !{!43, !46}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !41, file: !4, line: 17, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !41, file: !4, line: 18, baseType: !10, size: 64, offset: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "htablesize", scope: !25, file: !4, line: 42, baseType: !48, size: 64, offset: 64)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !49, line: 58, baseType: !15)
!49 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!50 = !{!51, !52, !53, !54}
!51 = !DILocalVariable(name: "nel", arg: 1, scope: !20, file: !1, line: 82, type: !11)
!52 = !DILocalVariable(name: "htab", arg: 2, scope: !20, file: !1, line: 82, type: !24)
!53 = !DILocalVariable(name: "idx", scope: !20, file: !1, line: 84, type: !11)
!54 = !DILocalVariable(name: "p2", scope: !20, file: !1, line: 85, type: !5)
!55 = !DILocation(line: 82, column: 18, scope: !20)
!56 = !DILocation(line: 82, column: 44, scope: !20)
!57 = !DILocation(line: 88, column: 12, scope: !58)
!58 = distinct !DILexicalBlock(scope: !20, file: !1, line: 88, column: 6)
!59 = !{!60, !61, i64 0}
!60 = !{!"hsearch_data", !61, i64 0, !64, i64 8}
!61 = !{!"any pointer", !62, i64 0}
!62 = !{!"omnipotent char", !63, i64 0}
!63 = !{!"Simple C/C++ TBAA"}
!64 = !{!"long", !62, i64 0}
!65 = !DILocation(line: 88, column: 19, scope: !58)
!66 = !DILocation(line: 88, column: 6, scope: !20)
!67 = !DILocation(line: 89, column: 3, scope: !68)
!68 = distinct !DILexicalBlock(scope: !58, file: !1, line: 88, column: 28)
!69 = !DILocation(line: 89, column: 9, scope: !68)
!70 = !{!71, !71, i64 0}
!71 = !{!"int", !62, i64 0}
!72 = !DILocation(line: 90, column: 3, scope: !68)
!73 = !DILocation(line: 94, column: 6, scope: !20)
!74 = !DILocation(line: 98, column: 6, scope: !20)
!75 = !DILocation(line: 102, column: 18, scope: !76)
!76 = distinct !DILexicalBlock(scope: !20, file: !1, line: 102, column: 6)
!77 = !DILocation(line: 102, column: 11, scope: !76)
!78 = !DILocation(line: 102, column: 24, scope: !76)
!79 = !DILocation(line: 102, column: 6, scope: !20)
!80 = !DILocation(line: 85, column: 15, scope: !20)
!81 = !DILocation(line: 103, column: 20, scope: !82)
!82 = distinct !DILexicalBlock(scope: !83, file: !1, line: 103, column: 3)
!83 = distinct !DILexicalBlock(scope: !84, file: !1, line: 103, column: 3)
!84 = distinct !DILexicalBlock(scope: !76, file: !1, line: 102, column: 30)
!85 = !DILocation(line: 103, column: 3, scope: !83)
!86 = !DILocation(line: 104, column: 8, scope: !82)
!87 = !DILocation(line: 103, column: 28, scope: !82)
!88 = distinct !{!88, !85, !89}
!89 = !DILocation(line: 104, column: 12, scope: !83)
!90 = !DILocation(line: 0, scope: !82)
!91 = !DILocation(line: 105, column: 11, scope: !84)
!92 = !DILocation(line: 105, column: 9, scope: !84)
!93 = !DILocation(line: 106, column: 2, scope: !84)
!94 = !DILocation(line: 0, scope: !95)
!95 = distinct !DILexicalBlock(scope: !20, file: !1, line: 98, column: 6)
!96 = !DILocation(line: 109, column: 8, scope: !20)
!97 = !DILocation(line: 109, column: 19, scope: !20)
!98 = !{!60, !64, i64 8}
!99 = !DILocation(line: 110, column: 41, scope: !20)
!100 = !DILocation(line: 110, column: 17, scope: !20)
!101 = !DILocation(line: 110, column: 15, scope: !20)
!102 = !DILocation(line: 111, column: 19, scope: !103)
!103 = distinct !DILexicalBlock(scope: !20, file: !1, line: 111, column: 6)
!104 = !DILocation(line: 111, column: 6, scope: !20)
!105 = !DILocation(line: 84, column: 9, scope: !20)
!106 = !DILocation(line: 117, column: 28, scope: !107)
!107 = distinct !DILexicalBlock(scope: !108, file: !1, line: 117, column: 2)
!108 = distinct !DILexicalBlock(scope: !20, file: !1, line: 117, column: 2)
!109 = !DILocation(line: 117, column: 20, scope: !107)
!110 = !DILocation(line: 117, column: 2, scope: !108)
!111 = !DILocation(line: 118, column: 3, scope: !112)
!112 = distinct !DILexicalBlock(scope: !107, file: !1, line: 118, column: 3)
!113 = !DILocation(line: 117, column: 43, scope: !107)
!114 = !{!115, !61, i64 0}
!115 = !{!"internal_head", !61, i64 0}
!116 = distinct !{!116, !110, !117, !118}
!117 = !DILocation(line: 118, column: 3, scope: !108)
!118 = !{!"llvm.loop.isvectorized", i32 1}
!119 = distinct !{!119, !120}
!120 = !{!"llvm.loop.unroll.disable"}
!121 = !DILocation(line: 112, column: 3, scope: !122)
!122 = distinct !DILexicalBlock(scope: !103, file: !1, line: 111, column: 28)
!123 = !DILocation(line: 112, column: 9, scope: !122)
!124 = !DILocation(line: 113, column: 3, scope: !122)
!125 = distinct !{!125, !110, !117, !126, !118}
!126 = !{!"llvm.loop.unroll.runtime.disable"}
!127 = !DILocation(line: 0, scope: !20)
!128 = !DILocation(line: 121, column: 1, scope: !20)
!129 = distinct !DISubprogram(name: "hdestroy_r", scope: !1, file: !1, line: 124, type: !130, isLocal: false, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !132)
!130 = !DISubroutineType(types: !131)
!131 = !{null, !24}
!132 = !{!133}
!133 = !DILocalVariable(name: "htab", arg: 1, scope: !129, file: !1, line: 124, type: !24)
!134 = !DILocation(line: 124, column: 33, scope: !129)
!135 = !DILocation(line: 130, column: 12, scope: !136)
!136 = distinct !DILexicalBlock(scope: !129, file: !1, line: 130, column: 6)
!137 = !DILocation(line: 130, column: 19, scope: !136)
!138 = !DILocation(line: 130, column: 6, scope: !129)
!139 = !DILocation(line: 143, column: 7, scope: !129)
!140 = !DILocation(line: 143, column: 2, scope: !129)
!141 = !DILocation(line: 144, column: 15, scope: !129)
!142 = !DILocation(line: 145, column: 1, scope: !129)
!143 = distinct !DISubprogram(name: "hsearch_r", scope: !1, file: !1, line: 148, type: !144, isLocal: false, isDefinition: true, scopeLine: 149, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !149)
!144 = !DISubroutineType(types: !145)
!145 = !{!23, !40, !146, !147, !24}
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "ACTION", file: !4, line: 23, baseType: !3)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!149 = !{!150, !151, !152, !153, !154, !155, !156, !159}
!150 = !DILocalVariable(name: "item", arg: 1, scope: !143, file: !1, line: 148, type: !40)
!151 = !DILocalVariable(name: "action", arg: 2, scope: !143, file: !1, line: 148, type: !146)
!152 = !DILocalVariable(name: "retval", arg: 3, scope: !143, file: !1, line: 148, type: !147)
!153 = !DILocalVariable(name: "htab", arg: 4, scope: !143, file: !1, line: 148, type: !24)
!154 = !DILocalVariable(name: "head", scope: !143, file: !1, line: 150, type: !28)
!155 = !DILocalVariable(name: "ie", scope: !143, file: !1, line: 151, type: !32)
!156 = !DILocalVariable(name: "hashval", scope: !143, file: !1, line: 152, type: !157)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !158, line: 79, baseType: !5)
!158 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!159 = !DILocalVariable(name: "len", scope: !143, file: !1, line: 153, type: !11)
!160 = !DILocation(line: 148, column: 17, scope: !143)
!161 = !DILocation(line: 148, column: 30, scope: !143)
!162 = !DILocation(line: 148, column: 46, scope: !143)
!163 = !DILocation(line: 148, column: 75, scope: !143)
!164 = !DILocation(line: 155, column: 8, scope: !143)
!165 = !DILocation(line: 153, column: 9, scope: !143)
!166 = !DILocation(line: 156, column: 14, scope: !143)
!167 = !{!61, !61, i64 0}
!168 = !DILocation(line: 156, column: 12, scope: !143)
!169 = !DILocation(line: 152, column: 13, scope: !143)
!170 = !DILocation(line: 158, column: 24, scope: !143)
!171 = !DILocation(line: 158, column: 31, scope: !143)
!172 = !DILocation(line: 158, column: 48, scope: !143)
!173 = !DILocation(line: 158, column: 59, scope: !143)
!174 = !DILocation(line: 158, column: 39, scope: !143)
!175 = !DILocation(line: 159, column: 7, scope: !143)
!176 = !DILocation(line: 151, column: 25, scope: !143)
!177 = !DILocation(line: 0, scope: !178)
!178 = distinct !DILexicalBlock(scope: !143, file: !1, line: 160, column: 21)
!179 = !DILocation(line: 160, column: 12, scope: !143)
!180 = !DILocation(line: 160, column: 2, scope: !143)
!181 = !DILocation(line: 161, column: 22, scope: !182)
!182 = distinct !DILexicalBlock(scope: !178, file: !1, line: 161, column: 7)
!183 = !{!184, !61, i64 8}
!184 = !{!"internal_entry", !185, i64 0, !186, i64 8}
!185 = !{!"", !61, i64 0}
!186 = !{!"entry", !61, i64 0, !61, i64 8}
!187 = !DILocation(line: 161, column: 7, scope: !182)
!188 = !DILocation(line: 161, column: 37, scope: !182)
!189 = !DILocation(line: 161, column: 7, scope: !178)
!190 = !DILocation(line: 163, column: 8, scope: !178)
!191 = distinct !{!191, !180, !192}
!192 = !DILocation(line: 164, column: 2, scope: !143)
!193 = !DILocation(line: 168, column: 28, scope: !194)
!194 = distinct !DILexicalBlock(scope: !195, file: !1, line: 167, column: 11)
!195 = distinct !DILexicalBlock(scope: !143, file: !1, line: 166, column: 6)
!196 = !DILocation(line: 168, column: 21, scope: !194)
!197 = !DILocation(line: 169, column: 13, scope: !194)
!198 = !DILocation(line: 171, column: 18, scope: !199)
!199 = distinct !DILexicalBlock(scope: !195, file: !1, line: 171, column: 11)
!200 = !DILocation(line: 171, column: 11, scope: !195)
!201 = !DILocation(line: 173, column: 21, scope: !202)
!202 = distinct !DILexicalBlock(scope: !199, file: !1, line: 172, column: 11)
!203 = !DILocation(line: 174, column: 13, scope: !202)
!204 = !DILocation(line: 177, column: 7, scope: !143)
!205 = !DILocation(line: 178, column: 9, scope: !206)
!206 = distinct !DILexicalBlock(scope: !143, file: !1, line: 178, column: 6)
!207 = !DILocation(line: 178, column: 6, scope: !143)
!208 = !DILocation(line: 180, column: 21, scope: !209)
!209 = distinct !DILexicalBlock(scope: !206, file: !1, line: 179, column: 11)
!210 = !DILocation(line: 181, column: 13, scope: !209)
!211 = !DILocation(line: 183, column: 6, scope: !143)
!212 = !DILocation(line: 183, column: 10, scope: !143)
!213 = !DILocation(line: 183, column: 14, scope: !143)
!214 = !DILocation(line: 184, column: 10, scope: !143)
!215 = !DILocation(line: 184, column: 15, scope: !143)
!216 = !{!184, !61, i64 16}
!217 = !DILocation(line: 186, column: 2, scope: !218)
!218 = distinct !DILexicalBlock(scope: !143, file: !1, line: 186, column: 2)
!219 = !{!184, !61, i64 0}
!220 = !DILocation(line: 187, column: 17, scope: !143)
!221 = !DILocation(line: 188, column: 2, scope: !143)
!222 = !DILocation(line: 0, scope: !143)
!223 = !DILocation(line: 189, column: 1, scope: !143)
