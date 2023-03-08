; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/posix/regerror.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/posix/regerror.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.rerr = type { i32, i8*, i8* }
%struct.regex_t = type { i32, i64, i8*, %struct.re_guts* }
%struct.re_guts = type opaque

@rerrs = internal unnamed_addr constant [17 x %struct.rerr] [%struct.rerr { i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0) }, %struct.rerr { i32 2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i32 0, i32 0) }, %struct.rerr { i32 3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i32 0, i32 0) }, %struct.rerr { i32 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i32 0, i32 0) }, %struct.rerr { i32 5, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i32 0, i32 0) }, %struct.rerr { i32 6, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i32 0, i32 0) }, %struct.rerr { i32 7, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i32 0, i32 0) }, %struct.rerr { i32 8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i32 0, i32 0) }, %struct.rerr { i32 9, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i32 0, i32 0) }, %struct.rerr { i32 10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.20, i32 0, i32 0) }, %struct.rerr { i32 11, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.22, i32 0, i32 0) }, %struct.rerr { i32 12, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i32 0, i32 0) }, %struct.rerr { i32 13, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.26, i32 0, i32 0) }, %struct.rerr { i32 14, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.28, i32 0, i32 0) }, %struct.rerr { i32 15, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.30, i32 0, i32 0) }, %struct.rerr { i32 16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.32, i32 0, i32 0) }, %struct.rerr { i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.34, i32 0, i32 0) }], align 16, !dbg !0
@.str = private unnamed_addr constant [9 x i8] c"REG_0x%x\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"REG_NOMATCH\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"regexec() failed to match\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"REG_BADPAT\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"invalid regular expression\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"REG_ECOLLATE\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"invalid collating element\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"REG_ECTYPE\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"invalid character class\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"REG_EESCAPE\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"trailing backslash (\5C)\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"REG_ESUBREG\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"invalid backreference number\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"REG_EBRACK\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"brackets ([ ]) not balanced\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"REG_EPAREN\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"parentheses not balanced\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"REG_EBRACE\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"braces not balanced\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"REG_BADBR\00", align 1
@.str.20 = private unnamed_addr constant [28 x i8] c"invalid repetition count(s)\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"REG_ERANGE\00", align 1
@.str.22 = private unnamed_addr constant [24 x i8] c"invalid character range\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"REG_ESPACE\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"REG_BADRPT\00", align 1
@.str.26 = private unnamed_addr constant [36 x i8] c"repetition-operator operand invalid\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"REG_EMPTY\00", align 1
@.str.28 = private unnamed_addr constant [22 x i8] c"empty (sub)expression\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"REG_ASSERT\00", align 1
@.str.30 = private unnamed_addr constant [34 x i8] c"\22can't happen\22 -- you found a bug\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"REG_INVARG\00", align 1
@.str.32 = private unnamed_addr constant [34 x i8] c"invalid argument to regex routine\00", align 1
@.str.33 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.34 = private unnamed_addr constant [34 x i8] c"*** unknown regexp error code ***\00", align 1
@.str.35 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noredzone nounwind
define dso_local i64 @regerror(i32, %struct.regex_t* noalias nocapture readonly, i8* noalias, i64) local_unnamed_addr #0 !dbg !21 {
  %5 = alloca [50 x i8], align 16
  %6 = and i32 %0, -257, !dbg !63
  %7 = getelementptr inbounds [50 x i8], [50 x i8]* %5, i64 0, i64 0, !dbg !65
  call void @llvm.lifetime.start.p0i8(i64 50, i8* nonnull %7) #4, !dbg !65
  %8 = icmp eq i32 %0, 255, !dbg !67
  br i1 %8, label %9, label %65, !dbg !69

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds %struct.regex_t, %struct.regex_t* %1, i64 0, i32 2
  %11 = load i8*, i8** %10, align 8, !dbg !81, !tbaa !85
  %12 = tail call i32 @strcmp(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %11) #5, !dbg !92
  %13 = icmp eq i32 %12, 0, !dbg !93
  br i1 %13, label %17, label %14, !dbg !94

; <label>:14:                                     ; preds = %9
  %15 = tail call i32 @strcmp(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %11) #5, !dbg !92
  %16 = icmp eq i32 %15, 0, !dbg !93
  br i1 %16, label %17, label %23, !dbg !94

