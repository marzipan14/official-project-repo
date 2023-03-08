; ModuleID = '/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/core/ipv4/ip4_addr.c'
source_filename = "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/core/ipv4/ip4_addr.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ip_addr = type { %union.anon, i8 }
%union.anon = type { %struct.ip6_addr }
%struct.ip6_addr = type { [4 x i32], i8 }
%struct.uk_thread_status_block = type { i64, i64 }
%struct.netif = type { %struct.netif*, %struct.ip_addr, %struct.ip_addr, %struct.ip_addr, [3 x %struct.ip_addr], [3 x i8], [3 x i32], [3 x i32], i8 (%struct.pbuf*, %struct.netif*)*, i8 (%struct.netif*, %struct.pbuf*, %struct.ip4_addr*)*, i8 (%struct.netif*, %struct.pbuf*)*, i8 (%struct.netif*, %struct.pbuf*, %struct.ip6_addr*)*, void (%struct.netif*)*, void (%struct.netif*)*, i8*, [1 x i8*], i16, i16, i16, [6 x i8], i8, i8, [2 x i8], i8, i8, i8, i8 (%struct.netif*, %struct.ip6_addr*, i32)* }
%struct.pbuf = type { %struct.pbuf*, i8*, i16, i16, i8, i8, i8, i8 }
%struct.ip4_addr = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@ip_addr_any = dso_local local_unnamed_addr constant %struct.ip_addr zeroinitializer, align 4, !dbg !0
@ip_addr_broadcast = dso_local local_unnamed_addr constant %struct.ip_addr { %union.anon { %struct.ip6_addr { [4 x i32] [i32 -1, i32 0, i32 0, i32 0], i8 0 } }, i8 0 }, align 4, !dbg !44
@.str = private unnamed_addr constant [10 x i8] c"unhandled\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Assertion failure: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"!(1)\00", align 1
@ip4addr_ntoa.str = internal global [16 x i8] zeroinitializer, align 16, !dbg !66
@_intrstack_start = external dso_local global [0 x i8], align 1
@_end = external dso_local global [0 x i8], align 1
@tsb_comp1 = external dso_local global [32 x %struct.uk_thread_status_block], align 16
@tsb_comp0 = external dso_local global [32 x %struct.uk_thread_status_block], align 16
@uk_pr_crit.__str = internal global [8 x i8] c"liblwip\00", section ".data_shared", align 1, !dbg !77
@uk_pr_crit.__str.3 = internal global [11 x i8] c"ip4_addr.c\00", section ".data_shared", align 1, !dbg !104

; Function Attrs: noredzone nounwind readonly
define dso_local zeroext i8 @ip4_addr_isbroadcast_u32(i32, %struct.netif* nocapture readonly) local_unnamed_addr #0 !dbg !113 {
  %3 = add i32 %0, 1, !dbg !215
  %4 = icmp ult i32 %3, 2, !dbg !215
  br i1 %4, label %25, label %5, !dbg !215

; <label>:5:                                      ; preds = %2
  %6 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 21, !dbg !217
  %7 = load i8, i8* %6, align 1, !dbg !217, !tbaa !219
  %8 = and i8 %7, 2, !dbg !226
  %9 = icmp eq i8 %8, 0, !dbg !227
  br i1 %9, label %25, label %10, !dbg !228

; <label>:10:                                     ; preds = %5
  %11 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 1, i32 0, i32 0, i32 0, i64 0, !dbg !229
  %12 = load i32, i32* %11, align 8, !dbg !229, !tbaa !231
  %13 = icmp eq i32 %12, %0, !dbg !232
  br i1 %13, label %25, label %14, !dbg !233

; <label>:14:                                     ; preds = %10
  %15 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 2, i32 0, i32 0, i32 0, i64 0, !dbg !234
  %16 = load i32, i32* %15, align 8, !dbg !234, !tbaa !231
  %17 = xor i32 %12, %0, !dbg !234
  %18 = and i32 %16, %17, !dbg !234
  %19 = icmp eq i32 %18, 0, !dbg !234
  br i1 %19, label %20, label %24, !dbg !236

; <label>:20:                                     ; preds = %14
  %21 = xor i32 %16, -1, !dbg !237
  %22 = and i32 %21, %0, !dbg !238
  %23 = icmp eq i32 %22, %21, !dbg !239
  br i1 %23, label %25, label %24, !dbg !240

; <label>:24:                                     ; preds = %20, %14
  br label %25, !dbg !241

; <label>:25:                                     ; preds = %20, %10, %5, %2, %24
  %26 = phi i8 [ 0, %24 ], [ 1, %2 ], [ 0, %5 ], [ 0, %10 ], [ 1, %20 ], !dbg !243
  ret i8 %26, !dbg !244
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define dso_local zeroext i8 @ip4_addr_netmask_valid(i32) local_unnamed_addr #3 !dbg !245 {
  %2 = tail call i32 @lwip_htonl(i32 %0) #8, !dbg !253
  br label %3, !dbg !256

; <label>:3:                                      ; preds = %3, %1
  %4 = phi i32 [ -2147483648, %1 ], [ %7, %3 ], !dbg !258
  %5 = and i32 %4, %2, !dbg !260
  %6 = icmp eq i32 %5, 0, !dbg !263
  %7 = lshr i32 %4, 1, !dbg !264
  br i1 %6, label %8, label %3, !dbg !265, !llvm.loop !266

; <label>:8:                                      ; preds = %3
  %9 = icmp eq i32 %4, 0, !dbg !268
  br i1 %9, label %17, label %12, !dbg !271

; <label>:10:                                     ; preds = %12
  %11 = icmp eq i32 %16, 0, !dbg !268
  br i1 %11, label %17, label %12, !dbg !271, !llvm.loop !272

; <label>:12:                                     ; preds = %8, %10
  %13 = phi i32 [ %16, %10 ], [ %4, %8 ]
  %14 = and i32 %13, %2, !dbg !274
  %15 = icmp eq i32 %14, 0, !dbg !277
  %16 = lshr i32 %13, 1, !dbg !278
  br i1 %15, label %10, label %17, !dbg !279

; <label>:17:                                     ; preds = %12, %10, %8
  %18 = phi i8 [ 1, %8 ], [ 1, %10 ], [ 0, %12 ], !dbg !280
  ret i8 %18, !dbg !281
}

; Function Attrs: noredzone
declare dso_local i32 @lwip_htonl(i32) local_unnamed_addr #4

; Function Attrs: noredzone nounwind
define dso_local i32 @ipaddr_addr(i8* nocapture readonly) local_unnamed_addr #3 !dbg !282 {
  %2 = alloca %struct.ip4_addr, align 4
  %3 = bitcast %struct.ip4_addr* %2 to i8*, !dbg !289
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #7, !dbg !289
  %4 = call i32 @ip4addr_aton(i8* %0, %struct.ip4_addr* nonnull %2) #9, !dbg !291
  %5 = icmp eq i32 %4, 0, !dbg !291
  %6 = getelementptr inbounds %struct.ip4_addr, %struct.ip4_addr* %2, i64 0, i32 0, !dbg !293
  %7 = load i32, i32* %6, align 4, !dbg !293
  %8 = select i1 %5, i32 -1, i32 %7, !dbg !295
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #7, !dbg !296
  ret i32 %8, !dbg !296
}

; Function Attrs: noredzone nounwind
define dso_local i32 @ip4addr_aton(i8* nocapture readonly, %struct.ip4_addr*) local_unnamed_addr #3 !dbg !297 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [4 x i32], align 16
  %6 = bitcast [4 x i32]* %5 to i8*, !dbg !338
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %6) #7, !dbg !338
  %7 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0, !dbg !340
  %8 = bitcast i32* %4 to i8*
  %9 = bitcast i32* %3 to i8*
  %10 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 3
  br label %11, !dbg !343

; <label>:11:                                     ; preds = %116, %2
  %12 = phi i8* [ %0, %2 ], [ %118, %116 ]
  %13 = phi i32* [ %7, %2 ], [ %117, %116 ], !dbg !344
  %14 = load i8, i8* %12, align 1, !dbg !344, !tbaa !231
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %8) #7, !dbg !347
  %15 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !348, !srcloc !356
  %16 = icmp ult i64 %15, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !358
  br i1 %16, label %28, label %17, !dbg !358

; <label>:17:                                     ; preds = %11
  %18 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !359, !srcloc !356
  %19 = icmp ugt i64 %18, ptrtoint ([0 x i8]* @_end to i64), !dbg !358
  br i1 %19, label %28, label %20, !dbg !362

; <label>:20:                                     ; preds = %17
  %21 = call i8* @__locale_ctype_ptr() #8, !dbg !363
  %22 = getelementptr inbounds i8, i8* %21, i64 1, !dbg !363
  %23 = zext i8 %14 to i64, !dbg !363
  %24 = getelementptr inbounds i8, i8* %22, i64 %23, !dbg !363
  %25 = load i8, i8* %24, align 1, !dbg !363, !tbaa !231
  %26 = and i8 %25, 4, !dbg !363
  %27 = zext i8 %26 to i32, !dbg !363
  store volatile i32 %27, i32* %4, align 4, !dbg !363, !tbaa !365
  br label %37, !dbg !363

; <label>:28:                                     ; preds = %17, %11
  %29 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !367, !srcloc !356
  %30 = and i64 %29, -65536, !dbg !378
  %31 = or i64 %30, 4097, !dbg !378
  %32 = add nsw i64 %31, -1, !dbg !378
  %33 = inttoptr i64 %32 to i32*, !dbg !379
  %34 = load i32, i32* %33, align 4096, !dbg !380, !tbaa !365
  %35 = zext i8 %14 to i64, !dbg !381
  %36 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call isdigit\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 %35, i32 %34, i32 (i32)* nonnull @isdigit) #7, !dbg !381, !srcloc !382
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %4, i64 %36) #7, !dbg !383, !srcloc !386
  br label %37

; <label>:37:                                     ; preds = %20, %28
  %38 = load volatile i32, i32* %4, align 4, !dbg !387, !tbaa !365
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #7, !dbg !388
  %39 = icmp eq i32 %38, 0, !dbg !389
  br i1 %39, label %181, label %40, !dbg !390

; <label>:40:                                     ; preds = %37
  %41 = icmp eq i8 %14, 48, !dbg !393
  br i1 %41, label %42, label %48, !dbg !395

; <label>:42:                                     ; preds = %40
  %43 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !396
  %44 = load i8, i8* %43, align 1, !dbg !398, !tbaa !231
  switch i8 %44, label %48 [
    i8 120, label %45
    i8 88, label %45
  ], !dbg !399

