; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/strerror.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/strerror.c"
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

@.str = private unnamed_addr constant [8 x i8] c"Success\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Not owner\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"No such file or directory\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"No such process\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"Interrupted system call\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"I/O error\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"No such device or address\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"Arg list too long\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"Exec format error\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"Socket already connected\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"Bad file number\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"No children\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"Destination address required\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"No more processes\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"Not enough space\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"Permission denied\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"Bad address\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"Block device required\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"Device or resource busy\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"File exists\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"Cross-device link\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"No such device\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"Not a directory\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"Host is down\00", align 1
@.str.24 = private unnamed_addr constant [31 x i8] c"Connection already in progress\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"Is a directory\00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c"Invalid argument\00", align 1
@.str.27 = private unnamed_addr constant [36 x i8] c"Network interface is not configured\00", align 1
@.str.28 = private unnamed_addr constant [30 x i8] c"Connection aborted by network\00", align 1
@.str.29 = private unnamed_addr constant [30 x i8] c"Too many open files in system\00", align 1
@.str.30 = private unnamed_addr constant [32 x i8] c"File descriptor value too large\00", align 1
@.str.31 = private unnamed_addr constant [23 x i8] c"Not a character device\00", align 1
@.str.32 = private unnamed_addr constant [15 x i8] c"Text file busy\00", align 1
@.str.33 = private unnamed_addr constant [15 x i8] c"File too large\00", align 1
@.str.34 = private unnamed_addr constant [20 x i8] c"Host is unreachable\00", align 1
@.str.35 = private unnamed_addr constant [24 x i8] c"No space left on device\00", align 1
@.str.36 = private unnamed_addr constant [14 x i8] c"Not supported\00", align 1
@.str.37 = private unnamed_addr constant [13 x i8] c"Illegal seek\00", align 1
@.str.38 = private unnamed_addr constant [22 x i8] c"Read-only file system\00", align 1
@.str.39 = private unnamed_addr constant [15 x i8] c"Too many links\00", align 1
@.str.40 = private unnamed_addr constant [12 x i8] c"Broken pipe\00", align 1
@.str.41 = private unnamed_addr constant [47 x i8] c"Mathematics argument out of domain of function\00", align 1
@.str.42 = private unnamed_addr constant [17 x i8] c"Result too large\00", align 1
@.str.43 = private unnamed_addr constant [27 x i8] c"No message of desired type\00", align 1
@.str.44 = private unnamed_addr constant [19 x i8] c"Identifier removed\00", align 1
@.str.45 = private unnamed_addr constant [22 x i8] c"Illegal byte sequence\00", align 1
@.str.46 = private unnamed_addr constant [9 x i8] c"Deadlock\00", align 1
@.str.47 = private unnamed_addr constant [23 x i8] c"Network is unreachable\00", align 1
@.str.48 = private unnamed_addr constant [8 x i8] c"No lock\00", align 1
@.str.49 = private unnamed_addr constant [13 x i8] c"Not a stream\00", align 1
@.str.50 = private unnamed_addr constant [21 x i8] c"Stream ioctl timeout\00", align 1
@.str.51 = private unnamed_addr constant [20 x i8] c"No stream resources\00", align 1
@.str.52 = private unnamed_addr constant [30 x i8] c"Machine is not on the network\00", align 1
@.str.53 = private unnamed_addr constant [11 x i8] c"No package\00", align 1
@.str.54 = private unnamed_addr constant [19 x i8] c"Resource is remote\00", align 1
@.str.55 = private unnamed_addr constant [24 x i8] c"Virtual circuit is gone\00", align 1
@.str.56 = private unnamed_addr constant [16 x i8] c"Advertise error\00", align 1
@.str.57 = private unnamed_addr constant [14 x i8] c"Srmount error\00", align 1
@.str.58 = private unnamed_addr constant [20 x i8] c"Communication error\00", align 1
@.str.59 = private unnamed_addr constant [15 x i8] c"Protocol error\00", align 1
@.str.60 = private unnamed_addr constant [17 x i8] c"Unknown protocol\00", align 1
@.str.61 = private unnamed_addr constant [19 x i8] c"Multihop attempted\00", align 1
@.str.62 = private unnamed_addr constant [12 x i8] c"Bad message\00", align 1
@.str.63 = private unnamed_addr constant [38 x i8] c"Cannot access a needed shared library\00", align 1
@.str.64 = private unnamed_addr constant [37 x i8] c"Accessing a corrupted shared library\00", align 1
@.str.65 = private unnamed_addr constant [32 x i8] c".lib section in a.out corrupted\00", align 1
@.str.66 = private unnamed_addr constant [62 x i8] c"Attempting to link in more shared libraries than system limit\00", align 1
@.str.67 = private unnamed_addr constant [38 x i8] c"Cannot exec a shared library directly\00", align 1
@.str.68 = private unnamed_addr constant [25 x i8] c"Function not implemented\00", align 1
@.str.69 = private unnamed_addr constant [20 x i8] c"Directory not empty\00", align 1
@.str.70 = private unnamed_addr constant [27 x i8] c"File or path name too long\00", align 1
@.str.71 = private unnamed_addr constant [24 x i8] c"Too many symbolic links\00", align 1
@.str.72 = private unnamed_addr constant [26 x i8] c"No buffer space available\00", align 1
@.str.73 = private unnamed_addr constant [8 x i8] c"No data\00", align 1
@.str.74 = private unnamed_addr constant [48 x i8] c"Address family not supported by protocol family\00", align 1
@.str.75 = private unnamed_addr constant [31 x i8] c"Protocol wrong type for socket\00", align 1
@.str.76 = private unnamed_addr constant [31 x i8] c"Socket operation on non-socket\00", align 1
@.str.77 = private unnamed_addr constant [23 x i8] c"Protocol not available\00", align 1
@.str.78 = private unnamed_addr constant [33 x i8] c"Can't send after socket shutdown\00", align 1
@.str.79 = private unnamed_addr constant [19 x i8] c"Connection refused\00", align 1
@.str.80 = private unnamed_addr constant [25 x i8] c"Connection reset by peer\00", align 1
@.str.81 = private unnamed_addr constant [23 x i8] c"Address already in use\00", align 1
@.str.82 = private unnamed_addr constant [22 x i8] c"Address not available\00", align 1
@.str.83 = private unnamed_addr constant [33 x i8] c"Software caused connection abort\00", align 1
@.str.84 = private unnamed_addr constant [24 x i8] c"Socket is not connected\00", align 1
@.str.85 = private unnamed_addr constant [26 x i8] c"Socket type not supported\00", align 1
@.str.86 = private unnamed_addr constant [28 x i8] c"Socket is already connected\00", align 1
@.str.87 = private unnamed_addr constant [19 x i8] c"Operation canceled\00", align 1
@.str.88 = private unnamed_addr constant [22 x i8] c"State not recoverable\00", align 1
@.str.89 = private unnamed_addr constant [20 x i8] c"Previous owner died\00", align 1
@.str.90 = private unnamed_addr constant [19 x i8] c"Streams pipe error\00", align 1
@.str.91 = private unnamed_addr constant [34 x i8] c"Operation not supported on socket\00", align 1
@.str.92 = private unnamed_addr constant [38 x i8] c"Value too large for defined data type\00", align 1
@.str.93 = private unnamed_addr constant [17 x i8] c"Message too long\00", align 1
@.str.94 = private unnamed_addr constant [21 x i8] c"Connection timed out\00", align 1
@.str.95 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i8* @_strerror_r(%struct._reent*, i32, i32, i32*) local_unnamed_addr #0 !dbg !7 {
  switch i32 %1, label %99 [
    i32 0, label %106
    i32 1, label %5
    i32 2, label %6
    i32 3, label %7
    i32 4, label %8
    i32 5, label %9
    i32 6, label %10
    i32 7, label %11
    i32 8, label %12
    i32 120, label %13
    i32 9, label %14
    i32 10, label %15
    i32 121, label %16
    i32 11, label %17
    i32 12, label %18
    i32 13, label %19
    i32 14, label %20
    i32 15, label %21
    i32 16, label %22
    i32 17, label %23
    i32 18, label %24
    i32 19, label %25
    i32 20, label %26
    i32 117, label %27
    i32 119, label %28
    i32 21, label %29
    i32 22, label %30
    i32 115, label %31
    i32 126, label %32
    i32 23, label %33
    i32 24, label %34
    i32 25, label %35
    i32 26, label %36
    i32 27, label %37
    i32 118, label %38
    i32 28, label %39
    i32 134, label %40
    i32 29, label %41
    i32 30, label %42
    i32 31, label %43
    i32 32, label %44
    i32 33, label %45
    i32 34, label %46
    i32 35, label %47
    i32 36, label %48
    i32 138, label %49
    i32 45, label %50
    i32 114, label %51
    i32 46, label %52
    i32 60, label %53
    i32 62, label %54
    i32 63, label %55
    i32 64, label %56
    i32 65, label %57
    i32 66, label %58
    i32 67, label %59
    i32 68, label %60
    i32 69, label %61
    i32 70, label %62
    i32 71, label %63
    i32 123, label %64
    i32 74, label %65
    i32 77, label %66
    i32 83, label %67
    i32 84, label %68
    i32 85, label %69
    i32 86, label %70
    i32 87, label %71
    i32 88, label %72
    i32 90, label %73
    i32 91, label %74
    i32 92, label %75
    i32 105, label %76
    i32 61, label %77
    i32 106, label %78
    i32 107, label %79
    i32 108, label %80
    i32 109, label %81
    i32 110, label %82
    i32 111, label %83
    i32 104, label %84
    i32 112, label %85
    i32 125, label %86
    i32 113, label %87
    i32 128, label %88
    i32 124, label %89
    i32 127, label %90
    i32 140, label %91
    i32 141, label %92
    i32 142, label %93
    i32 143, label %94
    i32 95, label %95
    i32 139, label %96
    i32 122, label %97
    i32 116, label %98
  ], !dbg !238

