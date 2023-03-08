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
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i64 @regerror(i32, %struct.regex_t* noalias nocapture readonly, i8* noalias, i64) local_unnamed_addr #0 !dbg !21 {
  %5 = alloca [50 x i8], align 16
  %6 = and i32 %0, -257, !dbg !63
  %7 = getelementptr inbounds [50 x i8], [50 x i8]* %5, i64 0, i64 0, !dbg !65
  call void @llvm.lifetime.start.p0i8(i64 50, i8* nonnull %7) #4, !dbg !65
  %8 = icmp eq i32 %0, 255, !dbg !67
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !69
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !70
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !70
  br i1 %8, label %11, label %9, !dbg !69

; <label>:9:                                      ; preds = %4
  %10 = icmp eq i32 %6, 1, !dbg !74
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !77
  br i1 %10, label %35, label %33, !dbg !77

; <label>:11:                                     ; preds = %4
  %12 = getelementptr inbounds %struct.regex_t, %struct.regex_t* %1, i64 0, i32 2
  %13 = load i8*, i8** %12, align 8
  br label %15, !dbg !89

; <label>:14:                                     ; preds = %22
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !91
  br label %31, !dbg !91

; <label>:15:                                     ; preds = %22, %11
  %16 = phi i32* [ getelementptr inbounds ([17 x %struct.rerr], [17 x %struct.rerr]* @rerrs, i64 0, i64 0, i32 0), %11 ], [ %23, %22 ]
  %17 = getelementptr inbounds i32, i32* %16, i64 2, !dbg !92
  %18 = bitcast i32* %17 to i8**, !dbg !92
  %19 = load i8*, i8** %18, align 8, !dbg !92, !tbaa !95
  %20 = tail call i32 @strcmp(i8* %19, i8* %13) #5, !dbg !101
  %21 = icmp eq i32 %20, 0, !dbg !102
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !103
  br i1 %21, label %26, label %22, !dbg !103

; <label>:22:                                     ; preds = %15
  %23 = getelementptr inbounds i32, i32* %16, i64 6, !dbg !104
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !105
  %24 = load i32, i32* %23, align 8, !dbg !106, !tbaa !107
  %25 = icmp eq i32 %24, 0, !dbg !108
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !89
  br i1 %25, label %14, label %15, !dbg !89, !llvm.loop !109

; <label>:26:                                     ; preds = %15
  %27 = load i32, i32* %16, align 8, !dbg !112, !tbaa !107
  %28 = icmp eq i32 %27, 0, !dbg !114
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !91
  br i1 %28, label %31, label %29, !dbg !91

; <label>:29:                                     ; preds = %26
  %30 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i64 0, i64 0), i32 %27) #5, !dbg !115
  br label %31, !dbg !116

; <label>:31:                                     ; preds = %14, %26, %29
  %32 = phi i8* [ %7, %29 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i64 0, i64 0), %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i64 0, i64 0), %14 ], !dbg !117
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !118
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !119
  br label %51, !dbg !121

; <label>:33:                                     ; preds = %9
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !122
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !123
  %34 = icmp eq i32 %6, 2, !dbg !74
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !77
  br i1 %34, label %35, label %66, !dbg !77

