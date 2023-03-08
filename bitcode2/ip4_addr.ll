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
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local zeroext i8 @ip4_addr_isbroadcast_u32(i32, %struct.netif* nocapture readonly) local_unnamed_addr #0 !dbg !113 {
  %3 = add i32 %0, 1, !dbg !215
  %4 = icmp ult i32 %3, 2, !dbg !215
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !215
  br i1 %4, label %25, label %5, !dbg !215

; <label>:5:                                      ; preds = %2
  %6 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 21, !dbg !217
  %7 = load i8, i8* %6, align 1, !dbg !217, !tbaa !219
  %8 = and i8 %7, 2, !dbg !226
  %9 = icmp eq i8 %8, 0, !dbg !227
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !228
  br i1 %9, label %25, label %10, !dbg !228

; <label>:10:                                     ; preds = %5
  %11 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 1, i32 0, i32 0, i32 0, i64 0, !dbg !229
  %12 = load i32, i32* %11, align 8, !dbg !229, !tbaa !231
  %13 = icmp eq i32 %12, %0, !dbg !232
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !233
  br i1 %13, label %25, label %14, !dbg !233

; <label>:14:                                     ; preds = %10
  %15 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 2, i32 0, i32 0, i32 0, i64 0, !dbg !234
  %16 = load i32, i32* %15, align 8, !dbg !234, !tbaa !231
  %17 = xor i32 %12, %0, !dbg !234
  %18 = and i32 %16, %17, !dbg !234
  %19 = icmp eq i32 %18, 0, !dbg !234
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !236
  br i1 %19, label %20, label %24, !dbg !236

; <label>:20:                                     ; preds = %14
  %21 = xor i32 %16, -1, !dbg !237
  %22 = and i32 %21, %0, !dbg !238
  %23 = icmp eq i32 %22, %21, !dbg !239
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !240
  br i1 %23, label %25, label %24, !dbg !240

; <label>:24:                                     ; preds = %20, %14
  br label %25, !dbg !241

; <label>:25:                                     ; preds = %20, %10, %5, %2, %24
  %26 = phi i8 [ 0, %24 ], [ 1, %2 ], [ 0, %5 ], [ 0, %10 ], [ 1, %20 ], !dbg !243
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !244
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !246
  ret i8 %26, !dbg !246
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define dso_local zeroext i8 @ip4_addr_netmask_valid(i32) local_unnamed_addr #0 !dbg !247 {
  %2 = tail call i32 @lwip_htonl(i32 %0) #7, !dbg !255
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !258
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !260
  br label %3, !dbg !260

; <label>:3:                                      ; preds = %23, %1
  %4 = phi i32 [ -2147483648, %1 ], [ %24, %23 ]
  %5 = and i32 %4, %2, !dbg !261
  %6 = icmp eq i32 %5, 0, !dbg !265
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !266
  br i1 %6, label %12, label %7, !dbg !266

; <label>:7:                                      ; preds = %3
  %8 = lshr i32 %4, 1, !dbg !267
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !268
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !260
  %9 = and i32 %8, %2, !dbg !261
  %10 = icmp eq i32 %9, 0, !dbg !265
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !266
  br i1 %10, label %12, label %23, !dbg !266

; <label>:11:                                     ; preds = %23
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !269
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !270
  br label %21, !dbg !270

; <label>:12:                                     ; preds = %7, %3
  %13 = phi i32 [ %4, %3 ], [ %8, %7 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !269
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !270
  br label %14, !dbg !272

; <label>:14:                                     ; preds = %12, %18
  %15 = phi i32 [ %19, %18 ], [ %13, %12 ]
  %16 = and i32 %15, %2, !dbg !272
  %17 = icmp eq i32 %16, 0, !dbg !276
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !277
  br i1 %17, label %18, label %21, !dbg !277

; <label>:18:                                     ; preds = %14
  %19 = lshr i32 %15, 1, !dbg !278
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !279
  %20 = icmp eq i32 %19, 0, !dbg !280
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !270
  br i1 %20, label %21, label %14, !dbg !270, !llvm.loop !281

; <label>:21:                                     ; preds = %18, %14, %11
  %22 = phi i8 [ 1, %11 ], [ 1, %18 ], [ 0, %14 ], !dbg !283
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !284
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !286
  ret i8 %22, !dbg !286

; <label>:23:                                     ; preds = %7
  %24 = lshr i32 %4, 2, !dbg !267
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !268
  %25 = icmp eq i32 %24, 0, !dbg !287
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !260
  br i1 %25, label %11, label %3, !dbg !260, !llvm.loop !288
}

; Function Attrs: noredzone
declare dso_local i32 @lwip_htonl(i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @ipaddr_addr(i8* nocapture readonly) local_unnamed_addr #0 !dbg !290 {
  %2 = alloca %struct.ip4_addr, align 4
  %3 = bitcast %struct.ip4_addr* %2 to i8*, !dbg !297
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #6, !dbg !297
  %4 = call i32 @ip4addr_aton(i8* %0, %struct.ip4_addr* nonnull %2) #8, !dbg !299
  %5 = icmp eq i32 %4, 0, !dbg !299
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !301
  %6 = getelementptr inbounds %struct.ip4_addr, %struct.ip4_addr* %2, i64 0, i32 0, !dbg !302
  %7 = load i32, i32* %6, align 4, !dbg !302
  %8 = select i1 %5, i32 -1, i32 %7, !dbg !301
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !304
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #6, !dbg !305
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !305
  ret i32 %8, !dbg !305
}

; Function Attrs: noredzone nounwind
define dso_local i32 @ip4addr_aton(i8* nocapture readonly, %struct.ip4_addr*) local_unnamed_addr #0 !dbg !306 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [4 x i32], align 16
  %6 = bitcast [4 x i32]* %5 to i8*, !dbg !347
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %6) #6, !dbg !347
  %7 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0, !dbg !349
  %8 = load i8, i8* %0, align 1, !dbg !351, !tbaa !231
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !353
  %9 = bitcast i32* %4 to i8*
  %10 = bitcast i32* %3 to i8*
  %11 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 3
  br label %12, !dbg !353

; <label>:12:                                     ; preds = %127, %2
  %13 = phi i8* [ %0, %2 ], [ %129, %127 ]
  %14 = phi i8 [ %8, %2 ], [ %130, %127 ], !dbg !354
  %15 = phi i32* [ %7, %2 ], [ %128, %127 ], !dbg !354
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #6, !dbg !357
  %16 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #6, !dbg !358, !srcloc !366
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !368
  %17 = icmp ult i64 %16, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !369
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !369
  br i1 %17, label %29, label %18, !dbg !369

; <label>:18:                                     ; preds = %12
  %19 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #6, !dbg !370, !srcloc !366
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !373
  %20 = icmp ugt i64 %19, ptrtoint ([0 x i8]* @_end to i64), !dbg !369
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !374
  br i1 %20, label %29, label %21, !dbg !374

; <label>:21:                                     ; preds = %18
  %22 = call i8* @__locale_ctype_ptr() #7, !dbg !375
  %23 = getelementptr inbounds i8, i8* %22, i64 1, !dbg !375
  %24 = zext i8 %14 to i64, !dbg !375
  %25 = getelementptr inbounds i8, i8* %23, i64 %24, !dbg !375
  %26 = load i8, i8* %25, align 1, !dbg !375, !tbaa !231
  %27 = and i8 %26, 4, !dbg !375
  %28 = zext i8 %27 to i32, !dbg !375
  store volatile i32 %28, i32* %4, align 4, !dbg !375, !tbaa !377
  br label %38, !dbg !375

; <label>:29:                                     ; preds = %18, %12
  %30 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #6, !dbg !379, !srcloc !366
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !389
  %31 = and i64 %30, -65536, !dbg !391
  %32 = or i64 %31, 4097, !dbg !391
  %33 = add nsw i64 %32, -1, !dbg !391
  %34 = inttoptr i64 %33 to i32*, !dbg !392
  %35 = load i32, i32* %34, align 4096, !dbg !393, !tbaa !377
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !394
  %36 = zext i8 %14 to i64, !dbg !395
  %37 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call isdigit\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 %36, i32 %35, i32 (i32)* nonnull @isdigit) #6, !dbg !395, !srcloc !396
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %4, i64 %37) #6, !dbg !397, !srcloc !400
  br label %38

; <label>:38:                                     ; preds = %21, %29
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %39 = load volatile i32, i32* %4, align 4, !dbg !401, !tbaa !377
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #6, !dbg !402
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !403
  %40 = icmp eq i32 %39, 0, !dbg !404
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !405
  br i1 %40, label %197, label %41, !dbg !405

; <label>:41:                                     ; preds = %38
  %42 = icmp eq i8 %14, 48, !dbg !408
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !410
  br i1 %42, label %43, label %56, !dbg !410

; <label>:43:                                     ; preds = %41
  %44 = getelementptr inbounds i8, i8* %13, i64 1, !dbg !411
  %45 = load i8, i8* %44, align 1, !dbg !413, !tbaa !231
  %46 = icmp eq i8 %45, 120, !dbg !414
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !416
  br i1 %46, label %49, label %47, !dbg !416