; <label>:17:                                     ; preds = %62, %59, %56, %53, %50, %47, %44, %41, %38, %35, %32, %29, %26, %23, %14, %9
  %18 = phi i32* [ getelementptr inbounds ([17 x %struct.rerr], [17 x %struct.rerr]* @rerrs, i64 0, i64 0, i32 0), %9 ], [ getelementptr inbounds ([17 x %struct.rerr], [17 x %struct.rerr]* @rerrs, i64 0, i64 1, i32 0), %14 ], [ getelementptr inbounds ([17 x %struct.rerr], [17 x %struct.rerr]* @rerrs, i64 0, i64 2, i32 0), %23 ], [ getelementptr inbounds ([17 x %struct.rerr], [17 x %struct.rerr]* @rerrs, i64 0, i64 3, i32 0), %26 ], [ getelementptr inbounds ([17 x %struct.rerr], [17 x %struct.rerr]* @rerrs, i64 0, i64 4, i32 0), %29 ], [ getelementptr inbounds ([17 x %struct.rerr], [17 x %struct.rerr]* @rerrs, i64 0, i64 5, i32 0), %32 ], [ getelementptr inbounds ([17 x %struct.rerr], [17 x %struct.rerr]* @rerrs, i64 0, i64 6, i32 0), %35 ], [ getelementptr inbounds ([17 x %struct.rerr], [17 x %struct.rerr]* @rerrs, i64 0, i64 7, i32 0), %38 ], [ getelementptr inbounds ([17 x %struct.rerr], [17 x %struct.rerr]* @rerrs, i64 0, i64 8, i32 0), %41 ], [ getelementptr inbounds ([17 x %struct.rerr], [17 x %struct.rerr]* @rerrs, i64 0, i64 9, i32 0), %44 ], [ getelementptr inbounds ([17 x %struct.rerr], [17 x %struct.rerr]* @rerrs, i64 0, i64 10, i32 0), %47 ], [ getelementptr inbounds ([17 x %struct.rerr], [17 x %struct.rerr]* @rerrs, i64 0, i64 11, i32 0), %50 ], [ getelementptr inbounds ([17 x %struct.rerr], [17 x %struct.rerr]* @rerrs, i64 0, i64 12, i32 0), %53 ], [ getelementptr inbounds ([17 x %struct.rerr], [17 x %struct.rerr]* @rerrs, i64 0, i64 13, i32 0), %56 ], [ getelementptr inbounds ([17 x %struct.rerr], [17 x %struct.rerr]* @rerrs, i64 0, i64 14, i32 0), %59 ], [ getelementptr inbounds ([17 x %struct.rerr], [17 x %struct.rerr]* @rerrs, i64 0, i64 15, i32 0), %62 ]
  %19 = load i32, i32* %18, align 8, !dbg !95, !tbaa !97
  %20 = icmp eq i32 %19, 0, !dbg !99
  br i1 %20, label %86, label %21, !dbg !100

; <label>:21:                                     ; preds = %17
  %22 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i64 0, i64 0), i32 %19) #5, !dbg !101
  br label %86, !dbg !102

; <label>:23:                                     ; preds = %14
  %24 = tail call i32 @strcmp(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* %11) #5, !dbg !92
  %25 = icmp eq i32 %24, 0, !dbg !93
  br i1 %25, label %17, label %26, !dbg !94

; <label>:26:                                     ; preds = %23
  %27 = tail call i32 @strcmp(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i8* %11) #5, !dbg !92
  %28 = icmp eq i32 %27, 0, !dbg !93
  br i1 %28, label %17, label %29, !dbg !94

; <label>:29:                                     ; preds = %26
  %30 = tail call i32 @strcmp(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i8* %11) #5, !dbg !92
  %31 = icmp eq i32 %30, 0, !dbg !93
  br i1 %31, label %17, label %32, !dbg !94

; <label>:32:                                     ; preds = %29
  %33 = tail call i32 @strcmp(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i8* %11) #5, !dbg !92
  %34 = icmp eq i32 %33, 0, !dbg !93
  br i1 %34, label %17, label %35, !dbg !94

