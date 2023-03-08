; ModuleID = '/root/.unikraft/libs/newlib/musl-imported/src/crypt/encrypt.c'
source_filename = "/root/.unikraft/libs/newlib/musl-imported/src/crypt/encrypt.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.expanded_key = type { [16 x i32], [16 x i32] }

@__encrypt_key = internal global %struct.expanded_key zeroinitializer, align 4, !dbg !0
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local void @setkey(i8* nocapture readonly) local_unnamed_addr #0 !dbg !24 {
  %2 = alloca [8 x i8], align 1
  %3 = getelementptr inbounds [8 x i8], [8 x i8]* %2, i64 0, i64 0, !dbg !41
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #4, !dbg !41
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !44
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !46
  br label %4, !dbg !46

; <label>:4:                                      ; preds = %4, %1
  %5 = phi i64 [ 0, %1 ], [ %45, %4 ]
  %6 = phi i8* [ %0, %1 ], [ %44, %4 ]
  %7 = getelementptr inbounds [8 x i8], [8 x i8]* %2, i64 0, i64 %5, !dbg !47
  store i8 0, i8* %7, align 1, !dbg !50, !tbaa !51
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !55
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !57
  %8 = load i8, i8* %6, align 1, !dbg !58, !tbaa !51
  %9 = shl i8 %8, 7, !dbg !60
  store i8 %9, i8* %7, align 1, !dbg !61, !tbaa !51
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !62
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !63
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !57
  %11 = load i8, i8* %10, align 1, !dbg !58, !tbaa !51
  %12 = shl i8 %11, 6, !dbg !60
  %13 = and i8 %12, 64, !dbg !60
  %14 = or i8 %9, %13, !dbg !61
  store i8 %14, i8* %7, align 1, !dbg !61, !tbaa !51
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !62
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !63
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !57
  %16 = load i8, i8* %15, align 1, !dbg !58, !tbaa !51
  %17 = shl i8 %16, 5, !dbg !60
  %18 = and i8 %17, 32, !dbg !60
  %19 = or i8 %14, %18, !dbg !61
  store i8 %19, i8* %7, align 1, !dbg !61, !tbaa !51
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !62
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !63
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !57
  %21 = load i8, i8* %20, align 1, !dbg !58, !tbaa !51
  %22 = shl i8 %21, 4, !dbg !60
  %23 = and i8 %22, 16, !dbg !60
  %24 = or i8 %19, %23, !dbg !61
  store i8 %24, i8* %7, align 1, !dbg !61, !tbaa !51
  %25 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !62
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !63
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !57
  %26 = load i8, i8* %25, align 1, !dbg !58, !tbaa !51
  %27 = shl i8 %26, 3, !dbg !60
  %28 = and i8 %27, 8, !dbg !60
  %29 = or i8 %24, %28, !dbg !61
  store i8 %29, i8* %7, align 1, !dbg !61, !tbaa !51
  %30 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !62
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !63
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !57
  %31 = load i8, i8* %30, align 1, !dbg !58, !tbaa !51
  %32 = shl i8 %31, 2, !dbg !60
  %33 = and i8 %32, 4, !dbg !60
  %34 = or i8 %29, %33, !dbg !61
  store i8 %34, i8* %7, align 1, !dbg !61, !tbaa !51
  %35 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !62
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !63
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !57
  %36 = load i8, i8* %35, align 1, !dbg !58, !tbaa !51
  %37 = shl i8 %36, 1, !dbg !60
  %38 = and i8 %37, 2, !dbg !60
  %39 = or i8 %34, %38, !dbg !61
  store i8 %39, i8* %7, align 1, !dbg !61, !tbaa !51
  %40 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !62
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !63
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !57
  %41 = load i8, i8* %40, align 1, !dbg !58, !tbaa !51
  %42 = and i8 %41, 1, !dbg !64
  %43 = or i8 %39, %42, !dbg !61
  store i8 %43, i8* %7, align 1, !dbg !61, !tbaa !51
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !63
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !57
  %44 = getelementptr i8, i8* %6, i64 8, !dbg !57
  %45 = add nuw nsw i64 %5, 1, !dbg !65
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !66
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !46
  %46 = icmp eq i64 %45, 8, !dbg !67
  br i1 %46, label %47, label %4, !dbg !46, !llvm.loop !68

