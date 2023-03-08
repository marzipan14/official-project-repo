; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/mempcpy.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/mempcpy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i8* @mempcpy(i8*, i8*, i64) local_unnamed_addr #0 !dbg !12 {
  %4 = icmp ult i64 %2, 32, !dbg !38
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !40
  br i1 %4, label %138, label %5, !dbg !40

; <label>:5:                                      ; preds = %3
  %6 = ptrtoint i8* %1 to i64, !dbg !41
  %7 = ptrtoint i8* %0 to i64, !dbg !41
  %8 = or i64 %6, %7, !dbg !41
  %9 = and i64 %8, 7, !dbg !41
  %10 = icmp eq i64 %9, 0, !dbg !41
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !42
  br i1 %10, label %12, label %11, !dbg !42

; <label>:11:                                     ; preds = %5
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !43
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !43
  br label %143, !dbg !43

; <label>:12:                                     ; preds = %5
  %13 = bitcast i8* %0 to i64*, !dbg !44
  %14 = bitcast i8* %1 to i64*, !dbg !47
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !49
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !49
  %15 = add i64 %2, -32, !dbg !50
  %16 = and i64 %15, -32, !dbg !50
  %17 = add i64 %16, 32, !dbg !50
  %18 = getelementptr i8, i8* %1, i64 %17, !dbg !50
  %19 = getelementptr i8, i8* %0, i64 %17, !dbg !50
  %20 = and i64 %15, 32, !dbg !50
  %21 = icmp eq i64 %20, 0, !dbg !50
  br i1 %21, label %22, label %44, !dbg !50

; <label>:22:                                     ; preds = %12
  %23 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !50
  %24 = bitcast i8* %23 to i64*, !dbg !50
  %25 = load i64, i64* %14, align 8, !dbg !52, !tbaa !53
  %26 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !57
  %27 = bitcast i8* %26 to i64*, !dbg !57
  store i64 %25, i64* %13, align 8, !dbg !58, !tbaa !53
  %28 = getelementptr inbounds i8, i8* %1, i64 16, !dbg !59
  %29 = bitcast i8* %28 to i64*, !dbg !59
  %30 = load i64, i64* %24, align 8, !dbg !60, !tbaa !53
  %31 = getelementptr inbounds i8, i8* %0, i64 16, !dbg !61
  %32 = bitcast i8* %31 to i64*, !dbg !61
  store i64 %30, i64* %27, align 8, !dbg !62, !tbaa !53
  %33 = getelementptr inbounds i8, i8* %1, i64 24, !dbg !63
  %34 = bitcast i8* %33 to i64*, !dbg !63
  %35 = load i64, i64* %29, align 8, !dbg !64, !tbaa !53
  %36 = getelementptr inbounds i8, i8* %0, i64 24, !dbg !65
  %37 = bitcast i8* %36 to i64*, !dbg !65
  store i64 %35, i64* %32, align 8, !dbg !66, !tbaa !53
  %38 = getelementptr inbounds i8, i8* %1, i64 32, !dbg !67
  %39 = bitcast i8* %38 to i64*, !dbg !67
  %40 = load i64, i64* %34, align 8, !dbg !68, !tbaa !53
  %41 = getelementptr inbounds i8, i8* %0, i64 32, !dbg !69
  %42 = bitcast i8* %41 to i64*, !dbg !69
  store i64 %40, i64* %37, align 8, !dbg !70, !tbaa !53
  %43 = add i64 %2, -32, !dbg !71
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !49
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !49
  br label %44, !dbg !49

; <label>:44:                                     ; preds = %22, %12
  %45 = phi i64* [ %14, %12 ], [ %39, %22 ]
  %46 = phi i64* [ %13, %12 ], [ %42, %22 ]
  %47 = phi i64 [ %2, %12 ], [ %43, %22 ]
  %48 = icmp ult i64 %15, 32, !dbg !50
  br i1 %48, label %49, label %81, !dbg !50

; <label>:49:                                     ; preds = %81, %44
  %50 = bitcast i8* %18 to i64*
  %51 = bitcast i8* %19 to i64*
  %52 = sub i64 %15, %16, !dbg !50
  %53 = icmp ugt i64 %52, 7, !dbg !72
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !73
  br i1 %53, label %54, label %132, !dbg !73