; <label>:35:                                     ; preds = %32
  %36 = tail call i32 @strcmp(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i8* %11) #5, !dbg !92
  %37 = icmp eq i32 %36, 0, !dbg !93
  br i1 %37, label %17, label %38, !dbg !94

; <label>:38:                                     ; preds = %35
  %39 = tail call i32 @strcmp(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0), i8* %11) #5, !dbg !92
  %40 = icmp eq i32 %39, 0, !dbg !93
  br i1 %40, label %17, label %41, !dbg !94

; <label>:41:                                     ; preds = %38
  %42 = tail call i32 @strcmp(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0), i8* %11) #5, !dbg !92
  %43 = icmp eq i32 %42, 0, !dbg !93
  br i1 %43, label %17, label %44, !dbg !94

; <label>:44:                                     ; preds = %41
  %45 = tail call i32 @strcmp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0), i8* %11) #5, !dbg !92
  %46 = icmp eq i32 %45, 0, !dbg !93
  br i1 %46, label %17, label %47, !dbg !94

; <label>:47:                                     ; preds = %44
  %48 = tail call i32 @strcmp(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i64 0, i64 0), i8* %11) #5, !dbg !92
  %49 = icmp eq i32 %48, 0, !dbg !93
  br i1 %49, label %17, label %50, !dbg !94

; <label>:50:                                     ; preds = %47
  %51 = tail call i32 @strcmp(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i64 0, i64 0), i8* %11) #5, !dbg !92
  %52 = icmp eq i32 %51, 0, !dbg !93
  br i1 %52, label %17, label %53, !dbg !94

; <label>:53:                                     ; preds = %50
  %54 = tail call i32 @strcmp(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0), i8* %11) #5, !dbg !92
  %55 = icmp eq i32 %54, 0, !dbg !93
  br i1 %55, label %17, label %56, !dbg !94

; <label>:56:                                     ; preds = %53
  %57 = tail call i32 @strcmp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i64 0, i64 0), i8* %11) #5, !dbg !92
  %58 = icmp eq i32 %57, 0, !dbg !93
  br i1 %58, label %17, label %59, !dbg !94

; <label>:59:                                     ; preds = %56
  %60 = tail call i32 @strcmp(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i64 0, i64 0), i8* %11) #5, !dbg !92
  %61 = icmp eq i32 %60, 0, !dbg !93
  br i1 %61, label %17, label %62, !dbg !94

; <label>:62:                                     ; preds = %59
  %63 = tail call i32 @strcmp(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i64 0, i64 0), i8* %11) #5, !dbg !92
  %64 = icmp eq i32 %63, 0, !dbg !93
  br i1 %64, label %17, label %86, !dbg !94

; <label>:65:                                     ; preds = %4, %65
  %66 = phi %struct.rerr* [ %72, %65 ], [ getelementptr inbounds ([17 x %struct.rerr], [17 x %struct.rerr]* @rerrs, i64 0, i64 0), %4 ], !dbg !103
  %67 = getelementptr inbounds %struct.rerr, %struct.rerr* %66, i64 0, i32 0, !dbg !108
  %68 = load i32, i32* %67, align 8, !dbg !108, !tbaa !97
  %69 = icmp eq i32 %68, 0, !dbg !109
  %70 = icmp eq i32 %68, %6, !dbg !110
  %71 = or i1 %69, %70, !dbg !112
  %72 = getelementptr inbounds %struct.rerr, %struct.rerr* %66, i64 1, !dbg !113
  br i1 %71, label %73, label %65, !dbg !112, !llvm.loop !114

; <label>:73:                                     ; preds = %65
  %74 = and i32 %0, 256, !dbg !116
  %75 = icmp eq i32 %74, 0, !dbg !116
  br i1 %75, label %83, label %76, !dbg !118

; <label>:76:                                     ; preds = %73
  br i1 %69, label %81, label %77, !dbg !119

; <label>:77:                                     ; preds = %76
  %78 = getelementptr inbounds %struct.rerr, %struct.rerr* %66, i64 0, i32 1, !dbg !121
  %79 = load i8*, i8** %78, align 8, !dbg !121, !tbaa !123
  %80 = call i8* @strcpy(i8* nonnull %7, i8* %79) #5, !dbg !124
  br label %86, !dbg !125

