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
  br label %5, !dbg !115

; <label>:5:                                      ; preds = %23, %2
  %6 = phi i32 [ 8, %2 ], [ %24, %23 ], !dbg !117
  %7 = phi i8* [ %0, %2 ], [ %25, %23 ], !dbg !122
  %8 = load i8, i8* %7, align 1, !dbg !123, !tbaa !124
  switch i8 %8, label %14 [
    i8 0, label %26
    i8 58, label %9
    i8 46, label %11
  ], !dbg !127

; <label>:9:                                      ; preds = %5
  %10 = add i32 %6, -1, !dbg !128
  br label %23, !dbg !129

; <label>:11:                                     ; preds = %5
  switch i32 %6, label %195 [
    i32 5, label %12
    i32 2, label %12
  ], !dbg !130

; <label>:12:                                     ; preds = %11, %11
  %13 = add i32 %6, -1, !dbg !134
  br label %26, !dbg !136

; <label>:14:                                     ; preds = %5
  %15 = tail call i8* @__locale_ctype_ptr() #4, !dbg !137
  %16 = getelementptr inbounds i8, i8* %15, i64 1, !dbg !137
  %17 = load i8, i8* %7, align 1, !dbg !137, !tbaa !124
  %18 = zext i8 %17 to i64, !dbg !137
  %19 = getelementptr inbounds i8, i8* %16, i64 %18, !dbg !137
  %20 = load i8, i8* %19, align 1, !dbg !137, !tbaa !124
  %21 = and i8 %20, 68, !dbg !137
  %22 = icmp eq i8 %21, 0, !dbg !137
  br i1 %22, label %26, label %23, !dbg !139

; <label>:23:                                     ; preds = %14, %9
  %24 = phi i32 [ %10, %9 ], [ %6, %14 ], !dbg !140
  %25 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !141
  br label %5, !dbg !142, !llvm.loop !143

; <label>:26:                                     ; preds = %5, %14, %12
  %27 = phi i32 [ %13, %12 ], [ %6, %14 ], [ %6, %5 ], !dbg !140
  %28 = phi i1 [ true, %12 ], [ false, %14 ], [ false, %5 ]
  %29 = icmp ne %struct.ip6_addr* %1, null
  %30 = bitcast i32* %3 to i8*
  %31 = bitcast %struct.ip4_addr* %4 to i8*
  %32 = xor i1 %29, true
  br label %33, !dbg !148

; <label>:33:                                     ; preds = %155, %26
  %34 = phi i32 [ 0, %26 ], [ %156, %155 ], !dbg !149
  %35 = phi i32 [ %27, %26 ], [ %157, %155 ], !dbg !134
  %36 = phi i32 [ 0, %26 ], [ %158, %155 ], !dbg !154
  %37 = phi i32 [ 0, %26 ], [ %159, %155 ], !dbg !159
  %38 = phi i8* [ %0, %26 ], [ %161, %155 ], !dbg !160
  %39 = load i8, i8* %38, align 1, !dbg !161, !tbaa !124
  switch i8 %39, label %101 [
    i8 0, label %162
    i8 58, label %40
  ], !dbg !162

; <label>:40:                                     ; preds = %33
  br i1 %29, label %41, label %54, !dbg !163

; <label>:41:                                     ; preds = %40
  %42 = and i32 %36, 1, !dbg !164
  %43 = icmp eq i32 %42, 0, !dbg !164
  br i1 %43, label %50, label %44, !dbg !165

; <label>:44:                                     ; preds = %41
  %45 = add i32 %34, 1, !dbg !166
  %46 = zext i32 %34 to i64, !dbg !167
  %47 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 %46, !dbg !167
  %48 = load i32, i32* %47, align 4, !dbg !168, !tbaa !169
  %49 = or i32 %48, %37, !dbg !168
  store i32 %49, i32* %47, align 4, !dbg !168, !tbaa !169
  br label %54, !dbg !171

; <label>:50:                                     ; preds = %41
  %51 = shl i32 %37, 16, !dbg !172
  %52 = zext i32 %34 to i64, !dbg !174
  %53 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 %52, !dbg !174
  store i32 %51, i32* %53, align 4, !dbg !175, !tbaa !169
  br label %54

; <label>:54:                                     ; preds = %44, %50, %40
  %55 = phi i32 [ %45, %44 ], [ %34, %50 ], [ %34, %40 ], !dbg !140
  %56 = add i32 %36, 1, !dbg !176
  %57 = icmp eq i32 %56, 6, !dbg !177
  %58 = and i1 %28, %57, !dbg !178
  br i1 %58, label %59, label %70, !dbg !178

; <label>:59:                                     ; preds = %54
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %31) #5, !dbg !179
  %60 = getelementptr inbounds i8, i8* %38, i64 1, !dbg !180
  %61 = call i32 @ip4addr_aton(i8* nonnull %60, %struct.ip4_addr* nonnull %4) #4, !dbg !182
  %62 = icmp eq i32 %61, 0, !dbg !184
  %63 = or i1 %62, %32, !dbg !185
  br i1 %63, label %69, label %64, !dbg !185

; <label>:64:                                     ; preds = %59
  %65 = getelementptr inbounds %struct.ip4_addr, %struct.ip4_addr* %4, i64 0, i32 0, !dbg !186
  %66 = load i32, i32* %65, align 4, !dbg !186, !tbaa !187
  %67 = call i32 @lwip_htonl(i32 %66) #4, !dbg !189
  %68 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 3, !dbg !190
  store i32 %67, i32* %68, align 4, !dbg !191, !tbaa !169
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %31) #5, !dbg !192
  br label %176

; <label>:69:                                     ; preds = %59
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %31) #5, !dbg !192
  br i1 %62, label %74, label %195

; <label>:70:                                     ; preds = %54
  %71 = icmp ugt i32 %56, 7, !dbg !193
  br i1 %71, label %195, label %72, !dbg !195

; <label>:72:                                     ; preds = %70
  %73 = getelementptr inbounds i8, i8* %38, i64 1, !dbg !196
  br label %74, !dbg !195

; <label>:74:                                     ; preds = %72, %69
  %75 = phi i8* [ %73, %72 ], [ %60, %69 ], !dbg !196
  %76 = load i8, i8* %75, align 1, !dbg !196, !tbaa !124
  %77 = icmp eq i8 %76, 58, !dbg !198
  br i1 %77, label %78, label %155, !dbg !199

; <label>:78:                                     ; preds = %74
  %79 = getelementptr inbounds i8, i8* %38, i64 2, !dbg !200
  %80 = load i8, i8* %79, align 1, !dbg !200, !tbaa !124
  %81 = icmp eq i8 %80, 58, !dbg !203
  br i1 %81, label %195, label %82, !dbg !204

; <label>:82:                                     ; preds = %78, %97
  %83 = phi i32 [ %98, %97 ], [ %55, %78 ], !dbg !205
  %84 = phi i32 [ %88, %97 ], [ %35, %78 ], !dbg !209
  %85 = phi i32 [ %99, %97 ], [ %56, %78 ], !dbg !209
  %86 = icmp eq i32 %84, 0, !dbg !210
  br i1 %86, label %155, label %87, !dbg !211

; <label>:87:                                     ; preds = %82
  %88 = add i32 %84, -1, !dbg !212
  %89 = and i32 %85, 1, !dbg !213
  %90 = icmp eq i32 %89, 0, !dbg !213
  br i1 %90, label %93, label %91, !dbg !214

