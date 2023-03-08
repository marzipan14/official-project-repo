; ModuleID = '/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/core/ipv6/ip6_addr.c'
source_filename = "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/core/ipv6/ip6_addr.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ip_addr = type { %union.anon, i8 }
%union.anon = type { %struct.ip6_addr }
%struct.ip6_addr = type { [4 x i32], i8 }
%struct.uk_thread_status_block = type { i64, i64 }
%struct.ip4_addr = type { i32 }

@ip6_addr_any = dso_local local_unnamed_addr constant %struct.ip_addr { %union.anon zeroinitializer, i8 6 }, align 4, !dbg !0
@ip6addr_ntoa.str = internal global [40 x i8] zeroinitializer, align 16, !dbg !21
@.str = private unnamed_addr constant [8 x i8] c"::FFFF:\00", align 1
@_intrstack_start = external dso_local global [0 x i8], align 1
@_end = external dso_local global [0 x i8], align 1
@tsb_comp1 = external dso_local global [32 x %struct.uk_thread_status_block], align 16
@tsb_comp0 = external dso_local global [32 x %struct.uk_thread_status_block], align 16
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @ip6addr_aton(i8*, %struct.ip6_addr*) local_unnamed_addr #0 !dbg !66 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ip4_addr, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !115
  %5 = load i8, i8* %0, align 1, !dbg !117, !tbaa !119
  %6 = icmp eq i8 %5, 0, !dbg !122
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !123
  br i1 %6, label %34, label %7, !dbg !123

; <label>:7:                                      ; preds = %2, %29
  %8 = phi i8 [ %32, %29 ], [ %5, %2 ]
  %9 = phi i8* [ %31, %29 ], [ %0, %2 ]
  %10 = phi i32 [ %30, %29 ], [ 8, %2 ]
  %11 = icmp eq i8 %8, 58, !dbg !124
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !127
  br i1 %11, label %12, label %14, !dbg !127

; <label>:12:                                     ; preds = %7
  %13 = add i32 %10, -1, !dbg !128
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !130
  br label %29, !dbg !130

; <label>:14:                                     ; preds = %7
  %15 = icmp eq i8 %8, 46, !dbg !131
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !133
  br i1 %15, label %16, label %20, !dbg !133

; <label>:16:                                     ; preds = %14
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !134
  switch i32 %10, label %19 [
    i32 5, label %17
    i32 2, label %17
  ], !dbg !134

; <label>:17:                                     ; preds = %16, %16
  %18 = add i32 %10, -1, !dbg !137
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !139
  br label %34, !dbg !139

; <label>:19:                                     ; preds = %16
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !140
  br label %219, !dbg !140

; <label>:20:                                     ; preds = %14
  %21 = tail call i8* @__locale_ctype_ptr() #4, !dbg !142
  %22 = getelementptr inbounds i8, i8* %21, i64 1, !dbg !142
  %23 = load i8, i8* %9, align 1, !dbg !142, !tbaa !119
  %24 = zext i8 %23 to i64, !dbg !142
  %25 = getelementptr inbounds i8, i8* %22, i64 %24, !dbg !142
  %26 = load i8, i8* %25, align 1, !dbg !142, !tbaa !119
  %27 = and i8 %26, 68, !dbg !142
  %28 = icmp eq i8 %27, 0, !dbg !142
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !144
  br i1 %28, label %34, label %29, !dbg !144

; <label>:29:                                     ; preds = %20, %12
  %30 = phi i32 [ %13, %12 ], [ %10, %20 ], !dbg !145
  %31 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !146
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !147
  %32 = load i8, i8* %31, align 1, !dbg !117, !tbaa !119
  %33 = icmp eq i8 %32, 0, !dbg !122
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !123
  br i1 %33, label %34, label %7, !dbg !123, !llvm.loop !148

; <label>:34:                                     ; preds = %29, %20, %2, %17
  %35 = phi i32 [ %18, %17 ], [ 8, %2 ], [ %30, %29 ], [ %10, %20 ], !dbg !145
  %36 = phi i32 [ 1, %17 ], [ 0, %2 ], [ 0, %20 ], [ 0, %29 ], !dbg !145
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !153
  %37 = load i8, i8* %0, align 1, !dbg !154, !tbaa !119
  %38 = icmp eq i8 %37, 0, !dbg !155
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !156
  br i1 %38, label %183, label %39, !dbg !156

; <label>:39:                                     ; preds = %34
  %40 = icmp ne %struct.ip6_addr* %1, null
  %41 = icmp ne i32 %36, 0
  %42 = bitcast i32* %3 to i8*
  %43 = bitcast %struct.ip4_addr* %4 to i8*
  br label %44, !dbg !156

; <label>:44:                                     ; preds = %39, %174
  %45 = phi i8 [ %37, %39 ], [ %181, %174 ]
  %46 = phi i8* [ %0, %39 ], [ %180, %174 ]
  %47 = phi i32 [ 0, %39 ], [ %178, %174 ]
  %48 = phi i32 [ 0, %39 ], [ %177, %174 ]
  %49 = phi i32 [ %35, %39 ], [ %176, %174 ]
  %50 = phi i32 [ 0, %39 ], [ %175, %174 ]
  %51 = icmp eq i8 %45, 58, !dbg !157
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !158
  br i1 %51, label %52, label %120, !dbg !158

; <label>:52:                                     ; preds = %44
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !159
  br i1 %40, label %53, label %68, !dbg !159

; <label>:53:                                     ; preds = %52
  %54 = and i32 %48, 1, !dbg !160
  %55 = icmp eq i32 %54, 0, !dbg !160
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !164
  br i1 %55, label %62, label %56, !dbg !164

; <label>:56:                                     ; preds = %53
  %57 = add i32 %50, 1, !dbg !165
  %58 = zext i32 %50 to i64, !dbg !167
  %59 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 %58, !dbg !167
  %60 = load i32, i32* %59, align 4, !dbg !168, !tbaa !169
  %61 = or i32 %60, %47, !dbg !168
  store i32 %61, i32* %59, align 4, !dbg !168, !tbaa !169
  br label %66, !dbg !171

; <label>:62:                                     ; preds = %53
  %63 = shl i32 %47, 16, !dbg !172
  %64 = zext i32 %50 to i64, !dbg !174
  %65 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 %64, !dbg !174
  store i32 %63, i32* %65, align 4, !dbg !175, !tbaa !169
  br label %66

; <label>:66:                                     ; preds = %62, %56
  %67 = phi i32 [ %50, %62 ], [ %57, %56 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %68, !dbg !176

; <label>:68:                                     ; preds = %66, %52
  %69 = phi i32 [ %50, %52 ], [ %67, %66 ], !dbg !145
  %70 = add i32 %48, 1, !dbg !176
  %71 = icmp eq i32 %70, 6, !dbg !177
  %72 = and i1 %41, %71, !dbg !178
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !178
  br i1 %72, label %73, label %85, !dbg !178

; <label>:73:                                     ; preds = %68
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %43) #5, !dbg !179
  %74 = getelementptr inbounds i8, i8* %46, i64 1, !dbg !180
  %75 = call i32 @ip4addr_aton(i8* nonnull %74, %struct.ip4_addr* nonnull %4) #4, !dbg !182
  %76 = icmp eq i32 %75, 0, !dbg !184
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !186
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !187
  br i1 %76, label %77, label %78, !dbg !186

; <label>:77:                                     ; preds = %73
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %43) #5, !dbg !189
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !190
  br label %90, !dbg !190

; <label>:78:                                     ; preds = %73
  br i1 %40, label %80, label %79, !dbg !191

; <label>:79:                                     ; preds = %78
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !192
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %43) #5, !dbg !189
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %219

; <label>:80:                                     ; preds = %78
  %81 = getelementptr inbounds %struct.ip4_addr, %struct.ip4_addr* %4, i64 0, i32 0, !dbg !193
  %82 = load i32, i32* %81, align 4, !dbg !193, !tbaa !196
  %83 = call i32 @lwip_htonl(i32 %82) #4, !dbg !198
  %84 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 3, !dbg !199
  store i32 %83, i32* %84, align 4, !dbg !200, !tbaa !169
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !201
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %43) #5, !dbg !189
  br label %200

; <label>:85:                                     ; preds = %68
  %86 = icmp ugt i32 %70, 7, !dbg !202
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !190
  br i1 %86, label %89, label %87, !dbg !190

; <label>:87:                                     ; preds = %85
  %88 = getelementptr inbounds i8, i8* %46, i64 1, !dbg !204
  br label %90, !dbg !190

; <label>:89:                                     ; preds = %85
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !206
  br label %219, !dbg !206

; <label>:90:                                     ; preds = %87, %77
  %91 = phi i8* [ %88, %87 ], [ %74, %77 ], !dbg !204
  %92 = load i8, i8* %91, align 1, !dbg !204, !tbaa !119
  %93 = icmp eq i8 %92, 58, !dbg !208
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !209
  br i1 %93, label %94, label %174, !dbg !209

; <label>:94:                                     ; preds = %90
  %95 = getelementptr inbounds i8, i8* %46, i64 2, !dbg !210
  %96 = load i8, i8* %95, align 1, !dbg !210, !tbaa !119
  %97 = icmp eq i8 %96, 58, !dbg !213
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !214
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !215
  br i1 %97, label %219, label %98, !dbg !214

; <label>:98:                                     ; preds = %94, %115
  %99 = phi i32 [ %116, %115 ], [ %69, %94 ], !dbg !216
  %100 = phi i32 [ %104, %115 ], [ %49, %94 ], !dbg !220
  %101 = phi i32 [ %117, %115 ], [ %70, %94 ], !dbg !220
  %102 = icmp eq i32 %100, 0, !dbg !221
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !222
  br i1 %102, label %174, label %103, !dbg !222