; <label>:47:                                     ; preds = %4
  call void @__des_setkey(i8* nonnull %3, %struct.expanded_key* nonnull @__encrypt_key) #5, !dbg !70
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #4, !dbg !71
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !71
  ret void, !dbg !71
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local void @__des_setkey(i8*, %struct.expanded_key*) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define dso_local void @encrypt(i8* nocapture, i32) local_unnamed_addr #0 !dbg !72 {
  %3 = alloca %struct.expanded_key, align 4
  %4 = alloca [2 x i32], align 4
  %5 = bitcast %struct.expanded_key* %3 to i8*, !dbg !91
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %5) #4, !dbg !91
  %6 = bitcast [2 x i32]* %4 to i8*, !dbg !92
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #4, !dbg !92
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !96
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !98
  %7 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0, !dbg !99
  store i32 0, i32* %7, align 4, !dbg !102, !tbaa !103
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !106
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !108
  br label %8, !dbg !108

; <label>:8:                                      ; preds = %8, %2
  %9 = phi i32 [ 0, %2 ], [ %23, %8 ], !dbg !109
  %10 = phi i8* [ %0, %2 ], [ %25, %8 ]
  %11 = phi i32 [ 31, %2 ], [ %24, %8 ]
  %12 = load i8, i8* %10, align 1, !dbg !111, !tbaa !51
  %13 = and i8 %12, 1, !dbg !112
  %14 = zext i8 %13 to i32, !dbg !112
  %15 = shl i32 %14, %11, !dbg !113
  %16 = or i32 %15, %9, !dbg !109
  store i32 %16, i32* %7, align 4, !dbg !109, !tbaa !103
  %17 = add nsw i32 %11, -1, !dbg !114
  %18 = getelementptr inbounds i8, i8* %10, i64 1, !dbg !115
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !116
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !108
  %19 = load i8, i8* %18, align 1, !dbg !111, !tbaa !51
  %20 = and i8 %19, 1, !dbg !112
  %21 = zext i8 %20 to i32, !dbg !112
  %22 = shl i32 %21, %17, !dbg !113
  %23 = or i32 %22, %16, !dbg !109
  store i32 %23, i32* %7, align 4, !dbg !109, !tbaa !103
  %24 = add nsw i32 %11, -2, !dbg !114
  %25 = getelementptr inbounds i8, i8* %10, i64 2, !dbg !115
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !116
  %26 = icmp eq i32 %17, 0, !dbg !117
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !108
  br i1 %26, label %27, label %8, !dbg !108, !llvm.loop !118

; <label>:27:                                     ; preds = %8
  %28 = getelementptr i8, i8* %0, i64 32, !dbg !108
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !120
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !98
  %29 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1, !dbg !99
  store i32 0, i32* %29, align 4, !dbg !102, !tbaa !103
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !106
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !108
  br label %86, !dbg !108

; <label>:30:                                     ; preds = %105
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !122
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !126
  br label %31, !dbg !126

; <label>:31:                                     ; preds = %31, %30
  %32 = phi i64 [ 0, %30 ], [ %48, %31 ]
  %33 = sub nuw nsw i64 15, %32, !dbg !127
  %34 = getelementptr inbounds %struct.expanded_key, %struct.expanded_key* @__encrypt_key, i64 0, i32 0, i64 %33, !dbg !130
  %35 = load i32, i32* %34, align 4, !dbg !130, !tbaa !103
  %36 = getelementptr inbounds %struct.expanded_key, %struct.expanded_key* %3, i64 0, i32 0, i64 %32, !dbg !131
  store i32 %35, i32* %36, align 4, !dbg !132, !tbaa !103
  %37 = getelementptr inbounds %struct.expanded_key, %struct.expanded_key* @__encrypt_key, i64 0, i32 1, i64 %33, !dbg !133
  %38 = load i32, i32* %37, align 4, !dbg !133, !tbaa !103
  %39 = getelementptr inbounds %struct.expanded_key, %struct.expanded_key* %3, i64 0, i32 1, i64 %32, !dbg !134
  store i32 %38, i32* %39, align 4, !dbg !135, !tbaa !103
  %40 = or i64 %32, 1, !dbg !136
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !137
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !126
  %41 = sub nsw i64 14, %32, !dbg !127
  %42 = getelementptr inbounds %struct.expanded_key, %struct.expanded_key* @__encrypt_key, i64 0, i32 0, i64 %41, !dbg !130
  %43 = load i32, i32* %42, align 4, !dbg !130, !tbaa !103
  %44 = getelementptr inbounds %struct.expanded_key, %struct.expanded_key* %3, i64 0, i32 0, i64 %40, !dbg !131
  store i32 %43, i32* %44, align 4, !dbg !132, !tbaa !103
  %45 = getelementptr inbounds %struct.expanded_key, %struct.expanded_key* @__encrypt_key, i64 0, i32 1, i64 %41, !dbg !133
  %46 = load i32, i32* %45, align 4, !dbg !133, !tbaa !103
  %47 = getelementptr inbounds %struct.expanded_key, %struct.expanded_key* %3, i64 0, i32 1, i64 %40, !dbg !134
  store i32 %46, i32* %47, align 4, !dbg !135, !tbaa !103
  %48 = add nuw nsw i64 %32, 2, !dbg !136
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !137
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !126
  %49 = icmp eq i64 %48, 16, !dbg !138
  br i1 %49, label %50, label %31, !dbg !126, !llvm.loop !139