; <label>:45:                                     ; preds = %42, %42
  %46 = getelementptr inbounds i8, i8* %12, i64 2, !dbg !401
  %47 = load i8, i8* %46, align 1, !dbg !403, !tbaa !231
  br label %48, !dbg !404

; <label>:48:                                     ; preds = %42, %45, %40
  %49 = phi i8* [ %46, %45 ], [ %12, %40 ], [ %43, %42 ]
  %50 = phi i32 [ 16, %45 ], [ 10, %40 ], [ 8, %42 ]
  %51 = phi i8 [ %47, %45 ], [ %14, %40 ], [ %44, %42 ], !dbg !405
  %52 = icmp eq i32 %50, 16
  br label %53, !dbg !406

; <label>:53:                                     ; preds = %109, %48
  %54 = phi i8* [ %49, %48 ], [ %111, %109 ], !dbg !407
  %55 = phi i32 [ 0, %48 ], [ %110, %109 ], !dbg !407
  %56 = phi i8 [ %51, %48 ], [ %112, %109 ], !dbg !407
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #7, !dbg !409
  %57 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !410, !srcloc !356
  %58 = icmp ult i64 %57, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !413
  br i1 %58, label %70, label %59, !dbg !413

; <label>:59:                                     ; preds = %53
  %60 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !414, !srcloc !356
  %61 = icmp ugt i64 %60, ptrtoint ([0 x i8]* @_end to i64), !dbg !413
  br i1 %61, label %70, label %62, !dbg !417

; <label>:62:                                     ; preds = %59
  %63 = call i8* @__locale_ctype_ptr() #8, !dbg !418
  %64 = getelementptr inbounds i8, i8* %63, i64 1, !dbg !418
  %65 = zext i8 %56 to i64, !dbg !418
  %66 = getelementptr inbounds i8, i8* %64, i64 %65, !dbg !418
  %67 = load i8, i8* %66, align 1, !dbg !418, !tbaa !231
  %68 = and i8 %67, 4, !dbg !418
  %69 = zext i8 %68 to i32, !dbg !418
  store volatile i32 %69, i32* %3, align 4, !dbg !418, !tbaa !365
  br label %79, !dbg !418

; <label>:70:                                     ; preds = %59, %53
  %71 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !419, !srcloc !356
  %72 = and i64 %71, -65536, !dbg !424
  %73 = or i64 %72, 4097, !dbg !424
  %74 = add nsw i64 %73, -1, !dbg !424
  %75 = inttoptr i64 %74 to i32*, !dbg !425
  %76 = load i32, i32* %75, align 4096, !dbg !426, !tbaa !365
  %77 = zext i8 %56 to i64, !dbg !427
  %78 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call isdigit\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 %77, i32 %76, i32 (i32)* nonnull @isdigit) #7, !dbg !427, !srcloc !382
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %3, i64 %78) #7, !dbg !428, !srcloc !386
  br label %79

; <label>:79:                                     ; preds = %62, %70
  %80 = load volatile i32, i32* %3, align 4, !dbg !429, !tbaa !365
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #7, !dbg !430
  %81 = icmp eq i32 %80, 0, !dbg !431
  br i1 %81, label %87, label %82, !dbg !432

; <label>:82:                                     ; preds = %79
  %83 = mul i32 %55, %50, !dbg !433
  %84 = sext i8 %56 to i32, !dbg !434
  %85 = add i32 %83, -48, !dbg !435
  %86 = add i32 %85, %84, !dbg !436
  br label %109, !dbg !437

; <label>:87:                                     ; preds = %79
  br i1 %52, label %88, label %113, !dbg !438

; <label>:88:                                     ; preds = %87
  %89 = call i8* @__locale_ctype_ptr() #8, !dbg !440
  %90 = getelementptr inbounds i8, i8* %89, i64 1, !dbg !440
  %91 = zext i8 %56 to i64, !dbg !440
  %92 = getelementptr inbounds i8, i8* %90, i64 %91, !dbg !440
  %93 = load i8, i8* %92, align 1, !dbg !440, !tbaa !231
  %94 = and i8 %93, 68, !dbg !440
  %95 = icmp eq i8 %94, 0, !dbg !440
  br i1 %95, label %113, label %96, !dbg !441

; <label>:96:                                     ; preds = %88
  %97 = shl i32 %55, 4, !dbg !442
  %98 = sext i8 %56 to i32, !dbg !444
  %99 = add nsw i32 %98, 10, !dbg !445
  %100 = call i8* @__locale_ctype_ptr() #8, !dbg !446
  %101 = getelementptr inbounds i8, i8* %100, i64 1, !dbg !446
  %102 = getelementptr inbounds i8, i8* %101, i64 %91, !dbg !446
  %103 = load i8, i8* %102, align 1, !dbg !446, !tbaa !231
  %104 = and i8 %103, 3, !dbg !446
  %105 = icmp eq i8 %104, 2, !dbg !446
  %106 = select i1 %105, i32 -97, i32 -65, !dbg !446
  %107 = add nsw i32 %99, %106, !dbg !447
  %108 = or i32 %107, %97, !dbg !448
  br label %109

; <label>:109:                                    ; preds = %96, %82
  %110 = phi i32 [ %86, %82 ], [ %108, %96 ], !dbg !449
  %111 = getelementptr inbounds i8, i8* %54, i64 1, !dbg !449
  %112 = load i8, i8* %111, align 1, !dbg !449, !tbaa !231
  br label %53, !dbg !450, !llvm.loop !451

; <label>:113:                                    ; preds = %88, %87
  switch i8 %56, label %119 [
    i8 46, label %114
    i8 0, label %127
  ], !dbg !454

; <label>:114:                                    ; preds = %113
  %115 = icmp ult i32* %13, %10, !dbg !455
  br i1 %115, label %116, label %181, !dbg !457

; <label>:116:                                    ; preds = %114
  %117 = getelementptr inbounds i32, i32* %13, i64 1, !dbg !458
  store i32 %55, i32* %13, align 4, !dbg !459, !tbaa !365
  %118 = getelementptr inbounds i8, i8* %54, i64 1, !dbg !460
  br label %11, !dbg !461, !llvm.loop !462

; <label>:119:                                    ; preds = %113
  %120 = call i8* @__locale_ctype_ptr() #8, !dbg !465
  %121 = getelementptr inbounds i8, i8* %120, i64 1, !dbg !465
  %122 = zext i8 %56 to i64, !dbg !465
  %123 = getelementptr inbounds i8, i8* %121, i64 %122, !dbg !465
  %124 = load i8, i8* %123, align 1, !dbg !465, !tbaa !231
  %125 = and i8 %124, 8, !dbg !465
  %126 = icmp eq i8 %125, 0, !dbg !465
  br i1 %126, label %181, label %127, !dbg !467

; <label>:127:                                    ; preds = %113, %119
  %128 = ptrtoint i32* %13 to i64, !dbg !468
  %129 = ptrtoint [4 x i32]* %5 to i64, !dbg !468
  %130 = sub i64 %128, %129, !dbg !468
  %131 = ashr exact i64 %130, 2, !dbg !468
  switch i64 %131, label %174 [
    i64 -1, label %181
    i64 0, label %175
    i64 1, label %132
    i64 2, label %140
    i64 3, label %154
  ], !dbg !469

; <label>:132:                                    ; preds = %127
  %133 = icmp ugt i32 %55, 16777215, !dbg !470
  br i1 %133, label %181, label %134, !dbg !473

; <label>:134:                                    ; preds = %132
  %135 = load i32, i32* %7, align 16, !dbg !474, !tbaa !365
  %136 = icmp ugt i32 %135, 255, !dbg !476
  br i1 %136, label %181, label %137, !dbg !477

; <label>:137:                                    ; preds = %134
  %138 = shl i32 %135, 24, !dbg !478
  %139 = or i32 %138, %55, !dbg !479
  br label %175, !dbg !480

; <label>:140:                                    ; preds = %127
  %141 = icmp ugt i32 %55, 65535, !dbg !481
  br i1 %141, label %181, label %142, !dbg !483

; <label>:142:                                    ; preds = %140
  %143 = load i32, i32* %7, align 16, !dbg !484, !tbaa !365
  %144 = icmp ugt i32 %143, 255, !dbg !486
  br i1 %144, label %181, label %145, !dbg !487

; <label>:145:                                    ; preds = %142
  %146 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 1, !dbg !488
  %147 = load i32, i32* %146, align 4, !dbg !488, !tbaa !365
  %148 = icmp ugt i32 %147, 255, !dbg !489
  br i1 %148, label %181, label %149, !dbg !490

; <label>:149:                                    ; preds = %145
  %150 = shl i32 %143, 24, !dbg !491
  %151 = shl i32 %147, 16, !dbg !492
  %152 = or i32 %150, %55, !dbg !493
  %153 = or i32 %152, %151, !dbg !494
  br label %175, !dbg !495

; <label>:154:                                    ; preds = %127
  %155 = icmp ugt i32 %55, 255, !dbg !496
  br i1 %155, label %181, label %156, !dbg !498

; <label>:156:                                    ; preds = %154
  %157 = load i32, i32* %7, align 16, !dbg !499, !tbaa !365
  %158 = icmp ugt i32 %157, 255, !dbg !501
  br i1 %158, label %181, label %159, !dbg !502

; <label>:159:                                    ; preds = %156
  %160 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 1, !dbg !503
  %161 = load i32, i32* %160, align 4, !dbg !503, !tbaa !365
  %162 = icmp ugt i32 %161, 255, !dbg !504
  br i1 %162, label %181, label %163, !dbg !505

; <label>:163:                                    ; preds = %159
  %164 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 2, !dbg !506
  %165 = load i32, i32* %164, align 8, !dbg !506, !tbaa !365
  %166 = icmp ugt i32 %165, 255, !dbg !507
  br i1 %166, label %181, label %167, !dbg !508

; <label>:167:                                    ; preds = %163
  %168 = shl i32 %157, 24, !dbg !509
  %169 = shl i32 %161, 16, !dbg !510
  %170 = shl i32 %165, 8, !dbg !511
  %171 = or i32 %168, %55, !dbg !512
  %172 = or i32 %171, %169, !dbg !513
  %173 = or i32 %172, %170, !dbg !514
  br label %175, !dbg !515

; <label>:174:                                    ; preds = %127
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #9, !dbg !516
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !521
  call void @ukplat_terminate(i32 3) #10, !dbg !521
  unreachable, !dbg !521

; <label>:175:                                    ; preds = %167, %149, %137, %127
  %176 = phi i32 [ %173, %167 ], [ %153, %149 ], [ %139, %137 ], [ %55, %127 ], !dbg !525
  %177 = icmp eq %struct.ip4_addr* %1, null, !dbg !526
  br i1 %177, label %181, label %178, !dbg !528