; <label>:103:                                    ; preds = %98
  %104 = add i32 %100, -1, !dbg !223
  %105 = and i32 %101, 1, !dbg !224
  %106 = icmp eq i32 %105, 0, !dbg !224
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !225
  br i1 %106, label %109, label %107, !dbg !225

; <label>:107:                                    ; preds = %103
  %108 = add i32 %99, 1, !dbg !226
  br label %113, !dbg !227

; <label>:109:                                    ; preds = %103
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !228
  br i1 %40, label %110, label %115, !dbg !228

; <label>:110:                                    ; preds = %109
  %111 = zext i32 %99 to i64, !dbg !230
  %112 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 %111, !dbg !230
  store i32 0, i32* %112, align 4, !dbg !233, !tbaa !169
  br label %113, !dbg !234

; <label>:113:                                    ; preds = %107, %110
  %114 = phi i32 [ %99, %110 ], [ %108, %107 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !216
  br label %115, !dbg !235

; <label>:115:                                    ; preds = %113, %109
  %116 = phi i32 [ %99, %109 ], [ %114, %113 ], !dbg !236
  %117 = add i32 %101, 1, !dbg !235
  %118 = icmp ugt i32 %117, 7, !dbg !237
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !239
  br i1 %118, label %119, label %98, !dbg !239, !llvm.loop !240

; <label>:119:                                    ; preds = %115
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !242
  br label %219, !dbg !242

; <label>:120:                                    ; preds = %44
  %121 = call i8* @__locale_ctype_ptr() #4, !dbg !244
  %122 = getelementptr inbounds i8, i8* %121, i64 1, !dbg !244
  %123 = load i8, i8* %46, align 1, !dbg !244, !tbaa !119
  %124 = zext i8 %123 to i64, !dbg !244
  %125 = getelementptr inbounds i8, i8* %122, i64 %124, !dbg !244
  %126 = load i8, i8* %125, align 1, !dbg !244, !tbaa !119
  %127 = and i8 %126, 68, !dbg !244
  %128 = icmp eq i8 %127, 0, !dbg !244
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !245
  br i1 %128, label %183, label %129, !dbg !245

; <label>:129:                                    ; preds = %120
  %130 = shl i32 %47, 4, !dbg !246
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %42) #5, !dbg !247
  %131 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !dbg !248, !srcloc !256
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !258
  %132 = icmp ult i64 %131, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !259
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !259
  br i1 %132, label %143, label %133, !dbg !259

; <label>:133:                                    ; preds = %129
  %134 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !dbg !260, !srcloc !256
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !263
  %135 = icmp ugt i64 %134, ptrtoint ([0 x i8]* @_end to i64), !dbg !259
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !264
  br i1 %135, label %143, label %136, !dbg !264

; <label>:136:                                    ; preds = %133
  %137 = call i8* @__locale_ctype_ptr() #4, !dbg !265
  %138 = getelementptr inbounds i8, i8* %137, i64 1, !dbg !265
  %139 = getelementptr inbounds i8, i8* %138, i64 %124, !dbg !265
  %140 = load i8, i8* %139, align 1, !dbg !265, !tbaa !119
  %141 = and i8 %140, 4, !dbg !265
  %142 = zext i8 %141 to i32, !dbg !265
  store volatile i32 %142, i32* %3, align 4, !dbg !265, !tbaa !169
  br label %151, !dbg !265

; <label>:143:                                    ; preds = %133, %129
  %144 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !dbg !267, !srcloc !256
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !277
  %145 = and i64 %144, -65536, !dbg !279
  %146 = or i64 %145, 4097, !dbg !279
  %147 = add nsw i64 %146, -1, !dbg !279
  %148 = inttoptr i64 %147 to i32*, !dbg !280
  %149 = load i32, i32* %148, align 4096, !dbg !281, !tbaa !169
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !282
  %150 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call isdigit\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 %124, i32 %149, i32 (i32)* nonnull @isdigit) #5, !dbg !283, !srcloc !284
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %3, i64 %150) #5, !dbg !285, !srcloc !288
  br label %151

; <label>:151:                                    ; preds = %136, %143
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %152 = load volatile i32, i32* %3, align 4, !dbg !289, !tbaa !169
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %42) #5, !dbg !290
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !291
  %153 = icmp eq i32 %152, 0, !dbg !292
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !292
  br i1 %153, label %158, label %154, !dbg !292

; <label>:154:                                    ; preds = %151
  %155 = load i8, i8* %46, align 1, !dbg !293, !tbaa !119
  %156 = sext i8 %155 to i32, !dbg !293
  %157 = add nsw i32 %156, -48, !dbg !294
  br label %171, !dbg !292

; <label>:158:                                    ; preds = %151
  %159 = call i8* @__locale_ctype_ptr() #4, !dbg !295
  %160 = getelementptr inbounds i8, i8* %159, i64 1, !dbg !295
  %161 = load i8, i8* %46, align 1, !dbg !295, !tbaa !119
  %162 = zext i8 %161 to i64, !dbg !295
  %163 = getelementptr inbounds i8, i8* %160, i64 %162, !dbg !295
  %164 = load i8, i8* %163, align 1, !dbg !295, !tbaa !119
  %165 = and i8 %164, 3, !dbg !295
  %166 = icmp eq i8 %165, 2, !dbg !295
  %167 = sext i8 %161 to i32, !dbg !296
  %168 = select i1 %166, i32 -97, i32 -65, !dbg !295
  %169 = add nsw i32 %167, 10, !dbg !295
  %170 = add nsw i32 %169, %168, !dbg !297
  br label %171, !dbg !292

; <label>:171:                                    ; preds = %158, %154
  %172 = phi i32 [ %157, %154 ], [ %170, %158 ], !dbg !292
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !292
  %173 = add i32 %172, %130, !dbg !298
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %174

; <label>:174:                                    ; preds = %98, %171, %90
  %175 = phi i32 [ %69, %90 ], [ %50, %171 ], [ %99, %98 ], !dbg !145
  %176 = phi i32 [ %49, %90 ], [ %49, %171 ], [ 0, %98 ], !dbg !137
  %177 = phi i32 [ %70, %90 ], [ %48, %171 ], [ %101, %98 ], !dbg !145
  %178 = phi i32 [ 0, %90 ], [ %173, %171 ], [ 0, %98 ], !dbg !296
  %179 = phi i8* [ %46, %90 ], [ %46, %171 ], [ %91, %98 ], !dbg !299
  %180 = getelementptr inbounds i8, i8* %179, i64 1, !dbg !300
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !301
  %181 = load i8, i8* %180, align 1, !dbg !154, !tbaa !119
  %182 = icmp eq i8 %181, 0, !dbg !155
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !156
  br i1 %182, label %183, label %44, !dbg !156, !llvm.loop !302

; <label>:183:                                    ; preds = %174, %120, %34
  %184 = phi i32 [ 0, %34 ], [ %50, %120 ], [ %175, %174 ], !dbg !236
  %185 = phi i32 [ 0, %34 ], [ %48, %120 ], [ %177, %174 ], !dbg !304
  %186 = phi i32 [ 0, %34 ], [ %47, %120 ], [ %178, %174 ], !dbg !305
  %187 = icmp eq %struct.ip6_addr* %1, null, !dbg !306
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !308
  br i1 %187, label %215, label %188, !dbg !308

; <label>:188:                                    ; preds = %183
  %189 = and i32 %185, 1, !dbg !309
  %190 = icmp eq i32 %189, 0, !dbg !309
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !312
  br i1 %190, label %196, label %191, !dbg !312

; <label>:191:                                    ; preds = %188
  %192 = zext i32 %184 to i64, !dbg !313
  %193 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 %192, !dbg !313
  %194 = load i32, i32* %193, align 4, !dbg !315, !tbaa !169
  %195 = or i32 %194, %186, !dbg !315
  store i32 %195, i32* %193, align 4, !dbg !315, !tbaa !169
  br label %200, !dbg !316

; <label>:196:                                    ; preds = %188
  %197 = shl i32 %186, 16, !dbg !317
  %198 = zext i32 %184 to i64, !dbg !319
  %199 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 %198, !dbg !319
  store i32 %197, i32* %199, align 4, !dbg !320, !tbaa !169
  br label %200

; <label>:200:                                    ; preds = %80, %191, %196
  %201 = phi i32 [ 7, %80 ], [ %185, %191 ], [ %185, %196 ], !dbg !145
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !321
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !323
  %202 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 0, !dbg !324
  %203 = load i32, i32* %202, align 4, !dbg !324, !tbaa !169
  %204 = call i32 @lwip_htonl(i32 %203) #4, !dbg !327
  store i32 %204, i32* %202, align 4, !dbg !328, !tbaa !169
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !329
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !323
  %205 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 1, !dbg !324
  %206 = load i32, i32* %205, align 4, !dbg !324, !tbaa !169
  %207 = call i32 @lwip_htonl(i32 %206) #4, !dbg !327
  store i32 %207, i32* %205, align 4, !dbg !328, !tbaa !169
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !329
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !323
  %208 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 2, !dbg !324
  %209 = load i32, i32* %208, align 4, !dbg !324, !tbaa !169
  %210 = call i32 @lwip_htonl(i32 %209) #4, !dbg !327
  store i32 %210, i32* %208, align 4, !dbg !328, !tbaa !169
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !329
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !323
  %211 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 3, !dbg !324
  %212 = load i32, i32* %211, align 4, !dbg !324, !tbaa !169
  %213 = call i32 @lwip_htonl(i32 %212) #4, !dbg !327
  store i32 %213, i32* %211, align 4, !dbg !328, !tbaa !169
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !329
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !323
  %214 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 1, !dbg !330
  store i8 0, i8* %214, align 4, !dbg !330, !tbaa !331
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !333
  br label %215, !dbg !333