; <label>:54:                                     ; preds = %49
  %55 = add i64 %52, -8, !dbg !74
  %56 = lshr i64 %55, 3, !dbg !74
  %57 = add nuw nsw i64 %56, 1, !dbg !74
  %58 = getelementptr i64, i64* %50, i64 %57, !dbg !74
  %59 = add i64 %2, -40, !dbg !74
  %60 = sub i64 %59, %16, !dbg !74
  %61 = lshr i64 %60, 3, !dbg !74
  %62 = add nuw nsw i64 %61, 1, !dbg !74
  %63 = and i64 %62, 3, !dbg !74
  %64 = icmp eq i64 %63, 0, !dbg !74
  br i1 %64, label %76, label %65, !dbg !74

; <label>:65:                                     ; preds = %54, %65
  %66 = phi i64* [ %70, %65 ], [ %50, %54 ]
  %67 = phi i64* [ %72, %65 ], [ %51, %54 ]
  %68 = phi i64 [ %73, %65 ], [ %52, %54 ]
  %69 = phi i64 [ %74, %65 ], [ %63, %54 ]
  %70 = getelementptr inbounds i64, i64* %66, i64 1, !dbg !74
  %71 = load i64, i64* %66, align 8, !dbg !76, !tbaa !53
  %72 = getelementptr inbounds i64, i64* %67, i64 1, !dbg !77
  store i64 %71, i64* %67, align 8, !dbg !78, !tbaa !53
  %73 = add i64 %68, -8, !dbg !79
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !73
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !73
  %74 = add i64 %69, -1, !dbg !73
  %75 = icmp eq i64 %74, 0, !dbg !73
  br i1 %75, label %76, label %65, !dbg !73, !llvm.loop !80

; <label>:76:                                     ; preds = %65, %54
  %77 = phi i64* [ %50, %54 ], [ %70, %65 ]
  %78 = phi i64* [ %51, %54 ], [ %72, %65 ]
  %79 = phi i64 [ %52, %54 ], [ %73, %65 ]
  %80 = icmp ult i64 %60, 24, !dbg !74
  br i1 %80, label %129, label %111, !dbg !74

; <label>:81:                                     ; preds = %44, %81
  %82 = phi i64* [ %106, %81 ], [ %45, %44 ]
  %83 = phi i64* [ %108, %81 ], [ %46, %44 ]
  %84 = phi i64 [ %109, %81 ], [ %47, %44 ]
  %85 = getelementptr inbounds i64, i64* %82, i64 1, !dbg !50
  %86 = load i64, i64* %82, align 8, !dbg !52, !tbaa !53
  %87 = getelementptr inbounds i64, i64* %83, i64 1, !dbg !57
  store i64 %86, i64* %83, align 8, !dbg !58, !tbaa !53
  %88 = getelementptr inbounds i64, i64* %82, i64 2, !dbg !59
  %89 = load i64, i64* %85, align 8, !dbg !60, !tbaa !53
  %90 = getelementptr inbounds i64, i64* %83, i64 2, !dbg !61
  store i64 %89, i64* %87, align 8, !dbg !62, !tbaa !53
  %91 = getelementptr inbounds i64, i64* %82, i64 3, !dbg !63
  %92 = load i64, i64* %88, align 8, !dbg !64, !tbaa !53
  %93 = getelementptr inbounds i64, i64* %83, i64 3, !dbg !65
  store i64 %92, i64* %90, align 8, !dbg !66, !tbaa !53
  %94 = getelementptr inbounds i64, i64* %82, i64 4, !dbg !67
  %95 = load i64, i64* %91, align 8, !dbg !68, !tbaa !53
  %96 = getelementptr inbounds i64, i64* %83, i64 4, !dbg !69
  store i64 %95, i64* %93, align 8, !dbg !70, !tbaa !53
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !49
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !49
  %97 = getelementptr inbounds i64, i64* %82, i64 5, !dbg !50
  %98 = load i64, i64* %94, align 8, !dbg !52, !tbaa !53
  %99 = getelementptr inbounds i64, i64* %83, i64 5, !dbg !57
  store i64 %98, i64* %96, align 8, !dbg !58, !tbaa !53
  %100 = getelementptr inbounds i64, i64* %82, i64 6, !dbg !59
  %101 = load i64, i64* %97, align 8, !dbg !60, !tbaa !53
  %102 = getelementptr inbounds i64, i64* %83, i64 6, !dbg !61
  store i64 %101, i64* %99, align 8, !dbg !62, !tbaa !53
  %103 = getelementptr inbounds i64, i64* %82, i64 7, !dbg !63
  %104 = load i64, i64* %100, align 8, !dbg !64, !tbaa !53
  %105 = getelementptr inbounds i64, i64* %83, i64 7, !dbg !65
  store i64 %104, i64* %102, align 8, !dbg !66, !tbaa !53
  %106 = getelementptr inbounds i64, i64* %82, i64 8, !dbg !67
  %107 = load i64, i64* %103, align 8, !dbg !68, !tbaa !53
  %108 = getelementptr inbounds i64, i64* %83, i64 8, !dbg !69
  store i64 %107, i64* %105, align 8, !dbg !70, !tbaa !53
  %109 = add i64 %84, -64, !dbg !71
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !49
  %110 = icmp ugt i64 %109, 31, !dbg !82
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !49
  br i1 %110, label %81, label %49, !dbg !49, !llvm.loop !83