; <label>:5:                                      ; preds = %4
  br label %106, !dbg !239

; <label>:6:                                      ; preds = %4
  br label %106, !dbg !241

; <label>:7:                                      ; preds = %4
  br label %106, !dbg !242

; <label>:8:                                      ; preds = %4
  br label %106, !dbg !243

; <label>:9:                                      ; preds = %4
  br label %106, !dbg !244

; <label>:10:                                     ; preds = %4
  br label %106, !dbg !245

; <label>:11:                                     ; preds = %4
  br label %106, !dbg !246

; <label>:12:                                     ; preds = %4
  br label %106, !dbg !247

; <label>:13:                                     ; preds = %4
  br label %106, !dbg !248

; <label>:14:                                     ; preds = %4
  br label %106, !dbg !249

; <label>:15:                                     ; preds = %4
  br label %106, !dbg !250

; <label>:16:                                     ; preds = %4
  br label %106, !dbg !251

; <label>:17:                                     ; preds = %4
  br label %106, !dbg !252

; <label>:18:                                     ; preds = %4
  br label %106, !dbg !253

; <label>:19:                                     ; preds = %4
  br label %106, !dbg !254

; <label>:20:                                     ; preds = %4
  br label %106, !dbg !255

; <label>:21:                                     ; preds = %4
  br label %106, !dbg !256

; <label>:22:                                     ; preds = %4
  br label %106, !dbg !257

; <label>:23:                                     ; preds = %4
  br label %106, !dbg !258

; <label>:24:                                     ; preds = %4
  br label %106, !dbg !259

; <label>:25:                                     ; preds = %4
  br label %106, !dbg !260

; <label>:26:                                     ; preds = %4
  br label %106, !dbg !261

; <label>:27:                                     ; preds = %4
  br label %106, !dbg !262

; <label>:28:                                     ; preds = %4
  br label %106, !dbg !263

; <label>:29:                                     ; preds = %4
  br label %106, !dbg !264

; <label>:30:                                     ; preds = %4
  br label %106, !dbg !265

; <label>:31:                                     ; preds = %4
  br label %106, !dbg !266

; <label>:32:                                     ; preds = %4
  br label %106, !dbg !267

; <label>:33:                                     ; preds = %4
  br label %106, !dbg !268

; <label>:34:                                     ; preds = %4
  br label %106, !dbg !269

; <label>:35:                                     ; preds = %4
  br label %106, !dbg !270

; <label>:36:                                     ; preds = %4
  br label %106, !dbg !271