; <label>:35:                                     ; preds = %94, %92, %90, %88, %86, %84, %82, %80, %78, %76, %74, %72, %70, %68, %66, %33, %9
  %36 = phi %struct.rerr* [ getelementptr inbounds ([17 x %struct.rerr], [17 x %struct.rerr]* @rerrs, i64 0, i64 0), %9 ], [ getelementptr inbounds ([17 x %struct.rerr], [17 x %struct.rerr]* @rerrs, i64 0, i64 1), %33 ], [ getelementptr inbounds ([17 x %struct.rerr], [17 x %struct.rerr]* @rerrs, i64 0, i64 2), %66 ], [ getelementptr inbounds ([17 x %struct.rerr], [17 x %struct.rerr]* @rerrs, i64 0, i64 3), %68 ], [ getelementptr inbounds ([17 x %struct.rerr], [17 x %struct.rerr]* @rerrs, i64 0, i64 4), %70 ], [ getelementptr inbounds ([17 x %struct.rerr], [17 x %struct.rerr]* @rerrs, i64 0, i64 5), %72 ], [ getelementptr inbounds ([17 x %struct.rerr], [17 x %struct.rerr]* @rerrs, i64 0, i64 6), %74 ], [ getelementptr inbounds ([17 x %struct.rerr], [17 x %struct.rerr]* @rerrs, i64 0, i64 7), %76 ], [ getelementptr inbounds ([17 x %struct.rerr], [17 x %struct.rerr]* @rerrs, i64 0, i64 8), %78 ], [ getelementptr inbounds ([17 x %struct.rerr], [17 x %struct.rerr]* @rerrs, i64 0, i64 9), %80 ], [ getelementptr inbounds ([17 x %struct.rerr], [17 x %struct.rerr]* @rerrs, i64 0, i64 10), %82 ], [ getelementptr inbounds ([17 x %struct.rerr], [17 x %struct.rerr]* @rerrs, i64 0, i64 11), %84 ], [ getelementptr inbounds ([17 x %struct.rerr], [17 x %struct.rerr]* @rerrs, i64 0, i64 12), %86 ], [ getelementptr inbounds ([17 x %struct.rerr], [17 x %struct.rerr]* @rerrs, i64 0, i64 13), %88 ], [ getelementptr inbounds ([17 x %struct.rerr], [17 x %struct.rerr]* @rerrs, i64 0, i64 14), %90 ], [ getelementptr inbounds ([17 x %struct.rerr], [17 x %struct.rerr]* @rerrs, i64 0, i64 15), %92 ], [ getelementptr inbounds ([17 x %struct.rerr], [17 x %struct.rerr]* @rerrs, i64 0, i64 16), %94 ], !dbg !124
  %37 = phi i1 [ false, %9 ], [ false, %33 ], [ false, %66 ], [ false, %68 ], [ false, %70 ], [ false, %72 ], [ false, %74 ], [ false, %76 ], [ false, %78 ], [ false, %80 ], [ false, %82 ], [ false, %84 ], [ false, %86 ], [ false, %88 ], [ false, %90 ], [ false, %92 ], [ true, %94 ], !dbg !125
  %38 = and i32 %0, 256, !dbg !126
  %39 = icmp eq i32 %38, 0, !dbg !126
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !128
  br i1 %39, label %48, label %40, !dbg !128

; <label>:40:                                     ; preds = %35
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !129
  br i1 %37, label %45, label %41, !dbg !129

; <label>:41:                                     ; preds = %40
  %42 = getelementptr inbounds %struct.rerr, %struct.rerr* %36, i64 0, i32 1, !dbg !131
  %43 = load i8*, i8** %42, align 8, !dbg !131, !tbaa !95
  %44 = call i8* @strcpy(i8* nonnull %7, i8* %43) #5, !dbg !133
  br label %47, !dbg !134

; <label>:45:                                     ; preds = %40
  %46 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %6) #5, !dbg !135
  br label %47

; <label>:47:                                     ; preds = %45, %41
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %51, !dbg !136

; <label>:48:                                     ; preds = %35
  %49 = getelementptr inbounds %struct.rerr, %struct.rerr* %36, i64 0, i32 2, !dbg !137
  %50 = load i8*, i8** %49, align 8, !dbg !137, !tbaa !138
  br label %51

; <label>:51:                                     ; preds = %47, %48, %31
  %52 = phi i8* [ %32, %31 ], [ %7, %47 ], [ %50, %48 ], !dbg !139
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %53 = call i64 @strlen(i8* %52) #5, !dbg !140
  %54 = add i64 %53, 1, !dbg !141
  %55 = icmp eq i64 %3, 0, !dbg !143
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !145
  br i1 %55, label %65, label %56, !dbg !145

; <label>:56:                                     ; preds = %51
  %57 = icmp ult i64 %54, %3, !dbg !146
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !149
  br i1 %57, label %58, label %60, !dbg !149

; <label>:58:                                     ; preds = %56
  %59 = call i8* @strcpy(i8* %2, i8* %52) #5, !dbg !150
  br label %64, !dbg !151

; <label>:60:                                     ; preds = %56
  %61 = add i64 %3, -1, !dbg !152
  %62 = call i8* @strncpy(i8* %2, i8* %52, i64 %61) #5, !dbg !154
  %63 = getelementptr inbounds i8, i8* %2, i64 %61, !dbg !155
  store i8 0, i8* %63, align 1, !dbg !156, !tbaa !157
  br label %64

; <label>:64:                                     ; preds = %60, %58
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %65, !dbg !158

; <label>:65:                                     ; preds = %64, %51
  call void @llvm.lifetime.end.p0i8(i64 50, i8* nonnull %7) #4, !dbg !158
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !159
  ret i64 %54, !dbg !159

; <label>:66:                                     ; preds = %33
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !122
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !123
  %67 = icmp eq i32 %6, 3, !dbg !74
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !77
  br i1 %67, label %35, label %68, !dbg !77

; <label>:68:                                     ; preds = %66
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !122
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !123
  %69 = icmp eq i32 %6, 4, !dbg !74
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !77
  br i1 %69, label %35, label %70, !dbg !77

; <label>:70:                                     ; preds = %68
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !122
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !123
  %71 = icmp eq i32 %6, 5, !dbg !74
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !77
  br i1 %71, label %35, label %72, !dbg !77