; <label>:47:                                     ; preds = %43
  %48 = icmp eq i8 %45, 88, !dbg !417
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !418
  br i1 %48, label %49, label %52, !dbg !418

; <label>:49:                                     ; preds = %47, %43
  %50 = getelementptr inbounds i8, i8* %13, i64 2, !dbg !419
  %51 = load i8, i8* %50, align 1, !dbg !421, !tbaa !231
  br label %52, !dbg !422

; <label>:52:                                     ; preds = %47, %49
  %53 = phi i8* [ %50, %49 ], [ %44, %47 ]
  %54 = phi i32 [ 16, %49 ], [ 8, %47 ]
  %55 = phi i8 [ %51, %49 ], [ %45, %47 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %56, !dbg !423

; <label>:56:                                     ; preds = %52, %41
  %57 = phi i8* [ %13, %41 ], [ %53, %52 ]
  %58 = phi i32 [ 10, %41 ], [ %54, %52 ]
  %59 = phi i8 [ %14, %41 ], [ %55, %52 ], !dbg !424
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !423
  %60 = icmp eq i32 %58, 16
  br label %61, !dbg !423

; <label>:61:                                     ; preds = %119, %56
  %62 = phi i8* [ %57, %56 ], [ %120, %119 ], !dbg !425
  %63 = phi i32 [ 0, %56 ], [ %121, %119 ], !dbg !425
  %64 = phi i8 [ %59, %56 ], [ %122, %119 ], !dbg !425
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %10) #6, !dbg !427
  %65 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #6, !dbg !428, !srcloc !366
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !431
  %66 = icmp ult i64 %65, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !432
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !432
  br i1 %66, label %78, label %67, !dbg !432

; <label>:67:                                     ; preds = %61
  %68 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #6, !dbg !433, !srcloc !366
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !436
  %69 = icmp ugt i64 %68, ptrtoint ([0 x i8]* @_end to i64), !dbg !432
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !437
  br i1 %69, label %78, label %70, !dbg !437

; <label>:70:                                     ; preds = %67
  %71 = call i8* @__locale_ctype_ptr() #7, !dbg !438
  %72 = getelementptr inbounds i8, i8* %71, i64 1, !dbg !438
  %73 = zext i8 %64 to i64, !dbg !438
  %74 = getelementptr inbounds i8, i8* %72, i64 %73, !dbg !438
  %75 = load i8, i8* %74, align 1, !dbg !438, !tbaa !231
  %76 = and i8 %75, 4, !dbg !438
  %77 = zext i8 %76 to i32, !dbg !438
  store volatile i32 %77, i32* %3, align 4, !dbg !438, !tbaa !377
  br label %87, !dbg !438

; <label>:78:                                     ; preds = %67, %61
  %79 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #6, !dbg !439, !srcloc !366
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !443
  %80 = and i64 %79, -65536, !dbg !445
  %81 = or i64 %80, 4097, !dbg !445
  %82 = add nsw i64 %81, -1, !dbg !445
  %83 = inttoptr i64 %82 to i32*, !dbg !446
  %84 = load i32, i32* %83, align 4096, !dbg !447, !tbaa !377
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !448
  %85 = zext i8 %64 to i64, !dbg !449
  %86 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call isdigit\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 %85, i32 %84, i32 (i32)* nonnull @isdigit) #6, !dbg !449, !srcloc !396
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %3, i64 %86) #6, !dbg !450, !srcloc !400
  br label %87

; <label>:87:                                     ; preds = %70, %78
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %88 = load volatile i32, i32* %3, align 4, !dbg !451, !tbaa !377
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %10) #6, !dbg !452
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !453
  %89 = icmp eq i32 %88, 0, !dbg !454
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !455
  br i1 %89, label %96, label %90, !dbg !455

; <label>:90:                                     ; preds = %87
  %91 = mul i32 %63, %58, !dbg !456
  %92 = sext i8 %64 to i32, !dbg !457
  %93 = add i32 %91, -48, !dbg !458
  %94 = add i32 %93, %92, !dbg !459
  %95 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !460
  br label %119, !dbg !461

; <label>:96:                                     ; preds = %87
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !462
  br i1 %60, label %97, label %123, !dbg !462

; <label>:97:                                     ; preds = %96
  %98 = call i8* @__locale_ctype_ptr() #7, !dbg !464
  %99 = getelementptr inbounds i8, i8* %98, i64 1, !dbg !464
  %100 = zext i8 %64 to i64, !dbg !464
  %101 = getelementptr inbounds i8, i8* %99, i64 %100, !dbg !464
  %102 = load i8, i8* %101, align 1, !dbg !464, !tbaa !231
  %103 = and i8 %102, 68, !dbg !464
  %104 = icmp eq i8 %103, 0, !dbg !464
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !465
  br i1 %104, label %123, label %105, !dbg !465

; <label>:105:                                    ; preds = %97
  %106 = shl i32 %63, 4, !dbg !466
  %107 = sext i8 %64 to i32, !dbg !468
  %108 = add nsw i32 %107, 10, !dbg !469
  %109 = call i8* @__locale_ctype_ptr() #7, !dbg !470
  %110 = getelementptr inbounds i8, i8* %109, i64 1, !dbg !470
  %111 = getelementptr inbounds i8, i8* %110, i64 %100, !dbg !470
  %112 = load i8, i8* %111, align 1, !dbg !470, !tbaa !231
  %113 = and i8 %112, 3, !dbg !470
  %114 = icmp eq i8 %113, 2, !dbg !470
  %115 = select i1 %114, i32 -97, i32 -65, !dbg !470
  %116 = add nsw i32 %108, %115, !dbg !471
  %117 = or i32 %116, %106, !dbg !472
  %118 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !473
  br label %119

; <label>:119:                                    ; preds = %105, %90
  %120 = phi i8* [ %118, %105 ], [ %95, %90 ]
  %121 = phi i32 [ %117, %105 ], [ %94, %90 ], !dbg !474
  %122 = load i8, i8* %120, align 1, !dbg !425, !tbaa !231
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !475
  br label %61, !dbg !475, !llvm.loop !476

; <label>:123:                                    ; preds = %97, %96
  %124 = icmp eq i8 %64, 46, !dbg !479
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !480
  br i1 %124, label %125, label %131, !dbg !480

; <label>:125:                                    ; preds = %123
  %126 = icmp ult i32* %15, %11, !dbg !481
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !483
  br i1 %126, label %127, label %197, !dbg !483

; <label>:127:                                    ; preds = %125
  %128 = getelementptr inbounds i32, i32* %15, i64 1, !dbg !484
  store i32 %63, i32* %15, align 4, !dbg !485, !tbaa !377
  %129 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !486
  %130 = load i8, i8* %129, align 1, !dbg !487, !tbaa !231
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !488
  br label %12, !dbg !488, !llvm.loop !489

; <label>:131:                                    ; preds = %123
  %132 = icmp eq i8 %64, 0, !dbg !492
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !494
  br i1 %132, label %141, label %133, !dbg !494

; <label>:133:                                    ; preds = %131
  %134 = call i8* @__locale_ctype_ptr() #7, !dbg !495
  %135 = getelementptr inbounds i8, i8* %134, i64 1, !dbg !495
  %136 = zext i8 %64 to i64, !dbg !495
  %137 = getelementptr inbounds i8, i8* %135, i64 %136, !dbg !495
  %138 = load i8, i8* %137, align 1, !dbg !495, !tbaa !231
  %139 = and i8 %138, 8, !dbg !495
  %140 = icmp eq i8 %139, 0, !dbg !495
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !496
  br i1 %140, label %197, label %141, !dbg !496

; <label>:141:                                    ; preds = %133, %131
  %142 = ptrtoint i32* %15 to i64, !dbg !497
  %143 = ptrtoint [4 x i32]* %5 to i64, !dbg !497
  %144 = sub i64 %142, %143, !dbg !497
  %145 = ashr exact i64 %144, 2, !dbg !497
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !498
  switch i64 %145, label %188 [
    i64 -1, label %197
    i64 0, label %191
    i64 1, label %146
    i64 2, label %154
    i64 3, label %168
  ], !dbg !498

; <label>:146:                                    ; preds = %141
  %147 = icmp ugt i32 %63, 16777215, !dbg !499
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !502
  br i1 %147, label %197, label %148, !dbg !502

; <label>:148:                                    ; preds = %146
  %149 = load i32, i32* %7, align 16, !dbg !503, !tbaa !377
  %150 = icmp ugt i32 %149, 255, !dbg !505
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !506
  br i1 %150, label %197, label %151, !dbg !506

; <label>:151:                                    ; preds = %148
  %152 = shl i32 %149, 24, !dbg !507
  %153 = or i32 %152, %63, !dbg !508
  br label %189, !dbg !509

; <label>:154:                                    ; preds = %141
  %155 = icmp ugt i32 %63, 65535, !dbg !510
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !512
  br i1 %155, label %197, label %156, !dbg !512

