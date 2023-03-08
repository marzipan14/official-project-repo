; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/memmove.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/memmove.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i8* @memmove(i8* returned, i8*, i64) local_unnamed_addr #0 !dbg !12 {
  %4 = icmp ult i8* %1, %0, !dbg !38
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !40
  br i1 %4, label %5, label %49, !dbg !40

; <label>:5:                                      ; preds = %3
  %6 = getelementptr inbounds i8, i8* %1, i64 %2, !dbg !41
  %7 = icmp ugt i8* %6, %0, !dbg !42
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !43
  br i1 %7, label %8, label %49, !dbg !43

; <label>:8:                                      ; preds = %5
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !44
  %9 = icmp eq i64 %2, 0, !dbg !44
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !44
  br i1 %9, label %226, label %10, !dbg !44

; <label>:10:                                     ; preds = %8
  %11 = getelementptr inbounds i8, i8* %0, i64 %2, !dbg !46
  %12 = add i64 %2, -1, !dbg !47
  %13 = and i64 %2, 3, !dbg !47
  %14 = icmp eq i64 %13, 0, !dbg !47
  br i1 %14, label %26, label %15, !dbg !47

; <label>:15:                                     ; preds = %10, %15
  %16 = phi i8* [ %21, %15 ], [ %6, %10 ]
  %17 = phi i8* [ %23, %15 ], [ %11, %10 ]
  %18 = phi i64 [ %20, %15 ], [ %2, %10 ]
  %19 = phi i64 [ %24, %15 ], [ %13, %10 ]
  %20 = add i64 %18, -1, !dbg !47
  %21 = getelementptr inbounds i8, i8* %16, i64 -1, !dbg !48
  %22 = load i8, i8* %21, align 1, !dbg !50, !tbaa !51
  %23 = getelementptr inbounds i8, i8* %17, i64 -1, !dbg !54
  store i8 %22, i8* %23, align 1, !dbg !55, !tbaa !51
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !44
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !44
  %24 = add i64 %19, -1, !dbg !44
  %25 = icmp eq i64 %24, 0, !dbg !44
  br i1 %25, label %26, label %15, !dbg !44, !llvm.loop !56

; <label>:26:                                     ; preds = %15, %10
  %27 = phi i8* [ %6, %10 ], [ %21, %15 ]
  %28 = phi i8* [ %11, %10 ], [ %23, %15 ]
  %29 = phi i64 [ %2, %10 ], [ %20, %15 ]
  %30 = icmp ult i64 %12, 3, !dbg !47
  br i1 %30, label %226, label %31, !dbg !47

; <label>:31:                                     ; preds = %26, %31
  %32 = phi i8* [ %45, %31 ], [ %27, %26 ]
  %33 = phi i8* [ %47, %31 ], [ %28, %26 ]
  %34 = phi i64 [ %44, %31 ], [ %29, %26 ]
  %35 = getelementptr inbounds i8, i8* %32, i64 -1, !dbg !48
  %36 = load i8, i8* %35, align 1, !dbg !50, !tbaa !51
  %37 = getelementptr inbounds i8, i8* %33, i64 -1, !dbg !54
  store i8 %36, i8* %37, align 1, !dbg !55, !tbaa !51
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !44
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !44
  %38 = getelementptr inbounds i8, i8* %32, i64 -2, !dbg !48
  %39 = load i8, i8* %38, align 1, !dbg !50, !tbaa !51
  %40 = getelementptr inbounds i8, i8* %33, i64 -2, !dbg !54
  store i8 %39, i8* %40, align 1, !dbg !55, !tbaa !51
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !44
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !44
  %41 = getelementptr inbounds i8, i8* %32, i64 -3, !dbg !48
  %42 = load i8, i8* %41, align 1, !dbg !50, !tbaa !51
  %43 = getelementptr inbounds i8, i8* %33, i64 -3, !dbg !54
  store i8 %42, i8* %43, align 1, !dbg !55, !tbaa !51
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !44
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !44
  %44 = add i64 %34, -4, !dbg !47
  %45 = getelementptr inbounds i8, i8* %32, i64 -4, !dbg !48
  %46 = load i8, i8* %45, align 1, !dbg !50, !tbaa !51
  %47 = getelementptr inbounds i8, i8* %33, i64 -4, !dbg !54
  store i8 %46, i8* %47, align 1, !dbg !55, !tbaa !51
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !44
  %48 = icmp eq i64 %44, 0, !dbg !44
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !44
  br i1 %48, label %226, label %31, !dbg !44, !llvm.loop !58