; <label>:37:                                     ; preds = %4
  br label %106, !dbg !272

; <label>:38:                                     ; preds = %4
  br label %106, !dbg !273

; <label>:39:                                     ; preds = %4
  br label %106, !dbg !274

; <label>:40:                                     ; preds = %4
  br label %106, !dbg !275

; <label>:41:                                     ; preds = %4
  br label %106, !dbg !276

; <label>:42:                                     ; preds = %4
  br label %106, !dbg !277

; <label>:43:                                     ; preds = %4
  br label %106, !dbg !278

; <label>:44:                                     ; preds = %4
  br label %106, !dbg !279

; <label>:45:                                     ; preds = %4
  br label %106, !dbg !280

; <label>:46:                                     ; preds = %4
  br label %106, !dbg !281

; <label>:47:                                     ; preds = %4
  br label %106, !dbg !282

; <label>:48:                                     ; preds = %4
  br label %106, !dbg !283

; <label>:49:                                     ; preds = %4
  br label %106, !dbg !284

; <label>:50:                                     ; preds = %4
  br label %106, !dbg !285

; <label>:51:                                     ; preds = %4
  br label %106, !dbg !286

; <label>:52:                                     ; preds = %4
  br label %106, !dbg !287

; <label>:53:                                     ; preds = %4
  br label %106, !dbg !288

; <label>:54:                                     ; preds = %4
  br label %106, !dbg !289

; <label>:55:                                     ; preds = %4
  br label %106, !dbg !290

; <label>:56:                                     ; preds = %4
  br label %106, !dbg !291

; <label>:57:                                     ; preds = %4
  br label %106, !dbg !292

; <label>:58:                                     ; preds = %4
  br label %106, !dbg !293

; <label>:59:                                     ; preds = %4
  br label %106, !dbg !294

; <label>:60:                                     ; preds = %4
  br label %106, !dbg !295

; <label>:61:                                     ; preds = %4
  br label %106, !dbg !296

; <label>:62:                                     ; preds = %4
  br label %106, !dbg !297

; <label>:63:                                     ; preds = %4
  br label %106, !dbg !298

; <label>:64:                                     ; preds = %4
  br label %106, !dbg !299

; <label>:65:                                     ; preds = %4
  br label %106, !dbg !300

; <label>:66:                                     ; preds = %4
  br label %106, !dbg !301

; <label>:67:                                     ; preds = %4
  br label %106, !dbg !302

; <label>:68:                                     ; preds = %4
  br label %106, !dbg !303

; <label>:69:                                     ; preds = %4
  br label %106, !dbg !304

; <label>:70:                                     ; preds = %4
  br label %106, !dbg !305

; <label>:71:                                     ; preds = %4
  br label %106, !dbg !306

; <label>:72:                                     ; preds = %4
  br label %106, !dbg !307

; <label>:73:                                     ; preds = %4
  br label %106, !dbg !308

; <label>:74:                                     ; preds = %4
  br label %106, !dbg !309

; <label>:75:                                     ; preds = %4
  br label %106, !dbg !310

; <label>:76:                                     ; preds = %4
  br label %106, !dbg !311

; <label>:77:                                     ; preds = %4
  br label %106, !dbg !312

; <label>:78:                                     ; preds = %4
  br label %106, !dbg !313

; <label>:79:                                     ; preds = %4
  br label %106, !dbg !314

; <label>:80:                                     ; preds = %4
  br label %106, !dbg !315

; <label>:81:                                     ; preds = %4
  br label %106, !dbg !316

; <label>:82:                                     ; preds = %4
  br label %106, !dbg !317

; <label>:83:                                     ; preds = %4
  br label %106, !dbg !318

; <label>:84:                                     ; preds = %4
  br label %106, !dbg !319

; <label>:85:                                     ; preds = %4
  br label %106, !dbg !320

; <label>:86:                                     ; preds = %4
  br label %106, !dbg !321

; <label>:87:                                     ; preds = %4
  br label %106, !dbg !322

; <label>:88:                                     ; preds = %4
  br label %106, !dbg !323

; <label>:89:                                     ; preds = %4
  br label %106, !dbg !324

; <label>:90:                                     ; preds = %4
  br label %106, !dbg !325

; <label>:91:                                     ; preds = %4
  br label %106, !dbg !326

; <label>:92:                                     ; preds = %4
  br label %106, !dbg !327

; <label>:93:                                     ; preds = %4
  br label %106, !dbg !328

; <label>:94:                                     ; preds = %4
  br label %106, !dbg !329

; <label>:95:                                     ; preds = %4
  br label %106, !dbg !330

; <label>:96:                                     ; preds = %4
  br label %106, !dbg !331

; <label>:97:                                     ; preds = %4
  br label %106, !dbg !332

; <label>:98:                                     ; preds = %4
  br label %106, !dbg !333

; <label>:99:                                     ; preds = %4
  %100 = icmp eq i32* %3, null, !dbg !334
  %101 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 0, !dbg !336
  %102 = select i1 %100, i32* %101, i32* %3, !dbg !337
  %103 = tail call i8* @_user_strerror(i32 %1, i32 %2, i32* %102) #3, !dbg !338
  %104 = icmp eq i8* %103, null, !dbg !341
  %105 = select i1 %104, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.95, i64 0, i64 0), i8* %103, !dbg !342
  br label %106, !dbg !343