; <label>:156:                                    ; preds = %154
  %157 = load i32, i32* %7, align 16, !dbg !513, !tbaa !377
  %158 = icmp ugt i32 %157, 255, !dbg !515
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !516
  br i1 %158, label %197, label %159, !dbg !516

; <label>:159:                                    ; preds = %156
  %160 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 1, !dbg !517
  %161 = load i32, i32* %160, align 4, !dbg !517, !tbaa !377
  %162 = icmp ugt i32 %161, 255, !dbg !518
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !519
  br i1 %162, label %197, label %163, !dbg !519

; <label>:163:                                    ; preds = %159
  %164 = shl i32 %157, 24, !dbg !520
  %165 = shl i32 %161, 16, !dbg !521
  %166 = or i32 %164, %63, !dbg !522
  %167 = or i32 %166, %165, !dbg !523
  br label %189, !dbg !524

; <label>:168:                                    ; preds = %141
  %169 = icmp ugt i32 %63, 255, !dbg !525
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !527
  br i1 %169, label %197, label %170, !dbg !527

; <label>:170:                                    ; preds = %168
  %171 = load i32, i32* %7, align 16, !dbg !528, !tbaa !377
  %172 = icmp ugt i32 %171, 255, !dbg !530
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !531
  br i1 %172, label %197, label %173, !dbg !531

; <label>:173:                                    ; preds = %170
  %174 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 1, !dbg !532
  %175 = load i32, i32* %174, align 4, !dbg !532, !tbaa !377
  %176 = icmp ugt i32 %175, 255, !dbg !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !534
  br i1 %176, label %197, label %177, !dbg !534

; <label>:177:                                    ; preds = %173
  %178 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 2, !dbg !535
  %179 = load i32, i32* %178, align 8, !dbg !535, !tbaa !377
  %180 = icmp ugt i32 %179, 255, !dbg !536
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !537
  br i1 %180, label %197, label %181, !dbg !537

; <label>:181:                                    ; preds = %177
  %182 = shl i32 %171, 24, !dbg !538
  %183 = shl i32 %175, 16, !dbg !539
  %184 = shl i32 %179, 8, !dbg !540
  %185 = or i32 %182, %63, !dbg !541
  %186 = or i32 %185, %183, !dbg !542
  %187 = or i32 %186, %184, !dbg !543
  br label %189, !dbg !544

; <label>:188:                                    ; preds = %141
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #8, !dbg !545
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !550
  call void @ukplat_terminate(i32 3) #9, !dbg !550
  unreachable

; <label>:189:                                    ; preds = %151, %163, %181
  %190 = phi i32 [ %153, %151 ], [ %167, %163 ], [ %187, %181 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !554
  br label %191, !dbg !555

; <label>:191:                                    ; preds = %189, %141
  %192 = phi i32 [ %63, %141 ], [ %190, %189 ], !dbg !557
  %193 = icmp eq %struct.ip4_addr* %1, null, !dbg !555
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !558
  br i1 %193, label %197, label %194, !dbg !558

; <label>:194:                                    ; preds = %191
  %195 = call i32 @lwip_htonl(i32 %192) #7, !dbg !559
  %196 = getelementptr inbounds %struct.ip4_addr, %struct.ip4_addr* %1, i64 0, i32 0, !dbg !559
  store i32 %195, i32* %196, align 4, !dbg !559, !tbaa !561
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !563
  br label %197, !dbg !563

; <label>:197:                                    ; preds = %125, %38, %194, %191, %170, %173, %177, %168, %156, %159, %154, %148, %146, %141, %133
  %198 = phi i32 [ 0, %133 ], [ 0, %141 ], [ 0, %146 ], [ 0, %148 ], [ 0, %154 ], [ 0, %159 ], [ 0, %156 ], [ 0, %168 ], [ 0, %177 ], [ 0, %173 ], [ 0, %170 ], [ 1, %191 ], [ 1, %194 ], [ 0, %38 ], [ 0, %125 ], !dbg !564
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !564
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #6, !dbg !566
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !566
  ret i32 %198, !dbg !566
}

; Function Attrs: noredzone
declare dso_local i8* @__locale_ctype_ptr() local_unnamed_addr #3

; Function Attrs: inlinehint noredzone nounwind
define internal void @uk_pr_crit(i8*, ...) unnamed_addr #4 !dbg !79 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*, !dbg !568
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #6, !dbg !568
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, !dbg !570
  call void @llvm.va_start(i8* nonnull %3), !dbg !570
  call void @_uk_vprintk(i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @uk_pr_crit.__str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @uk_pr_crit.__str.3, i64 0, i64 0), i32 198, i8* %0, %struct.__va_list_tag* nonnull %4) #7, !dbg !571
  call void @llvm.va_end(i8* nonnull %3), !dbg !574
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #6, !dbg !575
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !575
  ret void, !dbg !575
}

; Function Attrs: noredzone noreturn
declare dso_local void @ukplat_terminate(i32) local_unnamed_addr #5

; Function Attrs: noredzone nounwind
define dso_local i8* @ip4addr_ntoa(%struct.ip4_addr* nocapture readonly) local_unnamed_addr #0 !dbg !68 {
  %2 = alloca i32, align 4
  %3 = alloca [3 x i8], align 1
  %4 = bitcast i32* %2 to i8*, !dbg !598
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #6, !dbg !598
  %5 = getelementptr inbounds [3 x i8], [3 x i8]* %3, i64 0, i64 0, !dbg !599
  call void @llvm.lifetime.start.p0i8(i64 3, i8* nonnull %5) #6, !dbg !599
  %6 = getelementptr inbounds %struct.ip4_addr, %struct.ip4_addr* %0, i64 0, i32 0, !dbg !601
  %7 = load i32, i32* %6, align 4, !dbg !601, !tbaa !561
  store i32 %7, i32* %2, align 4, !dbg !603, !tbaa !377
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !607
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !609
  br label %8, !dbg !609

; <label>:8:                                      ; preds = %45, %1
  %9 = phi i32 [ 0, %1 ], [ %43, %45 ]
  %10 = phi i8 [ 0, %1 ], [ %48, %45 ]
  %11 = phi i8* [ %4, %1 ], [ %47, %45 ]
  %12 = phi i8* [ getelementptr inbounds ([16 x i8], [16 x i8]* @ip4addr_ntoa.str, i64 0, i64 0), %1 ], [ %46, %45 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !611
  br label %13, !dbg !611

; <label>:13:                                     ; preds = %13, %8
  %14 = phi i8 [ 0, %8 ], [ %19, %13 ], !dbg !614
  %15 = load i8, i8* %11, align 1, !dbg !616, !tbaa !231
  %16 = urem i8 %15, 10, !dbg !617
  %17 = udiv i8 %15, 10, !dbg !619
  store i8 %17, i8* %11, align 1, !dbg !619, !tbaa !231
  %18 = or i8 %16, 48, !dbg !620
  %19 = add i8 %14, 1, !dbg !621
  %20 = zext i8 %14 to i64, !dbg !622
  %21 = getelementptr inbounds [3 x i8], [3 x i8]* %3, i64 0, i64 %20, !dbg !622
  store i8 %18, i8* %21, align 1, !dbg !623, !tbaa !231
  %22 = load i8, i8* %11, align 1, !dbg !624, !tbaa !231
  %23 = icmp eq i8 %22, 0, !dbg !625
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !625
  br i1 %23, label %24, label %13, !dbg !625, !llvm.loop !626

; <label>:24:                                     ; preds = %13
  %25 = icmp eq i8 %19, 0, !dbg !629
  %26 = add nsw i32 %9, 1, !dbg !630
  %27 = icmp sgt i32 %9, 15, !dbg !630
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !629
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !632
  br i1 %25, label %41, label %28, !dbg !629

; <label>:28:                                     ; preds = %24, %33
  %29 = phi i64 [ %40, %33 ], [ %20, %24 ]
  %30 = phi i1 [ %39, %33 ], [ %27, %24 ]
  %31 = phi i32 [ %38, %33 ], [ %26, %24 ]
  %32 = phi i8* [ %36, %33 ], [ %12, %24 ]
  br i1 %30, label %51, label %33, !dbg !634

; <label>:33:                                     ; preds = %28
  %34 = getelementptr inbounds [3 x i8], [3 x i8]* %3, i64 0, i64 %29, !dbg !635
  %35 = load i8, i8* %34, align 1, !dbg !635, !tbaa !231
  %36 = getelementptr inbounds i8, i8* %32, i64 1, !dbg !636
  store i8 %35, i8* %32, align 1, !dbg !637, !tbaa !231
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !629
  %37 = icmp eq i64 %29, 0, !dbg !629
  %38 = add nsw i32 %31, 1, !dbg !630
  %39 = icmp sgt i32 %31, 15, !dbg !630
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !629
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !632
  %40 = add nsw i64 %29, -1, !dbg !638
  br i1 %37, label %41, label %28, !dbg !629, !llvm.loop !639

; <label>:41:                                     ; preds = %33, %24
  %42 = phi i8* [ %12, %24 ], [ %36, %33 ], !dbg !632
  %43 = phi i32 [ %26, %24 ], [ %38, %33 ], !dbg !630
  %44 = phi i1 [ %27, %24 ], [ %39, %33 ], !dbg !630
  br i1 %44, label %51, label %45, !dbg !642

; <label>:45:                                     ; preds = %41
  %46 = getelementptr inbounds i8, i8* %42, i64 1, !dbg !643
  store i8 46, i8* %42, align 1, !dbg !644, !tbaa !231
  %47 = getelementptr inbounds i8, i8* %11, i64 1, !dbg !645
  %48 = add nuw nsw i8 %10, 1, !dbg !646
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !647
  %49 = icmp ult i8 %48, 4, !dbg !648
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !609
  br i1 %49, label %8, label %50, !dbg !609, !llvm.loop !649

; <label>:50:                                     ; preds = %45
  store i8 0, i8* %42, align 1, !dbg !652, !tbaa !231
  br label %51, !dbg !653

; <label>:51:                                     ; preds = %41, %28, %50
  %52 = phi i8* [ getelementptr inbounds ([16 x i8], [16 x i8]* @ip4addr_ntoa.str, i64 0, i64 0), %50 ], [ null, %28 ], [ null, %41 ], !dbg !654
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !655
  call void @llvm.lifetime.end.p0i8(i64 3, i8* nonnull %5) #6, !dbg !656
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #6, !dbg !656
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !656
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !657
  ret i8* %52, !dbg !657
}