; <label>:49:                                     ; preds = %5, %3
  %50 = icmp ult i64 %2, 32, !dbg !60
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !63
  br i1 %50, label %180, label %51, !dbg !63

; <label>:51:                                     ; preds = %49
  %52 = ptrtoint i8* %1 to i64, !dbg !64
  %53 = ptrtoint i8* %0 to i64, !dbg !64
  %54 = or i64 %52, %53, !dbg !64
  %55 = and i64 %54, 7, !dbg !64
  %56 = icmp eq i64 %55, 0, !dbg !64
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !65
  br i1 %56, label %58, label %57, !dbg !65

; <label>:57:                                     ; preds = %51
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !66
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !66
  br label %185, !dbg !66

; <label>:58:                                     ; preds = %51
  %59 = bitcast i8* %0 to i64*, !dbg !67
  %60 = bitcast i8* %1 to i64*, !dbg !70
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !72
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !72
  %61 = add i64 %2, -32, !dbg !73
  %62 = and i64 %61, -32, !dbg !73
  %63 = add i64 %62, 32, !dbg !73
  %64 = getelementptr i8, i8* %1, i64 %63, !dbg !73
  %65 = getelementptr i8, i8* %0, i64 %63, !dbg !73
  %66 = and i64 %61, 32, !dbg !73
  %67 = icmp eq i64 %66, 0, !dbg !73
  br i1 %67, label %68, label %90, !dbg !73

; <label>:68:                                     ; preds = %58
  %69 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !73
  %70 = bitcast i8* %69 to i64*, !dbg !73
  %71 = load i64, i64* %60, align 8, !dbg !75, !tbaa !76
  %72 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !78
  %73 = bitcast i8* %72 to i64*, !dbg !78
  store i64 %71, i64* %59, align 8, !dbg !79, !tbaa !76
  %74 = getelementptr inbounds i8, i8* %1, i64 16, !dbg !80
  %75 = bitcast i8* %74 to i64*, !dbg !80
  %76 = load i64, i64* %70, align 8, !dbg !81, !tbaa !76
  %77 = getelementptr inbounds i8, i8* %0, i64 16, !dbg !82
  %78 = bitcast i8* %77 to i64*, !dbg !82
  store i64 %76, i64* %73, align 8, !dbg !83, !tbaa !76
  %79 = getelementptr inbounds i8, i8* %1, i64 24, !dbg !84
  %80 = bitcast i8* %79 to i64*, !dbg !84
  %81 = load i64, i64* %75, align 8, !dbg !85, !tbaa !76
  %82 = getelementptr inbounds i8, i8* %0, i64 24, !dbg !86
  %83 = bitcast i8* %82 to i64*, !dbg !86
  store i64 %81, i64* %78, align 8, !dbg !87, !tbaa !76
  %84 = getelementptr inbounds i8, i8* %1, i64 32, !dbg !88
  %85 = bitcast i8* %84 to i64*, !dbg !88
  %86 = load i64, i64* %80, align 8, !dbg !89, !tbaa !76
  %87 = getelementptr inbounds i8, i8* %0, i64 32, !dbg !90
  %88 = bitcast i8* %87 to i64*, !dbg !90
  store i64 %86, i64* %83, align 8, !dbg !91, !tbaa !76
  %89 = add i64 %2, -32, !dbg !92
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !72
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !72
  br label %90, !dbg !72