; <label>:72:                                     ; preds = %70
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !122
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !123
  %73 = icmp eq i32 %6, 6, !dbg !74
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !77
  br i1 %73, label %35, label %74, !dbg !77

; <label>:74:                                     ; preds = %72
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !122
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !123
  %75 = icmp eq i32 %6, 7, !dbg !74
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !77
  br i1 %75, label %35, label %76, !dbg !77

; <label>:76:                                     ; preds = %74
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !122
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !123
  %77 = icmp eq i32 %6, 8, !dbg !74
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !77
  br i1 %77, label %35, label %78, !dbg !77

; <label>:78:                                     ; preds = %76
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !122
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !123
  %79 = icmp eq i32 %6, 9, !dbg !74
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !77
  br i1 %79, label %35, label %80, !dbg !77

; <label>:80:                                     ; preds = %78
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !122
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !123
  %81 = icmp eq i32 %6, 10, !dbg !74
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !77
  br i1 %81, label %35, label %82, !dbg !77

; <label>:82:                                     ; preds = %80
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !122
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !123
  %83 = icmp eq i32 %6, 11, !dbg !74
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !77
  br i1 %83, label %35, label %84, !dbg !77

; <label>:84:                                     ; preds = %82
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !122
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !123
  %85 = icmp eq i32 %6, 12, !dbg !74
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !77
  br i1 %85, label %35, label %86, !dbg !77

; <label>:86:                                     ; preds = %84
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !122
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !123
  %87 = icmp eq i32 %6, 13, !dbg !74
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !77
  br i1 %87, label %35, label %88, !dbg !77

; <label>:88:                                     ; preds = %86
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !122
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !123
  %89 = icmp eq i32 %6, 14, !dbg !74
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !77
  br i1 %89, label %35, label %90, !dbg !77

; <label>:90:                                     ; preds = %88
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !122
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !123
  %91 = icmp eq i32 %6, 15, !dbg !74
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !77
  br i1 %91, label %35, label %92, !dbg !77

; <label>:92:                                     ; preds = %90
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !122
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !123
  %93 = icmp eq i32 %6, 16, !dbg !74
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !77
  br i1 %93, label %35, label %94, !dbg !77