; Function Attrs: noredzone nounwind
define dso_local i8* @ip4addr_ntoa_r(%struct.ip4_addr* nocapture readonly, i8*, i32) local_unnamed_addr #0 !dbg !577 {
  %4 = alloca i32, align 4
  %5 = alloca [3 x i8], align 1
  %6 = bitcast i32* %4 to i8*, !dbg !661
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #6, !dbg !661
  %7 = getelementptr inbounds [3 x i8], [3 x i8]* %5, i64 0, i64 0, !dbg !662
  call void @llvm.lifetime.start.p0i8(i64 3, i8* nonnull %7) #6, !dbg !662
  %8 = getelementptr inbounds %struct.ip4_addr, %struct.ip4_addr* %0, i64 0, i32 0, !dbg !665
  %9 = load i32, i32* %8, align 4, !dbg !665, !tbaa !561
  store i32 %9, i32* %4, align 4, !dbg !667, !tbaa !377
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !671
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !650
  br label %10, !dbg !650

; <label>:10:                                     ; preds = %3, %47
  %11 = phi i32 [ 0, %3 ], [ %45, %47 ]
  %12 = phi i8 [ 0, %3 ], [ %50, %47 ]
  %13 = phi i8* [ %6, %3 ], [ %49, %47 ]
  %14 = phi i8* [ %1, %3 ], [ %48, %47 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !627
  br label %15, !dbg !627

; <label>:15:                                     ; preds = %15, %10
  %16 = phi i8 [ 0, %10 ], [ %21, %15 ], !dbg !673
  %17 = load i8, i8* %13, align 1, !dbg !674, !tbaa !231
  %18 = urem i8 %17, 10, !dbg !675
  %19 = udiv i8 %17, 10, !dbg !677
  store i8 %19, i8* %13, align 1, !dbg !677, !tbaa !231
  %20 = or i8 %18, 48, !dbg !678
  %21 = add i8 %16, 1, !dbg !679
  %22 = zext i8 %16 to i64, !dbg !680
  %23 = getelementptr inbounds [3 x i8], [3 x i8]* %5, i64 0, i64 %22, !dbg !680
  store i8 %20, i8* %23, align 1, !dbg !681, !tbaa !231
  %24 = load i8, i8* %13, align 1, !dbg !682, !tbaa !231
  %25 = icmp eq i8 %24, 0, !dbg !683
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !683
  br i1 %25, label %26, label %15, !dbg !683, !llvm.loop !626

; <label>:26:                                     ; preds = %15
  %27 = icmp eq i8 %21, 0, !dbg !640
  %28 = add nsw i32 %11, 1, !dbg !684
  %29 = icmp sge i32 %11, %2, !dbg !684
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !640
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !685
  br i1 %27, label %43, label %30, !dbg !640

; <label>:30:                                     ; preds = %26, %35
  %31 = phi i64 [ %42, %35 ], [ %22, %26 ]
  %32 = phi i1 [ %41, %35 ], [ %29, %26 ]
  %33 = phi i32 [ %40, %35 ], [ %28, %26 ]
  %34 = phi i8* [ %38, %35 ], [ %14, %26 ]
  br i1 %32, label %53, label %35, !dbg !686

; <label>:35:                                     ; preds = %30
  %36 = getelementptr inbounds [3 x i8], [3 x i8]* %5, i64 0, i64 %31, !dbg !687
  %37 = load i8, i8* %36, align 1, !dbg !687, !tbaa !231
  %38 = getelementptr inbounds i8, i8* %34, i64 1, !dbg !688
  store i8 %37, i8* %34, align 1, !dbg !689, !tbaa !231
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !640
  %39 = icmp eq i64 %31, 0, !dbg !640
  %40 = add nsw i32 %33, 1, !dbg !684
  %41 = icmp sge i32 %33, %2, !dbg !684
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !640
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !685
  %42 = add nsw i64 %31, -1, !dbg !690
  br i1 %39, label %43, label %30, !dbg !640, !llvm.loop !639

; <label>:43:                                     ; preds = %35, %26
  %44 = phi i8* [ %14, %26 ], [ %38, %35 ], !dbg !685
  %45 = phi i32 [ %28, %26 ], [ %40, %35 ], !dbg !684
  %46 = phi i1 [ %29, %26 ], [ %41, %35 ], !dbg !684
  br i1 %46, label %53, label %47, !dbg !691

; <label>:47:                                     ; preds = %43
  %48 = getelementptr inbounds i8, i8* %44, i64 1, !dbg !692
  store i8 46, i8* %44, align 1, !dbg !693, !tbaa !231
  %49 = getelementptr inbounds i8, i8* %13, i64 1, !dbg !694
  %50 = add nuw nsw i8 %12, 1, !dbg !695
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !696
  %51 = icmp ult i8 %50, 4, !dbg !697
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !650
  br i1 %51, label %10, label %52, !dbg !650, !llvm.loop !649

; <label>:52:                                     ; preds = %47
  store i8 0, i8* %44, align 1, !dbg !698, !tbaa !231
  br label %53, !dbg !699

; <label>:53:                                     ; preds = %43, %30, %52
  %54 = phi i8* [ %1, %52 ], [ null, %30 ], [ null, %43 ], !dbg !700
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !701
  call void @llvm.lifetime.end.p0i8(i64 3, i8* nonnull %7) #6, !dbg !704
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #6, !dbg !704
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !704
  ret i8* %54, !dbg !704
}

; Function Attrs: noredzone
declare dso_local i32 @isdigit(i32) #3

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #6