; <label>:215:                                    ; preds = %183, %200
  %216 = phi i32 [ %201, %200 ], [ %185, %183 ], !dbg !145
  %217 = icmp eq i32 %216, 7, !dbg !334
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !336
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !337
  %218 = zext i1 %217 to i32, !dbg !339
  br label %219, !dbg !339

; <label>:219:                                    ; preds = %94, %79, %215, %119, %89, %19
  %220 = phi i32 [ 0, %89 ], [ 0, %119 ], [ 0, %19 ], [ %218, %215 ], [ 1, %79 ], [ 0, %94 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !340
  ret i32 %220, !dbg !340
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local i8* @__locale_ctype_ptr() local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @ip4addr_aton(i8*, %struct.ip4_addr*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @lwip_htonl(i32) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define dso_local i8* @ip6addr_ntoa(%struct.ip6_addr* nocapture readonly) local_unnamed_addr #0 !dbg !23 {
  %2 = tail call i8* @ip6addr_ntoa_r(%struct.ip6_addr* %0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @ip6addr_ntoa.str, i64 0, i64 0), i32 40) #6, !dbg !342
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !343
  ret i8* %2, !dbg !343
}

; Function Attrs: noredzone nounwind
define dso_local i8* @ip6addr_ntoa_r(%struct.ip6_addr* nocapture readonly, i8*, i32) local_unnamed_addr #0 !dbg !344 {
  %4 = alloca %struct.ip4_addr, align 4
  %5 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %0, i64 0, i32 0, i64 0, !dbg !369
  %6 = load i32, i32* %5, align 4, !dbg !369, !tbaa !169
  %7 = icmp eq i32 %6, 0, !dbg !369
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !369
  br i1 %7, label %8, label %32, !dbg !369

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %0, i64 0, i32 0, i64 1, !dbg !369
  %10 = load i32, i32* %9, align 4, !dbg !369, !tbaa !169
  %11 = icmp eq i32 %10, 0, !dbg !369
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !369
  br i1 %11, label %12, label %32, !dbg !369

; <label>:12:                                     ; preds = %8
  %13 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %0, i64 0, i32 0, i64 2, !dbg !369
  %14 = load i32, i32* %13, align 4, !dbg !369, !tbaa !169
  %15 = icmp eq i32 %14, -65536, !dbg !369
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !370
  br i1 %15, label %16, label %32, !dbg !370

; <label>:16:                                     ; preds = %12
  %17 = bitcast %struct.ip4_addr* %4 to i8*, !dbg !371
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %17) #5, !dbg !371
  %18 = getelementptr inbounds i8, i8* %1, i64 7, !dbg !372
  %19 = icmp slt i32 %2, 8, !dbg !374
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !376
  br i1 %19, label %20, label %21, !dbg !376

; <label>:20:                                     ; preds = %16
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !377
  br label %30, !dbg !377

; <label>:21:                                     ; preds = %16
  %22 = add i32 %2, -7, !dbg !379
  %23 = tail call i8* @memcpy(i8* %1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 8) #4, !dbg !381
  %24 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %0, i64 0, i32 0, i64 3, !dbg !382
  %25 = load i32, i32* %24, align 4, !dbg !382, !tbaa !169
  %26 = getelementptr inbounds %struct.ip4_addr, %struct.ip4_addr* %4, i64 0, i32 0, !dbg !383
  store i32 %25, i32* %26, align 4, !dbg !384, !tbaa !196
  %27 = call i8* @ip4addr_ntoa_r(%struct.ip4_addr* nonnull %4, i8* nonnull %18, i32 %22) #4, !dbg !386
  %28 = icmp eq i8* %27, %18, !dbg !388
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !390
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !391
  %29 = select i1 %28, i8* %1, i8* null, !dbg !393
  br label %30, !dbg !393

; <label>:30:                                     ; preds = %21, %20
  %31 = phi i8* [ null, %20 ], [ %29, %21 ], !dbg !394
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %17) #5, !dbg !395
  br label %165

; <label>:32:                                     ; preds = %12, %8, %3
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !399
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !401
  br label %33, !dbg !401

; <label>:33:                                     ; preds = %32, %156
  %34 = phi i32 [ 0, %32 ], [ %159, %156 ]
  %35 = phi i8 [ 0, %32 ], [ %158, %156 ]
  %36 = phi i32 [ 0, %32 ], [ %157, %156 ]
  %37 = lshr i32 %34, 1, !dbg !402
  %38 = zext i32 %37 to i64, !dbg !405
  %39 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %0, i64 0, i32 0, i64 %38, !dbg !405
  %40 = load i32, i32* %39, align 4, !dbg !405, !tbaa !169
  %41 = tail call i32 @lwip_htonl(i32 %40) #4, !dbg !406
  %42 = and i32 %34, 1, !dbg !408
  %43 = icmp eq i32 %42, 0, !dbg !410
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !411
  br i1 %43, label %44, label %46, !dbg !411

; <label>:44:                                     ; preds = %33
  %45 = lshr i32 %41, 16, !dbg !412
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !414
  br label %46, !dbg !414

; <label>:46:                                     ; preds = %44, %33
  %47 = phi i32 [ %45, %44 ], [ %41, %33 ], !dbg !415
  %48 = and i32 %47, 65535, !dbg !416
  %49 = icmp eq i32 %48, 0, !dbg !417
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !419
  br i1 %49, label %50, label %81, !dbg !419

; <label>:50:                                     ; preds = %46
  %51 = icmp eq i32 %34, 7, !dbg !420
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !423
  br i1 %51, label %52, label %59, !dbg !423

; <label>:52:                                     ; preds = %50
  %53 = icmp eq i8 %35, 1, !dbg !424
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !425
  br i1 %53, label %54, label %59, !dbg !425

; <label>:54:                                     ; preds = %52
  %55 = add nsw i32 %36, 1, !dbg !426
  %56 = sext i32 %36 to i64, !dbg !428
  %57 = getelementptr inbounds i8, i8* %1, i64 %56, !dbg !428
  store i8 58, i8* %57, align 1, !dbg !429, !tbaa !119
  %58 = icmp slt i32 %55, %2, !dbg !430
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !432
  br i1 %58, label %161, label %165, !dbg !432

; <label>:59:                                     ; preds = %52, %50
  %60 = icmp eq i8 %35, 0, !dbg !433
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !435
  br i1 %60, label %61, label %79, !dbg !435

; <label>:61:                                     ; preds = %59
  %62 = add nuw nsw i32 %34, 1, !dbg !436
  %63 = lshr i32 %62, 1, !dbg !438
  %64 = zext i32 %63 to i64, !dbg !439
  %65 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %0, i64 0, i32 0, i64 %64, !dbg !439
  %66 = load i32, i32* %65, align 4, !dbg !439, !tbaa !169
  %67 = tail call i32 @lwip_htonl(i32 %66) #4, !dbg !440
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !442
  br i1 %43, label %70, label %68, !dbg !442

; <label>:68:                                     ; preds = %61
  %69 = lshr i32 %67, 16, !dbg !443
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !446
  br label %70, !dbg !446

; <label>:70:                                     ; preds = %61, %68
  %71 = phi i32 [ %69, %68 ], [ %67, %61 ], !dbg !447
  %72 = and i32 %71, 65535, !dbg !448
  %73 = icmp eq i32 %72, 0, !dbg !449
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !451
  br i1 %73, label %74, label %84, !dbg !451

; <label>:74:                                     ; preds = %70
  %75 = add nsw i32 %36, 1, !dbg !452
  %76 = sext i32 %36 to i64, !dbg !454
  %77 = getelementptr inbounds i8, i8* %1, i64 %76, !dbg !454
  store i8 58, i8* %77, align 1, !dbg !455, !tbaa !119
  %78 = icmp slt i32 %75, %2, !dbg !456
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !458
  br i1 %78, label %156, label %165, !dbg !458

; <label>:79:                                     ; preds = %59
  %80 = icmp eq i8 %35, 1, !dbg !459
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !461
  br i1 %80, label %156, label %84, !dbg !461

; <label>:81:                                     ; preds = %46
  %82 = icmp eq i8 %35, 1, !dbg !462
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !464
  br i1 %82, label %83, label %84, !dbg !464

; <label>:83:                                     ; preds = %81
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !465
  br label %84, !dbg !465

; <label>:84:                                     ; preds = %81, %83, %70, %79
  %85 = phi i8 [ 0, %70 ], [ %35, %79 ], [ 2, %83 ], [ %35, %81 ], !dbg !467
  %86 = icmp eq i32 %34, 0, !dbg !468
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !470
  br i1 %86, label %92, label %87, !dbg !470

; <label>:87:                                     ; preds = %84
  %88 = add nsw i32 %36, 1, !dbg !471
  %89 = sext i32 %36 to i64, !dbg !473
  %90 = getelementptr inbounds i8, i8* %1, i64 %89, !dbg !473
  store i8 58, i8* %90, align 1, !dbg !474, !tbaa !119
  %91 = icmp slt i32 %88, %2, !dbg !475
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !477
  br i1 %91, label %92, label %165, !dbg !477