; <label>:178:                                    ; preds = %175
  %179 = call i32 @lwip_htonl(i32 %176) #8, !dbg !529
  %180 = getelementptr inbounds %struct.ip4_addr, %struct.ip4_addr* %1, i64 0, i32 0, !dbg !529
  store i32 %179, i32* %180, align 4, !dbg !529, !tbaa !531
  br label %181, !dbg !533

; <label>:181:                                    ; preds = %114, %37, %178, %175, %156, %159, %163, %154, %142, %145, %140, %134, %132, %127, %119
  %182 = phi i32 [ 0, %119 ], [ 0, %127 ], [ 0, %132 ], [ 0, %134 ], [ 0, %140 ], [ 0, %145 ], [ 0, %142 ], [ 0, %154 ], [ 0, %163 ], [ 0, %159 ], [ 0, %156 ], [ 1, %175 ], [ 1, %178 ], [ 0, %37 ], [ 0, %114 ], !dbg !534
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #7, !dbg !536
  ret i32 %182, !dbg !536
}

; Function Attrs: noredzone
declare dso_local i8* @__locale_ctype_ptr() local_unnamed_addr #4

; Function Attrs: inlinehint noredzone nounwind
define internal void @uk_pr_crit(i8*, ...) unnamed_addr #5 !dbg !79 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*, !dbg !538
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #7, !dbg !538
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, !dbg !540
  call void @llvm.va_start(i8* nonnull %3), !dbg !540
  call void @_uk_vprintk(i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @uk_pr_crit.__str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @uk_pr_crit.__str.3, i64 0, i64 0), i32 198, i8* %0, %struct.__va_list_tag* nonnull %4) #8, !dbg !541
  call void @llvm.va_end(i8* nonnull %3), !dbg !544
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #7, !dbg !545
  ret void, !dbg !545
}

; Function Attrs: noredzone noreturn
declare dso_local void @ukplat_terminate(i32) local_unnamed_addr #6

; Function Attrs: noredzone nounwind
define dso_local i8* @ip4addr_ntoa(%struct.ip4_addr* nocapture readonly) local_unnamed_addr #3 !dbg !68 {
  %2 = alloca i32, align 4
  %3 = alloca [3 x i8], align 1
  %4 = bitcast i32* %2 to i8*, !dbg !568
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #7, !dbg !568
  %5 = getelementptr inbounds [3 x i8], [3 x i8]* %3, i64 0, i64 0, !dbg !569
  call void @llvm.lifetime.start.p0i8(i64 3, i8* nonnull %5) #7, !dbg !569
  %6 = getelementptr inbounds %struct.ip4_addr, %struct.ip4_addr* %0, i64 0, i32 0, !dbg !571
  %7 = load i32, i32* %6, align 4, !dbg !571, !tbaa !531
  store i32 %7, i32* %2, align 4, !dbg !573, !tbaa !365
  %8 = trunc i32 %7 to i8, !dbg !577
  br label %9, !dbg !577

; <label>:9:                                      ; preds = %51, %1
  %10 = phi i8 [ %8, %1 ], [ %53, %51 ], !dbg !579
  %11 = phi i32 [ 0, %1 ], [ %45, %51 ]
  %12 = phi i8 [ 0, %1 ], [ %49, %51 ]
  %13 = phi i8* [ %4, %1 ], [ %48, %51 ]
  %14 = phi i8* [ getelementptr inbounds ([16 x i8], [16 x i8]* @ip4addr_ntoa.str, i64 0, i64 0), %1 ], [ %52, %51 ]
  br label %15, !dbg !579

; <label>:15:                                     ; preds = %15, %9
  %16 = phi i8 [ %24, %15 ], [ %10, %9 ], !dbg !579
  %17 = phi i8 [ %21, %15 ], [ 0, %9 ], !dbg !583
  %18 = urem i8 %16, 10, !dbg !585
  %19 = udiv i8 %16, 10, !dbg !587
  store i8 %19, i8* %13, align 1, !dbg !587, !tbaa !231
  %20 = or i8 %18, 48, !dbg !588
  %21 = add i8 %17, 1, !dbg !589
  %22 = zext i8 %17 to i64, !dbg !590
  %23 = getelementptr inbounds [3 x i8], [3 x i8]* %3, i64 0, i64 %22, !dbg !590
  store i8 %20, i8* %23, align 1, !dbg !591, !tbaa !231
  %24 = load i8, i8* %13, align 1, !dbg !592, !tbaa !231
  %25 = icmp eq i8 %24, 0, !dbg !593
  br i1 %25, label %26, label %15, !dbg !593, !llvm.loop !594

; <label>:26:                                     ; preds = %15
  %27 = icmp eq i8 %21, 0, !dbg !597
  %28 = add nsw i32 %11, 1, !dbg !598
  %29 = icmp sgt i32 %11, 15, !dbg !598
  br i1 %27, label %43, label %30, !dbg !597

; <label>:30:                                     ; preds = %26, %35
  %31 = phi i64 [ %42, %35 ], [ %22, %26 ]
  %32 = phi i1 [ %41, %35 ], [ %29, %26 ]
  %33 = phi i32 [ %40, %35 ], [ %28, %26 ]
  %34 = phi i8* [ %38, %35 ], [ %14, %26 ]
  br i1 %32, label %55, label %35, !dbg !600

; <label>:35:                                     ; preds = %30
  %36 = getelementptr inbounds [3 x i8], [3 x i8]* %3, i64 0, i64 %31, !dbg !602
  %37 = load i8, i8* %36, align 1, !dbg !602, !tbaa !231
  %38 = getelementptr inbounds i8, i8* %34, i64 1, !dbg !603
  store i8 %37, i8* %34, align 1, !dbg !604, !tbaa !231
  %39 = icmp eq i64 %31, 0, !dbg !597
  %40 = add nsw i32 %33, 1, !dbg !598
  %41 = icmp sgt i32 %33, 15, !dbg !598
  %42 = add nsw i64 %31, -1, !dbg !605
  br i1 %39, label %43, label %30, !dbg !597, !llvm.loop !606

; <label>:43:                                     ; preds = %35, %26
  %44 = phi i8* [ %14, %26 ], [ %38, %35 ], !dbg !609
  %45 = phi i32 [ %28, %26 ], [ %40, %35 ], !dbg !598
  %46 = phi i1 [ %29, %26 ], [ %41, %35 ], !dbg !598
  br i1 %46, label %55, label %47, !dbg !610

; <label>:47:                                     ; preds = %43
  store i8 46, i8* %44, align 1, !dbg !611, !tbaa !231
  %48 = getelementptr inbounds i8, i8* %13, i64 1, !dbg !612
  %49 = add nuw nsw i8 %12, 1, !dbg !613
  %50 = icmp ult i8 %49, 4, !dbg !614
  br i1 %50, label %51, label %54, !dbg !577, !llvm.loop !615

; <label>:51:                                     ; preds = %47
  %52 = getelementptr inbounds i8, i8* %44, i64 1, !dbg !618
  %53 = load i8, i8* %48, align 1, !dbg !579, !tbaa !231
  br label %9, !dbg !577

; <label>:54:                                     ; preds = %47
  store i8 0, i8* %44, align 1, !dbg !619, !tbaa !231
  br label %55, !dbg !620

; <label>:55:                                     ; preds = %43, %30, %54
  %56 = phi i8* [ getelementptr inbounds ([16 x i8], [16 x i8]* @ip4addr_ntoa.str, i64 0, i64 0), %54 ], [ null, %30 ], [ null, %43 ], !dbg !621
  call void @llvm.lifetime.end.p0i8(i64 3, i8* nonnull %5) #7, !dbg !622
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #7, !dbg !622
  ret i8* %56, !dbg !623
}

; Function Attrs: noredzone nounwind
define dso_local i8* @ip4addr_ntoa_r(%struct.ip4_addr* nocapture readonly, i8*, i32) local_unnamed_addr #3 !dbg !547 {
  %4 = alloca i32, align 4
  %5 = alloca [3 x i8], align 1
  %6 = bitcast i32* %4 to i8*, !dbg !627
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #7, !dbg !627
  %7 = getelementptr inbounds [3 x i8], [3 x i8]* %5, i64 0, i64 0, !dbg !628
  call void @llvm.lifetime.start.p0i8(i64 3, i8* nonnull %7) #7, !dbg !628
  %8 = getelementptr inbounds %struct.ip4_addr, %struct.ip4_addr* %0, i64 0, i32 0, !dbg !631
  %9 = load i32, i32* %8, align 4, !dbg !631, !tbaa !531
  store i32 %9, i32* %4, align 4, !dbg !633, !tbaa !365
  %10 = trunc i32 %9 to i8, !dbg !616
  br label %11, !dbg !616

; <label>:11:                                     ; preds = %53, %3
  %12 = phi i8 [ %10, %3 ], [ %55, %53 ], !dbg !637
  %13 = phi i32 [ 0, %3 ], [ %47, %53 ]
  %14 = phi i8 [ 0, %3 ], [ %51, %53 ]
  %15 = phi i8* [ %6, %3 ], [ %50, %53 ]
  %16 = phi i8* [ %1, %3 ], [ %54, %53 ]
  br label %17, !dbg !637

; <label>:17:                                     ; preds = %11, %17
  %18 = phi i8 [ %26, %17 ], [ %12, %11 ], !dbg !637
  %19 = phi i8 [ %23, %17 ], [ 0, %11 ], !dbg !638
  %20 = urem i8 %18, 10, !dbg !640
  %21 = udiv i8 %18, 10, !dbg !642
  store i8 %21, i8* %15, align 1, !dbg !642, !tbaa !231
  %22 = or i8 %20, 48, !dbg !643
  %23 = add i8 %19, 1, !dbg !644
  %24 = zext i8 %19 to i64, !dbg !645
  %25 = getelementptr inbounds [3 x i8], [3 x i8]* %5, i64 0, i64 %24, !dbg !645
  store i8 %22, i8* %25, align 1, !dbg !646, !tbaa !231
  %26 = load i8, i8* %15, align 1, !dbg !647, !tbaa !231
  %27 = icmp eq i8 %26, 0, !dbg !648
  br i1 %27, label %28, label %17, !dbg !648, !llvm.loop !594

; <label>:28:                                     ; preds = %17
  %29 = icmp eq i8 %23, 0, !dbg !607
  %30 = add nsw i32 %13, 1, !dbg !649
  %31 = icmp sge i32 %13, %2, !dbg !649
  br i1 %29, label %45, label %32, !dbg !607