; <label>:90:                                     ; preds = %68, %58
  %91 = phi i64* [ %60, %58 ], [ %85, %68 ]
  %92 = phi i64* [ %59, %58 ], [ %88, %68 ]
  %93 = phi i64 [ %2, %58 ], [ %89, %68 ]
  %94 = icmp ult i64 %61, 32, !dbg !73
  br i1 %94, label %95, label %123, !dbg !73

; <label>:95:                                     ; preds = %123, %90
  %96 = bitcast i8* %64 to i64*
  %97 = bitcast i8* %65 to i64*
  %98 = sub i64 %61, %62, !dbg !73
  %99 = icmp ugt i64 %98, 7, !dbg !93
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !94
  br i1 %99, label %100, label %174, !dbg !94

; <label>:100:                                    ; preds = %95
  %101 = add i64 %98, -8, !dbg !95
  %102 = lshr i64 %101, 3, !dbg !95
  %103 = add nuw nsw i64 %102, 1, !dbg !95
  %104 = getelementptr i64, i64* %96, i64 %103, !dbg !95
  %105 = and i64 %103, 3, !dbg !95
  %106 = icmp eq i64 %105, 0, !dbg !95
  br i1 %106, label %118, label %107, !dbg !95

; <label>:107:                                    ; preds = %100, %107
  %108 = phi i64* [ %112, %107 ], [ %96, %100 ]
  %109 = phi i64* [ %114, %107 ], [ %97, %100 ]
  %110 = phi i64 [ %115, %107 ], [ %98, %100 ]
  %111 = phi i64 [ %116, %107 ], [ %105, %100 ]
  %112 = getelementptr inbounds i64, i64* %108, i64 1, !dbg !95
  %113 = load i64, i64* %108, align 8, !dbg !97, !tbaa !76
  %114 = getelementptr inbounds i64, i64* %109, i64 1, !dbg !98
  store i64 %113, i64* %109, align 8, !dbg !99, !tbaa !76
  %115 = add i64 %110, -8, !dbg !100
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !94
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !94
  %116 = add i64 %111, -1, !dbg !94
  %117 = icmp eq i64 %116, 0, !dbg !94
  br i1 %117, label %118, label %107, !dbg !94, !llvm.loop !101

; <label>:118:                                    ; preds = %107, %100
  %119 = phi i64* [ %96, %100 ], [ %112, %107 ]
  %120 = phi i64* [ %97, %100 ], [ %114, %107 ]
  %121 = phi i64 [ %98, %100 ], [ %115, %107 ]
  %122 = icmp ult i64 %101, 24, !dbg !95
  br i1 %122, label %171, label %153, !dbg !95