; <label>:92:                                     ; preds = %87, %84
  %93 = phi i32 [ %88, %87 ], [ %36, %84 ], !dbg !467
  %94 = and i32 %47, 61440, !dbg !478
  %95 = icmp eq i32 %94, 0, !dbg !480
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !481
  br i1 %95, label %96, label %97, !dbg !481

; <label>:96:                                     ; preds = %92
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !483
  br label %108, !dbg !483

; <label>:97:                                     ; preds = %92
  %98 = lshr exact i32 %94, 12, !dbg !485
  %99 = icmp ult i32 %94, 40960, !dbg !485
  %100 = or i32 %98, 48, !dbg !485
  %101 = add nuw nsw i32 %98, 55, !dbg !485
  %102 = select i1 %99, i32 %100, i32 %101, !dbg !485
  %103 = trunc i32 %102 to i8, !dbg !485
  %104 = add nsw i32 %93, 1, !dbg !487
  %105 = sext i32 %93 to i64, !dbg !488
  %106 = getelementptr inbounds i8, i8* %1, i64 %105, !dbg !488
  store i8 %103, i8* %106, align 1, !dbg !489, !tbaa !119
  %107 = icmp slt i32 %104, %2, !dbg !490
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !492
  br i1 %107, label %108, label %165, !dbg !492

; <label>:108:                                    ; preds = %97, %96
  %109 = phi i32 [ %93, %96 ], [ %104, %97 ], !dbg !493
  %110 = phi i8 [ 1, %96 ], [ 0, %97 ], !dbg !493
  %111 = and i32 %47, 3840, !dbg !494
  %112 = icmp eq i32 %111, 0, !dbg !496
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !497
  br i1 %112, label %113, label %115, !dbg !497

; <label>:113:                                    ; preds = %108
  %114 = icmp eq i8 %110, 0, !dbg !498
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !499
  br i1 %114, label %115, label %126, !dbg !499

; <label>:115:                                    ; preds = %113, %108
  %116 = lshr exact i32 %111, 8, !dbg !500
  %117 = icmp ult i32 %111, 2560, !dbg !500
  %118 = or i32 %116, 48, !dbg !500
  %119 = add nuw nsw i32 %116, 55, !dbg !500
  %120 = select i1 %117, i32 %118, i32 %119, !dbg !500
  %121 = trunc i32 %120 to i8, !dbg !500
  %122 = add nsw i32 %109, 1, !dbg !502
  %123 = sext i32 %109 to i64, !dbg !503
  %124 = getelementptr inbounds i8, i8* %1, i64 %123, !dbg !503
  store i8 %121, i8* %124, align 1, !dbg !504, !tbaa !119
  %125 = icmp slt i32 %122, %2, !dbg !505
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !507
  br i1 %125, label %126, label %165, !dbg !507

; <label>:126:                                    ; preds = %113, %115
  %127 = phi i32 [ %109, %113 ], [ %122, %115 ], !dbg !508
  %128 = phi i8 [ 1, %113 ], [ 0, %115 ], !dbg !508
  %129 = and i32 %47, 240, !dbg !509
  %130 = icmp eq i32 %129, 0, !dbg !511
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !512
  br i1 %130, label %131, label %133, !dbg !512

; <label>:131:                                    ; preds = %126
  %132 = icmp eq i8 %128, 0, !dbg !513
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !514
  br i1 %132, label %133, label %144, !dbg !514

; <label>:133:                                    ; preds = %131, %126
  %134 = lshr exact i32 %129, 4, !dbg !515
  %135 = icmp ult i32 %129, 160, !dbg !515
  %136 = or i32 %134, 48, !dbg !515
  %137 = add nuw nsw i32 %134, 55, !dbg !515
  %138 = select i1 %135, i32 %136, i32 %137, !dbg !515
  %139 = trunc i32 %138 to i8, !dbg !515
  %140 = add nsw i32 %127, 1, !dbg !517
  %141 = sext i32 %127 to i64, !dbg !518
  %142 = getelementptr inbounds i8, i8* %1, i64 %141, !dbg !518
  store i8 %139, i8* %142, align 1, !dbg !519, !tbaa !119
  %143 = icmp slt i32 %140, %2, !dbg !520
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !522
  br i1 %143, label %144, label %165, !dbg !522

; <label>:144:                                    ; preds = %131, %133
  %145 = phi i32 [ %127, %131 ], [ %140, %133 ], !dbg !523
  %146 = and i32 %47, 15, !dbg !524
  %147 = icmp ult i32 %146, 10, !dbg !524
  %148 = or i32 %146, 48, !dbg !524
  %149 = add nuw nsw i32 %146, 55, !dbg !524
  %150 = select i1 %147, i32 %148, i32 %149, !dbg !524
  %151 = trunc i32 %150 to i8, !dbg !524
  %152 = add nsw i32 %145, 1, !dbg !525
  %153 = sext i32 %145 to i64, !dbg !526
  %154 = getelementptr inbounds i8, i8* %1, i64 %153, !dbg !526
  store i8 %151, i8* %154, align 1, !dbg !527, !tbaa !119
  %155 = icmp slt i32 %152, %2, !dbg !528
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !530
  br i1 %155, label %156, label %165, !dbg !530

; <label>:156:                                    ; preds = %74, %144, %79
  %157 = phi i32 [ %75, %74 ], [ %152, %144 ], [ %36, %79 ], !dbg !467
  %158 = phi i8 [ 1, %74 ], [ %85, %144 ], [ 1, %79 ], !dbg !467
  %159 = add nuw nsw i32 %34, 1, !dbg !531
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !532
  %160 = icmp ult i32 %159, 8, !dbg !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !401
  br i1 %160, label %33, label %161, !dbg !401, !llvm.loop !534

; <label>:161:                                    ; preds = %156, %54
  %162 = phi i32 [ %55, %54 ], [ %157, %156 ], !dbg !467
  %163 = sext i32 %162 to i64, !dbg !536
  %164 = getelementptr inbounds i8, i8* %1, i64 %163, !dbg !536
  store i8 0, i8* %164, align 1, !dbg !537, !tbaa !119
  br label %165, !dbg !538

; <label>:165:                                    ; preds = %144, %133, %115, %97, %87, %74, %54, %161, %30
  %166 = phi i8* [ %31, %30 ], [ %1, %161 ], [ null, %54 ], [ null, %74 ], [ null, %87 ], [ null, %97 ], [ null, %115 ], [ null, %133 ], [ null, %144 ], !dbg !539
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !541
  ret i8* %166, !dbg !541
}

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @ip4addr_ntoa_r(%struct.ip4_addr*, i8*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @isdigit(i32) #3

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin noredzone nounwind }
attributes #5 = { nounwind }
attributes #6 = { nobuiltin noredzone }