; <label>:91:                                     ; preds = %87
  %92 = add i32 %83, 1, !dbg !215
  br label %97, !dbg !216

; <label>:93:                                     ; preds = %87
  br i1 %29, label %94, label %97, !dbg !217

; <label>:94:                                     ; preds = %93
  %95 = zext i32 %83 to i64, !dbg !219
  %96 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 %95, !dbg !219
  store i32 0, i32* %96, align 4, !dbg !222, !tbaa !169
  br label %97, !dbg !223

; <label>:97:                                     ; preds = %93, %94, %91
  %98 = phi i32 [ %92, %91 ], [ %83, %94 ], [ %83, %93 ], !dbg !149
  %99 = add i32 %85, 1, !dbg !224
  %100 = icmp ugt i32 %99, 7, !dbg !225
  br i1 %100, label %195, label %82, !dbg !227, !llvm.loop !228

; <label>:101:                                    ; preds = %33
  %102 = call i8* @__locale_ctype_ptr() #4, !dbg !230
  %103 = getelementptr inbounds i8, i8* %102, i64 1, !dbg !230
  %104 = load i8, i8* %38, align 1, !dbg !230, !tbaa !124
  %105 = zext i8 %104 to i64, !dbg !230
  %106 = getelementptr inbounds i8, i8* %103, i64 %105, !dbg !230
  %107 = load i8, i8* %106, align 1, !dbg !230, !tbaa !124
  %108 = and i8 %107, 68, !dbg !230
  %109 = icmp eq i8 %108, 0, !dbg !230
  br i1 %109, label %162, label %110, !dbg !231

; <label>:110:                                    ; preds = %101
  %111 = shl i32 %37, 4, !dbg !232
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %30) #5, !dbg !233
  %112 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !dbg !234, !srcloc !242
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !244
  %113 = icmp ult i64 %112, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !245
  br i1 %113, label %124, label %114, !dbg !245

; <label>:114:                                    ; preds = %110
  %115 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !dbg !246, !srcloc !242
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !249
  %116 = icmp ugt i64 %115, ptrtoint ([0 x i8]* @_end to i64), !dbg !245
  br i1 %116, label %124, label %117, !dbg !250

; <label>:117:                                    ; preds = %114
  %118 = call i8* @__locale_ctype_ptr() #4, !dbg !251
  %119 = getelementptr inbounds i8, i8* %118, i64 1, !dbg !251
  %120 = getelementptr inbounds i8, i8* %119, i64 %105, !dbg !251
  %121 = load i8, i8* %120, align 1, !dbg !251, !tbaa !124
  %122 = and i8 %121, 4, !dbg !251
  %123 = zext i8 %122 to i32, !dbg !251
  store volatile i32 %123, i32* %3, align 4, !dbg !251, !tbaa !169
  br label %132, !dbg !251

; <label>:124:                                    ; preds = %114, %110
  %125 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !dbg !253, !srcloc !242
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !263
  %126 = and i64 %125, -65536, !dbg !265
  %127 = or i64 %126, 4097, !dbg !265
  %128 = add nsw i64 %127, -1, !dbg !265
  %129 = inttoptr i64 %128 to i32*, !dbg !266
  %130 = load i32, i32* %129, align 4096, !dbg !267, !tbaa !169
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !268
  %131 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call isdigit\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 %105, i32 %130, i32 (i32)* nonnull @isdigit) #5, !dbg !269, !srcloc !270
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %3, i64 %131) #5, !dbg !271, !srcloc !274
  br label %132

; <label>:132:                                    ; preds = %117, %124
  %133 = load volatile i32, i32* %3, align 4, !dbg !275, !tbaa !169
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %30) #5, !dbg !276
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !277
  %134 = icmp eq i32 %133, 0, !dbg !278
  br i1 %134, label %139, label %135, !dbg !278

; <label>:135:                                    ; preds = %132
  %136 = load i8, i8* %38, align 1, !dbg !279, !tbaa !124
  %137 = sext i8 %136 to i32, !dbg !279
  %138 = add nsw i32 %137, -48, !dbg !280
  br label %152, !dbg !278

; <label>:139:                                    ; preds = %132
  %140 = call i8* @__locale_ctype_ptr() #4, !dbg !281
  %141 = getelementptr inbounds i8, i8* %140, i64 1, !dbg !281
  %142 = load i8, i8* %38, align 1, !dbg !281, !tbaa !124
  %143 = zext i8 %142 to i64, !dbg !281
  %144 = getelementptr inbounds i8, i8* %141, i64 %143, !dbg !281
  %145 = load i8, i8* %144, align 1, !dbg !281, !tbaa !124
  %146 = and i8 %145, 3, !dbg !281
  %147 = icmp eq i8 %146, 2, !dbg !281
  %148 = sext i8 %142 to i32, !dbg !282
  %149 = select i1 %147, i32 -97, i32 -65, !dbg !281
  %150 = add nsw i32 %148, 10, !dbg !281
  %151 = add nsw i32 %150, %149, !dbg !283
  br label %152, !dbg !278

; <label>:152:                                    ; preds = %139, %135
  %153 = phi i32 [ %138, %135 ], [ %151, %139 ], !dbg !278
  %154 = add i32 %153, %111, !dbg !284
  br label %155

; <label>:155:                                    ; preds = %82, %152, %74
  %156 = phi i32 [ %55, %74 ], [ %34, %152 ], [ %83, %82 ], !dbg !140
  %157 = phi i32 [ %35, %74 ], [ %35, %152 ], [ 0, %82 ], !dbg !134
  %158 = phi i32 [ %56, %74 ], [ %36, %152 ], [ %85, %82 ], !dbg !140
  %159 = phi i32 [ 0, %74 ], [ %154, %152 ], [ 0, %82 ], !dbg !282
  %160 = phi i8* [ %38, %74 ], [ %38, %152 ], [ %75, %82 ], !dbg !285
  %161 = getelementptr inbounds i8, i8* %160, i64 1, !dbg !286
  br label %33, !dbg !287, !llvm.loop !288

; <label>:162:                                    ; preds = %33, %101
  %163 = icmp eq %struct.ip6_addr* %1, null, !dbg !290
  br i1 %163, label %191, label %164, !dbg !292

; <label>:164:                                    ; preds = %162
  %165 = and i32 %36, 1, !dbg !293
  %166 = icmp eq i32 %165, 0, !dbg !293
  br i1 %166, label %172, label %167, !dbg !296

; <label>:167:                                    ; preds = %164
  %168 = zext i32 %34 to i64, !dbg !297
  %169 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 %168, !dbg !297
  %170 = load i32, i32* %169, align 4, !dbg !299, !tbaa !169
  %171 = or i32 %170, %37, !dbg !299
  store i32 %171, i32* %169, align 4, !dbg !299, !tbaa !169
  br label %176, !dbg !300

; <label>:172:                                    ; preds = %164
  %173 = shl i32 %37, 16, !dbg !301
  %174 = zext i32 %34 to i64, !dbg !303
  %175 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 %174, !dbg !303
  store i32 %173, i32* %175, align 4, !dbg !304, !tbaa !169
  br label %176