; <label>:50:                                     ; preds = %31, %105
  %51 = phi %struct.expanded_key* [ @__encrypt_key, %105 ], [ %3, %31 ], !dbg !141
  call void @__do_des(i32 %23, i32 %101, i32* nonnull %7, i32* nonnull %29, i32 1, i32 0, %struct.expanded_key* nonnull %51) #5, !dbg !142
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !143
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !145
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !146
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !149
  br label %52, !dbg !149

; <label>:52:                                     ; preds = %52, %50
  %53 = phi i8* [ %0, %50 ], [ %65, %52 ]
  %54 = phi i32 [ 31, %50 ], [ %66, %52 ]
  %55 = load i32, i32* %7, align 4, !dbg !150, !tbaa !103
  %56 = lshr i32 %55, %54, !dbg !152
  %57 = trunc i32 %56 to i8, !dbg !150
  %58 = and i8 %57, 1, !dbg !150
  %59 = getelementptr inbounds i8, i8* %53, i64 1, !dbg !153
  store i8 %58, i8* %53, align 1, !dbg !154, !tbaa !51
  %60 = add nsw i32 %54, -1, !dbg !155
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !156
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !149
  %61 = load i32, i32* %7, align 4, !dbg !150, !tbaa !103
  %62 = lshr i32 %61, %60, !dbg !152
  %63 = trunc i32 %62 to i8, !dbg !150
  %64 = and i8 %63, 1, !dbg !150
  %65 = getelementptr inbounds i8, i8* %53, i64 2, !dbg !153
  store i8 %64, i8* %59, align 1, !dbg !154, !tbaa !51
  %66 = add nsw i32 %54, -2, !dbg !155
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !156
  %67 = icmp eq i32 %60, 0, !dbg !157
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !149
  br i1 %67, label %68, label %52, !dbg !149, !llvm.loop !158

; <label>:68:                                     ; preds = %52
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !160
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !145
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !146
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !149
  br label %69, !dbg !149

; <label>:69:                                     ; preds = %69, %68
  %70 = phi i8* [ %28, %68 ], [ %82, %69 ]
  %71 = phi i32 [ 31, %68 ], [ %83, %69 ]
  %72 = load i32, i32* %29, align 4, !dbg !150, !tbaa !103
  %73 = lshr i32 %72, %71, !dbg !152
  %74 = trunc i32 %73 to i8, !dbg !150
  %75 = and i8 %74, 1, !dbg !150
  %76 = getelementptr inbounds i8, i8* %70, i64 1, !dbg !153
  store i8 %75, i8* %70, align 1, !dbg !154, !tbaa !51
  %77 = add nsw i32 %71, -1, !dbg !155
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !156
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !149
  %78 = load i32, i32* %29, align 4, !dbg !150, !tbaa !103
  %79 = lshr i32 %78, %77, !dbg !152
  %80 = trunc i32 %79 to i8, !dbg !150
  %81 = and i8 %80, 1, !dbg !150
  %82 = getelementptr inbounds i8, i8* %70, i64 2, !dbg !153
  store i8 %81, i8* %76, align 1, !dbg !154, !tbaa !51
  %83 = add nsw i32 %71, -2, !dbg !155
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !156
  %84 = icmp eq i32 %77, 0, !dbg !157
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !149
  br i1 %84, label %85, label %69, !dbg !149, !llvm.loop !158