; <label>:81:                                     ; preds = %76
  %82 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %6) #5, !dbg !126
  br label %86

; <label>:83:                                     ; preds = %73
  %84 = getelementptr inbounds %struct.rerr, %struct.rerr* %66, i64 0, i32 2, !dbg !127
  %85 = load i8*, i8** %84, align 8, !dbg !127, !tbaa !128
  br label %86

; <label>:86:                                     ; preds = %62, %21, %17, %77, %81, %83
  %87 = phi i8* [ %85, %83 ], [ %7, %81 ], [ %7, %77 ], [ %7, %21 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i64 0, i64 0), %17 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i64 0, i64 0), %62 ], !dbg !130
  %88 = call i64 @strlen(i8* %87) #5, !dbg !131
  %89 = add i64 %88, 1, !dbg !132
  %90 = icmp eq i64 %3, 0, !dbg !134
  br i1 %90, label %99, label %91, !dbg !136

; <label>:91:                                     ; preds = %86
  %92 = icmp ult i64 %89, %3, !dbg !137
  br i1 %92, label %93, label %95, !dbg !140

; <label>:93:                                     ; preds = %91
  %94 = call i8* @strcpy(i8* %2, i8* %87) #5, !dbg !141
  br label %99, !dbg !142

; <label>:95:                                     ; preds = %91
  %96 = add i64 %3, -1, !dbg !143
  %97 = call i8* @strncpy(i8* %2, i8* %87, i64 %96) #5, !dbg !145
  %98 = getelementptr inbounds i8, i8* %2, i64 %96, !dbg !146
  store i8 0, i8* %98, align 1, !dbg !147, !tbaa !148
  br label %99