; <label>:111:                                    ; preds = %76, %111
  %112 = phi i64* [ %124, %111 ], [ %77, %76 ]
  %113 = phi i64* [ %126, %111 ], [ %78, %76 ]
  %114 = phi i64 [ %127, %111 ], [ %79, %76 ]
  %115 = getelementptr inbounds i64, i64* %112, i64 1, !dbg !74
  %116 = load i64, i64* %112, align 8, !dbg !76, !tbaa !53
  %117 = getelementptr inbounds i64, i64* %113, i64 1, !dbg !77
  store i64 %116, i64* %113, align 8, !dbg !78, !tbaa !53
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !73
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !73
  %118 = getelementptr inbounds i64, i64* %112, i64 2, !dbg !74
  %119 = load i64, i64* %115, align 8, !dbg !76, !tbaa !53
  %120 = getelementptr inbounds i64, i64* %113, i64 2, !dbg !77
  store i64 %119, i64* %117, align 8, !dbg !78, !tbaa !53
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !73
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !73
  %121 = getelementptr inbounds i64, i64* %112, i64 3, !dbg !74
  %122 = load i64, i64* %118, align 8, !dbg !76, !tbaa !53
  %123 = getelementptr inbounds i64, i64* %113, i64 3, !dbg !77
  store i64 %122, i64* %120, align 8, !dbg !78, !tbaa !53
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !73
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !73
  %124 = getelementptr inbounds i64, i64* %112, i64 4, !dbg !74
  %125 = load i64, i64* %121, align 8, !dbg !76, !tbaa !53
  %126 = getelementptr inbounds i64, i64* %113, i64 4, !dbg !77
  store i64 %125, i64* %123, align 8, !dbg !78, !tbaa !53
  %127 = add i64 %114, -32, !dbg !79
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !73
  %128 = icmp ugt i64 %127, 7, !dbg !72
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !73
  br i1 %128, label %111, label %129, !dbg !73, !llvm.loop !85

; <label>:129:                                    ; preds = %111, %76
  %130 = getelementptr i64, i64* %51, i64 %57, !dbg !74
  %131 = and i64 %55, 7, !dbg !74
  br label %132, !dbg !87

; <label>:132:                                    ; preds = %129, %49
  %133 = phi i64 [ %52, %49 ], [ %131, %129 ]
  %134 = phi i64* [ %51, %49 ], [ %130, %129 ], !dbg !88
  %135 = phi i64* [ %50, %49 ], [ %58, %129 ], !dbg !88
  %136 = bitcast i64* %134 to i8*, !dbg !87
  %137 = bitcast i64* %135 to i8*, !dbg !89
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !90
  br label %138, !dbg !90

; <label>:138:                                    ; preds = %132, %3
  %139 = phi i64 [ %2, %3 ], [ %133, %132 ]
  %140 = phi i8* [ %0, %3 ], [ %136, %132 ], !dbg !91
  %141 = phi i8* [ %1, %3 ], [ %137, %132 ], !dbg !91
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !43
  %142 = icmp eq i64 %139, 0, !dbg !43
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !43
  br i1 %142, label %186, label %143, !dbg !43

; <label>:143:                                    ; preds = %11, %138
  %144 = phi i8* [ %1, %11 ], [ %141, %138 ]
  %145 = phi i8* [ %0, %11 ], [ %140, %138 ]
  %146 = phi i64 [ %2, %11 ], [ %139, %138 ]
  %147 = add i64 %146, -1, !dbg !92
  %148 = and i64 %146, 3, !dbg !92
  %149 = icmp eq i64 %148, 0, !dbg !92
  br i1 %149, label %161, label %150, !dbg !92