; <label>:123:                                    ; preds = %90, %123
  %124 = phi i64* [ %148, %123 ], [ %91, %90 ]
  %125 = phi i64* [ %150, %123 ], [ %92, %90 ]
  %126 = phi i64 [ %151, %123 ], [ %93, %90 ]
  %127 = getelementptr inbounds i64, i64* %124, i64 1, !dbg !73
  %128 = load i64, i64* %124, align 8, !dbg !75, !tbaa !76
  %129 = getelementptr inbounds i64, i64* %125, i64 1, !dbg !78
  store i64 %128, i64* %125, align 8, !dbg !79, !tbaa !76
  %130 = getelementptr inbounds i64, i64* %124, i64 2, !dbg !80
  %131 = load i64, i64* %127, align 8, !dbg !81, !tbaa !76
  %132 = getelementptr inbounds i64, i64* %125, i64 2, !dbg !82
  store i64 %131, i64* %129, align 8, !dbg !83, !tbaa !76
  %133 = getelementptr inbounds i64, i64* %124, i64 3, !dbg !84
  %134 = load i64, i64* %130, align 8, !dbg !85, !tbaa !76
  %135 = getelementptr inbounds i64, i64* %125, i64 3, !dbg !86
  store i64 %134, i64* %132, align 8, !dbg !87, !tbaa !76
  %136 = getelementptr inbounds i64, i64* %124, i64 4, !dbg !88
  %137 = load i64, i64* %133, align 8, !dbg !89, !tbaa !76
  %138 = getelementptr inbounds i64, i64* %125, i64 4, !dbg !90
  store i64 %137, i64* %135, align 8, !dbg !91, !tbaa !76
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !72
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !72
  %139 = getelementptr inbounds i64, i64* %124, i64 5, !dbg !73
  %140 = load i64, i64* %136, align 8, !dbg !75, !tbaa !76
  %141 = getelementptr inbounds i64, i64* %125, i64 5, !dbg !78
  store i64 %140, i64* %138, align 8, !dbg !79, !tbaa !76
  %142 = getelementptr inbounds i64, i64* %124, i64 6, !dbg !80
  %143 = load i64, i64* %139, align 8, !dbg !81, !tbaa !76
  %144 = getelementptr inbounds i64, i64* %125, i64 6, !dbg !82
  store i64 %143, i64* %141, align 8, !dbg !83, !tbaa !76
  %145 = getelementptr inbounds i64, i64* %124, i64 7, !dbg !84
  %146 = load i64, i64* %142, align 8, !dbg !85, !tbaa !76
  %147 = getelementptr inbounds i64, i64* %125, i64 7, !dbg !86
  store i64 %146, i64* %144, align 8, !dbg !87, !tbaa !76
  %148 = getelementptr inbounds i64, i64* %124, i64 8, !dbg !88
  %149 = load i64, i64* %145, align 8, !dbg !89, !tbaa !76
  %150 = getelementptr inbounds i64, i64* %125, i64 8, !dbg !90
  store i64 %149, i64* %147, align 8, !dbg !91, !tbaa !76
  %151 = add i64 %126, -64, !dbg !92
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !72
  %152 = icmp ugt i64 %151, 31, !dbg !102
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !72
  br i1 %152, label %123, label %95, !dbg !72, !llvm.loop !103

; <label>:153:                                    ; preds = %118, %153
  %154 = phi i64* [ %166, %153 ], [ %119, %118 ]
  %155 = phi i64* [ %168, %153 ], [ %120, %118 ]
  %156 = phi i64 [ %169, %153 ], [ %121, %118 ]
  %157 = getelementptr inbounds i64, i64* %154, i64 1, !dbg !95
  %158 = load i64, i64* %154, align 8, !dbg !97, !tbaa !76
  %159 = getelementptr inbounds i64, i64* %155, i64 1, !dbg !98
  store i64 %158, i64* %155, align 8, !dbg !99, !tbaa !76
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !94
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !94
  %160 = getelementptr inbounds i64, i64* %154, i64 2, !dbg !95
  %161 = load i64, i64* %157, align 8, !dbg !97, !tbaa !76
  %162 = getelementptr inbounds i64, i64* %155, i64 2, !dbg !98
  store i64 %161, i64* %159, align 8, !dbg !99, !tbaa !76
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !94
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !94
  %163 = getelementptr inbounds i64, i64* %154, i64 3, !dbg !95
  %164 = load i64, i64* %160, align 8, !dbg !97, !tbaa !76
  %165 = getelementptr inbounds i64, i64* %155, i64 3, !dbg !98
  store i64 %164, i64* %162, align 8, !dbg !99, !tbaa !76
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !94
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !94
  %166 = getelementptr inbounds i64, i64* %154, i64 4, !dbg !95
  %167 = load i64, i64* %163, align 8, !dbg !97, !tbaa !76
  %168 = getelementptr inbounds i64, i64* %155, i64 4, !dbg !98
  store i64 %167, i64* %165, align 8, !dbg !99, !tbaa !76
  %169 = add i64 %156, -32, !dbg !100
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !94
  %170 = icmp ugt i64 %169, 7, !dbg !93
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !94
  br i1 %170, label %153, label %171, !dbg !94, !llvm.loop !105

; <label>:171:                                    ; preds = %153, %118
  %172 = getelementptr i64, i64* %97, i64 %103, !dbg !95
  %173 = and i64 %101, 7, !dbg !95
  br label %174, !dbg !107