!llvm.module.flags = !{!62, !63, !64}
!llvm.ident = !{!65}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "ip6_addr_any", scope: !2, file: !3, line: 57, type: !46, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !20)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/core/ipv6/ip6_addr.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !{}
!5 = !{!6, !7, !8, !15, !16, !17, !19}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32_t", file: !9, line: 129, baseType: !10)
!9 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/arch.h", directory: "/root/.unikraft/apps/redis/build")
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !11, line: 48, baseType: !12)
!11 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !13, line: 79, baseType: !14)
!13 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!14 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!15 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!16 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !11, line: 60, baseType: !18)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !13, line: 105, baseType: !16)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!20 = !{!0, !21}
!21 = !DIGlobalVariableExpression(var: !22, expr: !DIExpression())
!22 = distinct !DIGlobalVariable(name: "str", scope: !23, file: !3, line: 208, type: !43, isLocal: true, isDefinition: true)
!23 = distinct !DISubprogram(name: "ip6addr_ntoa", scope: !3, file: !3, line: 206, type: !24, isLocal: false, isDefinition: true, scopeLine: 207, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !41)
!24 = !DISubroutineType(types: !25)
!25 = !{!26, !27}
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !29)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip6_addr_t", file: !30, line: 67, baseType: !31)
!30 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/ip6_addr.h", directory: "/root/.unikraft/apps/redis/build")
!31 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip6_addr", file: !30, line: 59, size: 160, elements: !32)
!32 = !{!33, !37}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !31, file: !30, line: 60, baseType: !34, size: 128)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 128, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 4)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "zone", scope: !31, file: !30, line: 62, baseType: !38, size: 8, offset: 128)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8_t", file: !9, line: 125, baseType: !39)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !11, line: 24, baseType: !40)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !13, line: 43, baseType: !7)
!41 = !{!42}
!42 = !DILocalVariable(name: "addr", arg: 1, scope: !23, file: !3, line: 206, type: !27)
!43 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 320, elements: !44)
!44 = !{!45}
!45 = !DISubrange(count: 40)
!46 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip_addr_t", file: !48, line: 76, baseType: !49)
!48 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/ip_addr.h", directory: "/root/.unikraft/apps/redis/build")
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip_addr", file: !48, line: 69, size: 192, elements: !50)
!50 = !{!51, !61}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "u_addr", scope: !49, file: !48, line: 73, baseType: !52, size: 160)
!52 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !49, file: !48, line: 70, size: 160, elements: !53)
!53 = !{!54, !55}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "ip6", scope: !52, file: !48, line: 71, baseType: !29, size: 160)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "ip4", scope: !52, file: !48, line: 72, baseType: !56, size: 32)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip4_addr_t", file: !57, line: 57, baseType: !58)
!57 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/ip4_addr.h", directory: "/root/.unikraft/apps/redis/build")
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip4_addr", file: !57, line: 51, size: 32, elements: !59)
!59 = !{!60}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !58, file: !57, line: 52, baseType: !8, size: 32)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !49, file: !48, line: 75, baseType: !38, size: 8, offset: 160)
!62 = !{i32 2, !"Dwarf Version", i32 4}
!63 = !{i32 2, !"Debug Info Version", i32 3}
!64 = !{i32 1, !"wchar_size", i32 4}
!65 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!66 = distinct !DISubprogram(name: "ip6addr_aton", scope: !3, file: !3, line: 71, type: !67, isLocal: false, isDefinition: true, scopeLine: 72, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !72)
!67 = !DISubroutineType(types: !68)
!68 = !{!6, !69, !71}
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!72 = !{!73, !74, !75, !76, !77, !78, !79, !80, !81, !91}
!73 = !DILocalVariable(name: "cp", arg: 1, scope: !66, file: !3, line: 71, type: !69)
!74 = !DILocalVariable(name: "addr", arg: 2, scope: !66, file: !3, line: 71, type: !71)
!75 = !DILocalVariable(name: "addr_index", scope: !66, file: !3, line: 73, type: !8)
!76 = !DILocalVariable(name: "zero_blocks", scope: !66, file: !3, line: 73, type: !8)
!77 = !DILocalVariable(name: "current_block_index", scope: !66, file: !3, line: 73, type: !8)
!78 = !DILocalVariable(name: "current_block_value", scope: !66, file: !3, line: 73, type: !8)
!79 = !DILocalVariable(name: "s", scope: !66, file: !3, line: 74, type: !69)
!80 = !DILocalVariable(name: "check_ipv4_mapped", scope: !66, file: !3, line: 76, type: !6)
!81 = !DILocalVariable(name: "ip4", scope: !82, file: !3, line: 120, type: !56)
!82 = distinct !DILexicalBlock(scope: !83, file: !3, line: 119, column: 39)
!83 = distinct !DILexicalBlock(scope: !84, file: !3, line: 119, column: 13)
!84 = distinct !DILexicalBlock(scope: !85, file: !3, line: 118, column: 30)
!85 = distinct !DILexicalBlock(scope: !86, file: !3, line: 118, column: 11)
!86 = distinct !DILexicalBlock(scope: !87, file: !3, line: 107, column: 20)
!87 = distinct !DILexicalBlock(scope: !88, file: !3, line: 107, column: 9)
!88 = distinct !DILexicalBlock(scope: !89, file: !3, line: 106, column: 30)
!89 = distinct !DILexicalBlock(scope: !90, file: !3, line: 106, column: 3)
!90 = distinct !DILexicalBlock(scope: !66, file: !3, line: 106, column: 3)
!91 = !DILocalVariable(name: "ret", scope: !82, file: !3, line: 121, type: !6)
!92 = !DILocalVariable(name: "ret", scope: !93, file: !9, line: 232, type: !105)
!93 = distinct !DISubprogram(name: "_isdigit_flexos_wrapper", scope: !9, file: !9, line: 230, type: !94, isLocal: true, isDefinition: true, scopeLine: 231, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !96)
!94 = !DISubroutineType(types: !95)
!95 = !{!6, !6}
!96 = !{!97, !92, !98, !104}
!97 = !DILocalVariable(name: "c", arg: 1, scope: !93, file: !9, line: 230, type: !6)
!98 = !DILocalVariable(name: "tid", scope: !99, file: !9, line: 233, type: !10)
!99 = distinct !DILexicalBlock(scope: !100, file: !9, line: 233, column: 2)
!100 = distinct !DILexicalBlock(scope: !101, file: !9, line: 233, column: 2)
!101 = distinct !DILexicalBlock(scope: !102, file: !9, line: 233, column: 2)
!102 = distinct !DILexicalBlock(scope: !103, file: !9, line: 233, column: 2)
!103 = distinct !DILexicalBlock(scope: !93, file: !9, line: 233, column: 2)
!104 = !DILocalVariable(name: "_ret", scope: !99, file: !9, line: 233, type: !17)
!105 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !6)
!106 = !DILocation(line: 232, column: 15, scope: !93, inlinedAt: !107)
!107 = distinct !DILocation(line: 164, column: 12, scope: !108)
!108 = distinct !DILexicalBlock(scope: !109, file: !3, line: 161, column: 35)
!109 = distinct !DILexicalBlock(scope: !87, file: !3, line: 161, column: 16)
!110 = !DILocation(line: 71, column: 26, scope: !66)
!111 = !DILocation(line: 71, column: 42, scope: !66)
!112 = !DILocation(line: 76, column: 7, scope: !66)
!113 = !DILocation(line: 73, column: 21, scope: !66)
!114 = !DILocation(line: 74, column: 15, scope: !66)
!115 = !DILocation(line: 82, column: 8, scope: !116)
!116 = distinct !DILexicalBlock(scope: !66, file: !3, line: 82, column: 3)
!117 = !DILocation(line: 82, column: 16, scope: !118)
!118 = distinct !DILexicalBlock(scope: !116, file: !3, line: 82, column: 3)
!119 = !{!120, !120, i64 0}
!120 = !{!"omnipotent char", !121, i64 0}
!121 = !{!"Simple C/C++ TBAA"}
!122 = !DILocation(line: 82, column: 19, scope: !118)
!123 = !DILocation(line: 82, column: 3, scope: !116)
!124 = !DILocation(line: 83, column: 12, scope: !125)
!125 = distinct !DILexicalBlock(scope: !126, file: !3, line: 83, column: 9)
!126 = distinct !DILexicalBlock(scope: !118, file: !3, line: 82, column: 30)
!127 = !DILocation(line: 83, column: 9, scope: !126)
!128 = !DILocation(line: 84, column: 18, scope: !129)
!129 = distinct !DILexicalBlock(scope: !125, file: !3, line: 83, column: 20)
!130 = !DILocation(line: 86, column: 5, scope: !129)
!131 = !DILocation(line: 86, column: 19, scope: !132)
!132 = distinct !DILexicalBlock(scope: !125, file: !3, line: 86, column: 16)
!133 = !DILocation(line: 86, column: 16, scope: !125)
!134 = !DILocation(line: 87, column: 30, scope: !135)
!135 = distinct !DILexicalBlock(scope: !136, file: !3, line: 87, column: 11)
!136 = distinct !DILexicalBlock(scope: !132, file: !3, line: 86, column: 27)
!137 = !DILocation(line: 90, column: 20, scope: !138)
!138 = distinct !DILexicalBlock(scope: !135, file: !3, line: 87, column: 52)
!139 = !DILocation(line: 95, column: 7, scope: !136)
!140 = !DILocation(line: 93, column: 9, scope: !141)
!141 = distinct !DILexicalBlock(scope: !135, file: !3, line: 91, column: 14)
!142 = !DILocation(line: 97, column: 17, scope: !143)
!143 = distinct !DILexicalBlock(scope: !132, file: !3, line: 97, column: 16)
!144 = !DILocation(line: 97, column: 16, scope: !132)
!145 = !DILocation(line: 0, scope: !66)
!146 = !DILocation(line: 82, column: 26, scope: !118)
!147 = !DILocation(line: 82, column: 3, scope: !118)
!148 = distinct !{!148, !123, !149}
!149 = !DILocation(line: 100, column: 3, scope: !116)
!150 = !DILocation(line: 73, column: 9, scope: !66)
!151 = !DILocation(line: 73, column: 34, scope: !66)
!152 = !DILocation(line: 73, column: 55, scope: !66)
!153 = !DILocation(line: 106, column: 8, scope: !90)
!154 = !DILocation(line: 106, column: 16, scope: !89)
!155 = !DILocation(line: 106, column: 19, scope: !89)
!156 = !DILocation(line: 106, column: 3, scope: !90)
!157 = !DILocation(line: 107, column: 12, scope: !87)
!158 = !DILocation(line: 107, column: 9, scope: !88)
!159 = !DILocation(line: 108, column: 11, scope: !86)
!160 = !DILocation(line: 109, column: 33, scope: !161)
!161 = distinct !DILexicalBlock(scope: !162, file: !3, line: 109, column: 13)
!162 = distinct !DILexicalBlock(scope: !163, file: !3, line: 108, column: 17)
!163 = distinct !DILexicalBlock(scope: !86, file: !3, line: 108, column: 11)
!164 = !DILocation(line: 109, column: 13, scope: !162)
!165 = !DILocation(line: 110, column: 32, scope: !166)
!166 = distinct !DILexicalBlock(scope: !161, file: !3, line: 109, column: 40)
!167 = !DILocation(line: 110, column: 11, scope: !166)
!168 = !DILocation(line: 110, column: 36, scope: !166)
!169 = !{!170, !170, i64 0}
!170 = !{!"int", !120, i64 0}
!171 = !DILocation(line: 111, column: 9, scope: !166)
!172 = !DILocation(line: 113, column: 56, scope: !173)
!173 = distinct !DILexicalBlock(scope: !161, file: !3, line: 112, column: 14)
!174 = !DILocation(line: 113, column: 11, scope: !173)
!175 = !DILocation(line: 113, column: 34, scope: !173)
!176 = !DILocation(line: 116, column: 26, scope: !86)
!177 = !DILocation(line: 119, column: 33, scope: !83)
!178 = !DILocation(line: 118, column: 11, scope: !86)
!179 = !DILocation(line: 120, column: 11, scope: !82)
!180 = !DILocation(line: 121, column: 36, scope: !82)
!181 = !DILocation(line: 120, column: 22, scope: !82)
!182 = !DILocation(line: 121, column: 21, scope: !82)
!183 = !DILocation(line: 121, column: 15, scope: !82)
!184 = !DILocation(line: 122, column: 15, scope: !185)
!185 = distinct !DILexicalBlock(scope: !82, file: !3, line: 122, column: 15)
!186 = !DILocation(line: 122, column: 15, scope: !82)
!187 = !DILocation(line: 0, scope: !188)
!188 = distinct !DILexicalBlock(scope: !185, file: !3, line: 122, column: 20)
!189 = !DILocation(line: 130, column: 9, scope: !83)
!190 = !DILocation(line: 134, column: 11, scope: !86)
!191 = !DILocation(line: 123, column: 17, scope: !188)
!192 = !DILocation(line: 128, column: 13, scope: !188)
!193 = !DILocation(line: 124, column: 46, scope: !194)
!194 = distinct !DILexicalBlock(scope: !195, file: !3, line: 123, column: 23)
!195 = distinct !DILexicalBlock(scope: !188, file: !3, line: 123, column: 17)
!196 = !{!197, !170, i64 0}
!197 = !{!"ip4_addr", !170, i64 0}
!198 = !DILocation(line: 124, column: 31, scope: !194)
!199 = !DILocation(line: 124, column: 15, scope: !194)
!200 = !DILocation(line: 124, column: 29, scope: !194)
!201 = !DILocation(line: 126, column: 15, scope: !194)
!202 = !DILocation(line: 134, column: 31, scope: !203)
!203 = distinct !DILexicalBlock(scope: !86, file: !3, line: 134, column: 11)
!204 = !DILocation(line: 138, column: 11, scope: !205)
!205 = distinct !DILexicalBlock(scope: !86, file: !3, line: 138, column: 11)
!206 = !DILocation(line: 136, column: 9, scope: !207)
!207 = distinct !DILexicalBlock(scope: !203, file: !3, line: 134, column: 36)
!208 = !DILocation(line: 138, column: 16, scope: !205)
!209 = !DILocation(line: 138, column: 11, scope: !86)
!210 = !DILocation(line: 139, column: 13, scope: !211)
!211 = distinct !DILexicalBlock(scope: !212, file: !3, line: 139, column: 13)
!212 = distinct !DILexicalBlock(scope: !205, file: !3, line: 138, column: 24)
!213 = !DILocation(line: 139, column: 18, scope: !211)
!214 = !DILocation(line: 139, column: 13, scope: !212)
!215 = !DILocation(line: 0, scope: !212)
!216 = !DILocation(line: 0, scope: !217)
!217 = distinct !DILexicalBlock(scope: !218, file: !3, line: 147, column: 42)
!218 = distinct !DILexicalBlock(scope: !219, file: !3, line: 147, column: 15)
!219 = distinct !DILexicalBlock(scope: !212, file: !3, line: 145, column: 33)
!220 = !DILocation(line: 0, scope: !219)
!221 = !DILocation(line: 145, column: 28, scope: !212)
!222 = !DILocation(line: 145, column: 9, scope: !212)
!223 = !DILocation(line: 146, column: 22, scope: !219)
!224 = !DILocation(line: 147, column: 35, scope: !218)
!225 = !DILocation(line: 147, column: 15, scope: !219)
!226 = !DILocation(line: 148, column: 23, scope: !217)
!227 = !DILocation(line: 149, column: 11, scope: !217)
!228 = !DILocation(line: 150, column: 17, scope: !229)
!229 = distinct !DILexicalBlock(scope: !218, file: !3, line: 149, column: 18)
!230 = !DILocation(line: 151, column: 15, scope: !231)
!231 = distinct !DILexicalBlock(scope: !232, file: !3, line: 150, column: 23)
!232 = distinct !DILexicalBlock(scope: !229, file: !3, line: 150, column: 17)
!233 = !DILocation(line: 151, column: 38, scope: !231)
!234 = !DILocation(line: 152, column: 13, scope: !231)
!235 = !DILocation(line: 154, column: 30, scope: !219)
!236 = !DILocation(line: 0, scope: !166)
!237 = !DILocation(line: 155, column: 35, scope: !238)
!238 = distinct !DILexicalBlock(scope: !219, file: !3, line: 155, column: 15)
!239 = !DILocation(line: 155, column: 15, scope: !219)
!240 = distinct !{!240, !222, !241}
!241 = !DILocation(line: 159, column: 9, scope: !212)
!242 = !DILocation(line: 157, column: 13, scope: !243)
!243 = distinct !DILexicalBlock(scope: !238, file: !3, line: 155, column: 40)
!244 = !DILocation(line: 161, column: 16, scope: !109)
!245 = !DILocation(line: 161, column: 16, scope: !87)
!246 = !DILocation(line: 163, column: 50, scope: !108)
!247 = !DILocation(line: 232, column: 2, scope: !93, inlinedAt: !107)
!248 = !DILocation(line: 120, column: 2, scope: !249, inlinedAt: !255)
!249 = distinct !DISubprogram(name: "ukarch_read_sp", scope: !250, file: !250, line: 116, type: !251, isLocal: true, isDefinition: true, scopeLine: 117, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !253)
!250 = !DIFile(filename: "/root/.unikraft/unikraft/arch/x86/x86_64/include/uk/asm/lcpu.h", directory: "/root/.unikraft/apps/redis/build")
!251 = !DISubroutineType(types: !252)
!252 = !{!16}
!253 = !{!254}
!254 = !DILocalVariable(name: "sp", scope: !249, file: !250, line: 118, type: !16)
!255 = distinct !DILocation(line: 233, column: 2, scope: !102, inlinedAt: !107)
!256 = !{i32 522923}
!257 = !DILocation(line: 118, column: 16, scope: !249, inlinedAt: !255)
!258 = !DILocation(line: 121, column: 2, scope: !249, inlinedAt: !255)
!259 = !DILocation(line: 233, column: 2, scope: !102, inlinedAt: !107)
!260 = !DILocation(line: 120, column: 2, scope: !249, inlinedAt: !261)
!261 = distinct !DILocation(line: 233, column: 2, scope: !102, inlinedAt: !107)
!262 = !DILocation(line: 118, column: 16, scope: !249, inlinedAt: !261)
!263 = !DILocation(line: 121, column: 2, scope: !249, inlinedAt: !261)
!264 = !DILocation(line: 233, column: 2, scope: !103, inlinedAt: !107)
!265 = !DILocation(line: 233, column: 2, scope: !266, inlinedAt: !107)
!266 = distinct !DILexicalBlock(scope: !102, file: !9, line: 233, column: 2)
!267 = !DILocation(line: 120, column: 2, scope: !249, inlinedAt: !268)
!268 = distinct !DILocation(line: 49, column: 21, scope: !269, inlinedAt: !275)
!269 = distinct !DISubprogram(name: "uk_thread_get_tid", scope: !270, file: !270, line: 47, type: !271, isLocal: true, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !273)
!270 = !DIFile(filename: "/root/.unikraft/unikraft/lib/flexos-core/include/flexos/impl/intelpku-impl.h", directory: "/root/.unikraft/apps/redis/build")
!271 = !DISubroutineType(types: !272)
!272 = !{!6}
!273 = !{!274}
!274 = !DILocalVariable(name: "sp", scope: !269, file: !270, line: 49, type: !16)
!275 = distinct !DILocation(line: 233, column: 2, scope: !99, inlinedAt: !107)
!276 = !DILocation(line: 118, column: 16, scope: !249, inlinedAt: !268)
!277 = !DILocation(line: 121, column: 2, scope: !249, inlinedAt: !268)
!278 = !DILocation(line: 49, column: 16, scope: !269, inlinedAt: !275)
!279 = !DILocation(line: 50, column: 19, scope: !269, inlinedAt: !275)
!280 = !DILocation(line: 50, column: 11, scope: !269, inlinedAt: !275)
!281 = !DILocation(line: 50, column: 9, scope: !269, inlinedAt: !275)
!282 = !DILocation(line: 50, column: 2, scope: !269, inlinedAt: !275)
!283 = !DILocation(line: 233, column: 2, scope: !99, inlinedAt: !107)
!284 = !{i32 -2146777633, i32 -2146777620, i32 -2146777595, i32 -2146777571, i32 -2146777546, i32 -2146777471, i32 -2146777446, i32 -2146777302, i32 -2146774198, i32 -2146774109, i32 -2146773988, i32 -2146773893, i32 -2146773792, i32 -2146773765, i32 -2146773682, i32 -2146773593, i32 -2146773472, i32 -2146773372, i32 -2146773266, i32 -2146773158, i32 -2146777014, i32 -2146776961, i32 -2146776930, i32 -2146776899, i32 -2146776878, i32 -2146776856, i32 -2146776807, i32 -2146776786, i32 -2146773075, i32 -2146772986, i32 -2146772865, i32 -2146772766, i32 -2146772660, i32 -2146772558, i32 -2146772525, i32 -2146772452, i32 -2146772384, i32 -2146776482, i32 -2146776423, i32 -2146776370, i32 -2146776339, i32 -2146776308, i32 -2146776287, i32 -2146776265, i32 -2146776216, i32 -2146776195, i32 -2146772341, i32 -2146772252, i32 -2146772131, i32 -2146772032, i32 -2146771926, i32 -2146771824, i32 -2146771791, i32 -2146771708, i32 -2146771619, i32 -2146771498, i32 -2146771398, i32 -2146771372, i32 -2146771269, i32 -2146771243, i32 -2146775937, i32 -2146775870, i32 -2146775845, i32 -2146775781, i32 -2146775699, i32 -2146775676, i32 -2146775651, i32 -2146775626}
!285 = !DILocation(line: 233, column: 2, scope: !286, inlinedAt: !107)
!286 = distinct !DILexicalBlock(scope: !287, file: !9, line: 233, column: 2)
!287 = distinct !DILexicalBlock(scope: !99, file: !9, line: 233, column: 2)
!288 = !{i32 -2146774645, i32 -2146774628}
!289 = !DILocation(line: 234, column: 9, scope: !93, inlinedAt: !107)
!290 = !DILocation(line: 235, column: 1, scope: !93, inlinedAt: !107)
!291 = !DILocation(line: 234, column: 2, scope: !93, inlinedAt: !107)
!292 = !DILocation(line: 164, column: 12, scope: !108)
!293 = !DILocation(line: 164, column: 39, scope: !108)
!294 = !DILocation(line: 164, column: 42, scope: !108)
!295 = !DILocation(line: 165, column: 25, scope: !108)
!296 = !DILocation(line: 0, scope: !108)
!297 = !DILocation(line: 165, column: 22, scope: !108)
!298 = !DILocation(line: 163, column: 56, scope: !108)
!299 = !DILocation(line: 0, scope: !90)
!300 = !DILocation(line: 106, column: 26, scope: !89)
!301 = !DILocation(line: 106, column: 3, scope: !89)
!302 = distinct !{!302, !156, !303}
!303 = !DILocation(line: 170, column: 3, scope: !90)
!304 = !DILocation(line: 0, scope: !194)
!305 = !DILocation(line: 0, scope: !86)
!306 = !DILocation(line: 172, column: 7, scope: !307)
!307 = distinct !DILexicalBlock(scope: !66, file: !3, line: 172, column: 7)
!308 = !DILocation(line: 172, column: 7, scope: !66)
!309 = !DILocation(line: 173, column: 29, scope: !310)
!310 = distinct !DILexicalBlock(scope: !311, file: !3, line: 173, column: 9)
!311 = distinct !DILexicalBlock(scope: !307, file: !3, line: 172, column: 13)
!312 = !DILocation(line: 173, column: 9, scope: !311)
!313 = !DILocation(line: 174, column: 7, scope: !314)
!314 = distinct !DILexicalBlock(scope: !310, file: !3, line: 173, column: 36)
!315 = !DILocation(line: 174, column: 32, scope: !314)
!316 = !DILocation(line: 175, column: 5, scope: !314)
!317 = !DILocation(line: 177, column: 52, scope: !318)
!318 = distinct !DILexicalBlock(scope: !310, file: !3, line: 176, column: 10)
!319 = !DILocation(line: 177, column: 7, scope: !318)
!320 = !DILocation(line: 177, column: 30, scope: !318)
!321 = !DILocation(line: 183, column: 10, scope: !322)
!322 = distinct !DILexicalBlock(scope: !311, file: !3, line: 183, column: 5)
!323 = !DILocation(line: 183, column: 5, scope: !322)
!324 = !DILocation(line: 184, column: 43, scope: !325)
!325 = distinct !DILexicalBlock(scope: !326, file: !3, line: 183, column: 56)
!326 = distinct !DILexicalBlock(scope: !322, file: !3, line: 183, column: 5)
!327 = !DILocation(line: 184, column: 32, scope: !325)
!328 = !DILocation(line: 184, column: 30, scope: !325)
!329 = !DILocation(line: 183, column: 5, scope: !326)
!330 = !DILocation(line: 187, column: 5, scope: !311)
!331 = !{!332, !120, i64 16}
!332 = !{!"ip6_addr", !120, i64 0, !120, i64 16}
!333 = !DILocation(line: 188, column: 3, scope: !311)
!334 = !DILocation(line: 190, column: 27, scope: !335)
!335 = distinct !DILexicalBlock(scope: !66, file: !3, line: 190, column: 7)
!336 = !DILocation(line: 190, column: 7, scope: !66)
!337 = !DILocation(line: 0, scope: !338)
!338 = distinct !DILexicalBlock(scope: !335, file: !3, line: 190, column: 33)
!339 = !DILocation(line: 194, column: 3, scope: !66)
!340 = !DILocation(line: 195, column: 1, scope: !66)
!341 = !DILocation(line: 206, column: 32, scope: !23)
!342 = !DILocation(line: 209, column: 10, scope: !23)
!343 = !DILocation(line: 209, column: 3, scope: !23)
!344 = distinct !DISubprogram(name: "ip6addr_ntoa_r", scope: !3, file: !3, line: 222, type: !345, isLocal: false, isDefinition: true, scopeLine: 223, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !347)
!345 = !DISubroutineType(types: !346)
!346 = !{!26, !27, !26, !6}
!347 = !{!348, !349, !350, !351, !352, !353, !354, !358, !359, !360, !363, !364, !365}
!348 = !DILocalVariable(name: "addr", arg: 1, scope: !344, file: !3, line: 222, type: !27)
!349 = !DILocalVariable(name: "buf", arg: 2, scope: !344, file: !3, line: 222, type: !26)
!350 = !DILocalVariable(name: "buflen", arg: 3, scope: !344, file: !3, line: 222, type: !6)
!351 = !DILocalVariable(name: "current_block_index", scope: !344, file: !3, line: 224, type: !8)
!352 = !DILocalVariable(name: "current_block_value", scope: !344, file: !3, line: 224, type: !8)
!353 = !DILocalVariable(name: "next_block_value", scope: !344, file: !3, line: 224, type: !8)
!354 = !DILocalVariable(name: "i", scope: !344, file: !3, line: 225, type: !355)
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32_t", file: !9, line: 130, baseType: !356)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !11, line: 44, baseType: !357)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !13, line: 77, baseType: !6)
!358 = !DILocalVariable(name: "zero_flag", scope: !344, file: !3, line: 226, type: !38)
!359 = !DILocalVariable(name: "empty_block_flag", scope: !344, file: !3, line: 226, type: !38)
!360 = !DILocalVariable(name: "addr4", scope: !361, file: !3, line: 231, type: !56)
!361 = distinct !DILexicalBlock(scope: !362, file: !3, line: 229, column: 40)
!362 = distinct !DILexicalBlock(scope: !344, file: !3, line: 229, column: 7)
!363 = !DILocalVariable(name: "ret", scope: !361, file: !3, line: 232, type: !26)
!364 = !DILocalVariable(name: "buf_ip4", scope: !361, file: !3, line: 234, type: !26)
!365 = !DILocalVariable(name: "buflen_ip4", scope: !361, file: !3, line: 235, type: !6)
!366 = !DILocation(line: 222, column: 34, scope: !344)
!367 = !DILocation(line: 222, column: 46, scope: !344)
!368 = !DILocation(line: 222, column: 55, scope: !344)
!369 = !DILocation(line: 229, column: 7, scope: !362)
!370 = !DILocation(line: 229, column: 7, scope: !344)
!371 = !DILocation(line: 231, column: 5, scope: !361)
!372 = !DILocation(line: 234, column: 52, scope: !361)
!373 = !DILocation(line: 234, column: 11, scope: !361)
!374 = !DILocation(line: 236, column: 16, scope: !375)
!375 = distinct !DILexicalBlock(scope: !361, file: !3, line: 236, column: 9)
!376 = !DILocation(line: 236, column: 9, scope: !361)
!377 = !DILocation(line: 237, column: 7, scope: !378)
!378 = distinct !DILexicalBlock(scope: !375, file: !3, line: 236, column: 49)
!379 = !DILocation(line: 235, column: 56, scope: !361)
!380 = !DILocation(line: 235, column: 9, scope: !361)
!381 = !DILocation(line: 239, column: 5, scope: !361)
!382 = !DILocation(line: 240, column: 18, scope: !361)
!383 = !DILocation(line: 240, column: 11, scope: !361)
!384 = !DILocation(line: 240, column: 16, scope: !361)
!385 = !DILocation(line: 231, column: 16, scope: !361)
!386 = !DILocation(line: 241, column: 11, scope: !361)
!387 = !DILocation(line: 232, column: 11, scope: !361)
!388 = !DILocation(line: 242, column: 13, scope: !389)
!389 = distinct !DILexicalBlock(scope: !361, file: !3, line: 242, column: 9)
!390 = !DILocation(line: 242, column: 9, scope: !361)
!391 = !DILocation(line: 0, scope: !392)
!392 = distinct !DILexicalBlock(scope: !389, file: !3, line: 242, column: 25)
!393 = !DILocation(line: 245, column: 5, scope: !361)
!394 = !DILocation(line: 0, scope: !361)
!395 = !DILocation(line: 246, column: 3, scope: !362)
!396 = !DILocation(line: 225, column: 9, scope: !344)
!397 = !DILocation(line: 226, column: 19, scope: !344)
!398 = !DILocation(line: 224, column: 9, scope: !344)
!399 = !DILocation(line: 251, column: 8, scope: !400)
!400 = distinct !DILexicalBlock(scope: !344, file: !3, line: 251, column: 3)
!401 = !DILocation(line: 251, column: 3, scope: !400)
!402 = !DILocation(line: 253, column: 69, scope: !403)
!403 = distinct !DILexicalBlock(scope: !404, file: !3, line: 251, column: 81)
!404 = distinct !DILexicalBlock(scope: !400, file: !3, line: 251, column: 3)
!405 = !DILocation(line: 253, column: 38, scope: !403)
!406 = !DILocation(line: 253, column: 27, scope: !403)
!407 = !DILocation(line: 224, column: 30, scope: !344)
!408 = !DILocation(line: 254, column: 30, scope: !409)
!409 = distinct !DILexicalBlock(scope: !403, file: !3, line: 254, column: 9)
!410 = !DILocation(line: 254, column: 37, scope: !409)
!411 = !DILocation(line: 254, column: 9, scope: !403)
!412 = !DILocation(line: 255, column: 49, scope: !413)
!413 = distinct !DILexicalBlock(scope: !409, file: !3, line: 254, column: 43)
!414 = !DILocation(line: 256, column: 5, scope: !413)
!415 = !DILocation(line: 0, scope: !403)
!416 = !DILocation(line: 257, column: 25, scope: !403)
!417 = !DILocation(line: 260, column: 29, scope: !418)
!418 = distinct !DILexicalBlock(scope: !403, file: !3, line: 260, column: 9)
!419 = !DILocation(line: 260, column: 9, scope: !403)
!420 = !DILocation(line: 261, column: 31, scope: !421)
!421 = distinct !DILexicalBlock(scope: !422, file: !3, line: 261, column: 11)
!422 = distinct !DILexicalBlock(scope: !418, file: !3, line: 260, column: 35)
!423 = !DILocation(line: 261, column: 36, scope: !421)
!424 = !DILocation(line: 261, column: 56, scope: !421)
!425 = !DILocation(line: 261, column: 11, scope: !422)
!426 = !DILocation(line: 263, column: 14, scope: !427)
!427 = distinct !DILexicalBlock(scope: !421, file: !3, line: 261, column: 62)
!428 = !DILocation(line: 263, column: 9, scope: !427)
!429 = !DILocation(line: 263, column: 18, scope: !427)
!430 = !DILocation(line: 264, column: 15, scope: !431)
!431 = distinct !DILexicalBlock(scope: !427, file: !3, line: 264, column: 13)
!432 = !DILocation(line: 264, column: 13, scope: !427)
!433 = !DILocation(line: 269, column: 28, scope: !434)
!434 = distinct !DILexicalBlock(scope: !422, file: !3, line: 269, column: 11)
!435 = !DILocation(line: 269, column: 11, scope: !422)
!436 = !DILocation(line: 272, column: 71, scope: !437)
!437 = distinct !DILexicalBlock(scope: !434, file: !3, line: 269, column: 34)
!438 = !DILocation(line: 272, column: 76, scope: !437)
!439 = !DILocation(line: 272, column: 39, scope: !437)
!440 = !DILocation(line: 272, column: 28, scope: !437)
!441 = !DILocation(line: 224, column: 51, scope: !344)
!442 = !DILocation(line: 273, column: 13, scope: !437)
!443 = !DILocation(line: 274, column: 49, scope: !444)
!444 = distinct !DILexicalBlock(scope: !445, file: !3, line: 273, column: 50)
!445 = distinct !DILexicalBlock(scope: !437, file: !3, line: 273, column: 13)
!446 = !DILocation(line: 275, column: 9, scope: !444)
!447 = !DILocation(line: 0, scope: !437)
!448 = !DILocation(line: 276, column: 26, scope: !437)
!449 = !DILocation(line: 277, column: 30, scope: !450)
!450 = distinct !DILexicalBlock(scope: !437, file: !3, line: 277, column: 13)
!451 = !DILocation(line: 277, column: 13, scope: !437)
!452 = !DILocation(line: 279, column: 16, scope: !453)
!453 = distinct !DILexicalBlock(scope: !450, file: !3, line: 277, column: 36)
!454 = !DILocation(line: 279, column: 11, scope: !453)
!455 = !DILocation(line: 279, column: 20, scope: !453)
!456 = !DILocation(line: 280, column: 17, scope: !457)
!457 = distinct !DILexicalBlock(scope: !453, file: !3, line: 280, column: 15)
!458 = !DILocation(line: 280, column: 15, scope: !453)
!459 = !DILocation(line: 285, column: 35, scope: !460)
!460 = distinct !DILexicalBlock(scope: !434, file: !3, line: 285, column: 18)
!461 = !DILocation(line: 285, column: 18, scope: !434)
!462 = !DILocation(line: 289, column: 33, scope: !463)
!463 = distinct !DILexicalBlock(scope: !418, file: !3, line: 289, column: 16)
!464 = !DILocation(line: 289, column: 16, scope: !418)
!465 = !DILocation(line: 292, column: 5, scope: !466)
!466 = distinct !DILexicalBlock(scope: !463, file: !3, line: 289, column: 39)
!467 = !DILocation(line: 0, scope: !344)
!468 = !DILocation(line: 294, column: 29, scope: !469)
!469 = distinct !DILexicalBlock(scope: !403, file: !3, line: 294, column: 9)
!470 = !DILocation(line: 294, column: 9, scope: !403)
!471 = !DILocation(line: 295, column: 12, scope: !472)
!472 = distinct !DILexicalBlock(scope: !469, file: !3, line: 294, column: 34)
!473 = !DILocation(line: 295, column: 7, scope: !472)
!474 = !DILocation(line: 295, column: 16, scope: !472)
!475 = !DILocation(line: 296, column: 13, scope: !476)
!476 = distinct !DILexicalBlock(scope: !472, file: !3, line: 296, column: 11)
!477 = !DILocation(line: 296, column: 11, scope: !472)
!478 = !DILocation(line: 301, column: 30, scope: !479)
!479 = distinct !DILexicalBlock(scope: !403, file: !3, line: 301, column: 9)
!480 = !DILocation(line: 301, column: 40, scope: !479)
!481 = !DILocation(line: 301, column: 9, scope: !403)
!482 = !DILocation(line: 226, column: 8, scope: !344)
!483 = !DILocation(line: 303, column: 5, scope: !484)
!484 = distinct !DILexicalBlock(scope: !479, file: !3, line: 301, column: 46)
!485 = !DILocation(line: 304, column: 18, scope: !486)
!486 = distinct !DILexicalBlock(scope: !479, file: !3, line: 303, column: 12)
!487 = !DILocation(line: 304, column: 12, scope: !486)
!488 = !DILocation(line: 304, column: 7, scope: !486)
!489 = !DILocation(line: 304, column: 16, scope: !486)
!490 = !DILocation(line: 306, column: 13, scope: !491)
!491 = distinct !DILexicalBlock(scope: !486, file: !3, line: 306, column: 11)
!492 = !DILocation(line: 306, column: 11, scope: !486)
!493 = !DILocation(line: 0, scope: !486)
!494 = !DILocation(line: 311, column: 31, scope: !495)
!495 = distinct !DILexicalBlock(scope: !403, file: !3, line: 311, column: 9)
!496 = !DILocation(line: 311, column: 40, scope: !495)
!497 = !DILocation(line: 311, column: 46, scope: !495)
!498 = !DILocation(line: 311, column: 49, scope: !495)
!499 = !DILocation(line: 311, column: 9, scope: !403)
!500 = !DILocation(line: 314, column: 18, scope: !501)
!501 = distinct !DILexicalBlock(scope: !495, file: !3, line: 313, column: 12)
!502 = !DILocation(line: 314, column: 12, scope: !501)
!503 = !DILocation(line: 314, column: 7, scope: !501)
!504 = !DILocation(line: 314, column: 16, scope: !501)
!505 = !DILocation(line: 316, column: 13, scope: !506)
!506 = distinct !DILexicalBlock(scope: !501, file: !3, line: 316, column: 11)
!507 = !DILocation(line: 316, column: 11, scope: !501)
!508 = !DILocation(line: 0, scope: !501)
!509 = !DILocation(line: 321, column: 31, scope: !510)
!510 = distinct !DILexicalBlock(scope: !403, file: !3, line: 321, column: 9)
!511 = !DILocation(line: 321, column: 39, scope: !510)
!512 = !DILocation(line: 321, column: 45, scope: !510)
!513 = !DILocation(line: 321, column: 48, scope: !510)
!514 = !DILocation(line: 321, column: 9, scope: !403)
!515 = !DILocation(line: 325, column: 18, scope: !516)
!516 = distinct !DILexicalBlock(scope: !510, file: !3, line: 324, column: 10)
!517 = !DILocation(line: 325, column: 12, scope: !516)
!518 = !DILocation(line: 325, column: 7, scope: !516)
!519 = !DILocation(line: 325, column: 16, scope: !516)
!520 = !DILocation(line: 327, column: 13, scope: !521)
!521 = distinct !DILexicalBlock(scope: !516, file: !3, line: 327, column: 11)
!522 = !DILocation(line: 327, column: 11, scope: !516)
!523 = !DILocation(line: 0, scope: !516)
!524 = !DILocation(line: 332, column: 16, scope: !403)
!525 = !DILocation(line: 332, column: 10, scope: !403)
!526 = !DILocation(line: 332, column: 5, scope: !403)
!527 = !DILocation(line: 332, column: 14, scope: !403)
!528 = !DILocation(line: 333, column: 11, scope: !529)
!529 = distinct !DILexicalBlock(scope: !403, file: !3, line: 333, column: 9)
!530 = !DILocation(line: 333, column: 9, scope: !403)
!531 = !DILocation(line: 251, column: 77, scope: !404)
!532 = !DILocation(line: 251, column: 3, scope: !404)
!533 = !DILocation(line: 251, column: 53, scope: !404)
!534 = distinct !{!534, !401, !535}
!535 = !DILocation(line: 336, column: 3, scope: !400)
!536 = !DILocation(line: 338, column: 3, scope: !344)
!537 = !DILocation(line: 338, column: 10, scope: !344)
!538 = !DILocation(line: 340, column: 3, scope: !344)
!539 = !DILocation(line: 0, scope: !540)
!540 = distinct !DILexicalBlock(scope: !491, file: !3, line: 306, column: 24)
!541 = !DILocation(line: 341, column: 1, scope: !344)
