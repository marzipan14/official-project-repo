; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/strsignal.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/strsignal.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._reent = type { i32, %struct.__sFILE*, %struct.__sFILE*, %struct.__sFILE*, i32, [25 x i8], i32, %struct.__locale_t*, i32, void (%struct._reent*)*, %struct._Bigint*, i32, %struct._Bigint*, %struct._Bigint**, i32, i8*, %union.anon.0, %struct._atexit*, %struct._atexit, void (i32)**, %struct._glue, [3 x %struct.__sFILE] }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i64 (%struct._reent*, i8*, i8*, i32)*, i64 (%struct._reent*, i8*, i8*, i32)*, i64 (%struct._reent*, i8*, i64, i32)*, i32 (%struct._reent*, i8*)*, %struct.__sbuf, i8*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64, %struct._reent*, i32, %struct._mbstate_t, i32 }
%struct.__sbuf = type { i8*, i32 }
%struct._mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__locale_t = type opaque
%struct._Bigint = type { %struct._Bigint*, i32, i32, i32, i32, [1 x i32] }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { [30 x i8*], [30 x i32] }
%struct._atexit = type { %struct._atexit*, i32, [32 x void ()*], %struct._on_exit_args }
%struct._on_exit_args = type { [32 x i8*], [32 x i8*], i32, i32 }
%struct._glue = type { %struct._glue*, i32, %struct.__sFILE* }

@.str = private unnamed_addr constant [7 x i8] c"Hangup\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Interrupt\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Quit\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Illegal instruction\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Trace/breakpoint trap\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"IOT trap\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"Floating point exception\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"Killed\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"Bus error\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"Segmentation fault\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"Bad system call\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"Broken pipe\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"Alarm clock\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"Terminated\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"Urgent I/O condition\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"Stopped (signal)\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"Stopped\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"Continued\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"Child exited\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"Stopped (tty input)\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"I/O possible\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"Window changed\00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"User defined signal 1\00", align 1
@.str.23 = private unnamed_addr constant [22 x i8] c"User defined signal 2\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"Power Failure\00", align 1
@.str.25 = private unnamed_addr constant [24 x i8] c"CPU time limit exceeded\00", align 1
@.str.26 = private unnamed_addr constant [25 x i8] c"File size limit exceeded\00", align 1
@.str.27 = private unnamed_addr constant [22 x i8] c"Virtual timer expired\00", align 1
@.str.28 = private unnamed_addr constant [24 x i8] c"Profiling timer expired\00", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c"Unknown signal %d\00", align 1
@__A_VARIABLE = internal global i32 0
@switch.table.strsignal = private unnamed_addr constant [31 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0)]

; Function Attrs: noredzone nounwind
define dso_local i8* @strsignal(i32) local_unnamed_addr #0 !dbg !7 {
  %2 = tail call %struct._reent* @__getreent() #3, !dbg !235
  %3 = getelementptr inbounds %struct._reent, %struct._reent* %2, i64 0, i32 16, i32 0, i32 0, i64 18, !dbg !237
  %4 = bitcast i8** %3 to i8*, !dbg !237
  %5 = add i32 %0, -1, !dbg !239
  %6 = icmp ult i32 %5, 31, !dbg !239
  br i1 %6, label %9, label %7, !dbg !239

; <label>:7:                                      ; preds = %9, %1
  %8 = tail call i32 (i8*, i8*, ...) @siprintf(i8* nonnull %4, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.29, i64 0, i64 0), i32 %0) #3, !dbg !240
  br label %17, !dbg !242

; <label>:9:                                      ; preds = %1
  %10 = lshr i32 2145353727, %5, !dbg !239
  %11 = and i32 %10, 1, !dbg !239
  %12 = icmp eq i32 %11, 0, !dbg !239
  br i1 %12, label %7, label %13, !dbg !239

; <label>:13:                                     ; preds = %9
  %14 = sext i32 %5 to i64, !dbg !239
  %15 = getelementptr inbounds [31 x i8*], [31 x i8*]* @switch.table.strsignal, i64 0, i64 %14, !dbg !239
  %16 = load i8*, i8** %15, align 8, !dbg !239
  br label %17, !dbg !239

; <label>:17:                                     ; preds = %13, %7
  %18 = phi i8* [ %4, %7 ], [ %16, %13 ], !dbg !243
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !244
  ret i8* %18, !dbg !244
}