; <label>:106:                                    ; preds = %4, %99, %98, %97, %96, %95, %94, %93, %92, %91, %90, %89, %88, %87, %86, %85, %84, %83, %82, %81, %80, %79, %78, %77, %76, %75, %74, %73, %72, %71, %70, %69, %68, %67, %66, %65, %64, %63, %62, %61, %60, %59, %58, %57, %56, %55, %54, %53, %52, %51, %50, %49, %48, %47, %46, %45, %44, %43, %42, %41, %40, %39, %38, %37, %36, %35, %34, %33, %32, %31, %30, %29, %28, %27, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5
  %107 = phi i8* [ %105, %99 ], [ getelementptr inbounds ([21 x i8], [21 x i8]* @.str.94, i64 0, i64 0), %98 ], [ getelementptr inbounds ([17 x i8], [17 x i8]* @.str.93, i64 0, i64 0), %97 ], [ getelementptr inbounds ([38 x i8], [38 x i8]* @.str.92, i64 0, i64 0), %96 ], [ getelementptr inbounds ([34 x i8], [34 x i8]* @.str.91, i64 0, i64 0), %95 ], [ getelementptr inbounds ([19 x i8], [19 x i8]* @.str.90, i64 0, i64 0), %94 ], [ getelementptr inbounds ([20 x i8], [20 x i8]* @.str.89, i64 0, i64 0), %93 ], [ getelementptr inbounds ([22 x i8], [22 x i8]* @.str.88, i64 0, i64 0), %92 ], [ getelementptr inbounds ([19 x i8], [19 x i8]* @.str.87, i64 0, i64 0), %91 ], [ getelementptr inbounds ([28 x i8], [28 x i8]* @.str.86, i64 0, i64 0), %90 ], [ getelementptr inbounds ([26 x i8], [26 x i8]* @.str.85, i64 0, i64 0), %89 ], [ getelementptr inbounds ([24 x i8], [24 x i8]* @.str.84, i64 0, i64 0), %88 ], [ getelementptr inbounds ([33 x i8], [33 x i8]* @.str.83, i64 0, i64 0), %87 ], [ getelementptr inbounds ([22 x i8], [22 x i8]* @.str.82, i64 0, i64 0), %86 ], [ getelementptr inbounds ([23 x i8], [23 x i8]* @.str.81, i64 0, i64 0), %85 ], [ getelementptr inbounds ([25 x i8], [25 x i8]* @.str.80, i64 0, i64 0), %84 ], [ getelementptr inbounds ([19 x i8], [19 x i8]* @.str.79, i64 0, i64 0), %83 ], [ getelementptr inbounds ([33 x i8], [33 x i8]* @.str.78, i64 0, i64 0), %82 ], [ getelementptr inbounds ([23 x i8], [23 x i8]* @.str.77, i64 0, i64 0), %81 ], [ getelementptr inbounds ([31 x i8], [31 x i8]* @.str.76, i64 0, i64 0), %80 ], [ getelementptr inbounds ([31 x i8], [31 x i8]* @.str.75, i64 0, i64 0), %79 ], [ getelementptr inbounds ([48 x i8], [48 x i8]* @.str.74, i64 0, i64 0), %78 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.73, i64 0, i64 0), %77 ], [ getelementptr inbounds ([26 x i8], [26 x i8]* @.str.72, i64 0, i64 0), %76 ], [ getelementptr inbounds ([24 x i8], [24 x i8]* @.str.71, i64 0, i64 0), %75 ], [ getelementptr inbounds ([27 x i8], [27 x i8]* @.str.70, i64 0, i64 0), %74 ], [ getelementptr inbounds ([20 x i8], [20 x i8]* @.str.69, i64 0, i64 0), %73 ], [ getelementptr inbounds ([25 x i8], [25 x i8]* @.str.68, i64 0, i64 0), %72 ], [ getelementptr inbounds ([38 x i8], [38 x i8]* @.str.67, i64 0, i64 0), %71 ], [ getelementptr inbounds ([62 x i8], [62 x i8]* @.str.66, i64 0, i64 0), %70 ], [ getelementptr inbounds ([32 x i8], [32 x i8]* @.str.65, i64 0, i64 0), %69 ], [ getelementptr inbounds ([37 x i8], [37 x i8]* @.str.64, i64 0, i64 0), %68 ], [ getelementptr inbounds ([38 x i8], [38 x i8]* @.str.63, i64 0, i64 0), %67 ], [ getelementptr inbounds ([12 x i8], [12 x i8]* @.str.62, i64 0, i64 0), %66 ], [ getelementptr inbounds ([19 x i8], [19 x i8]* @.str.61, i64 0, i64 0), %65 ], [ getelementptr inbounds ([17 x i8], [17 x i8]* @.str.60, i64 0, i64 0), %64 ], [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.59, i64 0, i64 0), %63 ], [ getelementptr inbounds ([20 x i8], [20 x i8]* @.str.58, i64 0, i64 0), %62 ], [ getelementptr inbounds ([14 x i8], [14 x i8]* @.str.57, i64 0, i64 0), %61 ], [ getelementptr inbounds ([16 x i8], [16 x i8]* @.str.56, i64 0, i64 0), %60 ], [ getelementptr inbounds ([24 x i8], [24 x i8]* @.str.55, i64 0, i64 0), %59 ], [ getelementptr inbounds ([19 x i8], [19 x i8]* @.str.54, i64 0, i64 0), %58 ], [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str.53, i64 0, i64 0), %57 ], [ getelementptr inbounds ([30 x i8], [30 x i8]* @.str.52, i64 0, i64 0), %56 ], [ getelementptr inbounds ([20 x i8], [20 x i8]* @.str.51, i64 0, i64 0), %55 ], [ getelementptr inbounds ([21 x i8], [21 x i8]* @.str.50, i64 0, i64 0), %54 ], [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.49, i64 0, i64 0), %53 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.48, i64 0, i64 0), %52 ], [ getelementptr inbounds ([23 x i8], [23 x i8]* @.str.47, i64 0, i64 0), %51 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.46, i64 0, i64 0), %50 ], [ getelementptr inbounds ([22 x i8], [22 x i8]* @.str.45, i64 0, i64 0), %49 ], [ getelementptr inbounds ([19 x i8], [19 x i8]* @.str.44, i64 0, i64 0), %48 ], [ getelementptr inbounds ([27 x i8], [27 x i8]* @.str.43, i64 0, i64 0), %47 ], [ getelementptr inbounds ([17 x i8], [17 x i8]* @.str.42, i64 0, i64 0), %46 ], [ getelementptr inbounds ([47 x i8], [47 x i8]* @.str.41, i64 0, i64 0), %45 ], [ getelementptr inbounds ([12 x i8], [12 x i8]* @.str.40, i64 0, i64 0), %44 ], [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.39, i64 0, i64 0), %43 ], [ getelementptr inbounds ([22 x i8], [22 x i8]* @.str.38, i64 0, i64 0), %42 ], [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.37, i64 0, i64 0), %41 ], [ getelementptr inbounds ([14 x i8], [14 x i8]* @.str.36, i64 0, i64 0), %40 ], [ getelementptr inbounds ([24 x i8], [24 x i8]* @.str.35, i64 0, i64 0), %39 ], [ getelementptr inbounds ([20 x i8], [20 x i8]* @.str.34, i64 0, i64 0), %38 ], [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.33, i64 0, i64 0), %37 ], [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.32, i64 0, i64 0), %36 ], [ getelementptr inbounds ([23 x i8], [23 x i8]* @.str.31, i64 0, i64 0), %35 ], [ getelementptr inbounds ([32 x i8], [32 x i8]* @.str.30, i64 0, i64 0), %34 ], [ getelementptr inbounds ([30 x i8], [30 x i8]* @.str.29, i64 0, i64 0), %33 ], [ getelementptr inbounds ([30 x i8], [30 x i8]* @.str.28, i64 0, i64 0), %32 ], [ getelementptr inbounds ([36 x i8], [36 x i8]* @.str.27, i64 0, i64 0), %31 ], [ getelementptr inbounds ([17 x i8], [17 x i8]* @.str.26, i64 0, i64 0), %30 ], [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i64 0, i64 0), %29 ], [ getelementptr inbounds ([31 x i8], [31 x i8]* @.str.24, i64 0, i64 0), %28 ], [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i64 0, i64 0), %27 ], [ getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i64 0, i64 0), %26 ], [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), %25 ], [ getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i64 0, i64 0), %24 ], [ getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i64 0, i64 0), %23 ], [ getelementptr inbounds ([24 x i8], [24 x i8]* @.str.18, i64 0, i64 0), %22 ], [ getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i64 0, i64 0), %21 ], [ getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0), %20 ], [ getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0), %19 ], [ getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), %18 ], [ getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0), %17 ], [ getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0), %16 ], [ getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), %15 ], [ getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), %14 ], [ getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), %13 ], [ getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), %12 ], [ getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), %11 ], [ getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), %10 ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), %9 ], [ getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), %8 ], [ getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), %7 ], [ getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), %6 ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), %5 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %4 ], !dbg !344
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !345
  ret i8* %107, !dbg !345
}