; <label>:32:                                     ; preds = %28, %37
  %33 = phi i64 [ %44, %37 ], [ %24, %28 ]
  %34 = phi i1 [ %43, %37 ], [ %31, %28 ]
  %35 = phi i32 [ %42, %37 ], [ %30, %28 ]
  %36 = phi i8* [ %40, %37 ], [ %16, %28 ]
  br i1 %34, label %57, label %37, !dbg !650

; <label>:37:                                     ; preds = %32
  %38 = getelementptr inbounds [3 x i8], [3 x i8]* %5, i64 0, i64 %33, !dbg !651
  %39 = load i8, i8* %38, align 1, !dbg !651, !tbaa !231
  %40 = getelementptr inbounds i8, i8* %36, i64 1, !dbg !652
  store i8 %39, i8* %36, align 1, !dbg !653, !tbaa !231
  %41 = icmp eq i64 %33, 0, !dbg !607
  %42 = add nsw i32 %35, 1, !dbg !649
  %43 = icmp sge i32 %35, %2, !dbg !649
  %44 = add nsw i64 %33, -1, !dbg !654
  br i1 %41, label %45, label %32, !dbg !607, !llvm.loop !606

; <label>:45:                                     ; preds = %37, %28
  %46 = phi i8* [ %16, %28 ], [ %40, %37 ], !dbg !655
  %47 = phi i32 [ %30, %28 ], [ %42, %37 ], !dbg !649
  %48 = phi i1 [ %31, %28 ], [ %43, %37 ], !dbg !649
  br i1 %48, label %57, label %49, !dbg !656

; <label>:49:                                     ; preds = %45
  store i8 46, i8* %46, align 1, !dbg !657, !tbaa !231
  %50 = getelementptr inbounds i8, i8* %15, i64 1, !dbg !658
  %51 = add nuw nsw i8 %14, 1, !dbg !659
  %52 = icmp ult i8 %51, 4, !dbg !660
  br i1 %52, label %53, label %56, !dbg !616, !llvm.loop !615

; <label>:53:                                     ; preds = %49
  %54 = getelementptr inbounds i8, i8* %46, i64 1, !dbg !661
  %55 = load i8, i8* %50, align 1, !dbg !637, !tbaa !231
  br label %11, !dbg !616

; <label>:56:                                     ; preds = %49
  store i8 0, i8* %46, align 1, !dbg !662, !tbaa !231
  br label %57, !dbg !663

; <label>:57:                                     ; preds = %45, %32, %56
  %58 = phi i8* [ %1, %56 ], [ null, %32 ], [ null, %45 ], !dbg !664
  call void @llvm.lifetime.end.p0i8(i64 3, i8* nonnull %7) #7, !dbg !665
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #7, !dbg !665
  ret i8* %58, !dbg !665
}

; Function Attrs: noredzone
declare dso_local i32 @isdigit(i32) #4

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #7

; Function Attrs: noredzone
declare dso_local void @_uk_vprintk(i32, i8*, i8*, i32, i8*, %struct.__va_list_tag*) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #7

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { inlinehint noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noredzone noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nobuiltin noredzone nounwind }
attributes #9 = { nobuiltin noredzone }
attributes #10 = { nobuiltin noredzone noreturn nounwind }