; Function Attrs: noredzone
declare dso_local %struct._reent* @__getreent() local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @siprintf(i8*, i8*, ...) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/strsignal.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "strsignal", scope: !1, file: !1, line: 61, type: !8, isLocal: false, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !13)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !12}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !{!14, !15, !16}
!14 = !DILocalVariable(name: "signal", arg: 1, scope: !7, file: !1, line: 61, type: !12)
!15 = !DILocalVariable(name: "buffer", scope: !7, file: !1, line: 64, type: !10)
!16 = !DILocalVariable(name: "ptr", scope: !7, file: !1, line: 65, type: !17)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !19, line: 569, size: 14912, elements: !20)
!19 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!20 = !{!21, !22, !102, !103, !104, !105, !109, !110, !113, !114, !118, !130, !131, !132, !134, !135, !136, !198, !219, !220, !225, !232}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !18, file: !19, line: 571, baseType: !12, size: 32)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !18, file: !19, line: 576, baseType: !23, size: 64, offset: 64)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !19, line: 287, baseType: !25)
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !19, line: 181, size: 1408, elements: !26)
!26 = !{!27, !30, !31, !32, !34, !35, !40, !41, !43, !50, !56, !61, !65, !66, !67, !68, !72, !76, !77, !78, !80, !81, !85, !101}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !25, file: !19, line: 182, baseType: !28, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !25, file: !19, line: 183, baseType: !12, size: 32, offset: 64)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !25, file: !19, line: 184, baseType: !12, size: 32, offset: 96)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !25, file: !19, line: 185, baseType: !33, size: 16, offset: 128)
!33 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !25, file: !19, line: 186, baseType: !33, size: 16, offset: 144)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !25, file: !19, line: 187, baseType: !36, size: 128, offset: 192)
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !19, line: 117, size: 128, elements: !37)
!37 = !{!38, !39}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !36, file: !19, line: 118, baseType: !28, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !36, file: !19, line: 119, baseType: !12, size: 32, offset: 64)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !25, file: !19, line: 188, baseType: !12, size: 32, offset: 320)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !25, file: !19, line: 195, baseType: !42, size: 64, offset: 384)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !25, file: !19, line: 197, baseType: !44, size: 64, offset: 448)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DISubroutineType(types: !46)
!46 = !{!47, !17, !42, !10, !12}
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !48, line: 145, baseType: !49)
!48 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!49 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !25, file: !19, line: 199, baseType: !51, size: 64, offset: 512)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DISubroutineType(types: !53)
!53 = !{!47, !17, !42, !54, !12}
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !25, file: !19, line: 202, baseType: !57, size: 64, offset: 576)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = !DISubroutineType(types: !59)
!59 = !{!60, !17, !42, !60, !12}
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !48, line: 114, baseType: !49)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !25, file: !19, line: 203, baseType: !62, size: 64, offset: 640)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DISubroutineType(types: !64)
!64 = !{!12, !17, !42}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !25, file: !19, line: 206, baseType: !36, size: 128, offset: 704)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !25, file: !19, line: 207, baseType: !28, size: 64, offset: 832)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !25, file: !19, line: 208, baseType: !12, size: 32, offset: 896)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !25, file: !19, line: 211, baseType: !69, size: 24, offset: 928)
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 24, elements: !70)
!70 = !{!71}
!71 = !DISubrange(count: 3)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !25, file: !19, line: 212, baseType: !73, size: 8, offset: 952)
!73 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 8, elements: !74)
!74 = !{!75}
!75 = !DISubrange(count: 1)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !25, file: !19, line: 215, baseType: !36, size: 128, offset: 960)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !25, file: !19, line: 218, baseType: !12, size: 32, offset: 1088)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !25, file: !19, line: 219, baseType: !79, size: 64, offset: 1152)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !48, line: 44, baseType: !49)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !25, file: !19, line: 222, baseType: !17, size: 64, offset: 1216)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !25, file: !19, line: 226, baseType: !82, size: 32, offset: 1280)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !48, line: 175, baseType: !83)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !84, line: 12, baseType: !12)
!84 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !25, file: !19, line: 228, baseType: !86, size: 64, offset: 1312)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !48, line: 171, baseType: !87)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !48, line: 163, size: 64, elements: !88)
!88 = !{!89, !90}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !87, file: !48, line: 165, baseType: !12, size: 32)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !87, file: !48, line: 170, baseType: !91, size: 32, offset: 32)
!91 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !87, file: !48, line: 166, size: 32, elements: !92)
!92 = !{!93, !97}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !91, file: !48, line: 168, baseType: !94, size: 32)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !95, line: 124, baseType: !96)
!95 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!96 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !91, file: !48, line: 169, baseType: !98, size: 32)
!98 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 32, elements: !99)
!99 = !{!100}
!100 = !DISubrange(count: 4)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !25, file: !19, line: 229, baseType: !12, size: 32, offset: 1376)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !18, file: !19, line: 576, baseType: !23, size: 64, offset: 128)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !18, file: !19, line: 576, baseType: !23, size: 64, offset: 192)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !18, file: !19, line: 578, baseType: !12, size: 32, offset: 256)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !18, file: !19, line: 579, baseType: !106, size: 200, offset: 288)
!106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 200, elements: !107)
!107 = !{!108}
!108 = !DISubrange(count: 25)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !18, file: !19, line: 582, baseType: !12, size: 32, offset: 512)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !18, file: !19, line: 583, baseType: !111, size: 64, offset: 576)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !19, line: 40, flags: DIFlagFwdDecl)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !18, file: !19, line: 585, baseType: !12, size: 32, offset: 640)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !18, file: !19, line: 587, baseType: !115, size: 64, offset: 704)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DISubroutineType(types: !117)
!117 = !{null, !17}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !18, file: !19, line: 590, baseType: !119, size: 64, offset: 768)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !19, line: 47, size: 256, elements: !121)
!121 = !{!122, !123, !124, !125, !126, !127}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !120, file: !19, line: 49, baseType: !119, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !120, file: !19, line: 50, baseType: !12, size: 32, offset: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !120, file: !19, line: 50, baseType: !12, size: 32, offset: 96)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !120, file: !19, line: 50, baseType: !12, size: 32, offset: 128)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !120, file: !19, line: 50, baseType: !12, size: 32, offset: 160)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !120, file: !19, line: 51, baseType: !128, size: 32, offset: 192)
!128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 32, elements: !74)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !19, line: 25, baseType: !96)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !18, file: !19, line: 591, baseType: !12, size: 32, offset: 832)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !18, file: !19, line: 592, baseType: !119, size: 64, offset: 896)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !18, file: !19, line: 593, baseType: !133, size: 64, offset: 960)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !18, file: !19, line: 596, baseType: !12, size: 32, offset: 1024)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !18, file: !19, line: 597, baseType: !10, size: 64, offset: 1088)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !18, file: !19, line: 632, baseType: !137, size: 2880, offset: 1152)
!137 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !18, file: !19, line: 599, size: 2880, elements: !138)
!138 = !{!139, !189}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !137, file: !19, line: 622, baseType: !140, size: 1728)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !137, file: !19, line: 601, size: 1728, elements: !141)
!141 = !{!142, !143, !144, !148, !160, !161, !163, !171, !172, !173, !174, !178, !182, !183, !184, !185, !186, !187, !188}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !140, file: !19, line: 603, baseType: !96, size: 32)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !140, file: !19, line: 604, baseType: !10, size: 64, offset: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !140, file: !19, line: 605, baseType: !145, size: 208, offset: 128)
!145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 208, elements: !146)
!146 = !{!147}
!147 = !DISubrange(count: 26)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !140, file: !19, line: 606, baseType: !149, size: 288, offset: 352)
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !19, line: 55, size: 288, elements: !150)
!150 = !{!151, !152, !153, !154, !155, !156, !157, !158, !159}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !149, file: !19, line: 57, baseType: !12, size: 32)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !149, file: !19, line: 58, baseType: !12, size: 32, offset: 32)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !149, file: !19, line: 59, baseType: !12, size: 32, offset: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !149, file: !19, line: 60, baseType: !12, size: 32, offset: 96)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !149, file: !19, line: 61, baseType: !12, size: 32, offset: 128)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !149, file: !19, line: 62, baseType: !12, size: 32, offset: 160)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !149, file: !19, line: 63, baseType: !12, size: 32, offset: 192)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !149, file: !19, line: 64, baseType: !12, size: 32, offset: 224)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !149, file: !19, line: 65, baseType: !12, size: 32, offset: 256)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !140, file: !19, line: 607, baseType: !12, size: 32, offset: 640)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !140, file: !19, line: 608, baseType: !162, size: 64, offset: 704)
!162 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !140, file: !19, line: 609, baseType: !164, size: 112, offset: 768)
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !19, line: 319, size: 112, elements: !165)
!165 = !{!166, !169, !170}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !164, file: !19, line: 320, baseType: !167, size: 48)
!167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, size: 48, elements: !70)
!168 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !164, file: !19, line: 321, baseType: !167, size: 48, offset: 48)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !164, file: !19, line: 322, baseType: !168, size: 16, offset: 96)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !140, file: !19, line: 610, baseType: !86, size: 64, offset: 896)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !140, file: !19, line: 611, baseType: !86, size: 64, offset: 960)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !140, file: !19, line: 612, baseType: !86, size: 64, offset: 1024)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !140, file: !19, line: 613, baseType: !175, size: 64, offset: 1088)
!175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 64, elements: !176)
!176 = !{!177}
!177 = !DISubrange(count: 8)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !140, file: !19, line: 614, baseType: !179, size: 192, offset: 1152)
!179 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 192, elements: !180)
!180 = !{!181}
!181 = !DISubrange(count: 24)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !140, file: !19, line: 615, baseType: !12, size: 32, offset: 1344)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !140, file: !19, line: 616, baseType: !86, size: 64, offset: 1376)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !140, file: !19, line: 617, baseType: !86, size: 64, offset: 1440)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !140, file: !19, line: 618, baseType: !86, size: 64, offset: 1504)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !140, file: !19, line: 619, baseType: !86, size: 64, offset: 1568)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !140, file: !19, line: 620, baseType: !86, size: 64, offset: 1632)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !140, file: !19, line: 621, baseType: !12, size: 32, offset: 1696)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !137, file: !19, line: 631, baseType: !190, size: 2880)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !137, file: !19, line: 626, size: 2880, elements: !191)
!191 = !{!192, !196}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !190, file: !19, line: 629, baseType: !193, size: 1920)
!193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 1920, elements: !194)
!194 = !{!195}
!195 = !DISubrange(count: 30)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !190, file: !19, line: 630, baseType: !197, size: 960, offset: 1920)
!197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 960, elements: !194)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !18, file: !19, line: 636, baseType: !199, size: 64, offset: 4032)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !19, line: 93, size: 6336, elements: !201)
!201 = !{!202, !203, !204, !211}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !200, file: !19, line: 94, baseType: !199, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !200, file: !19, line: 95, baseType: !12, size: 32, offset: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !200, file: !19, line: 97, baseType: !205, size: 2048, offset: 128)
!205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !206, size: 2048, elements: !209)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = !DISubroutineType(types: !208)
!208 = !{null}
!209 = !{!210}
!210 = !DISubrange(count: 32)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !200, file: !19, line: 98, baseType: !212, size: 4160, offset: 2176)
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !19, line: 74, size: 4160, elements: !213)
!213 = !{!214, !216, !217, !218}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !212, file: !19, line: 75, baseType: !215, size: 2048)
!215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 2048, elements: !209)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !212, file: !19, line: 76, baseType: !215, size: 2048, offset: 2048)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !212, file: !19, line: 78, baseType: !129, size: 32, offset: 4096)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !212, file: !19, line: 81, baseType: !129, size: 32, offset: 4128)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !18, file: !19, line: 637, baseType: !200, size: 6336, offset: 4096)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !18, file: !19, line: 641, baseType: !221, size: 64, offset: 10432)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = !DISubroutineType(types: !224)
!224 = !{null, !12}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !18, file: !19, line: 646, baseType: !226, size: 192, offset: 10496)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !19, line: 291, size: 192, elements: !227)
!227 = !{!228, !230, !231}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !226, file: !19, line: 293, baseType: !229, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !226, file: !19, line: 294, baseType: !12, size: 32, offset: 64)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !226, file: !19, line: 295, baseType: !23, size: 64, offset: 128)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !18, file: !19, line: 648, baseType: !233, size: 4224, offset: 10688)
!233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 4224, elements: !70)
!234 = !DILocation(line: 61, column: 1, scope: !7)
!235 = !DILocation(line: 67, column: 9, scope: !7)
!236 = !DILocation(line: 65, column: 18, scope: !7)
!237 = !DILocation(line: 70, column: 12, scope: !7)
!238 = !DILocation(line: 64, column: 9, scope: !7)
!239 = !DILocation(line: 79, column: 3, scope: !7)
!240 = !DILocation(line: 250, column: 7, scope: !241)
!241 = distinct !DILexicalBlock(scope: !7, file: !1, line: 79, column: 19)
!242 = !DILocation(line: 251, column: 7, scope: !241)
!243 = !DILocation(line: 0, scope: !241)
!244 = !DILocation(line: 254, column: 3, scope: !7)