; <label>:176:                                    ; preds = %64, %167, %172
  %177 = phi i32 [ %36, %167 ], [ %36, %172 ], [ 7, %64 ], !dbg !140
  %178 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 0, !dbg !305
  %179 = load i32, i32* %178, align 4, !dbg !305, !tbaa !169
  %180 = call i32 @lwip_htonl(i32 %179) #4, !dbg !309
  store i32 %180, i32* %178, align 4, !dbg !310, !tbaa !169
  %181 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 1, !dbg !305
  %182 = load i32, i32* %181, align 4, !dbg !305, !tbaa !169
  %183 = call i32 @lwip_htonl(i32 %182) #4, !dbg !309
  store i32 %183, i32* %181, align 4, !dbg !310, !tbaa !169
  %184 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 2, !dbg !305
  %185 = load i32, i32* %184, align 4, !dbg !305, !tbaa !169
  %186 = call i32 @lwip_htonl(i32 %185) #4, !dbg !309
  store i32 %186, i32* %184, align 4, !dbg !310, !tbaa !169
  %187 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 3, !dbg !305
  %188 = load i32, i32* %187, align 4, !dbg !305, !tbaa !169
  %189 = call i32 @lwip_htonl(i32 %188) #4, !dbg !309
  store i32 %189, i32* %187, align 4, !dbg !310, !tbaa !169
  %190 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 1, !dbg !311
  store i8 0, i8* %190, align 4, !dbg !311, !tbaa !312
  br label %191, !dbg !314

; <label>:191:                                    ; preds = %162, %176
  %192 = phi i32 [ %177, %176 ], [ %36, %162 ], !dbg !140
  %193 = icmp eq i32 %192, 7, !dbg !315
  %194 = zext i1 %193 to i32, !dbg !317
  br label %195, !dbg !317

; <label>:195:                                    ; preds = %69, %78, %70, %97, %191, %11
  %196 = phi i32 [ 0, %11 ], [ %194, %191 ], [ 0, %97 ], [ 0, %78 ], [ 0, %70 ], [ 1, %69 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !318
  ret i32 %196, !dbg !318
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
  %2 = tail call i8* @ip6addr_ntoa_r(%struct.ip6_addr* %0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @ip6addr_ntoa.str, i64 0, i64 0), i32 40) #6, !dbg !320
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !321
  ret i8* %2, !dbg !321
}

; Function Attrs: noredzone nounwind
define dso_local i8* @ip6addr_ntoa_r(%struct.ip6_addr* nocapture readonly, i8*, i32) local_unnamed_addr #0 !dbg !322 {
  %4 = alloca %struct.ip4_addr, align 4
  %5 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %0, i64 0, i32 0, i64 0, !dbg !347
  %6 = load i32, i32* %5, align 4, !dbg !347, !tbaa !169
  %7 = icmp eq i32 %6, 0, !dbg !347
  br i1 %7, label %9, label %8, !dbg !347

; <label>:8:                                      ; preds = %13, %9, %3
  br label %32, !dbg !348

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %0, i64 0, i32 0, i64 1, !dbg !347
  %11 = load i32, i32* %10, align 4, !dbg !347, !tbaa !169
  %12 = icmp eq i32 %11, 0, !dbg !347
  br i1 %12, label %13, label %8, !dbg !347

; <label>:13:                                     ; preds = %9
  %14 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %0, i64 0, i32 0, i64 2, !dbg !347
  %15 = load i32, i32* %14, align 4, !dbg !347, !tbaa !169
  %16 = icmp eq i32 %15, -65536, !dbg !347
  br i1 %16, label %17, label %8, !dbg !352

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.ip4_addr* %4 to i8*, !dbg !353
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %18) #5, !dbg !353
  %19 = getelementptr inbounds i8, i8* %1, i64 7, !dbg !354
  %20 = icmp slt i32 %2, 8, !dbg !356
  br i1 %20, label %30, label %21, !dbg !358

; <label>:21:                                     ; preds = %17
  %22 = add i32 %2, -7, !dbg !359
  %23 = tail call i8* @memcpy(i8* %1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 8) #4, !dbg !361
  %24 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %0, i64 0, i32 0, i64 3, !dbg !362
  %25 = load i32, i32* %24, align 4, !dbg !362, !tbaa !169
  %26 = getelementptr inbounds %struct.ip4_addr, %struct.ip4_addr* %4, i64 0, i32 0, !dbg !363
  store i32 %25, i32* %26, align 4, !dbg !364, !tbaa !187
  %27 = call i8* @ip4addr_ntoa_r(%struct.ip4_addr* nonnull %4, i8* nonnull %19, i32 %22) #4, !dbg !366
  %28 = icmp eq i8* %27, %19, !dbg !368
  %29 = select i1 %28, i8* %1, i8* null, !dbg !370
  br label %30, !dbg !370

; <label>:30:                                     ; preds = %21, %17
  %31 = phi i8* [ null, %17 ], [ %29, %21 ], !dbg !371
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %18) #5, !dbg !372
  br label %156

; <label>:32:                                     ; preds = %8, %147
  %33 = phi i32 [ %150, %147 ], [ 0, %8 ]
  %34 = phi i8 [ %149, %147 ], [ 0, %8 ]
  %35 = phi i32 [ %148, %147 ], [ 0, %8 ]
  %36 = lshr i32 %33, 1, !dbg !348
  %37 = zext i32 %36 to i64, !dbg !376
  %38 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %0, i64 0, i32 0, i64 %37, !dbg !376
  %39 = load i32, i32* %38, align 4, !dbg !376, !tbaa !169
  %40 = tail call i32 @lwip_htonl(i32 %39) #4, !dbg !377
  %41 = and i32 %33, 1, !dbg !379
  %42 = icmp eq i32 %41, 0, !dbg !381
  %43 = lshr i32 %40, 16, !dbg !382
  %44 = select i1 %42, i32 %43, i32 %40, !dbg !384
  %45 = and i32 %44, 65535, !dbg !385
  %46 = icmp eq i32 %45, 0, !dbg !386
  br i1 %46, label %47, label %73, !dbg !388

; <label>:47:                                     ; preds = %32
  %48 = icmp eq i32 %33, 7, !dbg !389
  %49 = icmp eq i8 %34, 1, !dbg !392
  %50 = and i1 %49, %48, !dbg !393
  br i1 %50, label %51, label %56, !dbg !393

; <label>:51:                                     ; preds = %47
  %52 = add nsw i32 %35, 1, !dbg !394
  %53 = sext i32 %35 to i64, !dbg !396
  %54 = getelementptr inbounds i8, i8* %1, i64 %53, !dbg !396
  store i8 58, i8* %54, align 1, !dbg !397, !tbaa !124
  %55 = icmp slt i32 %52, %2, !dbg !398
  br i1 %55, label %152, label %156, !dbg !400

; <label>:56:                                     ; preds = %47
  switch i8 %34, label %76 [
    i8 0, label %57
    i8 1, label %147
  ], !dbg !401

; <label>:57:                                     ; preds = %56
  %58 = add nuw nsw i32 %33, 1, !dbg !402
  %59 = lshr i32 %58, 1, !dbg !405
  %60 = zext i32 %59 to i64, !dbg !406
  %61 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %0, i64 0, i32 0, i64 %60, !dbg !406
  %62 = load i32, i32* %61, align 4, !dbg !406, !tbaa !169
  %63 = tail call i32 @lwip_htonl(i32 %62) #4, !dbg !407
  %64 = lshr i32 %63, 16, !dbg !409
  %65 = select i1 %42, i32 %63, i32 %64, !dbg !412
  %66 = and i32 %65, 65535, !dbg !413
  %67 = icmp eq i32 %66, 0, !dbg !414
  br i1 %67, label %68, label %76, !dbg !416