; <label>:174:                                    ; preds = %171, %95
  %175 = phi i64 [ %98, %95 ], [ %173, %171 ]
  %176 = phi i64* [ %97, %95 ], [ %172, %171 ], !dbg !108
  %177 = phi i64* [ %96, %95 ], [ %104, %171 ], !dbg !108
  %178 = bitcast i64* %176 to i8*, !dbg !107
  %179 = bitcast i64* %177 to i8*, !dbg !109
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !110
  br label %180, !dbg !110

; <label>:180:                                    ; preds = %174, %49
  %181 = phi i64 [ %2, %49 ], [ %175, %174 ]
  %182 = phi i8* [ %0, %49 ], [ %178, %174 ], !dbg !111
  %183 = phi i8* [ %1, %49 ], [ %179, %174 ], !dbg !111
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !66
  %184 = icmp eq i64 %181, 0, !dbg !66
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !66
  br i1 %184, label %226, label %185, !dbg !66

; <label>:185:                                    ; preds = %57, %180
  %186 = phi i8* [ %183, %180 ], [ %1, %57 ]
  %187 = phi i8* [ %182, %180 ], [ %0, %57 ]
  %188 = phi i64 [ %181, %180 ], [ %2, %57 ]
  %189 = add i64 %188, -1, !dbg !112
  %190 = and i64 %188, 3, !dbg !112
  %191 = icmp eq i64 %190, 0, !dbg !112
  br i1 %191, label %203, label %192, !dbg !112

; <label>:192:                                    ; preds = %185, %192
  %193 = phi i8* [ %198, %192 ], [ %186, %185 ]
  %194 = phi i8* [ %200, %192 ], [ %187, %185 ]
  %195 = phi i64 [ %197, %192 ], [ %188, %185 ]
  %196 = phi i64 [ %201, %192 ], [ %190, %185 ]
  %197 = add i64 %195, -1, !dbg !112
  %198 = getelementptr inbounds i8, i8* %193, i64 1, !dbg !113
  %199 = load i8, i8* %193, align 1, !dbg !115, !tbaa !51
  %200 = getelementptr inbounds i8, i8* %194, i64 1, !dbg !116
  store i8 %199, i8* %194, align 1, !dbg !117, !tbaa !51
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !66
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !66
  %201 = add i64 %196, -1, !dbg !66
  %202 = icmp eq i64 %201, 0, !dbg !66
  br i1 %202, label %203, label %192, !dbg !66, !llvm.loop !118

; <label>:203:                                    ; preds = %192, %185
  %204 = phi i8* [ %186, %185 ], [ %198, %192 ]
  %205 = phi i8* [ %187, %185 ], [ %200, %192 ]
  %206 = phi i64 [ %188, %185 ], [ %197, %192 ]
  %207 = icmp ult i64 %189, 3, !dbg !112
  br i1 %207, label %226, label %208, !dbg !112

; <label>:208:                                    ; preds = %203, %208
  %209 = phi i8* [ %222, %208 ], [ %204, %203 ]
  %210 = phi i8* [ %224, %208 ], [ %205, %203 ]
  %211 = phi i64 [ %221, %208 ], [ %206, %203 ]
  %212 = getelementptr inbounds i8, i8* %209, i64 1, !dbg !113
  %213 = load i8, i8* %209, align 1, !dbg !115, !tbaa !51
  %214 = getelementptr inbounds i8, i8* %210, i64 1, !dbg !116
  store i8 %213, i8* %210, align 1, !dbg !117, !tbaa !51
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !66
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !66
  %215 = getelementptr inbounds i8, i8* %209, i64 2, !dbg !113
  %216 = load i8, i8* %212, align 1, !dbg !115, !tbaa !51
  %217 = getelementptr inbounds i8, i8* %210, i64 2, !dbg !116
  store i8 %216, i8* %214, align 1, !dbg !117, !tbaa !51
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !66
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !66
  %218 = getelementptr inbounds i8, i8* %209, i64 3, !dbg !113
  %219 = load i8, i8* %215, align 1, !dbg !115, !tbaa !51
  %220 = getelementptr inbounds i8, i8* %210, i64 3, !dbg !116
  store i8 %219, i8* %217, align 1, !dbg !117, !tbaa !51
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !66
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !66
  %221 = add i64 %211, -4, !dbg !112
  %222 = getelementptr inbounds i8, i8* %209, i64 4, !dbg !113
  %223 = load i8, i8* %218, align 1, !dbg !115, !tbaa !51
  %224 = getelementptr inbounds i8, i8* %210, i64 4, !dbg !116
  store i8 %223, i8* %220, align 1, !dbg !117, !tbaa !51
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !66
  %225 = icmp eq i64 %221, 0, !dbg !66
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !66
  br i1 %225, label %226, label %208, !dbg !66, !llvm.loop !119