; <label>:99:                                     ; preds = %86, %93, %95
  call void @llvm.lifetime.end.p0i8(i64 50, i8* nonnull %7) #4, !dbg !149
  ret i64 %89, !dbg !150
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local i8* @strcpy(i8*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @sprintf(i8*, i8*, ...) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @strncpy(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local i32 @strcmp(i8*, i8*) local_unnamed_addr #3

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!17, !18, !19}
!llvm.ident = !{!20}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "rerrs", scope: !2, file: !3, line: 88, type: !6, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/posix/regerror.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !{}
!5 = !{!0}
!6 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 3264, elements: !15)
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rerr", file: !3, line: 84, size: 192, elements: !8)
!8 = !{!9, !11, !14}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !7, file: !3, line: 85, baseType: !10, size: 32)
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !7, file: !3, line: 86, baseType: !12, size: 64, offset: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "explain", scope: !7, file: !3, line: 87, baseType: !12, size: 64, offset: 128)
!15 = !{!16}
!16 = !DISubrange(count: 17)
!17 = !{i32 2, !"Dwarf Version", i32 4}
!18 = !{i32 2, !"Debug Info Version", i32 3}
!19 = !{i32 1, !"wchar_size", i32 4}
!20 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!21 = distinct !DISubprogram(name: "regerror", scope: !3, file: !3, line: 115, type: !22, isLocal: false, isDefinition: true, scopeLine: 120, isOptimized: true, unit: !2, retainedNodes: !45)
!22 = !DISubroutineType(types: !23)
!23 = !{!24, !10, !29, !44, !24}
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !25, line: 40, baseType: !26)
!25 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !27, line: 129, baseType: !28)
!27 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!28 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!29 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !30)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !32)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "regex_t", file: !33, line: 50, baseType: !34)
!33 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/regex.h", directory: "/root/.unikraft/apps/redis/build")
!34 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !33, line: 45, size: 256, elements: !35)
!35 = !{!36, !37, !38, !41}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "re_magic", scope: !34, file: !33, line: 46, baseType: !10, size: 32)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "re_nsub", scope: !34, file: !33, line: 47, baseType: !24, size: 64, offset: 64)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "re_endp", scope: !34, file: !33, line: 48, baseType: !39, size: 64, offset: 128)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "re_g", scope: !34, file: !33, line: 49, baseType: !42, size: 64, offset: 192)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DICompositeType(tag: DW_TAG_structure_type, name: "re_guts", file: !33, line: 49, flags: DIFlagFwdDecl)
!44 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !12)
!45 = !{!46, !47, !48, !49, !50, !52, !53, !54, !55}
!46 = !DILocalVariable(name: "errcode", arg: 1, scope: !21, file: !3, line: 116, type: !10)
!47 = !DILocalVariable(name: "preg", arg: 2, scope: !21, file: !3, line: 117, type: !29)
!48 = !DILocalVariable(name: "errbuf", arg: 3, scope: !21, file: !3, line: 118, type: !44)
!49 = !DILocalVariable(name: "errbuf_size", arg: 4, scope: !21, file: !3, line: 119, type: !24)
!50 = !DILocalVariable(name: "r", scope: !21, file: !3, line: 121, type: !51)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!52 = !DILocalVariable(name: "len", scope: !21, file: !3, line: 122, type: !24)
!53 = !DILocalVariable(name: "target", scope: !21, file: !3, line: 123, type: !10)
!54 = !DILocalVariable(name: "s", scope: !21, file: !3, line: 124, type: !12)
!55 = !DILocalVariable(name: "convbuf", scope: !21, file: !3, line: 125, type: !56)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 400, elements: !57)
!57 = !{!58}
!58 = !DISubrange(count: 50)
!59 = !DILocation(line: 116, column: 5, scope: !21)
!60 = !DILocation(line: 117, column: 27, scope: !21)
!61 = !DILocation(line: 118, column: 18, scope: !21)
!62 = !DILocation(line: 119, column: 8, scope: !21)
!63 = !DILocation(line: 123, column: 23, scope: !21)
!64 = !DILocation(line: 123, column: 6, scope: !21)
!65 = !DILocation(line: 125, column: 2, scope: !21)
!66 = !DILocation(line: 125, column: 7, scope: !21)
!67 = !DILocation(line: 127, column: 14, scope: !68)
!68 = distinct !DILexicalBlock(scope: !21, file: !3, line: 127, column: 6)
!69 = !DILocation(line: 127, column: 6, scope: !21)
!70 = !DILocalVariable(name: "preg", arg: 1, scope: !71, file: !3, line: 164, type: !30)
!71 = distinct !DISubprogram(name: "regatoi", scope: !3, file: !3, line: 163, type: !72, isLocal: true, isDefinition: true, scopeLine: 166, isOptimized: true, unit: !2, retainedNodes: !74)
!72 = !DISubroutineType(types: !73)
!73 = !{!12, !30, !12}
!74 = !{!70, !75, !76}
!75 = !DILocalVariable(name: "localbuf", arg: 2, scope: !71, file: !3, line: 165, type: !12)
!76 = !DILocalVariable(name: "r", scope: !71, file: !3, line: 167, type: !51)
!77 = !DILocation(line: 164, column: 16, scope: !71, inlinedAt: !78)
!78 = distinct !DILocation(line: 128, column: 7, scope: !68)
!79 = !DILocation(line: 165, column: 7, scope: !71, inlinedAt: !78)
!80 = !DILocation(line: 167, column: 15, scope: !71, inlinedAt: !78)
!81 = !DILocation(line: 170, column: 29, scope: !82, inlinedAt: !78)
!82 = distinct !DILexicalBlock(scope: !83, file: !3, line: 170, column: 7)
!83 = distinct !DILexicalBlock(scope: !84, file: !3, line: 169, column: 2)
!84 = distinct !DILexicalBlock(scope: !71, file: !3, line: 169, column: 2)
!85 = !{!86, !91, i64 16}
!86 = !{!"", !87, i64 0, !90, i64 8, !91, i64 16, !91, i64 24}
!87 = !{!"int", !88, i64 0}
!88 = !{!"omnipotent char", !89, i64 0}
!89 = !{!"Simple C/C++ TBAA"}
!90 = !{!"long", !88, i64 0}
!91 = !{!"any pointer", !88, i64 0}
!92 = !DILocation(line: 170, column: 7, scope: !82, inlinedAt: !78)
!93 = !DILocation(line: 170, column: 38, scope: !82, inlinedAt: !78)
!94 = !DILocation(line: 170, column: 7, scope: !83, inlinedAt: !78)
!95 = !DILocation(line: 172, column: 9, scope: !96, inlinedAt: !78)
!96 = distinct !DILexicalBlock(scope: !71, file: !3, line: 172, column: 6)
!97 = !{!98, !87, i64 0}
!98 = !{!"rerr", !87, i64 0, !91, i64 8, !91, i64 16}
!99 = !DILocation(line: 172, column: 14, scope: !96, inlinedAt: !78)
!100 = !DILocation(line: 172, column: 6, scope: !71, inlinedAt: !78)
!101 = !DILocation(line: 175, column: 2, scope: !71, inlinedAt: !78)
!102 = !DILocation(line: 176, column: 2, scope: !71, inlinedAt: !78)
!103 = !DILocation(line: 0, scope: !104)
!104 = distinct !DILexicalBlock(scope: !105, file: !3, line: 130, column: 3)
!105 = distinct !DILexicalBlock(scope: !106, file: !3, line: 130, column: 3)
!106 = distinct !DILexicalBlock(scope: !68, file: !3, line: 129, column: 7)
!107 = !DILocation(line: 121, column: 15, scope: !21)
!108 = !DILocation(line: 130, column: 22, scope: !104)
!109 = !DILocation(line: 130, column: 27, scope: !104)
!110 = !DILocation(line: 131, column: 16, scope: !111)
!111 = distinct !DILexicalBlock(scope: !104, file: !3, line: 131, column: 8)
!112 = !DILocation(line: 130, column: 3, scope: !105)
!113 = !DILocation(line: 130, column: 34, scope: !104)
!114 = distinct !{!114, !112, !115}
!115 = !DILocation(line: 132, column: 5, scope: !105)
!116 = !DILocation(line: 134, column: 14, scope: !117)
!117 = distinct !DILexicalBlock(scope: !106, file: !3, line: 134, column: 7)
!118 = !DILocation(line: 134, column: 7, scope: !106)
!119 = !DILocation(line: 135, column: 8, scope: !120)
!120 = distinct !DILexicalBlock(scope: !117, file: !3, line: 134, column: 25)
!121 = !DILocation(line: 136, column: 31, scope: !122)
!122 = distinct !DILexicalBlock(scope: !120, file: !3, line: 135, column: 8)
!123 = !{!98, !91, i64 8}
!124 = !DILocation(line: 136, column: 12, scope: !122)
!125 = !DILocation(line: 136, column: 5, scope: !122)
!126 = !DILocation(line: 138, column: 5, scope: !122)
!127 = !DILocation(line: 142, column: 11, scope: !117)
!128 = !{!98, !91, i64 16}
!129 = !DILocation(line: 124, column: 8, scope: !21)
!130 = !DILocation(line: 0, scope: !117)
!131 = !DILocation(line: 145, column: 8, scope: !21)
!132 = !DILocation(line: 145, column: 18, scope: !21)
!133 = !DILocation(line: 122, column: 9, scope: !21)
!134 = !DILocation(line: 146, column: 18, scope: !135)
!135 = distinct !DILexicalBlock(scope: !21, file: !3, line: 146, column: 6)
!136 = !DILocation(line: 146, column: 6, scope: !21)
!137 = !DILocation(line: 147, column: 19, scope: !138)
!138 = distinct !DILexicalBlock(scope: !139, file: !3, line: 147, column: 7)
!139 = distinct !DILexicalBlock(scope: !135, file: !3, line: 146, column: 23)
!140 = !DILocation(line: 147, column: 7, scope: !139)
!141 = !DILocation(line: 148, column: 11, scope: !138)
!142 = !DILocation(line: 148, column: 4, scope: !138)
!143 = !DILocation(line: 150, column: 41, scope: !144)
!144 = distinct !DILexicalBlock(scope: !138, file: !3, line: 149, column: 8)
!145 = !DILocation(line: 150, column: 11, scope: !144)
!146 = !DILocation(line: 151, column: 4, scope: !144)
!147 = !DILocation(line: 151, column: 26, scope: !144)
!148 = !{!88, !88, i64 0}
!149 = !DILocation(line: 156, column: 1, scope: !21)
!150 = !DILocation(line: 155, column: 2, scope: !21)