; Function Attrs: noredzone
declare dso_local void @_uk_vprintk(i32, i8*, i8*, i32, i8*, %struct.__va_list_tag*) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #6

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noredzone noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin noredzone nounwind }
attributes #8 = { nobuiltin noredzone }
attributes #9 = { nobuiltin noredzone noreturn nounwind }

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
!244 = !DILocation(line: 0, scope: !245)
!245 = distinct !DILexicalBlock(scope: !216, file: !3, line: 65, column: 29)
!246 = !DILocation(line: 85, column: 1, scope: !113)
!247 = distinct !DISubprogram(name: "ip4_addr_netmask_valid", scope: !3, file: !3, line: 93, type: !248, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !250)
!248 = !DISubroutineType(types: !249)
!249 = !{!35, !19}
!250 = !{!251, !252, !253}
!251 = !DILocalVariable(name: "netmask", arg: 1, scope: !247, file: !3, line: 93, type: !19)
!252 = !DILocalVariable(name: "mask", scope: !247, file: !3, line: 95, type: !19)
!253 = !DILocalVariable(name: "nm_hostorder", scope: !247, file: !3, line: 96, type: !19)
!254 = !DILocation(line: 93, column: 30, scope: !247)
!255 = !DILocation(line: 96, column: 24, scope: !247)
!256 = !DILocation(line: 96, column: 9, scope: !247)
!257 = !DILocation(line: 95, column: 9, scope: !247)
!258 = !DILocation(line: 99, column: 8, scope: !259)
!259 = distinct !DILexicalBlock(scope: !247, file: !3, line: 99, column: 3)
!260 = !DILocation(line: 99, column: 3, scope: !259)
!261 = !DILocation(line: 100, column: 23, scope: !262)
!262 = distinct !DILexicalBlock(scope: !263, file: !3, line: 100, column: 9)
!263 = distinct !DILexicalBlock(scope: !264, file: !3, line: 99, column: 50)
!264 = distinct !DILexicalBlock(scope: !259, file: !3, line: 99, column: 3)
!265 = !DILocation(line: 100, column: 31, scope: !262)
!266 = !DILocation(line: 100, column: 9, scope: !263)
!267 = !DILocation(line: 99, column: 43, scope: !264)
!268 = !DILocation(line: 99, column: 3, scope: !264)
!269 = !DILocation(line: 105, column: 3, scope: !247)
!270 = !DILocation(line: 105, column: 3, scope: !271)
!271 = distinct !DILexicalBlock(scope: !247, file: !3, line: 105, column: 3)
!272 = !DILocation(line: 106, column: 23, scope: !273)
!273 = distinct !DILexicalBlock(scope: !274, file: !3, line: 106, column: 9)
!274 = distinct !DILexicalBlock(scope: !275, file: !3, line: 105, column: 33)
!275 = distinct !DILexicalBlock(scope: !271, file: !3, line: 105, column: 3)
!276 = !DILocation(line: 106, column: 31, scope: !273)
!277 = !DILocation(line: 106, column: 9, scope: !274)
!278 = !DILocation(line: 105, column: 26, scope: !275)
!279 = !DILocation(line: 105, column: 3, scope: !275)
!280 = !DILocation(line: 105, column: 15, scope: !275)
!281 = distinct !{!281, !270, !282}
!282 = !DILocation(line: 110, column: 3, scope: !271)
!283 = !DILocation(line: 0, scope: !247)
!284 = !DILocation(line: 0, scope: !285)
!285 = distinct !DILexicalBlock(scope: !273, file: !3, line: 106, column: 37)
!286 = !DILocation(line: 113, column: 1, scope: !247)
!287 = !DILocation(line: 99, column: 32, scope: !264)
!288 = distinct !{!288, !260, !289}
!289 = !DILocation(line: 103, column: 3, scope: !259)
!290 = distinct !DISubprogram(name: "ipaddr_addr", scope: !3, file: !3, line: 123, type: !291, isLocal: false, isDefinition: true, scopeLine: 124, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !293)
!291 = !DISubroutineType(types: !292)
!292 = !{!19, !83}
!293 = !{!294, !295}
!294 = !DILocalVariable(name: "cp", arg: 1, scope: !290, file: !3, line: 123, type: !83)
!295 = !DILocalVariable(name: "val", scope: !290, file: !3, line: 125, type: !27)
!296 = !DILocation(line: 123, column: 25, scope: !290)
!297 = !DILocation(line: 125, column: 3, scope: !290)
!298 = !DILocation(line: 125, column: 14, scope: !290)
!299 = !DILocation(line: 127, column: 7, scope: !300)
!300 = distinct !DILexicalBlock(scope: !290, file: !3, line: 127, column: 7)
!301 = !DILocation(line: 127, column: 7, scope: !290)
!302 = !DILocation(line: 128, column: 12, scope: !303)
!303 = distinct !DILexicalBlock(scope: !300, file: !3, line: 127, column: 31)
!304 = !DILocation(line: 0, scope: !303)
!305 = !DILocation(line: 131, column: 1, scope: !290)
!306 = distinct !DISubprogram(name: "ip4addr_aton", scope: !3, file: !3, line: 145, type: !307, isLocal: false, isDefinition: true, scopeLine: 146, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !310)
!307 = !DISubroutineType(types: !308)
!308 = !{!33, !83, !309}
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!310 = !{!311, !312, !313, !314, !315, !316, !317}
!311 = !DILocalVariable(name: "cp", arg: 1, scope: !306, file: !3, line: 145, type: !83)
!312 = !DILocalVariable(name: "addr", arg: 2, scope: !306, file: !3, line: 145, type: !309)
!313 = !DILocalVariable(name: "val", scope: !306, file: !3, line: 147, type: !19)
!314 = !DILocalVariable(name: "base", scope: !306, file: !3, line: 148, type: !35)
!315 = !DILocalVariable(name: "c", scope: !306, file: !3, line: 149, type: !38)
!316 = !DILocalVariable(name: "parts", scope: !306, file: !3, line: 150, type: !60)
!317 = !DILocalVariable(name: "pp", scope: !306, file: !3, line: 151, type: !318)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!319 = !DILocalVariable(name: "ret", scope: !320, file: !20, line: 232, type: !332)
!320 = distinct !DISubprogram(name: "_isdigit_flexos_wrapper", scope: !20, file: !20, line: 230, type: !321, isLocal: true, isDefinition: true, scopeLine: 231, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !323)
!321 = !DISubroutineType(types: !322)
!322 = !{!33, !33}
!323 = !{!324, !319, !325, !331}
!324 = !DILocalVariable(name: "c", arg: 1, scope: !320, file: !20, line: 230, type: !33)
!325 = !DILocalVariable(name: "tid", scope: !326, file: !20, line: 233, type: !21)
!326 = distinct !DILexicalBlock(scope: !327, file: !20, line: 233, column: 2)
!327 = distinct !DILexicalBlock(scope: !328, file: !20, line: 233, column: 2)
!328 = distinct !DILexicalBlock(scope: !329, file: !20, line: 233, column: 2)
!329 = distinct !DILexicalBlock(scope: !330, file: !20, line: 233, column: 2)
!330 = distinct !DILexicalBlock(scope: !320, file: !20, line: 233, column: 2)
!331 = !DILocalVariable(name: "_ret", scope: !326, file: !20, line: 233, type: !40)
!332 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !33)
!333 = !DILocation(line: 232, column: 15, scope: !320, inlinedAt: !334)
!334 = distinct !DILocation(line: 175, column: 11, scope: !335)
!335 = distinct !DILexicalBlock(scope: !336, file: !3, line: 175, column: 11)
!336 = distinct !DILexicalBlock(scope: !337, file: !3, line: 174, column: 14)
!337 = distinct !DILexicalBlock(scope: !338, file: !3, line: 174, column: 5)
!338 = distinct !DILexicalBlock(scope: !339, file: !3, line: 174, column: 5)
!339 = distinct !DILexicalBlock(scope: !340, file: !3, line: 154, column: 12)
!340 = distinct !DILexicalBlock(scope: !341, file: !3, line: 154, column: 3)
!341 = distinct !DILexicalBlock(scope: !306, file: !3, line: 154, column: 3)
!342 = !DILocation(line: 232, column: 15, scope: !320, inlinedAt: !343)
!343 = distinct !DILocation(line: 160, column: 10, scope: !344)
!344 = distinct !DILexicalBlock(scope: !339, file: !3, line: 160, column: 9)
!345 = !DILocation(line: 145, column: 26, scope: !306)
!346 = !DILocation(line: 145, column: 42, scope: !306)
!347 = !DILocation(line: 150, column: 3, scope: !306)
!348 = !DILocation(line: 150, column: 9, scope: !306)
!349 = !DILocation(line: 151, column: 15, scope: !306)
!350 = !DILocation(line: 151, column: 10, scope: !306)
!351 = !DILocation(line: 153, column: 7, scope: !306)
!352 = !DILocation(line: 149, column: 8, scope: !306)
!353 = !DILocation(line: 154, column: 3, scope: !306)
!354 = !DILocation(line: 0, scope: !355)
!355 = distinct !DILexicalBlock(scope: !356, file: !3, line: 185, column: 19)
!356 = distinct !DILexicalBlock(scope: !339, file: !3, line: 185, column: 9)
!357 = !DILocation(line: 232, column: 2, scope: !320, inlinedAt: !343)
!358 = !DILocation(line: 120, column: 2, scope: !359, inlinedAt: !365)
!359 = distinct !DISubprogram(name: "ukarch_read_sp", scope: !360, file: !360, line: 116, type: !361, isLocal: true, isDefinition: true, scopeLine: 117, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !363)
!360 = !DIFile(filename: "/root/.unikraft/unikraft/arch/x86/x86_64/include/uk/asm/lcpu.h", directory: "/root/.unikraft/apps/redis/build")
!361 = !DISubroutineType(types: !362)
!362 = !{!39}
!363 = !{!364}
!364 = !DILocalVariable(name: "sp", scope: !359, file: !360, line: 118, type: !39)
!365 = distinct !DILocation(line: 233, column: 2, scope: !329, inlinedAt: !343)
!366 = !{i32 521559}
!367 = !DILocation(line: 118, column: 16, scope: !359, inlinedAt: !365)
!368 = !DILocation(line: 121, column: 2, scope: !359, inlinedAt: !365)
!369 = !DILocation(line: 233, column: 2, scope: !329, inlinedAt: !343)
!370 = !DILocation(line: 120, column: 2, scope: !359, inlinedAt: !371)
!371 = distinct !DILocation(line: 233, column: 2, scope: !329, inlinedAt: !343)
!372 = !DILocation(line: 118, column: 16, scope: !359, inlinedAt: !371)
!373 = !DILocation(line: 121, column: 2, scope: !359, inlinedAt: !371)
!374 = !DILocation(line: 233, column: 2, scope: !330, inlinedAt: !343)
!375 = !DILocation(line: 233, column: 2, scope: !376, inlinedAt: !343)
!376 = distinct !DILexicalBlock(scope: !329, file: !20, line: 233, column: 2)
!377 = !{!378, !378, i64 0}
!378 = !{!"int", !222, i64 0}
!379 = !DILocation(line: 120, column: 2, scope: !359, inlinedAt: !380)
!380 = distinct !DILocation(line: 49, column: 21, scope: !381, inlinedAt: !387)
!381 = distinct !DISubprogram(name: "uk_thread_get_tid", scope: !382, file: !382, line: 47, type: !383, isLocal: true, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !385)
!382 = !DIFile(filename: "/root/.unikraft/unikraft/lib/flexos-core/include/flexos/impl/intelpku-impl.h", directory: "/root/.unikraft/apps/redis/build")
!383 = !DISubroutineType(types: !384)
!384 = !{!33}
!385 = !{!386}
!386 = !DILocalVariable(name: "sp", scope: !381, file: !382, line: 49, type: !39)
!387 = distinct !DILocation(line: 233, column: 2, scope: !326, inlinedAt: !343)
!388 = !DILocation(line: 118, column: 16, scope: !359, inlinedAt: !380)
!389 = !DILocation(line: 121, column: 2, scope: !359, inlinedAt: !380)
!390 = !DILocation(line: 49, column: 16, scope: !381, inlinedAt: !387)
!391 = !DILocation(line: 50, column: 19, scope: !381, inlinedAt: !387)
!392 = !DILocation(line: 50, column: 11, scope: !381, inlinedAt: !387)
!393 = !DILocation(line: 50, column: 9, scope: !381, inlinedAt: !387)
!394 = !DILocation(line: 50, column: 2, scope: !381, inlinedAt: !387)
!395 = !DILocation(line: 233, column: 2, scope: !326, inlinedAt: !343)
!396 = !{i32 -2146778997, i32 -2146778984, i32 -2146778959, i32 -2146778935, i32 -2146778910, i32 -2146778835, i32 -2146778810, i32 -2146778666, i32 -2146775562, i32 -2146775473, i32 -2146775352, i32 -2146775257, i32 -2146775156, i32 -2146775129, i32 -2146775046, i32 -2146774957, i32 -2146774836, i32 -2146774736, i32 -2146774630, i32 -2146774522, i32 -2146778378, i32 -2146778325, i32 -2146778294, i32 -2146778263, i32 -2146778242, i32 -2146778220, i32 -2146778171, i32 -2146778150, i32 -2146774439, i32 -2146774350, i32 -2146774229, i32 -2146774130, i32 -2146774024, i32 -2146773922, i32 -2146773889, i32 -2146773816, i32 -2146773748, i32 -2146777846, i32 -2146777787, i32 -2146777734, i32 -2146777703, i32 -2146777672, i32 -2146777651, i32 -2146777629, i32 -2146777580, i32 -2146777559, i32 -2146773705, i32 -2146773616, i32 -2146773495, i32 -2146773396, i32 -2146773290, i32 -2146773188, i32 -2146773155, i32 -2146773072, i32 -2146772983, i32 -2146772862, i32 -2146772762, i32 -2146772736, i32 -2146772633, i32 -2146772607, i32 -2146777301, i32 -2146777234, i32 -2146777209, i32 -2146777145, i32 -2146777063, i32 -2146777040, i32 -2146777015, i32 -2146776990}
!397 = !DILocation(line: 233, column: 2, scope: !398, inlinedAt: !343)
!398 = distinct !DILexicalBlock(scope: !399, file: !20, line: 233, column: 2)
!399 = distinct !DILexicalBlock(scope: !326, file: !20, line: 233, column: 2)
!400 = !{i32 -2146776009, i32 -2146775992}
!401 = !DILocation(line: 234, column: 9, scope: !320, inlinedAt: !343)
!402 = !DILocation(line: 235, column: 1, scope: !320, inlinedAt: !343)
!403 = !DILocation(line: 234, column: 2, scope: !320, inlinedAt: !343)
!404 = !DILocation(line: 160, column: 10, scope: !344)
!405 = !DILocation(line: 160, column: 9, scope: !339)
!406 = !DILocation(line: 147, column: 9, scope: !306)
!407 = !DILocation(line: 148, column: 8, scope: !306)
!408 = !DILocation(line: 165, column: 11, scope: !409)
!409 = distinct !DILexicalBlock(scope: !339, file: !3, line: 165, column: 9)
!410 = !DILocation(line: 165, column: 9, scope: !339)
!411 = !DILocation(line: 166, column: 12, scope: !412)
!412 = distinct !DILexicalBlock(scope: !409, file: !3, line: 165, column: 19)
!413 = !DILocation(line: 166, column: 11, scope: !412)
!414 = !DILocation(line: 167, column: 13, scope: !415)
!415 = distinct !DILexicalBlock(scope: !412, file: !3, line: 167, column: 11)
!416 = !DILocation(line: 167, column: 20, scope: !415)
!417 = !DILocation(line: 167, column: 25, scope: !415)
!418 = !DILocation(line: 167, column: 11, scope: !412)
!419 = !DILocation(line: 169, column: 14, scope: !420)
!420 = distinct !DILexicalBlock(scope: !415, file: !3, line: 167, column: 33)
!421 = !DILocation(line: 169, column: 13, scope: !420)
!422 = !DILocation(line: 170, column: 7, scope: !420)
!423 = !DILocation(line: 174, column: 5, scope: !339)
!424 = !DILocation(line: 0, scope: !306)
!425 = !DILocation(line: 0, scope: !426)
!426 = distinct !DILexicalBlock(scope: !335, file: !3, line: 175, column: 28)
!427 = !DILocation(line: 232, column: 2, scope: !320, inlinedAt: !334)
!428 = !DILocation(line: 120, column: 2, scope: !359, inlinedAt: !429)
!429 = distinct !DILocation(line: 233, column: 2, scope: !329, inlinedAt: !334)
!430 = !DILocation(line: 118, column: 16, scope: !359, inlinedAt: !429)
!431 = !DILocation(line: 121, column: 2, scope: !359, inlinedAt: !429)
!432 = !DILocation(line: 233, column: 2, scope: !329, inlinedAt: !334)
!433 = !DILocation(line: 120, column: 2, scope: !359, inlinedAt: !434)
!434 = distinct !DILocation(line: 233, column: 2, scope: !329, inlinedAt: !334)
!435 = !DILocation(line: 118, column: 16, scope: !359, inlinedAt: !434)
!436 = !DILocation(line: 121, column: 2, scope: !359, inlinedAt: !434)
!437 = !DILocation(line: 233, column: 2, scope: !330, inlinedAt: !334)
!438 = !DILocation(line: 233, column: 2, scope: !376, inlinedAt: !334)
!439 = !DILocation(line: 120, column: 2, scope: !359, inlinedAt: !440)
!440 = distinct !DILocation(line: 49, column: 21, scope: !381, inlinedAt: !441)
!441 = distinct !DILocation(line: 233, column: 2, scope: !326, inlinedAt: !334)
!442 = !DILocation(line: 118, column: 16, scope: !359, inlinedAt: !440)
!443 = !DILocation(line: 121, column: 2, scope: !359, inlinedAt: !440)
!444 = !DILocation(line: 49, column: 16, scope: !381, inlinedAt: !441)
!445 = !DILocation(line: 50, column: 19, scope: !381, inlinedAt: !441)
!446 = !DILocation(line: 50, column: 11, scope: !381, inlinedAt: !441)
!447 = !DILocation(line: 50, column: 9, scope: !381, inlinedAt: !441)
!448 = !DILocation(line: 50, column: 2, scope: !381, inlinedAt: !441)
!449 = !DILocation(line: 233, column: 2, scope: !326, inlinedAt: !334)
!450 = !DILocation(line: 233, column: 2, scope: !398, inlinedAt: !334)
!451 = !DILocation(line: 234, column: 9, scope: !320, inlinedAt: !334)
!452 = !DILocation(line: 235, column: 1, scope: !320, inlinedAt: !334)
!453 = !DILocation(line: 234, column: 2, scope: !320, inlinedAt: !334)
!454 = !DILocation(line: 175, column: 11, scope: !335)
!455 = !DILocation(line: 175, column: 11, scope: !336)
!456 = !DILocation(line: 176, column: 20, scope: !426)
!457 = !DILocation(line: 176, column: 38, scope: !426)
!458 = !DILocation(line: 176, column: 40, scope: !426)
!459 = !DILocation(line: 176, column: 28, scope: !426)
!460 = !DILocation(line: 177, column: 14, scope: !426)
!461 = !DILocation(line: 178, column: 7, scope: !426)
!462 = !DILocation(line: 178, column: 29, scope: !463)
!463 = distinct !DILexicalBlock(scope: !335, file: !3, line: 178, column: 18)
!464 = !DILocation(line: 178, column: 32, scope: !463)
!465 = !DILocation(line: 178, column: 18, scope: !335)
!466 = !DILocation(line: 179, column: 20, scope: !467)
!467 = distinct !DILexicalBlock(scope: !463, file: !3, line: 178, column: 50)
!468 = !DILocation(line: 179, column: 36, scope: !467)
!469 = !DILocation(line: 179, column: 38, scope: !467)
!470 = !DILocation(line: 179, column: 46, scope: !467)
!471 = !DILocation(line: 179, column: 43, scope: !467)
!472 = !DILocation(line: 179, column: 26, scope: !467)
!473 = !DILocation(line: 180, column: 14, scope: !467)
!474 = !DILocation(line: 0, scope: !467)
!475 = !DILocation(line: 174, column: 5, scope: !337)
!476 = distinct !{!476, !477, !478}
!477 = !DILocation(line: 174, column: 5, scope: !338)
!478 = !DILocation(line: 184, column: 5, scope: !338)
!479 = !DILocation(line: 185, column: 11, scope: !356)
!480 = !DILocation(line: 185, column: 9, scope: !339)
!481 = !DILocation(line: 192, column: 14, scope: !482)
!482 = distinct !DILexicalBlock(scope: !355, file: !3, line: 192, column: 11)
!483 = !DILocation(line: 192, column: 11, scope: !355)
!484 = !DILocation(line: 195, column: 10, scope: !355)
!485 = !DILocation(line: 195, column: 13, scope: !355)
!486 = !DILocation(line: 196, column: 12, scope: !355)
!487 = !DILocation(line: 196, column: 11, scope: !355)
!488 = !DILocation(line: 154, column: 3, scope: !340)
!489 = distinct !{!489, !490, !491}
!490 = !DILocation(line: 154, column: 3, scope: !341)
!491 = !DILocation(line: 200, column: 3, scope: !341)
!492 = !DILocation(line: 204, column: 9, scope: !493)
!493 = distinct !DILexicalBlock(scope: !306, file: !3, line: 204, column: 7)
!494 = !DILocation(line: 204, column: 17, scope: !493)
!495 = !DILocation(line: 204, column: 21, scope: !493)
!496 = !DILocation(line: 204, column: 7, scope: !306)
!497 = !DILocation(line: 211, column: 14, scope: !306)
!498 = !DILocation(line: 211, column: 3, scope: !306)
!499 = !DILocation(line: 220, column: 15, scope: !500)
!500 = distinct !DILexicalBlock(scope: !501, file: !3, line: 220, column: 11)
!501 = distinct !DILexicalBlock(scope: !306, file: !3, line: 211, column: 27)
!502 = !DILocation(line: 220, column: 11, scope: !501)
!503 = !DILocation(line: 223, column: 11, scope: !504)
!504 = distinct !DILexicalBlock(scope: !501, file: !3, line: 223, column: 11)
!505 = !DILocation(line: 223, column: 20, scope: !504)
!506 = !DILocation(line: 223, column: 11, scope: !501)
!507 = !DILocation(line: 226, column: 23, scope: !501)
!508 = !DILocation(line: 226, column: 11, scope: !501)
!509 = !DILocation(line: 227, column: 7, scope: !501)
!510 = !DILocation(line: 230, column: 15, scope: !511)
!511 = distinct !DILexicalBlock(scope: !501, file: !3, line: 230, column: 11)
!512 = !DILocation(line: 230, column: 11, scope: !501)
!513 = !DILocation(line: 233, column: 12, scope: !514)
!514 = distinct !DILexicalBlock(scope: !501, file: !3, line: 233, column: 11)
!515 = !DILocation(line: 233, column: 21, scope: !514)
!516 = !DILocation(line: 233, column: 29, scope: !514)
!517 = !DILocation(line: 233, column: 33, scope: !514)
!518 = !DILocation(line: 233, column: 42, scope: !514)
!519 = !DILocation(line: 233, column: 11, scope: !501)
!520 = !DILocation(line: 236, column: 24, scope: !501)
!521 = !DILocation(line: 236, column: 43, scope: !501)
!522 = !DILocation(line: 236, column: 31, scope: !501)
!523 = !DILocation(line: 236, column: 11, scope: !501)
!524 = !DILocation(line: 237, column: 7, scope: !501)
!525 = !DILocation(line: 240, column: 15, scope: !526)
!526 = distinct !DILexicalBlock(scope: !501, file: !3, line: 240, column: 11)
!527 = !DILocation(line: 240, column: 11, scope: !501)
!528 = !DILocation(line: 243, column: 12, scope: !529)
!529 = distinct !DILexicalBlock(scope: !501, file: !3, line: 243, column: 11)
!530 = !DILocation(line: 243, column: 21, scope: !529)
!531 = !DILocation(line: 243, column: 29, scope: !529)
!532 = !DILocation(line: 243, column: 33, scope: !529)
!533 = !DILocation(line: 243, column: 42, scope: !529)
!534 = !DILocation(line: 243, column: 50, scope: !529)
!535 = !DILocation(line: 243, column: 54, scope: !529)
!536 = !DILocation(line: 243, column: 63, scope: !529)
!537 = !DILocation(line: 243, column: 11, scope: !501)
!538 = !DILocation(line: 246, column: 24, scope: !501)
!539 = !DILocation(line: 246, column: 43, scope: !501)
!540 = !DILocation(line: 246, column: 62, scope: !501)
!541 = !DILocation(line: 246, column: 31, scope: !501)
!542 = !DILocation(line: 246, column: 50, scope: !501)
!543 = !DILocation(line: 246, column: 11, scope: !501)
!544 = !DILocation(line: 247, column: 7, scope: !501)
!545 = !DILocation(line: 249, column: 7, scope: !546)
!546 = distinct !DILexicalBlock(scope: !547, file: !3, line: 249, column: 7)
!547 = distinct !DILexicalBlock(scope: !548, file: !3, line: 249, column: 7)
!548 = distinct !DILexicalBlock(scope: !549, file: !3, line: 249, column: 7)
!549 = distinct !DILexicalBlock(scope: !501, file: !3, line: 249, column: 7)
!550 = !DILocation(line: 249, column: 7, scope: !551)
!551 = distinct !DILexicalBlock(scope: !552, file: !3, line: 249, column: 7)
!552 = distinct !DILexicalBlock(scope: !553, file: !3, line: 249, column: 7)
!553 = distinct !DILexicalBlock(scope: !546, file: !3, line: 249, column: 7)
!554 = !DILocation(line: 0, scope: !501)
!555 = !DILocation(line: 252, column: 7, scope: !556)
!556 = distinct !DILexicalBlock(scope: !306, file: !3, line: 252, column: 7)
!557 = !DILocation(line: 0, scope: !339)
!558 = !DILocation(line: 252, column: 7, scope: !306)
!559 = !DILocation(line: 253, column: 5, scope: !560)
!560 = distinct !DILexicalBlock(scope: !556, file: !3, line: 252, column: 13)
!561 = !{!562, !378, i64 0}
!562 = !{!"ip4_addr", !378, i64 0}
!563 = !DILocation(line: 254, column: 3, scope: !560)
!564 = !DILocation(line: 0, scope: !565)
!565 = distinct !DILexicalBlock(scope: !344, file: !3, line: 160, column: 27)
!566 = !DILocation(line: 256, column: 1, scope: !306)
!567 = !DILocation(line: 194, column: 43, scope: !79)
!568 = !DILocation(line: 196, column: 2, scope: !79)
!569 = !DILocation(line: 196, column: 10, scope: !79)
!570 = !DILocation(line: 197, column: 2, scope: !79)
!571 = !DILocation(line: 198, column: 2, scope: !572)
!572 = distinct !DILexicalBlock(scope: !573, file: !80, line: 198, column: 2)
!573 = distinct !DILexicalBlock(scope: !79, file: !80, line: 198, column: 2)
!574 = !DILocation(line: 199, column: 2, scope: !79)
!575 = !DILocation(line: 200, column: 1, scope: !79)
!576 = !DILocalVariable(name: "inv", scope: !577, file: !3, line: 286, type: !591)
!577 = distinct !DISubprogram(name: "ip4addr_ntoa_r", scope: !3, file: !3, line: 283, type: !578, isLocal: false, isDefinition: true, scopeLine: 284, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !580)
!578 = !DISubroutineType(types: !579)
!579 = !{!71, !25, !71, !33}
!580 = !{!581, !582, !583, !584, !576, !585, !586, !587, !588, !589, !590}
!581 = !DILocalVariable(name: "addr", arg: 1, scope: !577, file: !3, line: 283, type: !25)
!582 = !DILocalVariable(name: "buf", arg: 2, scope: !577, file: !3, line: 283, type: !71)
!583 = !DILocalVariable(name: "buflen", arg: 3, scope: !577, file: !3, line: 283, type: !33)
!584 = !DILocalVariable(name: "s_addr", scope: !577, file: !3, line: 285, type: !19)
!585 = !DILocalVariable(name: "rp", scope: !577, file: !3, line: 287, type: !71)
!586 = !DILocalVariable(name: "ap", scope: !577, file: !3, line: 288, type: !34)
!587 = !DILocalVariable(name: "rem", scope: !577, file: !3, line: 289, type: !35)
!588 = !DILocalVariable(name: "n", scope: !577, file: !3, line: 290, type: !35)
!589 = !DILocalVariable(name: "i", scope: !577, file: !3, line: 291, type: !35)
!590 = !DILocalVariable(name: "len", scope: !577, file: !3, line: 292, type: !33)
!591 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 24, elements: !127)
!592 = !DILocation(line: 286, column: 8, scope: !577, inlinedAt: !593)
!593 = distinct !DILocation(line: 270, column: 10, scope: !68)
!594 = !DILocation(line: 267, column: 32, scope: !68)
!595 = !DILocation(line: 283, column: 34, scope: !577, inlinedAt: !593)
!596 = !DILocation(line: 283, column: 46, scope: !577, inlinedAt: !593)
!597 = !DILocation(line: 283, column: 55, scope: !577, inlinedAt: !593)
!598 = !DILocation(line: 285, column: 3, scope: !577, inlinedAt: !593)
!599 = !DILocation(line: 286, column: 3, scope: !577, inlinedAt: !593)
!600 = !DILocation(line: 292, column: 7, scope: !577, inlinedAt: !593)
!601 = !DILocation(line: 294, column: 12, scope: !577, inlinedAt: !593)
!602 = !DILocation(line: 285, column: 9, scope: !577, inlinedAt: !593)
!603 = !DILocation(line: 294, column: 10, scope: !577, inlinedAt: !593)
!604 = !DILocation(line: 287, column: 9, scope: !577, inlinedAt: !593)
!605 = !DILocation(line: 288, column: 9, scope: !577, inlinedAt: !593)
!606 = !DILocation(line: 290, column: 8, scope: !577, inlinedAt: !593)
!607 = !DILocation(line: 298, column: 8, scope: !608, inlinedAt: !593)
!608 = distinct !DILexicalBlock(scope: !577, file: !3, line: 298, column: 3)
!609 = !DILocation(line: 298, column: 3, scope: !608, inlinedAt: !593)
!610 = !DILocation(line: 291, column: 8, scope: !577, inlinedAt: !593)
!611 = !DILocation(line: 300, column: 5, scope: !612, inlinedAt: !593)
!612 = distinct !DILexicalBlock(scope: !613, file: !3, line: 298, column: 27)
!613 = distinct !DILexicalBlock(scope: !608, file: !3, line: 298, column: 3)
!614 = !DILocation(line: 0, scope: !615, inlinedAt: !593)
!615 = distinct !DILexicalBlock(scope: !612, file: !3, line: 300, column: 8)
!616 = !DILocation(line: 301, column: 13, scope: !615, inlinedAt: !593)
!617 = !DILocation(line: 301, column: 17, scope: !615, inlinedAt: !593)
!618 = !DILocation(line: 289, column: 8, scope: !577, inlinedAt: !593)
!619 = !DILocation(line: 302, column: 11, scope: !615, inlinedAt: !593)
!620 = !DILocation(line: 303, column: 29, scope: !615, inlinedAt: !593)
!621 = !DILocation(line: 303, column: 12, scope: !615, inlinedAt: !593)
!622 = !DILocation(line: 303, column: 7, scope: !615, inlinedAt: !593)
!623 = !DILocation(line: 303, column: 16, scope: !615, inlinedAt: !593)
!624 = !DILocation(line: 304, column: 14, scope: !612, inlinedAt: !593)
!625 = !DILocation(line: 304, column: 5, scope: !615, inlinedAt: !593)
!626 = distinct !{!626, !627, !628}
!627 = !DILocation(line: 300, column: 5, scope: !612)
!628 = !DILocation(line: 304, column: 17, scope: !612)
!629 = !DILocation(line: 305, column: 5, scope: !612, inlinedAt: !593)
!630 = !DILocation(line: 0, scope: !631, inlinedAt: !593)
!631 = distinct !DILexicalBlock(scope: !612, file: !3, line: 311, column: 9)
!632 = !DILocation(line: 0, scope: !633, inlinedAt: !593)
!633 = distinct !DILexicalBlock(scope: !612, file: !3, line: 305, column: 17)
!634 = !DILocation(line: 306, column: 11, scope: !633, inlinedAt: !593)
!635 = !DILocation(line: 309, column: 15, scope: !633, inlinedAt: !593)
!636 = !DILocation(line: 309, column: 10, scope: !633, inlinedAt: !593)
!637 = !DILocation(line: 309, column: 13, scope: !633, inlinedAt: !593)
!638 = !DILocation(line: 305, column: 13, scope: !612, inlinedAt: !593)
!639 = distinct !{!639, !640, !641}
!640 = !DILocation(line: 305, column: 5, scope: !612)
!641 = !DILocation(line: 310, column: 5, scope: !612)
!642 = !DILocation(line: 311, column: 9, scope: !612, inlinedAt: !593)
!643 = !DILocation(line: 314, column: 8, scope: !612, inlinedAt: !593)
!644 = !DILocation(line: 314, column: 11, scope: !612, inlinedAt: !593)
!645 = !DILocation(line: 315, column: 7, scope: !612, inlinedAt: !593)
!646 = !DILocation(line: 298, column: 23, scope: !613, inlinedAt: !593)
!647 = !DILocation(line: 298, column: 3, scope: !613, inlinedAt: !593)
!648 = !DILocation(line: 298, column: 17, scope: !613, inlinedAt: !593)
!649 = distinct !{!649, !650, !651}
!650 = !DILocation(line: 298, column: 3, scope: !608)
!651 = !DILocation(line: 316, column: 3, scope: !608)
!652 = !DILocation(line: 317, column: 9, scope: !577, inlinedAt: !593)
!653 = !DILocation(line: 318, column: 3, scope: !577, inlinedAt: !593)
!654 = !DILocation(line: 0, scope: !577, inlinedAt: !593)
!655 = !DILocation(line: 0, scope: !68)
!656 = !DILocation(line: 319, column: 1, scope: !577, inlinedAt: !593)
!657 = !DILocation(line: 270, column: 3, scope: !68)
!658 = !DILocation(line: 283, column: 34, scope: !577)
!659 = !DILocation(line: 283, column: 46, scope: !577)
!660 = !DILocation(line: 283, column: 55, scope: !577)
!661 = !DILocation(line: 285, column: 3, scope: !577)
!662 = !DILocation(line: 286, column: 3, scope: !577)
!663 = !DILocation(line: 286, column: 8, scope: !577)
!664 = !DILocation(line: 292, column: 7, scope: !577)
!665 = !DILocation(line: 294, column: 12, scope: !577)
!666 = !DILocation(line: 285, column: 9, scope: !577)
!667 = !DILocation(line: 294, column: 10, scope: !577)
!668 = !DILocation(line: 287, column: 9, scope: !577)
!669 = !DILocation(line: 288, column: 9, scope: !577)
!670 = !DILocation(line: 290, column: 8, scope: !577)
!671 = !DILocation(line: 298, column: 8, scope: !608)
!672 = !DILocation(line: 291, column: 8, scope: !577)
!673 = !DILocation(line: 0, scope: !615)
!674 = !DILocation(line: 301, column: 13, scope: !615)
!675 = !DILocation(line: 301, column: 17, scope: !615)
!676 = !DILocation(line: 289, column: 8, scope: !577)
!677 = !DILocation(line: 302, column: 11, scope: !615)
!678 = !DILocation(line: 303, column: 29, scope: !615)
!679 = !DILocation(line: 303, column: 12, scope: !615)
!680 = !DILocation(line: 303, column: 7, scope: !615)
!681 = !DILocation(line: 303, column: 16, scope: !615)
!682 = !DILocation(line: 304, column: 14, scope: !612)
!683 = !DILocation(line: 304, column: 5, scope: !615)
!684 = !DILocation(line: 0, scope: !631)
!685 = !DILocation(line: 0, scope: !633)
!686 = !DILocation(line: 306, column: 11, scope: !633)
!687 = !DILocation(line: 309, column: 15, scope: !633)
!688 = !DILocation(line: 309, column: 10, scope: !633)
!689 = !DILocation(line: 309, column: 13, scope: !633)
!690 = !DILocation(line: 305, column: 13, scope: !612)
!691 = !DILocation(line: 311, column: 9, scope: !612)
!692 = !DILocation(line: 314, column: 8, scope: !612)
!693 = !DILocation(line: 314, column: 11, scope: !612)
!694 = !DILocation(line: 315, column: 7, scope: !612)
!695 = !DILocation(line: 298, column: 23, scope: !613)
!696 = !DILocation(line: 298, column: 3, scope: !613)
!697 = !DILocation(line: 298, column: 17, scope: !613)
!698 = !DILocation(line: 317, column: 9, scope: !577)
!699 = !DILocation(line: 318, column: 3, scope: !577)
!700 = !DILocation(line: 0, scope: !577)
!701 = !DILocation(line: 0, scope: !702)
!702 = distinct !DILexicalBlock(scope: !703, file: !3, line: 306, column: 28)
!703 = distinct !DILexicalBlock(scope: !633, file: !3, line: 306, column: 11)
!704 = !DILocation(line: 319, column: 1, scope: !577)