; <label>:226:                                    ; preds = %203, %208, %26, %31, %180, %8
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !121
  ret i8* %0, !dbg !121
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/memmove.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !5, !6}
!4 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!8 = !{i32 2, !"Dwarf Version", i32 4}
!9 = !{i32 2, !"Debug Info Version", i32 3}
!10 = !{i32 1, !"wchar_size", i32 4}
!11 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!12 = distinct !DISubprogram(name: "memmove", scope: !1, file: !1, line: 60, type: !13, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !23)
!13 = !DISubroutineType(types: !14)
!14 = !{!15, !15, !16, !18}
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !19, line: 40, baseType: !20)
!19 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !21, line: 129, baseType: !22)
!21 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!22 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!23 = !{!24, !25, !26, !27, !28, !31, !32}
!24 = !DILocalVariable(name: "dst_void", arg: 1, scope: !12, file: !1, line: 60, type: !15)
!25 = !DILocalVariable(name: "src_void", arg: 2, scope: !12, file: !1, line: 60, type: !16)
!26 = !DILocalVariable(name: "length", arg: 3, scope: !12, file: !1, line: 60, type: !18)
!27 = !DILocalVariable(name: "dst", scope: !12, file: !1, line: 89, type: !6)
!28 = !DILocalVariable(name: "src", scope: !12, file: !1, line: 90, type: !29)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!31 = !DILocalVariable(name: "aligned_dst", scope: !12, file: !1, line: 91, type: !5)
!32 = !DILocalVariable(name: "aligned_src", scope: !12, file: !1, line: 92, type: !33)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!35 = !DILocation(line: 60, column: 1, scope: !12)
!36 = !DILocation(line: 89, column: 9, scope: !12)
!37 = !DILocation(line: 90, column: 16, scope: !12)
!38 = !DILocation(line: 94, column: 11, scope: !39)
!39 = distinct !DILexicalBlock(scope: !12, file: !1, line: 94, column: 7)
!40 = !DILocation(line: 94, column: 17, scope: !39)
!41 = !DILocation(line: 94, column: 30, scope: !39)
!42 = !DILocation(line: 94, column: 24, scope: !39)
!43 = !DILocation(line: 94, column: 7, scope: !12)
!44 = !DILocation(line: 99, column: 7, scope: !45)
!45 = distinct !DILexicalBlock(scope: !39, file: !1, line: 95, column: 5)
!46 = !DILocation(line: 98, column: 11, scope: !45)
!47 = !DILocation(line: 99, column: 20, scope: !45)
!48 = !DILocation(line: 101, column: 14, scope: !49)
!49 = distinct !DILexicalBlock(scope: !45, file: !1, line: 100, column: 2)
!50 = !DILocation(line: 101, column: 13, scope: !49)
!51 = !{!52, !52, i64 0}
!52 = !{!"omnipotent char", !53, i64 0}
!53 = !{!"Simple C/C++ TBAA"}
!54 = !DILocation(line: 101, column: 5, scope: !49)
!55 = !DILocation(line: 101, column: 11, scope: !49)
!56 = distinct !{!56, !57}
!57 = !{!"llvm.loop.unroll.disable"}
!58 = distinct !{!58, !44, !59}
!59 = !DILocation(line: 102, column: 2, scope: !45)
!60 = !DILocation(line: 109, column: 12, scope: !61)
!61 = distinct !DILexicalBlock(scope: !62, file: !1, line: 109, column: 11)
!62 = distinct !DILexicalBlock(scope: !39, file: !1, line: 105, column: 5)
!63 = !DILocation(line: 109, column: 30, scope: !61)
!64 = !DILocation(line: 109, column: 34, scope: !61)
!65 = !DILocation(line: 109, column: 11, scope: !62)
!66 = !DILocation(line: 136, column: 7, scope: !62)
!67 = !DILocation(line: 111, column: 25, scope: !68)
!68 = distinct !DILexicalBlock(scope: !61, file: !1, line: 110, column: 9)
!69 = !DILocation(line: 91, column: 9, scope: !12)
!70 = !DILocation(line: 112, column: 25, scope: !68)
!71 = !DILocation(line: 92, column: 16, scope: !12)
!72 = !DILocation(line: 115, column: 11, scope: !68)
!73 = !DILocation(line: 117, column: 44, scope: !74)
!74 = distinct !DILexicalBlock(scope: !68, file: !1, line: 116, column: 13)
!75 = !DILocation(line: 117, column: 32, scope: !74)
!76 = !{!77, !77, i64 0}
!77 = !{!"long", !52, i64 0}
!78 = !DILocation(line: 117, column: 27, scope: !74)
!79 = !DILocation(line: 117, column: 30, scope: !74)
!80 = !DILocation(line: 118, column: 44, scope: !74)
!81 = !DILocation(line: 118, column: 32, scope: !74)
!82 = !DILocation(line: 118, column: 27, scope: !74)
!83 = !DILocation(line: 118, column: 30, scope: !74)
!84 = !DILocation(line: 119, column: 44, scope: !74)
!85 = !DILocation(line: 119, column: 32, scope: !74)
!86 = !DILocation(line: 119, column: 27, scope: !74)
!87 = !DILocation(line: 119, column: 30, scope: !74)
!88 = !DILocation(line: 120, column: 44, scope: !74)
!89 = !DILocation(line: 120, column: 32, scope: !74)
!90 = !DILocation(line: 120, column: 27, scope: !74)
!91 = !DILocation(line: 120, column: 30, scope: !74)
!92 = !DILocation(line: 121, column: 22, scope: !74)
!93 = !DILocation(line: 125, column: 25, scope: !68)
!94 = !DILocation(line: 125, column: 11, scope: !68)
!95 = !DILocation(line: 127, column: 44, scope: !96)
!96 = distinct !DILexicalBlock(scope: !68, file: !1, line: 126, column: 13)
!97 = !DILocation(line: 127, column: 32, scope: !96)
!98 = !DILocation(line: 127, column: 27, scope: !96)
!99 = !DILocation(line: 127, column: 30, scope: !96)
!100 = !DILocation(line: 128, column: 22, scope: !96)
!101 = distinct !{!101, !57}
!102 = !DILocation(line: 115, column: 25, scope: !68)
!103 = distinct !{!103, !72, !104}
!104 = !DILocation(line: 122, column: 13, scope: !68)
!105 = distinct !{!105, !94, !106}
!106 = !DILocation(line: 129, column: 13, scope: !68)
!107 = !DILocation(line: 132, column: 17, scope: !68)
!108 = !DILocation(line: 0, scope: !96)
!109 = !DILocation(line: 133, column: 17, scope: !68)
!110 = !DILocation(line: 134, column: 9, scope: !68)
!111 = !DILocation(line: 0, scope: !68)
!112 = !DILocation(line: 136, column: 20, scope: !62)
!113 = !DILocation(line: 138, column: 24, scope: !114)
!114 = distinct !DILexicalBlock(scope: !62, file: !1, line: 137, column: 9)
!115 = !DILocation(line: 138, column: 20, scope: !114)
!116 = !DILocation(line: 138, column: 15, scope: !114)
!117 = !DILocation(line: 138, column: 18, scope: !114)
!118 = distinct !{!118, !57}
!119 = distinct !{!119, !66, !120}
!120 = !DILocation(line: 139, column: 9, scope: !62)
!121 = !DILocation(line: 142, column: 3, scope: !12)