; <label>:68:                                     ; preds = %57
  %69 = add nsw i32 %35, 1, !dbg !417
  %70 = sext i32 %35 to i64, !dbg !419
  %71 = getelementptr inbounds i8, i8* %1, i64 %70, !dbg !419
  store i8 58, i8* %71, align 1, !dbg !420, !tbaa !124
  %72 = icmp slt i32 %69, %2, !dbg !421
  br i1 %72, label %147, label %156, !dbg !423

; <label>:73:                                     ; preds = %32
  %74 = icmp eq i8 %34, 1, !dbg !424
  %75 = select i1 %74, i8 2, i8 %34, !dbg !426
  br label %76, !dbg !426

; <label>:76:                                     ; preds = %73, %56, %57
  %77 = phi i8 [ 0, %57 ], [ %34, %56 ], [ %75, %73 ], !dbg !427
  %78 = icmp eq i32 %33, 0, !dbg !428
  br i1 %78, label %84, label %79, !dbg !430

; <label>:79:                                     ; preds = %76
  %80 = add nsw i32 %35, 1, !dbg !431
  %81 = sext i32 %35 to i64, !dbg !433
  %82 = getelementptr inbounds i8, i8* %1, i64 %81, !dbg !433
  store i8 58, i8* %82, align 1, !dbg !434, !tbaa !124
  %83 = icmp slt i32 %80, %2, !dbg !435
  br i1 %83, label %84, label %156, !dbg !437

; <label>:84:                                     ; preds = %79, %76
  %85 = phi i32 [ %80, %79 ], [ %35, %76 ], !dbg !427
  %86 = and i32 %44, 61440, !dbg !438
  %87 = icmp eq i32 %86, 0, !dbg !440
  br i1 %87, label %101, label %88, !dbg !441

; <label>:88:                                     ; preds = %84
  %89 = lshr exact i32 %86, 12, !dbg !442
  %90 = icmp ult i32 %86, 40960, !dbg !442
  %91 = or i32 %89, 48, !dbg !442
  %92 = add nuw nsw i32 %89, 55, !dbg !442
  %93 = select i1 %90, i32 %91, i32 %92, !dbg !442
  %94 = trunc i32 %93 to i8, !dbg !442
  %95 = add nsw i32 %85, 1, !dbg !444
  %96 = sext i32 %85 to i64, !dbg !445
  %97 = getelementptr inbounds i8, i8* %1, i64 %96, !dbg !445
  store i8 %94, i8* %97, align 1, !dbg !446, !tbaa !124
  %98 = icmp slt i32 %95, %2, !dbg !448
  br i1 %98, label %99, label %156, !dbg !450

; <label>:99:                                     ; preds = %88
  %100 = and i32 %44, 3840, !dbg !451
  br label %104, !dbg !453

; <label>:101:                                    ; preds = %84
  %102 = and i32 %44, 3840, !dbg !451
  %103 = icmp eq i32 %102, 0, !dbg !454
  br i1 %103, label %119, label %104, !dbg !453

; <label>:104:                                    ; preds = %101, %99
  %105 = phi i32 [ %100, %99 ], [ %102, %101 ]
  %106 = phi i32 [ %95, %99 ], [ %85, %101 ]
  %107 = lshr exact i32 %105, 8, !dbg !455
  %108 = icmp ult i32 %105, 2560, !dbg !455
  %109 = or i32 %107, 48, !dbg !455
  %110 = add nuw nsw i32 %107, 55, !dbg !455
  %111 = select i1 %108, i32 %109, i32 %110, !dbg !455
  %112 = trunc i32 %111 to i8, !dbg !455
  %113 = add nsw i32 %106, 1, !dbg !457
  %114 = sext i32 %106 to i64, !dbg !458
  %115 = getelementptr inbounds i8, i8* %1, i64 %114, !dbg !458
  store i8 %112, i8* %115, align 1, !dbg !459, !tbaa !124
  %116 = icmp slt i32 %113, %2, !dbg !460
  br i1 %116, label %117, label %156, !dbg !462

; <label>:117:                                    ; preds = %104
  %118 = and i32 %44, 240, !dbg !463
  br label %122, !dbg !465

; <label>:119:                                    ; preds = %101
  %120 = and i32 %44, 240, !dbg !463
  %121 = icmp eq i32 %120, 0, !dbg !466
  br i1 %121, label %135, label %122, !dbg !465

; <label>:122:                                    ; preds = %119, %117
  %123 = phi i32 [ %118, %117 ], [ %120, %119 ]
  %124 = phi i32 [ %113, %117 ], [ %85, %119 ]
  %125 = lshr exact i32 %123, 4, !dbg !467
  %126 = icmp ult i32 %123, 160, !dbg !467
  %127 = or i32 %125, 48, !dbg !467
  %128 = add nuw nsw i32 %125, 55, !dbg !467
  %129 = select i1 %126, i32 %127, i32 %128, !dbg !467
  %130 = trunc i32 %129 to i8, !dbg !467
  %131 = add nsw i32 %124, 1, !dbg !469
  %132 = sext i32 %124 to i64, !dbg !470
  %133 = getelementptr inbounds i8, i8* %1, i64 %132, !dbg !470
  store i8 %130, i8* %133, align 1, !dbg !471, !tbaa !124
  %134 = icmp slt i32 %131, %2, !dbg !472
  br i1 %134, label %135, label %156, !dbg !474

; <label>:135:                                    ; preds = %119, %122
  %136 = phi i32 [ %131, %122 ], [ %85, %119 ], !dbg !475
  %137 = and i32 %44, 15, !dbg !476
  %138 = icmp ult i32 %137, 10, !dbg !476
  %139 = or i32 %137, 48, !dbg !476
  %140 = add nuw nsw i32 %137, 55, !dbg !476
  %141 = select i1 %138, i32 %139, i32 %140, !dbg !476
  %142 = trunc i32 %141 to i8, !dbg !476
  %143 = add nsw i32 %136, 1, !dbg !477
  %144 = sext i32 %136 to i64, !dbg !478
  %145 = getelementptr inbounds i8, i8* %1, i64 %144, !dbg !478
  store i8 %142, i8* %145, align 1, !dbg !479, !tbaa !124
  %146 = icmp slt i32 %143, %2, !dbg !480
  br i1 %146, label %147, label %156, !dbg !482

; <label>:147:                                    ; preds = %56, %68, %135
  %148 = phi i32 [ %69, %68 ], [ %143, %135 ], [ %35, %56 ], !dbg !427
  %149 = phi i8 [ 1, %68 ], [ %77, %135 ], [ %34, %56 ], !dbg !427
  %150 = add nuw nsw i32 %33, 1, !dbg !483
  %151 = icmp ult i32 %150, 8, !dbg !484
  br i1 %151, label %32, label %152, !dbg !485, !llvm.loop !486

; <label>:152:                                    ; preds = %147, %51
  %153 = phi i32 [ %52, %51 ], [ %148, %147 ], !dbg !427
  %154 = sext i32 %153 to i64, !dbg !488
  %155 = getelementptr inbounds i8, i8* %1, i64 %154, !dbg !488
  store i8 0, i8* %155, align 1, !dbg !489, !tbaa !124
  br label %156, !dbg !490