; <label>:150:                                    ; preds = %143, %150
  %151 = phi i8* [ %156, %150 ], [ %144, %143 ]
  %152 = phi i8* [ %158, %150 ], [ %145, %143 ]
  %153 = phi i64 [ %155, %150 ], [ %146, %143 ]
  %154 = phi i64 [ %159, %150 ], [ %148, %143 ]
  %155 = add i64 %153, -1, !dbg !92
  %156 = getelementptr inbounds i8, i8* %151, i64 1, !dbg !93
  %157 = load i8, i8* %151, align 1, !dbg !94, !tbaa !95
  %158 = getelementptr inbounds i8, i8* %152, i64 1, !dbg !96
  store i8 %157, i8* %152, align 1, !dbg !97, !tbaa !95
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !43
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !43
  %159 = add i64 %154, -1, !dbg !43
  %160 = icmp eq i64 %159, 0, !dbg !43
  br i1 %160, label %161, label %150, !dbg !43, !llvm.loop !98

; <label>:161:                                    ; preds = %150, %143
  %162 = phi i8* [ %144, %143 ], [ %156, %150 ]
  %163 = phi i8* [ %145, %143 ], [ %158, %150 ]
  %164 = phi i64 [ %146, %143 ], [ %155, %150 ]
  %165 = icmp ult i64 %147, 3, !dbg !92
  br i1 %165, label %184, label %166, !dbg !92

; <label>:166:                                    ; preds = %161, %166
  %167 = phi i8* [ %180, %166 ], [ %162, %161 ]
  %168 = phi i8* [ %182, %166 ], [ %163, %161 ]
  %169 = phi i64 [ %179, %166 ], [ %164, %161 ]
  %170 = getelementptr inbounds i8, i8* %167, i64 1, !dbg !93
  %171 = load i8, i8* %167, align 1, !dbg !94, !tbaa !95
  %172 = getelementptr inbounds i8, i8* %168, i64 1, !dbg !96
  store i8 %171, i8* %168, align 1, !dbg !97, !tbaa !95
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !43
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !43
  %173 = getelementptr inbounds i8, i8* %167, i64 2, !dbg !93
  %174 = load i8, i8* %170, align 1, !dbg !94, !tbaa !95
  %175 = getelementptr inbounds i8, i8* %168, i64 2, !dbg !96
  store i8 %174, i8* %172, align 1, !dbg !97, !tbaa !95
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !43
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !43
  %176 = getelementptr inbounds i8, i8* %167, i64 3, !dbg !93
  %177 = load i8, i8* %173, align 1, !dbg !94, !tbaa !95
  %178 = getelementptr inbounds i8, i8* %168, i64 3, !dbg !96
  store i8 %177, i8* %175, align 1, !dbg !97, !tbaa !95
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !43
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !43
  %179 = add i64 %169, -4, !dbg !92
  %180 = getelementptr inbounds i8, i8* %167, i64 4, !dbg !93
  %181 = load i8, i8* %176, align 1, !dbg !94, !tbaa !95
  %182 = getelementptr inbounds i8, i8* %168, i64 4, !dbg !96
  store i8 %181, i8* %178, align 1, !dbg !97, !tbaa !95
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !43
  %183 = icmp eq i64 %179, 0, !dbg !43
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !43
  br i1 %183, label %184, label %166, !dbg !43, !llvm.loop !99

; <label>:184:                                    ; preds = %166, %161
  %185 = getelementptr i8, i8* %145, i64 %146, !dbg !92
  br label %186, !dbg !100