; <label>:85:                                     ; preds = %69
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !160
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !145
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #4, !dbg !161
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %5) #4, !dbg !161
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !161
  ret void, !dbg !161

; <label>:86:                                     ; preds = %86, %27
  %87 = phi i32 [ 0, %27 ], [ %101, %86 ], !dbg !109
  %88 = phi i8* [ %28, %27 ], [ %103, %86 ]
  %89 = phi i32 [ 31, %27 ], [ %102, %86 ]
  %90 = load i8, i8* %88, align 1, !dbg !111, !tbaa !51
  %91 = and i8 %90, 1, !dbg !112
  %92 = zext i8 %91 to i32, !dbg !112
  %93 = shl i32 %92, %89, !dbg !113
  %94 = or i32 %93, %87, !dbg !109
  store i32 %94, i32* %29, align 4, !dbg !109, !tbaa !103
  %95 = add nsw i32 %89, -1, !dbg !114
  %96 = getelementptr inbounds i8, i8* %88, i64 1, !dbg !115
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !116
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !108
  %97 = load i8, i8* %96, align 1, !dbg !111, !tbaa !51
  %98 = and i8 %97, 1, !dbg !112
  %99 = zext i8 %98 to i32, !dbg !112
  %100 = shl i32 %99, %95, !dbg !113
  %101 = or i32 %100, %94, !dbg !109
  store i32 %101, i32* %29, align 4, !dbg !109, !tbaa !103
  %102 = add nsw i32 %89, -2, !dbg !114
  %103 = getelementptr inbounds i8, i8* %88, i64 2, !dbg !115
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !116
  %104 = icmp eq i32 %95, 0, !dbg !117
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !108
  br i1 %104, label %105, label %86, !dbg !108, !llvm.loop !118

; <label>:105:                                    ; preds = %86
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !120
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !98
  %106 = icmp eq i32 %1, 0, !dbg !162
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !163
  br i1 %106, label %50, label %30, !dbg !163
}