; Function Attrs: noredzone
declare dso_local i8* @_user_strerror(i32, i32, i32*) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local i8* @strerror(i32) local_unnamed_addr #0 !dbg !346 {
  %2 = tail call %struct._reent* @__getreent() #3, !dbg !352
  %3 = tail call i8* @_strerror_r(%struct._reent* %2, i32 %0, i32 0, i32* null) #4, !dbg !353
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !354
  ret i8* %3, !dbg !354
}

; Function Attrs: noredzone
declare dso_local %struct._reent* @__getreent() local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local i8* @strerror_l(i32, %struct.__locale_t* nocapture readnone) local_unnamed_addr #0 !dbg !355 {
  %3 = tail call %struct._reent* @__getreent() #3, !dbg !365
  %4 = tail call i8* @_strerror_r(%struct._reent* %3, i32 %0, i32 0, i32* null) #4, !dbg !366
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !367
  ret i8* %4, !dbg !367
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }
attributes #4 = { nobuiltin noredzone }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/strerror.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "_strerror_r", scope: !1, file: !1, line: 393, type: !8, isLocal: false, isDefinition: true, scopeLine: 398, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !231)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !12, !17, !17, !230}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !14, line: 569, size: 14912, elements: !15)
!14 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!15 = !{!16, !18, !98, !99, !100, !101, !105, !106, !109, !110, !114, !126, !127, !128, !130, !131, !132, !194, !215, !216, !221, !228}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !13, file: !14, line: 571, baseType: !17, size: 32)
!17 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !13, file: !14, line: 576, baseType: !19, size: 64, offset: 64)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !14, line: 287, baseType: !21)
!21 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !14, line: 181, size: 1408, elements: !22)
!22 = !{!23, !26, !27, !28, !30, !31, !36, !37, !39, !46, !52, !57, !61, !62, !63, !64, !68, !72, !73, !74, !76, !77, !81, !97}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !21, file: !14, line: 182, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !21, file: !14, line: 183, baseType: !17, size: 32, offset: 64)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !21, file: !14, line: 184, baseType: !17, size: 32, offset: 96)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !21, file: !14, line: 185, baseType: !29, size: 16, offset: 128)
!29 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !21, file: !14, line: 186, baseType: !29, size: 16, offset: 144)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !21, file: !14, line: 187, baseType: !32, size: 128, offset: 192)
!32 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !14, line: 117, size: 128, elements: !33)
!33 = !{!34, !35}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !32, file: !14, line: 118, baseType: !24, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !32, file: !14, line: 119, baseType: !17, size: 32, offset: 64)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !21, file: !14, line: 188, baseType: !17, size: 32, offset: 320)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !21, file: !14, line: 195, baseType: !38, size: 64, offset: 384)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !21, file: !14, line: 197, baseType: !40, size: 64, offset: 448)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DISubroutineType(types: !42)
!42 = !{!43, !12, !38, !10, !17}
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !44, line: 145, baseType: !45)
!44 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!45 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !21, file: !14, line: 199, baseType: !47, size: 64, offset: 512)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DISubroutineType(types: !49)
!49 = !{!43, !12, !38, !50, !17}
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !21, file: !14, line: 202, baseType: !53, size: 64, offset: 576)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = !DISubroutineType(types: !55)
!55 = !{!56, !12, !38, !56, !17}
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !44, line: 114, baseType: !45)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !21, file: !14, line: 203, baseType: !58, size: 64, offset: 640)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DISubroutineType(types: !60)
!60 = !{!17, !12, !38}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !21, file: !14, line: 206, baseType: !32, size: 128, offset: 704)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !21, file: !14, line: 207, baseType: !24, size: 64, offset: 832)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !21, file: !14, line: 208, baseType: !17, size: 32, offset: 896)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !21, file: !14, line: 211, baseType: !65, size: 24, offset: 928)
!65 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 24, elements: !66)
!66 = !{!67}
!67 = !DISubrange(count: 3)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !21, file: !14, line: 212, baseType: !69, size: 8, offset: 952)
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 8, elements: !70)
!70 = !{!71}
!71 = !DISubrange(count: 1)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !21, file: !14, line: 215, baseType: !32, size: 128, offset: 960)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !21, file: !14, line: 218, baseType: !17, size: 32, offset: 1088)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !21, file: !14, line: 219, baseType: !75, size: 64, offset: 1152)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !44, line: 44, baseType: !45)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !21, file: !14, line: 222, baseType: !12, size: 64, offset: 1216)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !21, file: !14, line: 226, baseType: !78, size: 32, offset: 1280)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !44, line: 175, baseType: !79)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !80, line: 12, baseType: !17)
!80 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !21, file: !14, line: 228, baseType: !82, size: 64, offset: 1312)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !44, line: 171, baseType: !83)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !44, line: 163, size: 64, elements: !84)
!84 = !{!85, !86}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !83, file: !44, line: 165, baseType: !17, size: 32)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !83, file: !44, line: 170, baseType: !87, size: 32, offset: 32)
!87 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !83, file: !44, line: 166, size: 32, elements: !88)
!88 = !{!89, !93}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !87, file: !44, line: 168, baseType: !90, size: 32)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !91, line: 124, baseType: !92)
!91 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!92 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !87, file: !44, line: 169, baseType: !94, size: 32)
!94 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 32, elements: !95)
!95 = !{!96}
!96 = !DISubrange(count: 4)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !21, file: !14, line: 229, baseType: !17, size: 32, offset: 1376)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !13, file: !14, line: 576, baseType: !19, size: 64, offset: 128)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !13, file: !14, line: 576, baseType: !19, size: 64, offset: 192)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !13, file: !14, line: 578, baseType: !17, size: 32, offset: 256)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !13, file: !14, line: 579, baseType: !102, size: 200, offset: 288)
!102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 200, elements: !103)
!103 = !{!104}
!104 = !DISubrange(count: 25)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !13, file: !14, line: 582, baseType: !17, size: 32, offset: 512)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !13, file: !14, line: 583, baseType: !107, size: 64, offset: 576)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !14, line: 40, flags: DIFlagFwdDecl)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !13, file: !14, line: 585, baseType: !17, size: 32, offset: 640)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !13, file: !14, line: 587, baseType: !111, size: 64, offset: 704)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = !DISubroutineType(types: !113)
!113 = !{null, !12}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !13, file: !14, line: 590, baseType: !115, size: 64, offset: 768)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !14, line: 47, size: 256, elements: !117)
!117 = !{!118, !119, !120, !121, !122, !123}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !116, file: !14, line: 49, baseType: !115, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !116, file: !14, line: 50, baseType: !17, size: 32, offset: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !116, file: !14, line: 50, baseType: !17, size: 32, offset: 96)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !116, file: !14, line: 50, baseType: !17, size: 32, offset: 128)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !116, file: !14, line: 50, baseType: !17, size: 32, offset: 160)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !116, file: !14, line: 51, baseType: !124, size: 32, offset: 192)
!124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 32, elements: !70)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !14, line: 25, baseType: !92)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !13, file: !14, line: 591, baseType: !17, size: 32, offset: 832)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !13, file: !14, line: 592, baseType: !115, size: 64, offset: 896)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !13, file: !14, line: 593, baseType: !129, size: 64, offset: 960)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !13, file: !14, line: 596, baseType: !17, size: 32, offset: 1024)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !13, file: !14, line: 597, baseType: !10, size: 64, offset: 1088)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !13, file: !14, line: 632, baseType: !133, size: 2880, offset: 1152)
!133 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !13, file: !14, line: 599, size: 2880, elements: !134)
!134 = !{!135, !185}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !133, file: !14, line: 622, baseType: !136, size: 1728)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !133, file: !14, line: 601, size: 1728, elements: !137)
!137 = !{!138, !139, !140, !144, !156, !157, !159, !167, !168, !169, !170, !174, !178, !179, !180, !181, !182, !183, !184}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !136, file: !14, line: 603, baseType: !92, size: 32)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !136, file: !14, line: 604, baseType: !10, size: 64, offset: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !136, file: !14, line: 605, baseType: !141, size: 208, offset: 128)
!141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 208, elements: !142)
!142 = !{!143}
!143 = !DISubrange(count: 26)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !136, file: !14, line: 606, baseType: !145, size: 288, offset: 352)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !14, line: 55, size: 288, elements: !146)
!146 = !{!147, !148, !149, !150, !151, !152, !153, !154, !155}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !145, file: !14, line: 57, baseType: !17, size: 32)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !145, file: !14, line: 58, baseType: !17, size: 32, offset: 32)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !145, file: !14, line: 59, baseType: !17, size: 32, offset: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !145, file: !14, line: 60, baseType: !17, size: 32, offset: 96)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !145, file: !14, line: 61, baseType: !17, size: 32, offset: 128)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !145, file: !14, line: 62, baseType: !17, size: 32, offset: 160)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !145, file: !14, line: 63, baseType: !17, size: 32, offset: 192)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !145, file: !14, line: 64, baseType: !17, size: 32, offset: 224)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !145, file: !14, line: 65, baseType: !17, size: 32, offset: 256)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !136, file: !14, line: 607, baseType: !17, size: 32, offset: 640)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !136, file: !14, line: 608, baseType: !158, size: 64, offset: 704)
!158 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !136, file: !14, line: 609, baseType: !160, size: 112, offset: 768)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !14, line: 319, size: 112, elements: !161)
!161 = !{!162, !165, !166}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !160, file: !14, line: 320, baseType: !163, size: 48)
!163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 48, elements: !66)
!164 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !160, file: !14, line: 321, baseType: !163, size: 48, offset: 48)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !160, file: !14, line: 322, baseType: !164, size: 16, offset: 96)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !136, file: !14, line: 610, baseType: !82, size: 64, offset: 896)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !136, file: !14, line: 611, baseType: !82, size: 64, offset: 960)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !136, file: !14, line: 612, baseType: !82, size: 64, offset: 1024)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !136, file: !14, line: 613, baseType: !171, size: 64, offset: 1088)
!171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 64, elements: !172)
!172 = !{!173}
!173 = !DISubrange(count: 8)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !136, file: !14, line: 614, baseType: !175, size: 192, offset: 1152)
!175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 192, elements: !176)
!176 = !{!177}
!177 = !DISubrange(count: 24)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !136, file: !14, line: 615, baseType: !17, size: 32, offset: 1344)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !136, file: !14, line: 616, baseType: !82, size: 64, offset: 1376)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !136, file: !14, line: 617, baseType: !82, size: 64, offset: 1440)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !136, file: !14, line: 618, baseType: !82, size: 64, offset: 1504)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !136, file: !14, line: 619, baseType: !82, size: 64, offset: 1568)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !136, file: !14, line: 620, baseType: !82, size: 64, offset: 1632)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !136, file: !14, line: 621, baseType: !17, size: 32, offset: 1696)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !133, file: !14, line: 631, baseType: !186, size: 2880)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !133, file: !14, line: 626, size: 2880, elements: !187)
!187 = !{!188, !192}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !186, file: !14, line: 629, baseType: !189, size: 1920)
!189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 1920, elements: !190)
!190 = !{!191}
!191 = !DISubrange(count: 30)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !186, file: !14, line: 630, baseType: !193, size: 960, offset: 1920)
!193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 960, elements: !190)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !13, file: !14, line: 636, baseType: !195, size: 64, offset: 4032)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !14, line: 93, size: 6336, elements: !197)
!197 = !{!198, !199, !200, !207}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !196, file: !14, line: 94, baseType: !195, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !196, file: !14, line: 95, baseType: !17, size: 32, offset: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !196, file: !14, line: 97, baseType: !201, size: 2048, offset: 128)
!201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !202, size: 2048, elements: !205)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = !DISubroutineType(types: !204)
!204 = !{null}
!205 = !{!206}
!206 = !DISubrange(count: 32)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !196, file: !14, line: 98, baseType: !208, size: 4160, offset: 2176)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !14, line: 74, size: 4160, elements: !209)
!209 = !{!210, !212, !213, !214}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !208, file: !14, line: 75, baseType: !211, size: 2048)
!211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 2048, elements: !205)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !208, file: !14, line: 76, baseType: !211, size: 2048, offset: 2048)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !208, file: !14, line: 78, baseType: !125, size: 32, offset: 4096)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !208, file: !14, line: 81, baseType: !125, size: 32, offset: 4128)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !13, file: !14, line: 637, baseType: !196, size: 6336, offset: 4096)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !13, file: !14, line: 641, baseType: !217, size: 64, offset: 10432)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = !DISubroutineType(types: !220)
!220 = !{null, !17}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !13, file: !14, line: 646, baseType: !222, size: 192, offset: 10496)
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !14, line: 291, size: 192, elements: !223)
!223 = !{!224, !226, !227}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !222, file: !14, line: 293, baseType: !225, size: 64)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !222, file: !14, line: 294, baseType: !17, size: 32, offset: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !222, file: !14, line: 295, baseType: !19, size: 64, offset: 128)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !13, file: !14, line: 648, baseType: !229, size: 4224, offset: 10688)
!229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 4224, elements: !66)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!231 = !{!232, !233, !234, !235, !236}
!232 = !DILocalVariable(name: "ptr", arg: 1, scope: !7, file: !1, line: 393, type: !12)
!233 = !DILocalVariable(name: "errnum", arg: 2, scope: !7, file: !1, line: 393, type: !17)
!234 = !DILocalVariable(name: "internal", arg: 3, scope: !7, file: !1, line: 393, type: !17)
!235 = !DILocalVariable(name: "errptr", arg: 4, scope: !7, file: !1, line: 393, type: !230)
!236 = !DILocalVariable(name: "error", scope: !7, file: !1, line: 399, type: !10)
!237 = !DILocation(line: 393, column: 1, scope: !7)
!238 = !DILocation(line: 402, column: 3, scope: !7)
!239 = !DILocation(line: 411, column: 7, scope: !240)
!240 = distinct !DILexicalBlock(scope: !7, file: !1, line: 403, column: 5)
!241 = !DILocation(line: 416, column: 7, scope: !240)
!242 = !DILocation(line: 421, column: 7, scope: !240)
!243 = !DILocation(line: 426, column: 7, scope: !240)
!244 = !DILocation(line: 431, column: 7, scope: !240)
!245 = !DILocation(line: 437, column: 7, scope: !240)
!246 = !DILocation(line: 442, column: 7, scope: !240)
!247 = !DILocation(line: 447, column: 7, scope: !240)
!248 = !DILocation(line: 452, column: 7, scope: !240)
!249 = !DILocation(line: 457, column: 7, scope: !240)
!250 = !DILocation(line: 462, column: 7, scope: !240)
!251 = !DILocation(line: 467, column: 7, scope: !240)
!252 = !DILocation(line: 472, column: 7, scope: !240)
!253 = !DILocation(line: 477, column: 7, scope: !240)
!254 = !DILocation(line: 482, column: 7, scope: !240)
!255 = !DILocation(line: 487, column: 7, scope: !240)
!256 = !DILocation(line: 492, column: 7, scope: !240)
!257 = !DILocation(line: 497, column: 7, scope: !240)
!258 = !DILocation(line: 502, column: 7, scope: !240)
!259 = !DILocation(line: 507, column: 7, scope: !240)
!260 = !DILocation(line: 512, column: 7, scope: !240)
!261 = !DILocation(line: 517, column: 7, scope: !240)
!262 = !DILocation(line: 522, column: 7, scope: !240)
!263 = !DILocation(line: 527, column: 7, scope: !240)
!264 = !DILocation(line: 532, column: 7, scope: !240)
!265 = !DILocation(line: 537, column: 7, scope: !240)
!266 = !DILocation(line: 542, column: 7, scope: !240)
!267 = !DILocation(line: 547, column: 7, scope: !240)
!268 = !DILocation(line: 552, column: 7, scope: !240)
!269 = !DILocation(line: 557, column: 7, scope: !240)
!270 = !DILocation(line: 562, column: 7, scope: !240)
!271 = !DILocation(line: 567, column: 7, scope: !240)
!272 = !DILocation(line: 572, column: 7, scope: !240)
!273 = !DILocation(line: 577, column: 7, scope: !240)
!274 = !DILocation(line: 582, column: 7, scope: !240)
!275 = !DILocation(line: 587, column: 7, scope: !240)
!276 = !DILocation(line: 592, column: 7, scope: !240)
!277 = !DILocation(line: 597, column: 7, scope: !240)
!278 = !DILocation(line: 602, column: 7, scope: !240)
!279 = !DILocation(line: 607, column: 7, scope: !240)
!280 = !DILocation(line: 612, column: 7, scope: !240)
!281 = !DILocation(line: 617, column: 7, scope: !240)
!282 = !DILocation(line: 622, column: 7, scope: !240)
!283 = !DILocation(line: 627, column: 7, scope: !240)
!284 = !DILocation(line: 632, column: 7, scope: !240)
!285 = !DILocation(line: 637, column: 7, scope: !240)
!286 = !DILocation(line: 642, column: 7, scope: !240)
!287 = !DILocation(line: 647, column: 7, scope: !240)
!288 = !DILocation(line: 652, column: 7, scope: !240)
!289 = !DILocation(line: 657, column: 7, scope: !240)
!290 = !DILocation(line: 662, column: 7, scope: !240)
!291 = !DILocation(line: 667, column: 7, scope: !240)
!292 = !DILocation(line: 672, column: 7, scope: !240)
!293 = !DILocation(line: 677, column: 7, scope: !240)
!294 = !DILocation(line: 682, column: 7, scope: !240)
!295 = !DILocation(line: 687, column: 7, scope: !240)
!296 = !DILocation(line: 692, column: 7, scope: !240)
!297 = !DILocation(line: 697, column: 7, scope: !240)
!298 = !DILocation(line: 702, column: 7, scope: !240)
!299 = !DILocation(line: 707, column: 7, scope: !240)
!300 = !DILocation(line: 712, column: 7, scope: !240)
!301 = !DILocation(line: 717, column: 7, scope: !240)
!302 = !DILocation(line: 722, column: 7, scope: !240)
!303 = !DILocation(line: 727, column: 7, scope: !240)
!304 = !DILocation(line: 732, column: 7, scope: !240)
!305 = !DILocation(line: 737, column: 7, scope: !240)
!306 = !DILocation(line: 742, column: 7, scope: !240)
!307 = !DILocation(line: 747, column: 7, scope: !240)
!308 = !DILocation(line: 757, column: 7, scope: !240)
!309 = !DILocation(line: 762, column: 7, scope: !240)
!310 = !DILocation(line: 767, column: 7, scope: !240)
!311 = !DILocation(line: 772, column: 7, scope: !240)
!312 = !DILocation(line: 777, column: 7, scope: !240)
!313 = !DILocation(line: 782, column: 7, scope: !240)
!314 = !DILocation(line: 787, column: 7, scope: !240)
!315 = !DILocation(line: 792, column: 7, scope: !240)
!316 = !DILocation(line: 797, column: 7, scope: !240)
!317 = !DILocation(line: 802, column: 7, scope: !240)
!318 = !DILocation(line: 807, column: 7, scope: !240)
!319 = !DILocation(line: 812, column: 7, scope: !240)
!320 = !DILocation(line: 817, column: 7, scope: !240)
!321 = !DILocation(line: 822, column: 7, scope: !240)
!322 = !DILocation(line: 827, column: 7, scope: !240)
!323 = !DILocation(line: 837, column: 9, scope: !240)
!324 = !DILocation(line: 842, column: 9, scope: !240)
!325 = !DILocation(line: 847, column: 9, scope: !240)
!326 = !DILocation(line: 852, column: 9, scope: !240)
!327 = !DILocation(line: 857, column: 9, scope: !240)
!328 = !DILocation(line: 862, column: 9, scope: !240)
!329 = !DILocation(line: 867, column: 2, scope: !240)
!330 = !DILocation(line: 872, column: 9, scope: !240)
!331 = !DILocation(line: 877, column: 7, scope: !240)
!332 = !DILocation(line: 882, column: 9, scope: !240)
!333 = !DILocation(line: 887, column: 9, scope: !240)
!334 = !DILocation(line: 890, column: 12, scope: !335)
!335 = distinct !DILexicalBlock(scope: !240, file: !1, line: 890, column: 11)
!336 = !DILocation(line: 891, column: 24, scope: !335)
!337 = !DILocation(line: 890, column: 11, scope: !240)
!338 = !DILocation(line: 892, column: 20, scope: !339)
!339 = distinct !DILexicalBlock(scope: !240, file: !1, line: 892, column: 11)
!340 = !DILocation(line: 399, column: 9, scope: !7)
!341 = !DILocation(line: 892, column: 63, scope: !339)
!342 = !DILocation(line: 892, column: 11, scope: !240)
!343 = !DILocation(line: 894, column: 7, scope: !240)
!344 = !DILocation(line: 0, scope: !240)
!345 = !DILocation(line: 897, column: 3, scope: !7)
!346 = distinct !DISubprogram(name: "strerror", scope: !1, file: !1, line: 901, type: !347, isLocal: false, isDefinition: true, scopeLine: 903, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !349)
!347 = !DISubroutineType(types: !348)
!348 = !{!10, !17}
!349 = !{!350}
!350 = !DILocalVariable(name: "errnum", arg: 1, scope: !346, file: !1, line: 901, type: !17)
!351 = !DILocation(line: 901, column: 1, scope: !346)
!352 = !DILocation(line: 904, column: 23, scope: !346)
!353 = !DILocation(line: 904, column: 10, scope: !346)
!354 = !DILocation(line: 904, column: 3, scope: !346)
!355 = distinct !DISubprogram(name: "strerror_l", scope: !1, file: !1, line: 908, type: !356, isLocal: false, isDefinition: true, scopeLine: 909, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !360)
!356 = !DISubroutineType(types: !357)
!357 = !{!10, !17, !358}
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "locale_t", file: !359, line: 10, baseType: !107)
!359 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/xlocale.h", directory: "/root/.unikraft/apps/redis/build")
!360 = !{!361, !362}
!361 = !DILocalVariable(name: "errnum", arg: 1, scope: !355, file: !1, line: 908, type: !17)
!362 = !DILocalVariable(name: "locale", arg: 2, scope: !355, file: !1, line: 908, type: !358)
!363 = !DILocation(line: 908, column: 17, scope: !355)
!364 = !DILocation(line: 908, column: 34, scope: !355)
!365 = !DILocation(line: 911, column: 23, scope: !355)
!366 = !DILocation(line: 911, column: 10, scope: !355)
!367 = !DILocation(line: 911, column: 3, scope: !355)