; <label>:186:                                    ; preds = %184, %138
  %187 = phi i8* [ %140, %138 ], [ %185, %184 ], !dbg !101
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !100
  ret i8* %187, !dbg !100
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/mempcpy.c", directory: "/root/.unikraft/apps/redis/build")
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
!12 = distinct !DISubprogram(name: "mempcpy", scope: !1, file: !1, line: 52, type: !13, isLocal: false, isDefinition: true, scopeLine: 56, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !23)
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
!24 = !DILocalVariable(name: "dst0", arg: 1, scope: !12, file: !1, line: 52, type: !15)
!25 = !DILocalVariable(name: "src0", arg: 2, scope: !12, file: !1, line: 52, type: !16)
!26 = !DILocalVariable(name: "len0", arg: 3, scope: !12, file: !1, line: 52, type: !18)
!27 = !DILocalVariable(name: "dst", scope: !12, file: !1, line: 68, type: !6)
!28 = !DILocalVariable(name: "src", scope: !12, file: !1, line: 69, type: !29)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!31 = !DILocalVariable(name: "aligned_dst", scope: !12, file: !1, line: 70, type: !5)
!32 = !DILocalVariable(name: "aligned_src", scope: !12, file: !1, line: 71, type: !33)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!35 = !DILocation(line: 52, column: 1, scope: !12)
!36 = !DILocation(line: 68, column: 9, scope: !12)
!37 = !DILocation(line: 69, column: 16, scope: !12)
!38 = !DILocation(line: 75, column: 8, scope: !39)
!39 = distinct !DILexicalBlock(scope: !12, file: !1, line: 75, column: 7)
!40 = !DILocation(line: 75, column: 24, scope: !39)
!41 = !DILocation(line: 75, column: 28, scope: !39)
!42 = !DILocation(line: 75, column: 7, scope: !12)
!43 = !DILocation(line: 102, column: 3, scope: !12)
!44 = !DILocation(line: 77, column: 21, scope: !45)
!45 = distinct !DILexicalBlock(scope: !39, file: !1, line: 76, column: 5)
!46 = !DILocation(line: 70, column: 9, scope: !12)
!47 = !DILocation(line: 78, column: 21, scope: !45)
!48 = !DILocation(line: 71, column: 16, scope: !12)
!49 = !DILocation(line: 81, column: 7, scope: !45)
!50 = !DILocation(line: 83, column: 40, scope: !51)
!51 = distinct !DILexicalBlock(scope: !45, file: !1, line: 82, column: 9)
!52 = !DILocation(line: 83, column: 28, scope: !51)
!53 = !{!54, !54, i64 0}
!54 = !{!"long", !55, i64 0}
!55 = !{!"omnipotent char", !56, i64 0}
!56 = !{!"Simple C/C++ TBAA"}
!57 = !DILocation(line: 83, column: 23, scope: !51)
!58 = !DILocation(line: 83, column: 26, scope: !51)
!59 = !DILocation(line: 84, column: 40, scope: !51)
!60 = !DILocation(line: 84, column: 28, scope: !51)
!61 = !DILocation(line: 84, column: 23, scope: !51)
!62 = !DILocation(line: 84, column: 26, scope: !51)
!63 = !DILocation(line: 85, column: 40, scope: !51)
!64 = !DILocation(line: 85, column: 28, scope: !51)
!65 = !DILocation(line: 85, column: 23, scope: !51)
!66 = !DILocation(line: 85, column: 26, scope: !51)
!67 = !DILocation(line: 86, column: 40, scope: !51)
!68 = !DILocation(line: 86, column: 28, scope: !51)
!69 = !DILocation(line: 86, column: 23, scope: !51)
!70 = !DILocation(line: 86, column: 26, scope: !51)
!71 = !DILocation(line: 87, column: 16, scope: !51)
!72 = !DILocation(line: 91, column: 19, scope: !45)
!73 = !DILocation(line: 91, column: 7, scope: !45)
!74 = !DILocation(line: 93, column: 40, scope: !75)
!75 = distinct !DILexicalBlock(scope: !45, file: !1, line: 92, column: 9)
!76 = !DILocation(line: 93, column: 28, scope: !75)
!77 = !DILocation(line: 93, column: 23, scope: !75)
!78 = !DILocation(line: 93, column: 26, scope: !75)
!79 = !DILocation(line: 94, column: 16, scope: !75)
!80 = distinct !{!80, !81}
!81 = !{!"llvm.loop.unroll.disable"}
!82 = !DILocation(line: 81, column: 19, scope: !45)
!83 = distinct !{!83, !49, !84}
!84 = !DILocation(line: 88, column: 9, scope: !45)
!85 = distinct !{!85, !73, !86}
!86 = !DILocation(line: 95, column: 9, scope: !45)
!87 = !DILocation(line: 98, column: 13, scope: !45)
!88 = !DILocation(line: 0, scope: !75)
!89 = !DILocation(line: 99, column: 13, scope: !45)
!90 = !DILocation(line: 100, column: 5, scope: !45)
!91 = !DILocation(line: 0, scope: !45)
!92 = !DILocation(line: 102, column: 14, scope: !12)
!93 = !DILocation(line: 103, column: 18, scope: !12)
!94 = !DILocation(line: 103, column: 14, scope: !12)
!95 = !{!55, !55, i64 0}
!96 = !DILocation(line: 103, column: 9, scope: !12)
!97 = !DILocation(line: 103, column: 12, scope: !12)
!98 = distinct !{!98, !81}
!99 = distinct !{!99, !43, !93}
!100 = !DILocation(line: 105, column: 3, scope: !12)
!101 = !DILocation(line: 0, scope: !12)