; <label>:156:                                    ; preds = %135, %122, %104, %88, %79, %68, %51, %152, %30
  %157 = phi i8* [ %31, %30 ], [ %1, %152 ], [ null, %51 ], [ null, %68 ], [ null, %79 ], [ null, %88 ], [ null, %104 ], [ null, %122 ], [ null, %135 ], !dbg !491
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !493
  ret i8* %157, !dbg !493
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
!117 = !DILocation(line: 0, scope: !118)
!118 = distinct !DILexicalBlock(scope: !119, file: !3, line: 83, column: 20)
!119 = distinct !DILexicalBlock(scope: !120, file: !3, line: 83, column: 9)
!120 = distinct !DILexicalBlock(scope: !121, file: !3, line: 82, column: 30)
!121 = distinct !DILexicalBlock(scope: !116, file: !3, line: 82, column: 3)
!122 = !DILocation(line: 0, scope: !121)
!123 = !DILocation(line: 82, column: 16, scope: !121)
!124 = !{!125, !125, i64 0}
!125 = !{!"omnipotent char", !126, i64 0}
!126 = !{!"Simple C/C++ TBAA"}
!127 = !DILocation(line: 82, column: 3, scope: !116)
!128 = !DILocation(line: 84, column: 18, scope: !118)
!129 = !DILocation(line: 86, column: 5, scope: !118)
!130 = !DILocation(line: 87, column: 30, scope: !131)
!131 = distinct !DILexicalBlock(scope: !132, file: !3, line: 87, column: 11)
!132 = distinct !DILexicalBlock(scope: !133, file: !3, line: 86, column: 27)
!133 = distinct !DILexicalBlock(scope: !119, file: !3, line: 86, column: 16)
!134 = !DILocation(line: 90, column: 20, scope: !135)
!135 = distinct !DILexicalBlock(scope: !131, file: !3, line: 87, column: 52)
!136 = !DILocation(line: 95, column: 7, scope: !132)
!137 = !DILocation(line: 97, column: 17, scope: !138)
!138 = distinct !DILexicalBlock(scope: !133, file: !3, line: 97, column: 16)
!139 = !DILocation(line: 97, column: 16, scope: !133)
!140 = !DILocation(line: 0, scope: !66)
!141 = !DILocation(line: 82, column: 26, scope: !121)
!142 = !DILocation(line: 82, column: 3, scope: !121)
!143 = distinct !{!143, !127, !144}
!144 = !DILocation(line: 100, column: 3, scope: !116)
!145 = !DILocation(line: 73, column: 9, scope: !66)
!146 = !DILocation(line: 73, column: 34, scope: !66)
!147 = !DILocation(line: 73, column: 55, scope: !66)
!148 = !DILocation(line: 106, column: 8, scope: !90)
!149 = !DILocation(line: 0, scope: !150)
!150 = distinct !DILexicalBlock(scope: !151, file: !3, line: 109, column: 40)
!151 = distinct !DILexicalBlock(scope: !152, file: !3, line: 109, column: 13)
!152 = distinct !DILexicalBlock(scope: !153, file: !3, line: 108, column: 17)
!153 = distinct !DILexicalBlock(scope: !86, file: !3, line: 108, column: 11)
!154 = !DILocation(line: 0, scope: !155)
!155 = distinct !DILexicalBlock(scope: !156, file: !3, line: 123, column: 23)
!156 = distinct !DILexicalBlock(scope: !157, file: !3, line: 123, column: 17)
!157 = distinct !DILexicalBlock(scope: !158, file: !3, line: 122, column: 20)
!158 = distinct !DILexicalBlock(scope: !82, file: !3, line: 122, column: 15)
!159 = !DILocation(line: 0, scope: !86)
!160 = !DILocation(line: 0, scope: !89)
!161 = !DILocation(line: 106, column: 16, scope: !89)
!162 = !DILocation(line: 106, column: 3, scope: !90)
!163 = !DILocation(line: 108, column: 11, scope: !86)
!164 = !DILocation(line: 109, column: 33, scope: !151)
!165 = !DILocation(line: 109, column: 13, scope: !152)
!166 = !DILocation(line: 110, column: 32, scope: !150)
!167 = !DILocation(line: 110, column: 11, scope: !150)
!168 = !DILocation(line: 110, column: 36, scope: !150)
!169 = !{!170, !170, i64 0}
!170 = !{!"int", !125, i64 0}
!171 = !DILocation(line: 111, column: 9, scope: !150)
!172 = !DILocation(line: 113, column: 56, scope: !173)
!173 = distinct !DILexicalBlock(scope: !151, file: !3, line: 112, column: 14)
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
!184 = !DILocation(line: 122, column: 15, scope: !158)
!185 = !DILocation(line: 122, column: 15, scope: !82)
!186 = !DILocation(line: 124, column: 46, scope: !155)
!187 = !{!188, !170, i64 0}
!188 = !{!"ip4_addr", !170, i64 0}
!189 = !DILocation(line: 124, column: 31, scope: !155)
!190 = !DILocation(line: 124, column: 15, scope: !155)
!191 = !DILocation(line: 124, column: 29, scope: !155)
!192 = !DILocation(line: 130, column: 9, scope: !83)
!193 = !DILocation(line: 134, column: 31, scope: !194)
!194 = distinct !DILexicalBlock(scope: !86, file: !3, line: 134, column: 11)
!195 = !DILocation(line: 134, column: 11, scope: !86)
!196 = !DILocation(line: 138, column: 11, scope: !197)
!197 = distinct !DILexicalBlock(scope: !86, file: !3, line: 138, column: 11)
!198 = !DILocation(line: 138, column: 16, scope: !197)
!199 = !DILocation(line: 138, column: 11, scope: !86)
!200 = !DILocation(line: 139, column: 13, scope: !201)
!201 = distinct !DILexicalBlock(scope: !202, file: !3, line: 139, column: 13)
!202 = distinct !DILexicalBlock(scope: !197, file: !3, line: 138, column: 24)
!203 = !DILocation(line: 139, column: 18, scope: !201)
!204 = !DILocation(line: 139, column: 13, scope: !202)
!205 = !DILocation(line: 0, scope: !206)
!206 = distinct !DILexicalBlock(scope: !207, file: !3, line: 147, column: 42)
!207 = distinct !DILexicalBlock(scope: !208, file: !3, line: 147, column: 15)
!208 = distinct !DILexicalBlock(scope: !202, file: !3, line: 145, column: 33)
!209 = !DILocation(line: 0, scope: !208)
!210 = !DILocation(line: 145, column: 28, scope: !202)
!211 = !DILocation(line: 145, column: 9, scope: !202)
!212 = !DILocation(line: 146, column: 22, scope: !208)
!213 = !DILocation(line: 147, column: 35, scope: !207)
!214 = !DILocation(line: 147, column: 15, scope: !208)
!215 = !DILocation(line: 148, column: 23, scope: !206)
!216 = !DILocation(line: 149, column: 11, scope: !206)
!217 = !DILocation(line: 150, column: 17, scope: !218)
!218 = distinct !DILexicalBlock(scope: !207, file: !3, line: 149, column: 18)
!219 = !DILocation(line: 151, column: 15, scope: !220)
!220 = distinct !DILexicalBlock(scope: !221, file: !3, line: 150, column: 23)
!221 = distinct !DILexicalBlock(scope: !218, file: !3, line: 150, column: 17)
!222 = !DILocation(line: 151, column: 38, scope: !220)
!223 = !DILocation(line: 152, column: 13, scope: !220)
!224 = !DILocation(line: 154, column: 30, scope: !208)
!225 = !DILocation(line: 155, column: 35, scope: !226)
!226 = distinct !DILexicalBlock(scope: !208, file: !3, line: 155, column: 15)
!227 = !DILocation(line: 155, column: 15, scope: !208)
!228 = distinct !{!228, !211, !229}
!229 = !DILocation(line: 159, column: 9, scope: !202)
!230 = !DILocation(line: 161, column: 16, scope: !109)
!231 = !DILocation(line: 161, column: 16, scope: !87)
!232 = !DILocation(line: 163, column: 50, scope: !108)
!233 = !DILocation(line: 232, column: 2, scope: !93, inlinedAt: !107)
!234 = !DILocation(line: 120, column: 2, scope: !235, inlinedAt: !241)
!235 = distinct !DISubprogram(name: "ukarch_read_sp", scope: !236, file: !236, line: 116, type: !237, isLocal: true, isDefinition: true, scopeLine: 117, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !239)
!236 = !DIFile(filename: "/root/.unikraft/unikraft/arch/x86/x86_64/include/uk/asm/lcpu.h", directory: "/root/.unikraft/apps/redis/build")
!237 = !DISubroutineType(types: !238)
!238 = !{!16}
!239 = !{!240}
!240 = !DILocalVariable(name: "sp", scope: !235, file: !236, line: 118, type: !16)
!241 = distinct !DILocation(line: 233, column: 2, scope: !102, inlinedAt: !107)
!242 = !{i32 522909}
!243 = !DILocation(line: 118, column: 16, scope: !235, inlinedAt: !241)
!244 = !DILocation(line: 121, column: 2, scope: !235, inlinedAt: !241)
!245 = !DILocation(line: 233, column: 2, scope: !102, inlinedAt: !107)
!246 = !DILocation(line: 120, column: 2, scope: !235, inlinedAt: !247)
!247 = distinct !DILocation(line: 233, column: 2, scope: !102, inlinedAt: !107)
!248 = !DILocation(line: 118, column: 16, scope: !235, inlinedAt: !247)
!249 = !DILocation(line: 121, column: 2, scope: !235, inlinedAt: !247)
!250 = !DILocation(line: 233, column: 2, scope: !103, inlinedAt: !107)
!251 = !DILocation(line: 233, column: 2, scope: !252, inlinedAt: !107)
!252 = distinct !DILexicalBlock(scope: !102, file: !9, line: 233, column: 2)
!253 = !DILocation(line: 120, column: 2, scope: !235, inlinedAt: !254)
!254 = distinct !DILocation(line: 49, column: 21, scope: !255, inlinedAt: !261)
!255 = distinct !DISubprogram(name: "uk_thread_get_tid", scope: !256, file: !256, line: 47, type: !257, isLocal: true, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !259)
!256 = !DIFile(filename: "/root/.unikraft/unikraft/lib/flexos-core/include/flexos/impl/intelpku-impl.h", directory: "/root/.unikraft/apps/redis/build")
!257 = !DISubroutineType(types: !258)
!258 = !{!6}
!259 = !{!260}
!260 = !DILocalVariable(name: "sp", scope: !255, file: !256, line: 49, type: !16)
!261 = distinct !DILocation(line: 233, column: 2, scope: !99, inlinedAt: !107)
!262 = !DILocation(line: 118, column: 16, scope: !235, inlinedAt: !254)
!263 = !DILocation(line: 121, column: 2, scope: !235, inlinedAt: !254)
!264 = !DILocation(line: 49, column: 16, scope: !255, inlinedAt: !261)
!265 = !DILocation(line: 50, column: 19, scope: !255, inlinedAt: !261)
!266 = !DILocation(line: 50, column: 11, scope: !255, inlinedAt: !261)
!267 = !DILocation(line: 50, column: 9, scope: !255, inlinedAt: !261)
!268 = !DILocation(line: 50, column: 2, scope: !255, inlinedAt: !261)
!269 = !DILocation(line: 233, column: 2, scope: !99, inlinedAt: !107)
!270 = !{i32 -2146777647, i32 -2146777634, i32 -2146777609, i32 -2146777585, i32 -2146777560, i32 -2146777485, i32 -2146777460, i32 -2146777316, i32 -2146774212, i32 -2146774123, i32 -2146774002, i32 -2146773907, i32 -2146773806, i32 -2146773779, i32 -2146773696, i32 -2146773607, i32 -2146773486, i32 -2146773386, i32 -2146773280, i32 -2146773172, i32 -2146777028, i32 -2146776975, i32 -2146776944, i32 -2146776913, i32 -2146776892, i32 -2146776870, i32 -2146776821, i32 -2146776800, i32 -2146773089, i32 -2146773000, i32 -2146772879, i32 -2146772780, i32 -2146772674, i32 -2146772572, i32 -2146772539, i32 -2146772466, i32 -2146772398, i32 -2146776496, i32 -2146776437, i32 -2146776384, i32 -2146776353, i32 -2146776322, i32 -2146776301, i32 -2146776279, i32 -2146776230, i32 -2146776209, i32 -2146772355, i32 -2146772266, i32 -2146772145, i32 -2146772046, i32 -2146771940, i32 -2146771838, i32 -2146771805, i32 -2146771722, i32 -2146771633, i32 -2146771512, i32 -2146771412, i32 -2146771386, i32 -2146771283, i32 -2146771257, i32 -2146775951, i32 -2146775884, i32 -2146775859, i32 -2146775795, i32 -2146775713, i32 -2146775690, i32 -2146775665, i32 -2146775640}
!271 = !DILocation(line: 233, column: 2, scope: !272, inlinedAt: !107)
!272 = distinct !DILexicalBlock(scope: !273, file: !9, line: 233, column: 2)
!273 = distinct !DILexicalBlock(scope: !99, file: !9, line: 233, column: 2)
!274 = !{i32 -2146774659, i32 -2146774642}
!275 = !DILocation(line: 234, column: 9, scope: !93, inlinedAt: !107)
!276 = !DILocation(line: 235, column: 1, scope: !93, inlinedAt: !107)
!277 = !DILocation(line: 234, column: 2, scope: !93, inlinedAt: !107)
!278 = !DILocation(line: 164, column: 12, scope: !108)
!279 = !DILocation(line: 164, column: 39, scope: !108)
!280 = !DILocation(line: 164, column: 42, scope: !108)
!281 = !DILocation(line: 165, column: 25, scope: !108)
!282 = !DILocation(line: 0, scope: !108)
!283 = !DILocation(line: 165, column: 22, scope: !108)
!284 = !DILocation(line: 163, column: 56, scope: !108)
!285 = !DILocation(line: 0, scope: !90)
!286 = !DILocation(line: 106, column: 26, scope: !89)
!287 = !DILocation(line: 106, column: 3, scope: !89)
!288 = distinct !{!288, !162, !289}
!289 = !DILocation(line: 170, column: 3, scope: !90)
!290 = !DILocation(line: 172, column: 7, scope: !291)
!291 = distinct !DILexicalBlock(scope: !66, file: !3, line: 172, column: 7)
!292 = !DILocation(line: 172, column: 7, scope: !66)
!293 = !DILocation(line: 173, column: 29, scope: !294)
!294 = distinct !DILexicalBlock(scope: !295, file: !3, line: 173, column: 9)
!295 = distinct !DILexicalBlock(scope: !291, file: !3, line: 172, column: 13)
!296 = !DILocation(line: 173, column: 9, scope: !295)
!297 = !DILocation(line: 174, column: 7, scope: !298)
!298 = distinct !DILexicalBlock(scope: !294, file: !3, line: 173, column: 36)
!299 = !DILocation(line: 174, column: 32, scope: !298)
!300 = !DILocation(line: 175, column: 5, scope: !298)
!301 = !DILocation(line: 177, column: 52, scope: !302)
!302 = distinct !DILexicalBlock(scope: !294, file: !3, line: 176, column: 10)
!303 = !DILocation(line: 177, column: 7, scope: !302)
!304 = !DILocation(line: 177, column: 30, scope: !302)
!305 = !DILocation(line: 184, column: 43, scope: !306)
!306 = distinct !DILexicalBlock(scope: !307, file: !3, line: 183, column: 56)
!307 = distinct !DILexicalBlock(scope: !308, file: !3, line: 183, column: 5)
!308 = distinct !DILexicalBlock(scope: !295, file: !3, line: 183, column: 5)
!309 = !DILocation(line: 184, column: 32, scope: !306)
!310 = !DILocation(line: 184, column: 30, scope: !306)
!311 = !DILocation(line: 187, column: 5, scope: !295)
!312 = !{!313, !125, i64 16}
!313 = !{!"ip6_addr", !125, i64 0, !125, i64 16}
!314 = !DILocation(line: 188, column: 3, scope: !295)
!315 = !DILocation(line: 190, column: 27, scope: !316)
!316 = distinct !DILexicalBlock(scope: !66, file: !3, line: 190, column: 7)
!317 = !DILocation(line: 194, column: 3, scope: !66)
!318 = !DILocation(line: 195, column: 1, scope: !66)
!319 = !DILocation(line: 206, column: 32, scope: !23)
!320 = !DILocation(line: 209, column: 10, scope: !23)
!321 = !DILocation(line: 209, column: 3, scope: !23)
!322 = distinct !DISubprogram(name: "ip6addr_ntoa_r", scope: !3, file: !3, line: 222, type: !323, isLocal: false, isDefinition: true, scopeLine: 223, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !325)
!323 = !DISubroutineType(types: !324)
!324 = !{!26, !27, !26, !6}
!325 = !{!326, !327, !328, !329, !330, !331, !332, !336, !337, !338, !341, !342, !343}
!326 = !DILocalVariable(name: "addr", arg: 1, scope: !322, file: !3, line: 222, type: !27)
!327 = !DILocalVariable(name: "buf", arg: 2, scope: !322, file: !3, line: 222, type: !26)
!328 = !DILocalVariable(name: "buflen", arg: 3, scope: !322, file: !3, line: 222, type: !6)
!329 = !DILocalVariable(name: "current_block_index", scope: !322, file: !3, line: 224, type: !8)
!330 = !DILocalVariable(name: "current_block_value", scope: !322, file: !3, line: 224, type: !8)
!331 = !DILocalVariable(name: "next_block_value", scope: !322, file: !3, line: 224, type: !8)
!332 = !DILocalVariable(name: "i", scope: !322, file: !3, line: 225, type: !333)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32_t", file: !9, line: 130, baseType: !334)
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !11, line: 44, baseType: !335)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !13, line: 77, baseType: !6)
!336 = !DILocalVariable(name: "zero_flag", scope: !322, file: !3, line: 226, type: !38)
!337 = !DILocalVariable(name: "empty_block_flag", scope: !322, file: !3, line: 226, type: !38)
!338 = !DILocalVariable(name: "addr4", scope: !339, file: !3, line: 231, type: !56)
!339 = distinct !DILexicalBlock(scope: !340, file: !3, line: 229, column: 40)
!340 = distinct !DILexicalBlock(scope: !322, file: !3, line: 229, column: 7)
!341 = !DILocalVariable(name: "ret", scope: !339, file: !3, line: 232, type: !26)
!342 = !DILocalVariable(name: "buf_ip4", scope: !339, file: !3, line: 234, type: !26)
!343 = !DILocalVariable(name: "buflen_ip4", scope: !339, file: !3, line: 235, type: !6)
!344 = !DILocation(line: 222, column: 34, scope: !322)
!345 = !DILocation(line: 222, column: 46, scope: !322)
!346 = !DILocation(line: 222, column: 55, scope: !322)
!347 = !DILocation(line: 229, column: 7, scope: !340)
!348 = !DILocation(line: 253, column: 69, scope: !349)
!349 = distinct !DILexicalBlock(scope: !350, file: !3, line: 251, column: 81)
!350 = distinct !DILexicalBlock(scope: !351, file: !3, line: 251, column: 3)
!351 = distinct !DILexicalBlock(scope: !322, file: !3, line: 251, column: 3)
!352 = !DILocation(line: 229, column: 7, scope: !322)
!353 = !DILocation(line: 231, column: 5, scope: !339)
!354 = !DILocation(line: 234, column: 52, scope: !339)
!355 = !DILocation(line: 234, column: 11, scope: !339)
!356 = !DILocation(line: 236, column: 16, scope: !357)
!357 = distinct !DILexicalBlock(scope: !339, file: !3, line: 236, column: 9)
!358 = !DILocation(line: 236, column: 9, scope: !339)
!359 = !DILocation(line: 235, column: 56, scope: !339)
!360 = !DILocation(line: 235, column: 9, scope: !339)
!361 = !DILocation(line: 239, column: 5, scope: !339)
!362 = !DILocation(line: 240, column: 18, scope: !339)
!363 = !DILocation(line: 240, column: 11, scope: !339)
!364 = !DILocation(line: 240, column: 16, scope: !339)
!365 = !DILocation(line: 231, column: 16, scope: !339)
!366 = !DILocation(line: 241, column: 11, scope: !339)
!367 = !DILocation(line: 232, column: 11, scope: !339)
!368 = !DILocation(line: 242, column: 13, scope: !369)
!369 = distinct !DILexicalBlock(scope: !339, file: !3, line: 242, column: 9)
!370 = !DILocation(line: 245, column: 5, scope: !339)
!371 = !DILocation(line: 0, scope: !339)
!372 = !DILocation(line: 246, column: 3, scope: !340)
!373 = !DILocation(line: 224, column: 9, scope: !322)
!374 = !DILocation(line: 226, column: 19, scope: !322)
!375 = !DILocation(line: 225, column: 9, scope: !322)
!376 = !DILocation(line: 253, column: 38, scope: !349)
!377 = !DILocation(line: 253, column: 27, scope: !349)
!378 = !DILocation(line: 224, column: 30, scope: !322)
!379 = !DILocation(line: 254, column: 30, scope: !380)
!380 = distinct !DILexicalBlock(scope: !349, file: !3, line: 254, column: 9)
!381 = !DILocation(line: 254, column: 37, scope: !380)
!382 = !DILocation(line: 255, column: 49, scope: !383)
!383 = distinct !DILexicalBlock(scope: !380, file: !3, line: 254, column: 43)
!384 = !DILocation(line: 254, column: 9, scope: !349)
!385 = !DILocation(line: 257, column: 25, scope: !349)
!386 = !DILocation(line: 260, column: 29, scope: !387)
!387 = distinct !DILexicalBlock(scope: !349, file: !3, line: 260, column: 9)
!388 = !DILocation(line: 260, column: 9, scope: !349)
!389 = !DILocation(line: 261, column: 31, scope: !390)
!390 = distinct !DILexicalBlock(scope: !391, file: !3, line: 261, column: 11)
!391 = distinct !DILexicalBlock(scope: !387, file: !3, line: 260, column: 35)
!392 = !DILocation(line: 261, column: 56, scope: !390)
!393 = !DILocation(line: 261, column: 36, scope: !390)
!394 = !DILocation(line: 263, column: 14, scope: !395)
!395 = distinct !DILexicalBlock(scope: !390, file: !3, line: 261, column: 62)
!396 = !DILocation(line: 263, column: 9, scope: !395)
!397 = !DILocation(line: 263, column: 18, scope: !395)
!398 = !DILocation(line: 264, column: 15, scope: !399)
!399 = distinct !DILexicalBlock(scope: !395, file: !3, line: 264, column: 13)
!400 = !DILocation(line: 264, column: 13, scope: !395)
!401 = !DILocation(line: 269, column: 11, scope: !391)
!402 = !DILocation(line: 272, column: 71, scope: !403)
!403 = distinct !DILexicalBlock(scope: !404, file: !3, line: 269, column: 34)
!404 = distinct !DILexicalBlock(scope: !391, file: !3, line: 269, column: 11)
!405 = !DILocation(line: 272, column: 76, scope: !403)
!406 = !DILocation(line: 272, column: 39, scope: !403)
!407 = !DILocation(line: 272, column: 28, scope: !403)
!408 = !DILocation(line: 224, column: 51, scope: !322)
!409 = !DILocation(line: 274, column: 49, scope: !410)
!410 = distinct !DILexicalBlock(scope: !411, file: !3, line: 273, column: 50)
!411 = distinct !DILexicalBlock(scope: !403, file: !3, line: 273, column: 13)
!412 = !DILocation(line: 273, column: 13, scope: !403)
!413 = !DILocation(line: 276, column: 26, scope: !403)
!414 = !DILocation(line: 277, column: 30, scope: !415)
!415 = distinct !DILexicalBlock(scope: !403, file: !3, line: 277, column: 13)
!416 = !DILocation(line: 277, column: 13, scope: !403)
!417 = !DILocation(line: 279, column: 16, scope: !418)
!418 = distinct !DILexicalBlock(scope: !415, file: !3, line: 277, column: 36)
!419 = !DILocation(line: 279, column: 11, scope: !418)
!420 = !DILocation(line: 279, column: 20, scope: !418)
!421 = !DILocation(line: 280, column: 17, scope: !422)
!422 = distinct !DILexicalBlock(scope: !418, file: !3, line: 280, column: 15)
!423 = !DILocation(line: 280, column: 15, scope: !418)
!424 = !DILocation(line: 289, column: 33, scope: !425)
!425 = distinct !DILexicalBlock(scope: !387, file: !3, line: 289, column: 16)
!426 = !DILocation(line: 289, column: 16, scope: !387)
!427 = !DILocation(line: 0, scope: !322)
!428 = !DILocation(line: 294, column: 29, scope: !429)
!429 = distinct !DILexicalBlock(scope: !349, file: !3, line: 294, column: 9)
!430 = !DILocation(line: 294, column: 9, scope: !349)
!431 = !DILocation(line: 295, column: 12, scope: !432)
!432 = distinct !DILexicalBlock(scope: !429, file: !3, line: 294, column: 34)
!433 = !DILocation(line: 295, column: 7, scope: !432)
!434 = !DILocation(line: 295, column: 16, scope: !432)
!435 = !DILocation(line: 296, column: 13, scope: !436)
!436 = distinct !DILexicalBlock(scope: !432, file: !3, line: 296, column: 11)
!437 = !DILocation(line: 296, column: 11, scope: !432)
!438 = !DILocation(line: 301, column: 30, scope: !439)
!439 = distinct !DILexicalBlock(scope: !349, file: !3, line: 301, column: 9)
!440 = !DILocation(line: 301, column: 40, scope: !439)
!441 = !DILocation(line: 301, column: 9, scope: !349)
!442 = !DILocation(line: 304, column: 18, scope: !443)
!443 = distinct !DILexicalBlock(scope: !439, file: !3, line: 303, column: 12)
!444 = !DILocation(line: 304, column: 12, scope: !443)
!445 = !DILocation(line: 304, column: 7, scope: !443)
!446 = !DILocation(line: 304, column: 16, scope: !443)
!447 = !DILocation(line: 226, column: 8, scope: !322)
!448 = !DILocation(line: 306, column: 13, scope: !449)
!449 = distinct !DILexicalBlock(scope: !443, file: !3, line: 306, column: 11)
!450 = !DILocation(line: 306, column: 11, scope: !443)
!451 = !DILocation(line: 311, column: 31, scope: !452)
!452 = distinct !DILexicalBlock(scope: !349, file: !3, line: 311, column: 9)
!453 = !DILocation(line: 311, column: 46, scope: !452)
!454 = !DILocation(line: 311, column: 40, scope: !452)
!455 = !DILocation(line: 314, column: 18, scope: !456)
!456 = distinct !DILexicalBlock(scope: !452, file: !3, line: 313, column: 12)
!457 = !DILocation(line: 314, column: 12, scope: !456)
!458 = !DILocation(line: 314, column: 7, scope: !456)
!459 = !DILocation(line: 314, column: 16, scope: !456)
!460 = !DILocation(line: 316, column: 13, scope: !461)
!461 = distinct !DILexicalBlock(scope: !456, file: !3, line: 316, column: 11)
!462 = !DILocation(line: 316, column: 11, scope: !456)
!463 = !DILocation(line: 321, column: 31, scope: !464)
!464 = distinct !DILexicalBlock(scope: !349, file: !3, line: 321, column: 9)
!465 = !DILocation(line: 321, column: 45, scope: !464)
!466 = !DILocation(line: 321, column: 39, scope: !464)
!467 = !DILocation(line: 325, column: 18, scope: !468)
!468 = distinct !DILexicalBlock(scope: !464, file: !3, line: 324, column: 10)
!469 = !DILocation(line: 325, column: 12, scope: !468)
!470 = !DILocation(line: 325, column: 7, scope: !468)
!471 = !DILocation(line: 325, column: 16, scope: !468)
!472 = !DILocation(line: 327, column: 13, scope: !473)
!473 = distinct !DILexicalBlock(scope: !468, file: !3, line: 327, column: 11)
!474 = !DILocation(line: 327, column: 11, scope: !468)
!475 = !DILocation(line: 0, scope: !468)
!476 = !DILocation(line: 332, column: 16, scope: !349)
!477 = !DILocation(line: 332, column: 10, scope: !349)
!478 = !DILocation(line: 332, column: 5, scope: !349)
!479 = !DILocation(line: 332, column: 14, scope: !349)
!480 = !DILocation(line: 333, column: 11, scope: !481)
!481 = distinct !DILexicalBlock(scope: !349, file: !3, line: 333, column: 9)
!482 = !DILocation(line: 333, column: 9, scope: !349)
!483 = !DILocation(line: 251, column: 77, scope: !350)
!484 = !DILocation(line: 251, column: 53, scope: !350)
!485 = !DILocation(line: 251, column: 3, scope: !351)
!486 = distinct !{!486, !485, !487}
!487 = !DILocation(line: 336, column: 3, scope: !351)
!488 = !DILocation(line: 338, column: 3, scope: !322)
!489 = !DILocation(line: 338, column: 10, scope: !322)
!490 = !DILocation(line: 340, column: 3, scope: !322)
!491 = !DILocation(line: 0, scope: !492)
!492 = distinct !DILexicalBlock(scope: !449, file: !3, line: 306, column: 24)
!493 = !DILocation(line: 341, column: 1, scope: !322)