; <label>:94:                                     ; preds = %92
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !122
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !123
  br label %35
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
!70 = !DILocation(line: 0, scope: !71)
!71 = distinct !DILexicalBlock(scope: !72, file: !3, line: 130, column: 3)
!72 = distinct !DILexicalBlock(scope: !68, file: !3, line: 129, column: 7)
!73 = !DILocation(line: 121, column: 15, scope: !21)
!74 = !DILocation(line: 131, column: 16, scope: !75)
!75 = distinct !DILexicalBlock(scope: !76, file: !3, line: 131, column: 8)
!76 = distinct !DILexicalBlock(scope: !71, file: !3, line: 130, column: 3)
!77 = !DILocation(line: 131, column: 8, scope: !76)
!78 = !DILocalVariable(name: "preg", arg: 1, scope: !79, file: !3, line: 164, type: !30)
!79 = distinct !DISubprogram(name: "regatoi", scope: !3, file: !3, line: 163, type: !80, isLocal: true, isDefinition: true, scopeLine: 166, isOptimized: true, unit: !2, retainedNodes: !82)
!80 = !DISubroutineType(types: !81)
!81 = !{!12, !30, !12}
!82 = !{!78, !83, !84}
!83 = !DILocalVariable(name: "localbuf", arg: 2, scope: !79, file: !3, line: 165, type: !12)
!84 = !DILocalVariable(name: "r", scope: !79, file: !3, line: 167, type: !51)
!85 = !DILocation(line: 164, column: 16, scope: !79, inlinedAt: !86)
!86 = distinct !DILocation(line: 128, column: 7, scope: !68)
!87 = !DILocation(line: 165, column: 7, scope: !79, inlinedAt: !86)
!88 = !DILocation(line: 167, column: 15, scope: !79, inlinedAt: !86)
!89 = !DILocation(line: 169, column: 2, scope: !90, inlinedAt: !86)
!90 = distinct !DILexicalBlock(scope: !79, file: !3, line: 169, column: 2)
!91 = !DILocation(line: 172, column: 6, scope: !79, inlinedAt: !86)
!92 = !DILocation(line: 170, column: 17, scope: !93, inlinedAt: !86)
!93 = distinct !DILexicalBlock(scope: !94, file: !3, line: 170, column: 7)
!94 = distinct !DILexicalBlock(scope: !90, file: !3, line: 169, column: 2)
!95 = !{!96, !100, i64 8}
!96 = !{!"rerr", !97, i64 0, !100, i64 8, !100, i64 16}
!97 = !{!"int", !98, i64 0}
!98 = !{!"omnipotent char", !99, i64 0}
!99 = !{!"Simple C/C++ TBAA"}
!100 = !{!"any pointer", !98, i64 0}
!101 = !DILocation(line: 170, column: 7, scope: !93, inlinedAt: !86)
!102 = !DILocation(line: 170, column: 38, scope: !93, inlinedAt: !86)
!103 = !DILocation(line: 170, column: 7, scope: !94, inlinedAt: !86)
!104 = !DILocation(line: 169, column: 33, scope: !94, inlinedAt: !86)
!105 = !DILocation(line: 169, column: 2, scope: !94, inlinedAt: !86)
!106 = !DILocation(line: 169, column: 21, scope: !94, inlinedAt: !86)
!107 = !{!96, !97, i64 0}
!108 = !DILocation(line: 169, column: 26, scope: !94, inlinedAt: !86)
!109 = distinct !{!109, !110, !111}
!110 = !DILocation(line: 169, column: 2, scope: !90)
!111 = !DILocation(line: 171, column: 4, scope: !90)
!112 = !DILocation(line: 172, column: 9, scope: !113, inlinedAt: !86)
!113 = distinct !DILexicalBlock(scope: !79, file: !3, line: 172, column: 6)
!114 = !DILocation(line: 172, column: 14, scope: !113, inlinedAt: !86)
!115 = !DILocation(line: 175, column: 2, scope: !79, inlinedAt: !86)
!116 = !DILocation(line: 176, column: 2, scope: !79, inlinedAt: !86)
!117 = !DILocation(line: 0, scope: !79, inlinedAt: !86)
!118 = !DILocation(line: 0, scope: !68)
!119 = !DILocation(line: 177, column: 1, scope: !79, inlinedAt: !86)
!120 = !DILocation(line: 124, column: 8, scope: !21)
!121 = !DILocation(line: 128, column: 3, scope: !68)
!122 = !DILocation(line: 130, column: 3, scope: !76)
!123 = !DILocation(line: 130, column: 3, scope: !71)
!124 = !DILocation(line: 0, scope: !76)
!125 = !DILocation(line: 130, column: 27, scope: !76)
!126 = !DILocation(line: 134, column: 14, scope: !127)
!127 = distinct !DILexicalBlock(scope: !72, file: !3, line: 134, column: 7)
!128 = !DILocation(line: 134, column: 7, scope: !72)
!129 = !DILocation(line: 135, column: 8, scope: !130)
!130 = distinct !DILexicalBlock(scope: !127, file: !3, line: 134, column: 25)
!131 = !DILocation(line: 136, column: 31, scope: !132)
!132 = distinct !DILexicalBlock(scope: !130, file: !3, line: 135, column: 8)
!133 = !DILocation(line: 136, column: 12, scope: !132)
!134 = !DILocation(line: 136, column: 5, scope: !132)
!135 = !DILocation(line: 138, column: 5, scope: !132)
!136 = !DILocation(line: 141, column: 3, scope: !130)
!137 = !DILocation(line: 142, column: 11, scope: !127)
!138 = !{!96, !100, i64 16}
!139 = !DILocation(line: 0, scope: !127)
!140 = !DILocation(line: 145, column: 8, scope: !21)
!141 = !DILocation(line: 145, column: 18, scope: !21)
!142 = !DILocation(line: 122, column: 9, scope: !21)
!143 = !DILocation(line: 146, column: 18, scope: !144)
!144 = distinct !DILexicalBlock(scope: !21, file: !3, line: 146, column: 6)
!145 = !DILocation(line: 146, column: 6, scope: !21)
!146 = !DILocation(line: 147, column: 19, scope: !147)
!147 = distinct !DILexicalBlock(scope: !148, file: !3, line: 147, column: 7)
!148 = distinct !DILexicalBlock(scope: !144, file: !3, line: 146, column: 23)
!149 = !DILocation(line: 147, column: 7, scope: !148)
!150 = !DILocation(line: 148, column: 11, scope: !147)
!151 = !DILocation(line: 148, column: 4, scope: !147)
!152 = !DILocation(line: 150, column: 41, scope: !153)
!153 = distinct !DILexicalBlock(scope: !147, file: !3, line: 149, column: 8)
!154 = !DILocation(line: 150, column: 11, scope: !153)
!155 = !DILocation(line: 151, column: 4, scope: !153)
!156 = !DILocation(line: 151, column: 26, scope: !153)
!157 = !{!98, !98, i64 0}
!158 = !DILocation(line: 156, column: 1, scope: !21)
!159 = !DILocation(line: 155, column: 2, scope: !21)