; Function Attrs: noredzone
declare dso_local void @__do_des(i32, i32, i32*, i32*, i32, i32, %struct.expanded_key*) local_unnamed_addr #3

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!20, !21, !22}
!llvm.ident = !{!23}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__encrypt_key", scope: !2, file: !3, line: 7, type: !12, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !11)
!3 = !DIFile(filename: "/root/.unikraft/libs/newlib/musl-imported/src/crypt/encrypt.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !{}
!5 = !{!6}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !7, line: 48, baseType: !8)
!7 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !9, line: 79, baseType: !10)
!9 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!10 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!11 = !{!0}
!12 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "expanded_key", file: !13, line: 6, size: 1024, elements: !14)
!13 = !DIFile(filename: "/root/.unikraft/libs/newlib/musl-imported/src/crypt/crypt_des.h", directory: "/root/.unikraft/apps/redis/build")
!14 = !{!15, !19}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !12, file: !13, line: 7, baseType: !16, size: 512)
!16 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 512, elements: !17)
!17 = !{!18}
!18 = !DISubrange(count: 16)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !12, file: !13, line: 7, baseType: !16, size: 512, offset: 512)
!20 = !{i32 2, !"Dwarf Version", i32 4}
!21 = !{i32 2, !"Debug Info Version", i32 3}
!22 = !{i32 1, !"wchar_size", i32 4}
!23 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!24 = distinct !DISubprogram(name: "setkey", scope: !3, file: !3, line: 9, type: !25, isLocal: false, isDefinition: true, scopeLine: 10, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !30)
!25 = !DISubroutineType(types: !26)
!26 = !{null, !27}
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !29)
!29 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!30 = !{!31, !32, !37, !39}
!31 = !DILocalVariable(name: "key", arg: 1, scope: !24, file: !3, line: 9, type: !27)
!32 = !DILocalVariable(name: "bkey", scope: !24, file: !3, line: 11, type: !33)
!33 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 64, elements: !35)
!34 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!35 = !{!36}
!36 = !DISubrange(count: 8)
!37 = !DILocalVariable(name: "i", scope: !24, file: !3, line: 12, type: !38)
!38 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!39 = !DILocalVariable(name: "j", scope: !24, file: !3, line: 12, type: !38)
!40 = !DILocation(line: 9, column: 25, scope: !24)
!41 = !DILocation(line: 11, column: 2, scope: !24)
!42 = !DILocation(line: 11, column: 16, scope: !24)
!43 = !DILocation(line: 12, column: 6, scope: !24)
!44 = !DILocation(line: 14, column: 7, scope: !45)
!45 = distinct !DILexicalBlock(scope: !24, file: !3, line: 14, column: 2)
!46 = !DILocation(line: 14, column: 2, scope: !45)
!47 = !DILocation(line: 15, column: 3, scope: !48)
!48 = distinct !DILexicalBlock(scope: !49, file: !3, line: 14, column: 26)
!49 = distinct !DILexicalBlock(scope: !45, file: !3, line: 14, column: 2)
!50 = !DILocation(line: 15, column: 11, scope: !48)
!51 = !{!52, !52, i64 0}
!52 = !{!"omnipotent char", !53, i64 0}
!53 = !{!"Simple C/C++ TBAA"}
!54 = !DILocation(line: 12, column: 9, scope: !24)
!55 = !DILocation(line: 16, column: 8, scope: !56)
!56 = distinct !DILexicalBlock(scope: !48, file: !3, line: 16, column: 3)
!57 = !DILocation(line: 16, column: 3, scope: !56)
!58 = !DILocation(line: 17, column: 26, scope: !59)
!59 = distinct !DILexicalBlock(scope: !56, file: !3, line: 16, column: 3)
!60 = !DILocation(line: 17, column: 36, scope: !59)
!61 = !DILocation(line: 17, column: 12, scope: !59)
!62 = !DILocation(line: 16, column: 31, scope: !59)
!63 = !DILocation(line: 16, column: 3, scope: !59)
!64 = !DILocation(line: 17, column: 31, scope: !59)
!65 = !DILocation(line: 14, column: 22, scope: !49)
!66 = !DILocation(line: 14, column: 2, scope: !49)
!67 = !DILocation(line: 14, column: 16, scope: !49)
!68 = distinct !{!68, !46, !69}
!69 = !DILocation(line: 18, column: 2, scope: !45)
!70 = !DILocation(line: 20, column: 2, scope: !24)
!71 = !DILocation(line: 21, column: 1, scope: !24)
!72 = distinct !DISubprogram(name: "encrypt", scope: !3, file: !3, line: 23, type: !73, isLocal: false, isDefinition: true, scopeLine: 24, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !76)
!73 = !DISubroutineType(types: !74)
!74 = !{null, !75, !38}
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!76 = !{!77, !78, !79, !80, !82, !86, !87, !88}
!77 = !DILocalVariable(name: "block", arg: 1, scope: !72, file: !3, line: 23, type: !75)
!78 = !DILocalVariable(name: "edflag", arg: 2, scope: !72, file: !3, line: 23, type: !38)
!79 = !DILocalVariable(name: "decrypt_key", scope: !72, file: !3, line: 25, type: !12)
!80 = !DILocalVariable(name: "key", scope: !72, file: !3, line: 25, type: !81)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!82 = !DILocalVariable(name: "b", scope: !72, file: !3, line: 26, type: !83)
!83 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 64, elements: !84)
!84 = !{!85}
!85 = !DISubrange(count: 2)
!86 = !DILocalVariable(name: "i", scope: !72, file: !3, line: 27, type: !38)
!87 = !DILocalVariable(name: "j", scope: !72, file: !3, line: 27, type: !38)
!88 = !DILocalVariable(name: "p", scope: !72, file: !3, line: 28, type: !75)
!89 = !DILocation(line: 23, column: 20, scope: !72)
!90 = !DILocation(line: 23, column: 31, scope: !72)
!91 = !DILocation(line: 25, column: 2, scope: !72)
!92 = !DILocation(line: 26, column: 2, scope: !72)
!93 = !DILocation(line: 26, column: 11, scope: !72)
!94 = !DILocation(line: 28, column: 8, scope: !72)
!95 = !DILocation(line: 27, column: 6, scope: !72)
!96 = !DILocation(line: 31, column: 7, scope: !97)
!97 = distinct !DILexicalBlock(scope: !72, file: !3, line: 31, column: 2)
!98 = !DILocation(line: 31, column: 2, scope: !97)
!99 = !DILocation(line: 32, column: 3, scope: !100)
!100 = distinct !DILexicalBlock(scope: !101, file: !3, line: 31, column: 26)
!101 = distinct !DILexicalBlock(scope: !97, file: !3, line: 31, column: 2)
!102 = !DILocation(line: 32, column: 8, scope: !100)
!103 = !{!104, !104, i64 0}
!104 = !{!"int", !52, i64 0}
!105 = !DILocation(line: 27, column: 9, scope: !72)
!106 = !DILocation(line: 33, column: 8, scope: !107)
!107 = distinct !DILexicalBlock(scope: !100, file: !3, line: 33, column: 3)
!108 = !DILocation(line: 33, column: 3, scope: !107)
!109 = !DILocation(line: 34, column: 9, scope: !110)
!110 = distinct !DILexicalBlock(scope: !107, file: !3, line: 33, column: 3)
!111 = !DILocation(line: 34, column: 23, scope: !110)
!112 = !DILocation(line: 34, column: 26, scope: !110)
!113 = !DILocation(line: 34, column: 31, scope: !110)
!114 = !DILocation(line: 33, column: 25, scope: !110)
!115 = !DILocation(line: 33, column: 30, scope: !110)
!116 = !DILocation(line: 33, column: 3, scope: !110)
!117 = !DILocation(line: 33, column: 18, scope: !110)
!118 = distinct !{!118, !108, !119}
!119 = !DILocation(line: 34, column: 34, scope: !107)
!120 = !DILocation(line: 31, column: 2, scope: !101)
!121 = !DILocation(line: 25, column: 36, scope: !72)
!122 = !DILocation(line: 40, column: 8, scope: !123)
!123 = distinct !DILexicalBlock(scope: !124, file: !3, line: 40, column: 3)
!124 = distinct !DILexicalBlock(scope: !125, file: !3, line: 38, column: 14)
!125 = distinct !DILexicalBlock(scope: !72, file: !3, line: 38, column: 6)
!126 = !DILocation(line: 40, column: 3, scope: !123)
!127 = !DILocation(line: 41, column: 41, scope: !128)
!128 = distinct !DILexicalBlock(scope: !129, file: !3, line: 40, column: 28)
!129 = distinct !DILexicalBlock(scope: !123, file: !3, line: 40, column: 3)
!130 = !DILocation(line: 41, column: 23, scope: !128)
!131 = !DILocation(line: 41, column: 4, scope: !128)
!132 = !DILocation(line: 41, column: 21, scope: !128)
!133 = !DILocation(line: 42, column: 23, scope: !128)
!134 = !DILocation(line: 42, column: 4, scope: !128)
!135 = !DILocation(line: 42, column: 21, scope: !128)
!136 = !DILocation(line: 40, column: 24, scope: !129)
!137 = !DILocation(line: 40, column: 3, scope: !129)
!138 = !DILocation(line: 40, column: 17, scope: !129)
!139 = distinct !{!139, !126, !140}
!140 = !DILocation(line: 43, column: 3, scope: !123)
!141 = !DILocation(line: 0, scope: !72)
!142 = !DILocation(line: 46, column: 2, scope: !72)
!143 = !DILocation(line: 49, column: 7, scope: !144)
!144 = distinct !DILexicalBlock(scope: !72, file: !3, line: 49, column: 2)
!145 = !DILocation(line: 49, column: 2, scope: !144)
!146 = !DILocation(line: 50, column: 8, scope: !147)
!147 = distinct !DILexicalBlock(scope: !148, file: !3, line: 50, column: 3)
!148 = distinct !DILexicalBlock(scope: !144, file: !3, line: 49, column: 2)
!149 = !DILocation(line: 50, column: 3, scope: !147)
!150 = !DILocation(line: 51, column: 11, scope: !151)
!151 = distinct !DILexicalBlock(scope: !147, file: !3, line: 50, column: 3)
!152 = !DILocation(line: 51, column: 15, scope: !151)
!153 = !DILocation(line: 51, column: 6, scope: !151)
!154 = !DILocation(line: 51, column: 9, scope: !151)
!155 = !DILocation(line: 50, column: 25, scope: !151)
!156 = !DILocation(line: 50, column: 3, scope: !151)
!157 = !DILocation(line: 50, column: 18, scope: !151)
!158 = distinct !{!158, !149, !159}
!159 = !DILocation(line: 51, column: 21, scope: !147)
!160 = !DILocation(line: 49, column: 2, scope: !148)
!161 = !DILocation(line: 52, column: 1, scope: !72)
!162 = !DILocation(line: 38, column: 6, scope: !125)
!163 = !DILocation(line: 38, column: 6, scope: !72)