!llvm.module.flags = !{!109, !110, !111}
!llvm.ident = !{!112}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "ip_addr_any", scope: !2, file: !3, line: 47, type: !46, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !18, globals: !43)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/core/ipv4/ip4_addr.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !{!5, !11}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "netif_mac_filter_action", file: !6, line: 156, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/netif.h", directory: "/root/.unikraft/apps/redis/build")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "NETIF_DEL_MAC_FILTER", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "NETIF_ADD_MAC_FILTER", value: 1, isUnsigned: true)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ukplat_gstate", file: !12, line: 68, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/plat/bootstrap.h", directory: "/root/.unikraft/apps/redis/build")
!13 = !{!14, !15, !16, !17}
!14 = !DIEnumerator(name: "UKPLAT_HALT", value: 0, isUnsigned: true)
!15 = !DIEnumerator(name: "UKPLAT_RESTART", value: 1, isUnsigned: true)
!16 = !DIEnumerator(name: "UKPLAT_SUSPEND", value: 2, isUnsigned: true)
!17 = !DIEnumerator(name: "UKPLAT_CRASH", value: 3, isUnsigned: true)
!18 = !{!19, !25, !32, !33, !34, !35, !38, !39, !40, !42}
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32_t", file: !20, line: 129, baseType: !21)
!20 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/arch.h", directory: "/root/.unikraft/apps/redis/build")
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !22, line: 48, baseType: !23)
!22 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !24, line: 79, baseType: !7)
!24 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip4_addr_t", file: !28, line: 57, baseType: !29)
!28 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/ip4_addr.h", directory: "/root/.unikraft/apps/redis/build")
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip4_addr", file: !28, line: 51, size: 32, elements: !30)
!30 = !{!31}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !29, file: !28, line: 52, baseType: !19, size: 32)
!32 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!33 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8_t", file: !20, line: 125, baseType: !36)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !22, line: 24, baseType: !37)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !24, line: 43, baseType: !32)
!38 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!39 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !22, line: 60, baseType: !41)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !24, line: 105, baseType: !39)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!43 = !{!0, !44, !66, !77, !104}
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(name: "ip_addr_broadcast", scope: !2, file: !3, line: 48, type: !46, isLocal: false, isDefinition: true)
!46 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip_addr_t", file: !48, line: 76, baseType: !49)
!48 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/ip_addr.h", directory: "/root/.unikraft/apps/redis/build")
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip_addr", file: !48, line: 69, size: 192, elements: !50)
!50 = !{!51, !65}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "u_addr", scope: !49, file: !48, line: 73, baseType: !52, size: 160)
!52 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !49, file: !48, line: 70, size: 160, elements: !53)
!53 = !{!54, !64}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "ip6", scope: !52, file: !48, line: 71, baseType: !55, size: 160)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip6_addr_t", file: !56, line: 67, baseType: !57)
!56 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/ip6_addr.h", directory: "/root/.unikraft/apps/redis/build")
!57 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip6_addr", file: !56, line: 59, size: 160, elements: !58)
!58 = !{!59, !63}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !57, file: !56, line: 60, baseType: !60, size: 128)
!60 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 128, elements: !61)
!61 = !{!62}
!62 = !DISubrange(count: 4)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "zone", scope: !57, file: !56, line: 62, baseType: !35, size: 8, offset: 128)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "ip4", scope: !52, file: !48, line: 72, baseType: !27, size: 32)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !49, file: !48, line: 75, baseType: !35, size: 8, offset: 160)
!66 = !DIGlobalVariableExpression(var: !67, expr: !DIExpression())
!67 = distinct !DIGlobalVariable(name: "str", scope: !68, file: !3, line: 269, type: !74, isLocal: true, isDefinition: true)
!68 = distinct !DISubprogram(name: "ip4addr_ntoa", scope: !3, file: !3, line: 267, type: !69, isLocal: false, isDefinition: true, scopeLine: 268, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !72)
!69 = !DISubroutineType(types: !70)
!70 = !{!71, !25}
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!72 = !{!73}
!73 = !DILocalVariable(name: "addr", arg: 1, scope: !68, file: !3, line: 267, type: !25)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 128, elements: !75)
!75 = !{!76}
!76 = !DISubrange(count: 16)
!77 = !DIGlobalVariableExpression(var: !78, expr: !DIExpression())
!78 = distinct !DIGlobalVariable(name: "__str", scope: !79, file: !80, line: 198, type: !101, isLocal: true, isDefinition: true)
!79 = distinct !DISubprogram(name: "uk_pr_crit", scope: !80, file: !80, line: 194, type: !81, isLocal: true, isDefinition: true, scopeLine: 195, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !85)
!80 = !DIFile(filename: "/root/.unikraft/unikraft/lib/ukdebug/include/uk/print.h", directory: "/root/.unikraft/apps/redis/build")
!81 = !DISubroutineType(types: !82)
!82 = !{null, !83, null}
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!85 = !{!86, !87}
!86 = !DILocalVariable(name: "fmt", arg: 1, scope: !79, file: !80, line: 194, type: !83)
!87 = !DILocalVariable(name: "argp", scope: !79, file: !80, line: 196, type: !88)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !89, line: 32, baseType: !90)
!89 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stdarg.h", directory: "/root/.unikraft/apps/redis/build")
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, line: 196, baseType: !91)
!91 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 192, elements: !99)
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, line: 196, size: 192, elements: !93)
!93 = !{!94, !95, !96, !98}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !92, file: !3, line: 196, baseType: !7, size: 32)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !92, file: !3, line: 196, baseType: !7, size: 32, offset: 32)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !92, file: !3, line: 196, baseType: !97, size: 64, offset: 64)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !92, file: !3, line: 196, baseType: !97, size: 64, offset: 128)
!99 = !{!100}
!100 = !DISubrange(count: 1)
!101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 64, elements: !102)
!102 = !{!103}
!103 = !DISubrange(count: 8)
!104 = !DIGlobalVariableExpression(var: !105, expr: !DIExpression())
!105 = distinct !DIGlobalVariable(name: "__str", scope: !79, file: !80, line: 198, type: !106, isLocal: true, isDefinition: true)
!106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 88, elements: !107)
!107 = !{!108}
!108 = !DISubrange(count: 11)
!109 = !{i32 2, !"Dwarf Version", i32 4}
!110 = !{i32 2, !"Debug Info Version", i32 3}
!111 = !{i32 1, !"wchar_size", i32 4}
!112 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!113 = distinct !DISubprogram(name: "ip4_addr_isbroadcast_u32", scope: !3, file: !3, line: 58, type: !114, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !208)
!114 = !DISubroutineType(types: !115)
!115 = !{!35, !19, !116}
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !118)
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netif", file: !6, line: 260, size: 2240, elements: !119)
!119 = !{!120, !122, !123, !124, !125, !129, !131, !133, !134, !161, !166, !171, !178, !183, !184, !185, !187, !188, !189, !190, !194, !195, !196, !200, !201, !202, !203}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !118, file: !6, line: 263, baseType: !121, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "ip_addr", scope: !118, file: !6, line: 268, baseType: !47, size: 192, offset: 64)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "netmask", scope: !118, file: !6, line: 269, baseType: !47, size: 192, offset: 256)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "gw", scope: !118, file: !6, line: 270, baseType: !47, size: 192, offset: 448)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_addr", scope: !118, file: !6, line: 274, baseType: !126, size: 576, offset: 640)
!126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 576, elements: !127)
!127 = !{!128}
!128 = !DISubrange(count: 3)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_addr_state", scope: !118, file: !6, line: 277, baseType: !130, size: 24, offset: 1216)
!130 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 24, elements: !127)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_addr_valid_life", scope: !118, file: !6, line: 282, baseType: !132, size: 96, offset: 1248)
!132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 96, elements: !127)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_addr_pref_life", scope: !118, file: !6, line: 283, baseType: !132, size: 96, offset: 1344)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !118, file: !6, line: 288, baseType: !135, size: 64, offset: 1472)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_input_fn", file: !6, line: 178, baseType: !136)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = !DISubroutineType(types: !138)
!138 = !{!139, !145, !121}
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "err_t", file: !140, line: 96, baseType: !141)
!140 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/err.h", directory: "/root/.unikraft/apps/redis/build")
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8_t", file: !20, line: 126, baseType: !142)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !22, line: 20, baseType: !143)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !24, line: 41, baseType: !144)
!144 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pbuf", file: !147, line: 186, size: 192, elements: !148)
!147 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/pbuf.h", directory: "/root/.unikraft/apps/redis/build")
!148 = !{!149, !150, !151, !156, !157, !158, !159, !160}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !146, file: !147, line: 188, baseType: !145, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !146, file: !147, line: 191, baseType: !97, size: 64, offset: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "tot_len", scope: !146, file: !147, line: 200, baseType: !152, size: 16, offset: 128)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16_t", file: !20, line: 127, baseType: !153)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !22, line: 36, baseType: !154)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !24, line: 57, baseType: !155)
!155 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !146, file: !147, line: 203, baseType: !152, size: 16, offset: 144)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "type_internal", scope: !146, file: !147, line: 208, baseType: !35, size: 8, offset: 160)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !146, file: !147, line: 211, baseType: !35, size: 8, offset: 168)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !146, file: !147, line: 218, baseType: !35, size: 8, offset: 176)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "if_idx", scope: !146, file: !147, line: 221, baseType: !35, size: 8, offset: 184)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "output", scope: !118, file: !6, line: 294, baseType: !162, size: 64, offset: 1536)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_output_fn", file: !6, line: 189, baseType: !163)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!164 = !DISubroutineType(types: !165)
!165 = !{!139, !121, !145, !25}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "linkoutput", scope: !118, file: !6, line: 299, baseType: !167, size: 64, offset: 1600)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_linkoutput_fn", file: !6, line: 212, baseType: !168)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = !DISubroutineType(types: !170)
!170 = !{!139, !121, !145}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "output_ip6", scope: !118, file: !6, line: 305, baseType: !172, size: 64, offset: 1664)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_output_ip6_fn", file: !6, line: 202, baseType: !173)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = !DISubroutineType(types: !175)
!175 = !{!139, !121, !145, !176}
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !55)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "status_callback", scope: !118, file: !6, line: 310, baseType: !179, size: 64, offset: 1728)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_status_callback_fn", file: !6, line: 214, baseType: !180)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!181 = !DISubroutineType(types: !182)
!182 = !{null, !121}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "remove_callback", scope: !118, file: !6, line: 319, baseType: !179, size: 64, offset: 1792)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !118, file: !6, line: 323, baseType: !97, size: 64, offset: 1856)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !118, file: !6, line: 325, baseType: !186, size: 64, offset: 1920)
!186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 64, elements: !99)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "chksum_flags", scope: !118, file: !6, line: 332, baseType: !152, size: 16, offset: 1984)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "mtu", scope: !118, file: !6, line: 335, baseType: !152, size: 16, offset: 2000)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "mtu6", scope: !118, file: !6, line: 338, baseType: !152, size: 16, offset: 2016)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "hwaddr", scope: !118, file: !6, line: 341, baseType: !191, size: 48, offset: 2032)
!191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 48, elements: !192)
!192 = !{!193}
!193 = !DISubrange(count: 6)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "hwaddr_len", scope: !118, file: !6, line: 343, baseType: !35, size: 8, offset: 2080)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !118, file: !6, line: 345, baseType: !35, size: 8, offset: 2088)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !118, file: !6, line: 347, baseType: !197, size: 16, offset: 2096)
!197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 16, elements: !198)
!198 = !{!199}
!199 = !DISubrange(count: 2)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !118, file: !6, line: 350, baseType: !35, size: 8, offset: 2112)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_autoconfig_enabled", scope: !118, file: !6, line: 353, baseType: !35, size: 8, offset: 2120)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "rs_count", scope: !118, file: !6, line: 357, baseType: !35, size: 8, offset: 2128)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "mld_mac_filter", scope: !118, file: !6, line: 377, baseType: !204, size: 64, offset: 2176)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_mld_mac_filter_fn", file: !6, line: 222, baseType: !205)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = !DISubroutineType(types: !207)
!207 = !{!139, !121, !176, !5}
!208 = !{!209, !210, !211}
!209 = !DILocalVariable(name: "addr", arg: 1, scope: !113, file: !3, line: 58, type: !19)
!210 = !DILocalVariable(name: "netif", arg: 2, scope: !113, file: !3, line: 58, type: !116)
!211 = !DILocalVariable(name: "ipaddr", scope: !113, file: !3, line: 60, type: !27)
!212 = !DILocation(line: 58, column: 32, scope: !113)
!213 = !DILocation(line: 58, column: 58, scope: !113)
!214 = !DILocation(line: 60, column: 14, scope: !113)
!215 = !DILocation(line: 64, column: 29, scope: !216)
!216 = distinct !DILexicalBlock(scope: !113, file: !3, line: 64, column: 7)
!217 = !DILocation(line: 68, column: 22, scope: !218)
!218 = distinct !DILexicalBlock(scope: !216, file: !3, line: 68, column: 14)
!219 = !{!220, !222, i64 261}
!220 = !{!"netif", !221, i64 0, !224, i64 8, !224, i64 32, !224, i64 56, !222, i64 80, !222, i64 152, !222, i64 156, !222, i64 168, !221, i64 184, !221, i64 192, !221, i64 200, !221, i64 208, !221, i64 216, !221, i64 224, !221, i64 232, !222, i64 240, !225, i64 248, !225, i64 250, !225, i64 252, !222, i64 254, !222, i64 260, !222, i64 261, !222, i64 262, !222, i64 264, !222, i64 265, !222, i64 266, !221, i64 272}
!221 = !{!"any pointer", !222, i64 0}
!222 = !{!"omnipotent char", !223, i64 0}
!223 = !{!"Simple C/C++ TBAA"}
!224 = !{!"ip_addr", !222, i64 0, !222, i64 20}
!225 = !{!"short", !222, i64 0}
!226 = !DILocation(line: 68, column: 28, scope: !218)
!227 = !DILocation(line: 68, column: 52, scope: !218)
!228 = !DILocation(line: 68, column: 14, scope: !216)
!229 = !DILocation(line: 73, column: 22, scope: !230)
!230 = distinct !DILexicalBlock(scope: !218, file: !3, line: 73, column: 14)
!231 = !{!222, !222, i64 0}
!232 = !DILocation(line: 73, column: 19, scope: !230)
!233 = !DILocation(line: 73, column: 14, scope: !218)
!234 = !DILocation(line: 76, column: 14, scope: !235)
!235 = distinct !DILexicalBlock(scope: !230, file: !3, line: 76, column: 14)
!236 = !DILocation(line: 78, column: 14, scope: !235)
!237 = !DILocation(line: 78, column: 26, scope: !235)
!238 = !DILocation(line: 78, column: 24, scope: !235)
!239 = !DILocation(line: 78, column: 71, scope: !235)
!240 = !DILocation(line: 76, column: 14, scope: !230)
!241 = !DILocation(line: 83, column: 5, scope: !242)
!242 = distinct !DILexicalBlock(scope: !235, file: !3, line: 82, column: 10)
!243 = !DILocation(line: 0, scope: !242)
!244 = !DILocation(line: 85, column: 1, scope: !113)
!245 = distinct !DISubprogram(name: "ip4_addr_netmask_valid", scope: !3, file: !3, line: 93, type: !246, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !248)
!246 = !DISubroutineType(types: !247)
!247 = !{!35, !19}
!248 = !{!249, !250, !251}
!249 = !DILocalVariable(name: "netmask", arg: 1, scope: !245, file: !3, line: 93, type: !19)
!250 = !DILocalVariable(name: "mask", scope: !245, file: !3, line: 95, type: !19)
!251 = !DILocalVariable(name: "nm_hostorder", scope: !245, file: !3, line: 96, type: !19)
!252 = !DILocation(line: 93, column: 30, scope: !245)
!253 = !DILocation(line: 96, column: 24, scope: !245)
!254 = !DILocation(line: 96, column: 9, scope: !245)
!255 = !DILocation(line: 95, column: 9, scope: !245)
!256 = !DILocation(line: 99, column: 8, scope: !257)
!257 = distinct !DILexicalBlock(scope: !245, file: !3, line: 99, column: 3)
!258 = !DILocation(line: 0, scope: !259)
!259 = distinct !DILexicalBlock(scope: !257, file: !3, line: 99, column: 3)
!260 = !DILocation(line: 100, column: 23, scope: !261)
!261 = distinct !DILexicalBlock(scope: !262, file: !3, line: 100, column: 9)
!262 = distinct !DILexicalBlock(scope: !259, file: !3, line: 99, column: 50)
!263 = !DILocation(line: 100, column: 31, scope: !261)
!264 = !DILocation(line: 99, column: 43, scope: !259)
!265 = !DILocation(line: 99, column: 3, scope: !257)
!266 = distinct !{!266, !265, !267}
!267 = !DILocation(line: 103, column: 3, scope: !257)
!268 = !DILocation(line: 105, column: 15, scope: !269)
!269 = distinct !DILexicalBlock(scope: !270, file: !3, line: 105, column: 3)
!270 = distinct !DILexicalBlock(scope: !245, file: !3, line: 105, column: 3)
!271 = !DILocation(line: 105, column: 3, scope: !270)
!272 = distinct !{!272, !271, !273}
!273 = !DILocation(line: 110, column: 3, scope: !270)
!274 = !DILocation(line: 106, column: 23, scope: !275)
!275 = distinct !DILexicalBlock(scope: !276, file: !3, line: 106, column: 9)
!276 = distinct !DILexicalBlock(scope: !269, file: !3, line: 105, column: 33)
!277 = !DILocation(line: 106, column: 31, scope: !275)
!278 = !DILocation(line: 105, column: 26, scope: !269)
!279 = !DILocation(line: 106, column: 9, scope: !276)
!280 = !DILocation(line: 0, scope: !245)
!281 = !DILocation(line: 113, column: 1, scope: !245)
!282 = distinct !DISubprogram(name: "ipaddr_addr", scope: !3, file: !3, line: 123, type: !283, isLocal: false, isDefinition: true, scopeLine: 124, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !285)
!283 = !DISubroutineType(types: !284)
!284 = !{!19, !83}
!285 = !{!286, !287}
!286 = !DILocalVariable(name: "cp", arg: 1, scope: !282, file: !3, line: 123, type: !83)
!287 = !DILocalVariable(name: "val", scope: !282, file: !3, line: 125, type: !27)
!288 = !DILocation(line: 123, column: 25, scope: !282)
!289 = !DILocation(line: 125, column: 3, scope: !282)
!290 = !DILocation(line: 125, column: 14, scope: !282)
!291 = !DILocation(line: 127, column: 7, scope: !292)
!292 = distinct !DILexicalBlock(scope: !282, file: !3, line: 127, column: 7)
!293 = !DILocation(line: 128, column: 12, scope: !294)
!294 = distinct !DILexicalBlock(scope: !292, file: !3, line: 127, column: 31)
!295 = !DILocation(line: 127, column: 7, scope: !282)
!296 = !DILocation(line: 131, column: 1, scope: !282)
!297 = distinct !DISubprogram(name: "ip4addr_aton", scope: !3, file: !3, line: 145, type: !298, isLocal: false, isDefinition: true, scopeLine: 146, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !301)
!298 = !DISubroutineType(types: !299)
!299 = !{!33, !83, !300}
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!301 = !{!302, !303, !304, !305, !306, !307, !308}
!302 = !DILocalVariable(name: "cp", arg: 1, scope: !297, file: !3, line: 145, type: !83)
!303 = !DILocalVariable(name: "addr", arg: 2, scope: !297, file: !3, line: 145, type: !300)
!304 = !DILocalVariable(name: "val", scope: !297, file: !3, line: 147, type: !19)
!305 = !DILocalVariable(name: "base", scope: !297, file: !3, line: 148, type: !35)
!306 = !DILocalVariable(name: "c", scope: !297, file: !3, line: 149, type: !38)
!307 = !DILocalVariable(name: "parts", scope: !297, file: !3, line: 150, type: !60)
!308 = !DILocalVariable(name: "pp", scope: !297, file: !3, line: 151, type: !309)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!310 = !DILocalVariable(name: "ret", scope: !311, file: !20, line: 232, type: !323)
!311 = distinct !DISubprogram(name: "_isdigit_flexos_wrapper", scope: !20, file: !20, line: 230, type: !312, isLocal: true, isDefinition: true, scopeLine: 231, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !314)
!312 = !DISubroutineType(types: !313)
!313 = !{!33, !33}
!314 = !{!315, !310, !316, !322}
!315 = !DILocalVariable(name: "c", arg: 1, scope: !311, file: !20, line: 230, type: !33)
!316 = !DILocalVariable(name: "tid", scope: !317, file: !20, line: 233, type: !21)
!317 = distinct !DILexicalBlock(scope: !318, file: !20, line: 233, column: 2)
!318 = distinct !DILexicalBlock(scope: !319, file: !20, line: 233, column: 2)
!319 = distinct !DILexicalBlock(scope: !320, file: !20, line: 233, column: 2)
!320 = distinct !DILexicalBlock(scope: !321, file: !20, line: 233, column: 2)
!321 = distinct !DILexicalBlock(scope: !311, file: !20, line: 233, column: 2)
!322 = !DILocalVariable(name: "_ret", scope: !317, file: !20, line: 233, type: !40)
!323 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !33)
!324 = !DILocation(line: 232, column: 15, scope: !311, inlinedAt: !325)
!325 = distinct !DILocation(line: 175, column: 11, scope: !326)
!326 = distinct !DILexicalBlock(scope: !327, file: !3, line: 175, column: 11)
!327 = distinct !DILexicalBlock(scope: !328, file: !3, line: 174, column: 14)
!328 = distinct !DILexicalBlock(scope: !329, file: !3, line: 174, column: 5)
!329 = distinct !DILexicalBlock(scope: !330, file: !3, line: 174, column: 5)
!330 = distinct !DILexicalBlock(scope: !331, file: !3, line: 154, column: 12)
!331 = distinct !DILexicalBlock(scope: !332, file: !3, line: 154, column: 3)
!332 = distinct !DILexicalBlock(scope: !297, file: !3, line: 154, column: 3)
!333 = !DILocation(line: 232, column: 15, scope: !311, inlinedAt: !334)
!334 = distinct !DILocation(line: 160, column: 10, scope: !335)
!335 = distinct !DILexicalBlock(scope: !330, file: !3, line: 160, column: 9)
!336 = !DILocation(line: 145, column: 26, scope: !297)
!337 = !DILocation(line: 145, column: 42, scope: !297)
!338 = !DILocation(line: 150, column: 3, scope: !297)
!339 = !DILocation(line: 150, column: 9, scope: !297)
!340 = !DILocation(line: 151, column: 15, scope: !297)
!341 = !DILocation(line: 151, column: 10, scope: !297)
!342 = !DILocation(line: 149, column: 8, scope: !297)
!343 = !DILocation(line: 154, column: 3, scope: !297)
!344 = !DILocation(line: 0, scope: !345)
!345 = distinct !DILexicalBlock(scope: !346, file: !3, line: 185, column: 19)
!346 = distinct !DILexicalBlock(scope: !330, file: !3, line: 185, column: 9)
!347 = !DILocation(line: 232, column: 2, scope: !311, inlinedAt: !334)
!348 = !DILocation(line: 120, column: 2, scope: !349, inlinedAt: !355)
!349 = distinct !DISubprogram(name: "ukarch_read_sp", scope: !350, file: !350, line: 116, type: !351, isLocal: true, isDefinition: true, scopeLine: 117, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !353)
!350 = !DIFile(filename: "/root/.unikraft/unikraft/arch/x86/x86_64/include/uk/asm/lcpu.h", directory: "/root/.unikraft/apps/redis/build")
!351 = !DISubroutineType(types: !352)
!352 = !{!39}
!353 = !{!354}
!354 = !DILocalVariable(name: "sp", scope: !349, file: !350, line: 118, type: !39)
!355 = distinct !DILocation(line: 233, column: 2, scope: !320, inlinedAt: !334)
!356 = !{i32 521559}
!357 = !DILocation(line: 118, column: 16, scope: !349, inlinedAt: !355)
!358 = !DILocation(line: 233, column: 2, scope: !320, inlinedAt: !334)
!359 = !DILocation(line: 120, column: 2, scope: !349, inlinedAt: !360)
!360 = distinct !DILocation(line: 233, column: 2, scope: !320, inlinedAt: !334)
!361 = !DILocation(line: 118, column: 16, scope: !349, inlinedAt: !360)
!362 = !DILocation(line: 233, column: 2, scope: !321, inlinedAt: !334)
!363 = !DILocation(line: 233, column: 2, scope: !364, inlinedAt: !334)
!364 = distinct !DILexicalBlock(scope: !320, file: !20, line: 233, column: 2)
!365 = !{!366, !366, i64 0}
!366 = !{!"int", !222, i64 0}
!367 = !DILocation(line: 120, column: 2, scope: !349, inlinedAt: !368)
!368 = distinct !DILocation(line: 49, column: 21, scope: !369, inlinedAt: !375)
!369 = distinct !DISubprogram(name: "uk_thread_get_tid", scope: !370, file: !370, line: 47, type: !371, isLocal: true, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !373)
!370 = !DIFile(filename: "/root/.unikraft/unikraft/lib/flexos-core/include/flexos/impl/intelpku-impl.h", directory: "/root/.unikraft/apps/redis/build")
!371 = !DISubroutineType(types: !372)
!372 = !{!33}
!373 = !{!374}
!374 = !DILocalVariable(name: "sp", scope: !369, file: !370, line: 49, type: !39)
!375 = distinct !DILocation(line: 233, column: 2, scope: !317, inlinedAt: !334)
!376 = !DILocation(line: 118, column: 16, scope: !349, inlinedAt: !368)
!377 = !DILocation(line: 49, column: 16, scope: !369, inlinedAt: !375)
!378 = !DILocation(line: 50, column: 19, scope: !369, inlinedAt: !375)
!379 = !DILocation(line: 50, column: 11, scope: !369, inlinedAt: !375)
!380 = !DILocation(line: 50, column: 9, scope: !369, inlinedAt: !375)
!381 = !DILocation(line: 233, column: 2, scope: !317, inlinedAt: !334)
!382 = !{i32 -2146778997, i32 -2146778984, i32 -2146778959, i32 -2146778935, i32 -2146778910, i32 -2146778835, i32 -2146778810, i32 -2146778666, i32 -2146775562, i32 -2146775473, i32 -2146775352, i32 -2146775257, i32 -2146775156, i32 -2146775129, i32 -2146775046, i32 -2146774957, i32 -2146774836, i32 -2146774736, i32 -2146774630, i32 -2146774522, i32 -2146778378, i32 -2146778325, i32 -2146778294, i32 -2146778263, i32 -2146778242, i32 -2146778220, i32 -2146778171, i32 -2146778150, i32 -2146774439, i32 -2146774350, i32 -2146774229, i32 -2146774130, i32 -2146774024, i32 -2146773922, i32 -2146773889, i32 -2146773816, i32 -2146773748, i32 -2146777846, i32 -2146777787, i32 -2146777734, i32 -2146777703, i32 -2146777672, i32 -2146777651, i32 -2146777629, i32 -2146777580, i32 -2146777559, i32 -2146773705, i32 -2146773616, i32 -2146773495, i32 -2146773396, i32 -2146773290, i32 -2146773188, i32 -2146773155, i32 -2146773072, i32 -2146772983, i32 -2146772862, i32 -2146772762, i32 -2146772736, i32 -2146772633, i32 -2146772607, i32 -2146777301, i32 -2146777234, i32 -2146777209, i32 -2146777145, i32 -2146777063, i32 -2146777040, i32 -2146777015, i32 -2146776990}
!383 = !DILocation(line: 233, column: 2, scope: !384, inlinedAt: !334)
!384 = distinct !DILexicalBlock(scope: !385, file: !20, line: 233, column: 2)
!385 = distinct !DILexicalBlock(scope: !317, file: !20, line: 233, column: 2)
!386 = !{i32 -2146776009, i32 -2146775992}
!387 = !DILocation(line: 234, column: 9, scope: !311, inlinedAt: !334)
!388 = !DILocation(line: 235, column: 1, scope: !311, inlinedAt: !334)
!389 = !DILocation(line: 160, column: 10, scope: !335)
!390 = !DILocation(line: 160, column: 9, scope: !330)
!391 = !DILocation(line: 147, column: 9, scope: !297)
!392 = !DILocation(line: 148, column: 8, scope: !297)
!393 = !DILocation(line: 165, column: 11, scope: !394)
!394 = distinct !DILexicalBlock(scope: !330, file: !3, line: 165, column: 9)
!395 = !DILocation(line: 165, column: 9, scope: !330)
!396 = !DILocation(line: 166, column: 12, scope: !397)
!397 = distinct !DILexicalBlock(scope: !394, file: !3, line: 165, column: 19)
!398 = !DILocation(line: 166, column: 11, scope: !397)
!399 = !DILocation(line: 167, column: 20, scope: !400)
!400 = distinct !DILexicalBlock(scope: !397, file: !3, line: 167, column: 11)
!401 = !DILocation(line: 169, column: 14, scope: !402)
!402 = distinct !DILexicalBlock(scope: !400, file: !3, line: 167, column: 33)
!403 = !DILocation(line: 169, column: 13, scope: !402)
!404 = !DILocation(line: 170, column: 7, scope: !402)
!405 = !DILocation(line: 0, scope: !297)
!406 = !DILocation(line: 174, column: 5, scope: !330)
!407 = !DILocation(line: 0, scope: !408)
!408 = distinct !DILexicalBlock(scope: !326, file: !3, line: 175, column: 28)
!409 = !DILocation(line: 232, column: 2, scope: !311, inlinedAt: !325)
!410 = !DILocation(line: 120, column: 2, scope: !349, inlinedAt: !411)
!411 = distinct !DILocation(line: 233, column: 2, scope: !320, inlinedAt: !325)
!412 = !DILocation(line: 118, column: 16, scope: !349, inlinedAt: !411)
!413 = !DILocation(line: 233, column: 2, scope: !320, inlinedAt: !325)
!414 = !DILocation(line: 120, column: 2, scope: !349, inlinedAt: !415)
!415 = distinct !DILocation(line: 233, column: 2, scope: !320, inlinedAt: !325)
!416 = !DILocation(line: 118, column: 16, scope: !349, inlinedAt: !415)
!417 = !DILocation(line: 233, column: 2, scope: !321, inlinedAt: !325)
!418 = !DILocation(line: 233, column: 2, scope: !364, inlinedAt: !325)
!419 = !DILocation(line: 120, column: 2, scope: !349, inlinedAt: !420)
!420 = distinct !DILocation(line: 49, column: 21, scope: !369, inlinedAt: !421)
!421 = distinct !DILocation(line: 233, column: 2, scope: !317, inlinedAt: !325)
!422 = !DILocation(line: 118, column: 16, scope: !349, inlinedAt: !420)
!423 = !DILocation(line: 49, column: 16, scope: !369, inlinedAt: !421)
!424 = !DILocation(line: 50, column: 19, scope: !369, inlinedAt: !421)
!425 = !DILocation(line: 50, column: 11, scope: !369, inlinedAt: !421)
!426 = !DILocation(line: 50, column: 9, scope: !369, inlinedAt: !421)
!427 = !DILocation(line: 233, column: 2, scope: !317, inlinedAt: !325)
!428 = !DILocation(line: 233, column: 2, scope: !384, inlinedAt: !325)
!429 = !DILocation(line: 234, column: 9, scope: !311, inlinedAt: !325)
!430 = !DILocation(line: 235, column: 1, scope: !311, inlinedAt: !325)
!431 = !DILocation(line: 175, column: 11, scope: !326)
!432 = !DILocation(line: 175, column: 11, scope: !327)
!433 = !DILocation(line: 176, column: 20, scope: !408)
!434 = !DILocation(line: 176, column: 38, scope: !408)
!435 = !DILocation(line: 176, column: 40, scope: !408)
!436 = !DILocation(line: 176, column: 28, scope: !408)
!437 = !DILocation(line: 178, column: 7, scope: !408)
!438 = !DILocation(line: 178, column: 29, scope: !439)
!439 = distinct !DILexicalBlock(scope: !326, file: !3, line: 178, column: 18)
!440 = !DILocation(line: 178, column: 32, scope: !439)
!441 = !DILocation(line: 178, column: 18, scope: !326)
!442 = !DILocation(line: 179, column: 20, scope: !443)
!443 = distinct !DILexicalBlock(scope: !439, file: !3, line: 178, column: 50)
!444 = !DILocation(line: 179, column: 36, scope: !443)
!445 = !DILocation(line: 179, column: 38, scope: !443)
!446 = !DILocation(line: 179, column: 46, scope: !443)
!447 = !DILocation(line: 179, column: 43, scope: !443)
!448 = !DILocation(line: 179, column: 26, scope: !443)
!449 = !DILocation(line: 0, scope: !443)
!450 = !DILocation(line: 174, column: 5, scope: !328)
!451 = distinct !{!451, !452, !453}
!452 = !DILocation(line: 174, column: 5, scope: !329)
!453 = !DILocation(line: 184, column: 5, scope: !329)
!454 = !DILocation(line: 185, column: 9, scope: !330)
!455 = !DILocation(line: 192, column: 14, scope: !456)
!456 = distinct !DILexicalBlock(scope: !345, file: !3, line: 192, column: 11)
!457 = !DILocation(line: 192, column: 11, scope: !345)
!458 = !DILocation(line: 195, column: 10, scope: !345)
!459 = !DILocation(line: 195, column: 13, scope: !345)
!460 = !DILocation(line: 196, column: 12, scope: !345)
!461 = !DILocation(line: 154, column: 3, scope: !331)
!462 = distinct !{!462, !463, !464}
!463 = !DILocation(line: 154, column: 3, scope: !332)
!464 = !DILocation(line: 200, column: 3, scope: !332)
!465 = !DILocation(line: 204, column: 21, scope: !466)
!466 = distinct !DILexicalBlock(scope: !297, file: !3, line: 204, column: 7)
!467 = !DILocation(line: 204, column: 7, scope: !297)
!468 = !DILocation(line: 211, column: 14, scope: !297)
!469 = !DILocation(line: 211, column: 3, scope: !297)
!470 = !DILocation(line: 220, column: 15, scope: !471)
!471 = distinct !DILexicalBlock(scope: !472, file: !3, line: 220, column: 11)
!472 = distinct !DILexicalBlock(scope: !297, file: !3, line: 211, column: 27)
!473 = !DILocation(line: 220, column: 11, scope: !472)
!474 = !DILocation(line: 223, column: 11, scope: !475)
!475 = distinct !DILexicalBlock(scope: !472, file: !3, line: 223, column: 11)
!476 = !DILocation(line: 223, column: 20, scope: !475)
!477 = !DILocation(line: 223, column: 11, scope: !472)
!478 = !DILocation(line: 226, column: 23, scope: !472)
!479 = !DILocation(line: 226, column: 11, scope: !472)
!480 = !DILocation(line: 227, column: 7, scope: !472)
!481 = !DILocation(line: 230, column: 15, scope: !482)
!482 = distinct !DILexicalBlock(scope: !472, file: !3, line: 230, column: 11)
!483 = !DILocation(line: 230, column: 11, scope: !472)
!484 = !DILocation(line: 233, column: 12, scope: !485)
!485 = distinct !DILexicalBlock(scope: !472, file: !3, line: 233, column: 11)
!486 = !DILocation(line: 233, column: 21, scope: !485)
!487 = !DILocation(line: 233, column: 29, scope: !485)
!488 = !DILocation(line: 233, column: 33, scope: !485)
!489 = !DILocation(line: 233, column: 42, scope: !485)
!490 = !DILocation(line: 233, column: 11, scope: !472)
!491 = !DILocation(line: 236, column: 24, scope: !472)
!492 = !DILocation(line: 236, column: 43, scope: !472)
!493 = !DILocation(line: 236, column: 31, scope: !472)
!494 = !DILocation(line: 236, column: 11, scope: !472)
!495 = !DILocation(line: 237, column: 7, scope: !472)
!496 = !DILocation(line: 240, column: 15, scope: !497)
!497 = distinct !DILexicalBlock(scope: !472, file: !3, line: 240, column: 11)
!498 = !DILocation(line: 240, column: 11, scope: !472)
!499 = !DILocation(line: 243, column: 12, scope: !500)
!500 = distinct !DILexicalBlock(scope: !472, file: !3, line: 243, column: 11)
!501 = !DILocation(line: 243, column: 21, scope: !500)
!502 = !DILocation(line: 243, column: 29, scope: !500)
!503 = !DILocation(line: 243, column: 33, scope: !500)
!504 = !DILocation(line: 243, column: 42, scope: !500)
!505 = !DILocation(line: 243, column: 50, scope: !500)
!506 = !DILocation(line: 243, column: 54, scope: !500)
!507 = !DILocation(line: 243, column: 63, scope: !500)
!508 = !DILocation(line: 243, column: 11, scope: !472)
!509 = !DILocation(line: 246, column: 24, scope: !472)
!510 = !DILocation(line: 246, column: 43, scope: !472)
!511 = !DILocation(line: 246, column: 62, scope: !472)
!512 = !DILocation(line: 246, column: 31, scope: !472)
!513 = !DILocation(line: 246, column: 50, scope: !472)
!514 = !DILocation(line: 246, column: 11, scope: !472)
!515 = !DILocation(line: 247, column: 7, scope: !472)
!516 = !DILocation(line: 249, column: 7, scope: !517)
!517 = distinct !DILexicalBlock(scope: !518, file: !3, line: 249, column: 7)
!518 = distinct !DILexicalBlock(scope: !519, file: !3, line: 249, column: 7)
!519 = distinct !DILexicalBlock(scope: !520, file: !3, line: 249, column: 7)
!520 = distinct !DILexicalBlock(scope: !472, file: !3, line: 249, column: 7)
!521 = !DILocation(line: 249, column: 7, scope: !522)
!522 = distinct !DILexicalBlock(scope: !523, file: !3, line: 249, column: 7)
!523 = distinct !DILexicalBlock(scope: !524, file: !3, line: 249, column: 7)
!524 = distinct !DILexicalBlock(scope: !517, file: !3, line: 249, column: 7)
!525 = !DILocation(line: 0, scope: !330)
!526 = !DILocation(line: 252, column: 7, scope: !527)
!527 = distinct !DILexicalBlock(scope: !297, file: !3, line: 252, column: 7)
!528 = !DILocation(line: 252, column: 7, scope: !297)
!529 = !DILocation(line: 253, column: 5, scope: !530)
!530 = distinct !DILexicalBlock(scope: !527, file: !3, line: 252, column: 13)
!531 = !{!532, !366, i64 0}
!532 = !{!"ip4_addr", !366, i64 0}
!533 = !DILocation(line: 254, column: 3, scope: !530)
!534 = !DILocation(line: 0, scope: !535)
!535 = distinct !DILexicalBlock(scope: !335, file: !3, line: 160, column: 27)
!536 = !DILocation(line: 256, column: 1, scope: !297)
!537 = !DILocation(line: 194, column: 43, scope: !79)
!538 = !DILocation(line: 196, column: 2, scope: !79)
!539 = !DILocation(line: 196, column: 10, scope: !79)
!540 = !DILocation(line: 197, column: 2, scope: !79)
!541 = !DILocation(line: 198, column: 2, scope: !542)
!542 = distinct !DILexicalBlock(scope: !543, file: !80, line: 198, column: 2)
!543 = distinct !DILexicalBlock(scope: !79, file: !80, line: 198, column: 2)
!544 = !DILocation(line: 199, column: 2, scope: !79)
!545 = !DILocation(line: 200, column: 1, scope: !79)
!546 = !DILocalVariable(name: "inv", scope: !547, file: !3, line: 286, type: !561)
!547 = distinct !DISubprogram(name: "ip4addr_ntoa_r", scope: !3, file: !3, line: 283, type: !548, isLocal: false, isDefinition: true, scopeLine: 284, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !550)
!548 = !DISubroutineType(types: !549)
!549 = !{!71, !25, !71, !33}
!550 = !{!551, !552, !553, !554, !546, !555, !556, !557, !558, !559, !560}
!551 = !DILocalVariable(name: "addr", arg: 1, scope: !547, file: !3, line: 283, type: !25)
!552 = !DILocalVariable(name: "buf", arg: 2, scope: !547, file: !3, line: 283, type: !71)
!553 = !DILocalVariable(name: "buflen", arg: 3, scope: !547, file: !3, line: 283, type: !33)
!554 = !DILocalVariable(name: "s_addr", scope: !547, file: !3, line: 285, type: !19)
!555 = !DILocalVariable(name: "rp", scope: !547, file: !3, line: 287, type: !71)
!556 = !DILocalVariable(name: "ap", scope: !547, file: !3, line: 288, type: !34)
!557 = !DILocalVariable(name: "rem", scope: !547, file: !3, line: 289, type: !35)
!558 = !DILocalVariable(name: "n", scope: !547, file: !3, line: 290, type: !35)
!559 = !DILocalVariable(name: "i", scope: !547, file: !3, line: 291, type: !35)
!560 = !DILocalVariable(name: "len", scope: !547, file: !3, line: 292, type: !33)
!561 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 24, elements: !127)
!562 = !DILocation(line: 286, column: 8, scope: !547, inlinedAt: !563)
!563 = distinct !DILocation(line: 270, column: 10, scope: !68)
!564 = !DILocation(line: 267, column: 32, scope: !68)
!565 = !DILocation(line: 283, column: 34, scope: !547, inlinedAt: !563)
!566 = !DILocation(line: 283, column: 46, scope: !547, inlinedAt: !563)
!567 = !DILocation(line: 283, column: 55, scope: !547, inlinedAt: !563)
!568 = !DILocation(line: 285, column: 3, scope: !547, inlinedAt: !563)
!569 = !DILocation(line: 286, column: 3, scope: !547, inlinedAt: !563)
!570 = !DILocation(line: 292, column: 7, scope: !547, inlinedAt: !563)
!571 = !DILocation(line: 294, column: 12, scope: !547, inlinedAt: !563)
!572 = !DILocation(line: 285, column: 9, scope: !547, inlinedAt: !563)
!573 = !DILocation(line: 294, column: 10, scope: !547, inlinedAt: !563)
!574 = !DILocation(line: 287, column: 9, scope: !547, inlinedAt: !563)
!575 = !DILocation(line: 288, column: 9, scope: !547, inlinedAt: !563)
!576 = !DILocation(line: 290, column: 8, scope: !547, inlinedAt: !563)
!577 = !DILocation(line: 298, column: 3, scope: !578, inlinedAt: !563)
!578 = distinct !DILexicalBlock(scope: !547, file: !3, line: 298, column: 3)
!579 = !DILocation(line: 301, column: 13, scope: !580, inlinedAt: !563)
!580 = distinct !DILexicalBlock(scope: !581, file: !3, line: 300, column: 8)
!581 = distinct !DILexicalBlock(scope: !582, file: !3, line: 298, column: 27)
!582 = distinct !DILexicalBlock(scope: !578, file: !3, line: 298, column: 3)
!583 = !DILocation(line: 0, scope: !580, inlinedAt: !563)
!584 = !DILocation(line: 291, column: 8, scope: !547, inlinedAt: !563)
!585 = !DILocation(line: 301, column: 17, scope: !580, inlinedAt: !563)
!586 = !DILocation(line: 289, column: 8, scope: !547, inlinedAt: !563)
!587 = !DILocation(line: 302, column: 11, scope: !580, inlinedAt: !563)
!588 = !DILocation(line: 303, column: 29, scope: !580, inlinedAt: !563)
!589 = !DILocation(line: 303, column: 12, scope: !580, inlinedAt: !563)
!590 = !DILocation(line: 303, column: 7, scope: !580, inlinedAt: !563)
!591 = !DILocation(line: 303, column: 16, scope: !580, inlinedAt: !563)
!592 = !DILocation(line: 304, column: 14, scope: !581, inlinedAt: !563)
!593 = !DILocation(line: 304, column: 5, scope: !580, inlinedAt: !563)
!594 = distinct !{!594, !595, !596}
!595 = !DILocation(line: 300, column: 5, scope: !581)
!596 = !DILocation(line: 304, column: 17, scope: !581)
!597 = !DILocation(line: 305, column: 5, scope: !581, inlinedAt: !563)
!598 = !DILocation(line: 0, scope: !599, inlinedAt: !563)
!599 = distinct !DILexicalBlock(scope: !581, file: !3, line: 311, column: 9)
!600 = !DILocation(line: 306, column: 11, scope: !601, inlinedAt: !563)
!601 = distinct !DILexicalBlock(scope: !581, file: !3, line: 305, column: 17)
!602 = !DILocation(line: 309, column: 15, scope: !601, inlinedAt: !563)
!603 = !DILocation(line: 309, column: 10, scope: !601, inlinedAt: !563)
!604 = !DILocation(line: 309, column: 13, scope: !601, inlinedAt: !563)
!605 = !DILocation(line: 305, column: 13, scope: !581, inlinedAt: !563)
!606 = distinct !{!606, !607, !608}
!607 = !DILocation(line: 305, column: 5, scope: !581)
!608 = !DILocation(line: 310, column: 5, scope: !581)
!609 = !DILocation(line: 0, scope: !601, inlinedAt: !563)
!610 = !DILocation(line: 311, column: 9, scope: !581, inlinedAt: !563)
!611 = !DILocation(line: 314, column: 11, scope: !581, inlinedAt: !563)
!612 = !DILocation(line: 315, column: 7, scope: !581, inlinedAt: !563)
!613 = !DILocation(line: 298, column: 23, scope: !582, inlinedAt: !563)
!614 = !DILocation(line: 298, column: 17, scope: !582, inlinedAt: !563)
!615 = distinct !{!615, !616, !617}
!616 = !DILocation(line: 298, column: 3, scope: !578)
!617 = !DILocation(line: 316, column: 3, scope: !578)
!618 = !DILocation(line: 314, column: 8, scope: !581, inlinedAt: !563)
!619 = !DILocation(line: 317, column: 9, scope: !547, inlinedAt: !563)
!620 = !DILocation(line: 318, column: 3, scope: !547, inlinedAt: !563)
!621 = !DILocation(line: 0, scope: !547, inlinedAt: !563)
!622 = !DILocation(line: 319, column: 1, scope: !547, inlinedAt: !563)
!623 = !DILocation(line: 270, column: 3, scope: !68)
!624 = !DILocation(line: 283, column: 34, scope: !547)
!625 = !DILocation(line: 283, column: 46, scope: !547)
!626 = !DILocation(line: 283, column: 55, scope: !547)
!627 = !DILocation(line: 285, column: 3, scope: !547)
!628 = !DILocation(line: 286, column: 3, scope: !547)
!629 = !DILocation(line: 286, column: 8, scope: !547)
!630 = !DILocation(line: 292, column: 7, scope: !547)
!631 = !DILocation(line: 294, column: 12, scope: !547)
!632 = !DILocation(line: 285, column: 9, scope: !547)
!633 = !DILocation(line: 294, column: 10, scope: !547)
!634 = !DILocation(line: 287, column: 9, scope: !547)
!635 = !DILocation(line: 288, column: 9, scope: !547)
!636 = !DILocation(line: 290, column: 8, scope: !547)
!637 = !DILocation(line: 301, column: 13, scope: !580)
!638 = !DILocation(line: 0, scope: !580)
!639 = !DILocation(line: 291, column: 8, scope: !547)
!640 = !DILocation(line: 301, column: 17, scope: !580)
!641 = !DILocation(line: 289, column: 8, scope: !547)
!642 = !DILocation(line: 302, column: 11, scope: !580)
!643 = !DILocation(line: 303, column: 29, scope: !580)
!644 = !DILocation(line: 303, column: 12, scope: !580)
!645 = !DILocation(line: 303, column: 7, scope: !580)
!646 = !DILocation(line: 303, column: 16, scope: !580)
!647 = !DILocation(line: 304, column: 14, scope: !581)
!648 = !DILocation(line: 304, column: 5, scope: !580)
!649 = !DILocation(line: 0, scope: !599)
!650 = !DILocation(line: 306, column: 11, scope: !601)
!651 = !DILocation(line: 309, column: 15, scope: !601)
!652 = !DILocation(line: 309, column: 10, scope: !601)
!653 = !DILocation(line: 309, column: 13, scope: !601)
!654 = !DILocation(line: 305, column: 13, scope: !581)
!655 = !DILocation(line: 0, scope: !601)
!656 = !DILocation(line: 311, column: 9, scope: !581)
!657 = !DILocation(line: 314, column: 11, scope: !581)
!658 = !DILocation(line: 315, column: 7, scope: !581)
!659 = !DILocation(line: 298, column: 23, scope: !582)
!660 = !DILocation(line: 298, column: 17, scope: !582)
!661 = !DILocation(line: 314, column: 8, scope: !581)
!662 = !DILocation(line: 317, column: 9, scope: !547)
!663 = !DILocation(line: 318, column: 3, scope: !547)
!664 = !DILocation(line: 0, scope: !547)
!665 = !DILocation(line: 319, column: 1, scope: !547)
