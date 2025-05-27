; ModuleID = '/home/meltpoint/eeic/PQCrypto-SIKE/SIKEp503_HLS/sikep503_hls/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: noinline willreturn
define void @apatb_sikep503_kem_enc_hw_ir(i8* noalias nocapture nonnull "maxi" %ct, i8* noalias nocapture nonnull readonly "maxi" %pk, i8* noalias nocapture nonnull "maxi" %ss) local_unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ct to [402 x i8]*
  %ct_copy = alloca [402 x i8], align 512
  %1 = bitcast i8* %pk to [378 x i8]*
  %pk_copy = alloca [378 x i8], align 512
  %2 = bitcast i8* %ss to [16 x i8]*
  %ss_copy = alloca [16 x i8], align 512
  call fastcc void @copy_in([402 x i8]* nonnull %0, [402 x i8]* nonnull align 512 %ct_copy, [378 x i8]* nonnull %1, [378 x i8]* nonnull align 512 %pk_copy, [16 x i8]* nonnull %2, [16 x i8]* nonnull align 512 %ss_copy)
  call void @apatb_sikep503_kem_enc_hw_hw([402 x i8]* %ct_copy, [378 x i8]* %pk_copy, [16 x i8]* %ss_copy)
  call void @copy_back([402 x i8]* %0, [402 x i8]* %ct_copy, [378 x i8]* %1, [378 x i8]* %pk_copy, [16 x i8]* %2, [16 x i8]* %ss_copy)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_in([402 x i8]* noalias readonly, [402 x i8]* noalias align 512, [378 x i8]* noalias readonly, [378 x i8]* noalias align 512, [16 x i8]* noalias readonly, [16 x i8]* noalias align 512) unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0a402i8([402 x i8]* align 512 %1, [402 x i8]* %0)
  call fastcc void @onebyonecpy_hls.p0a378i8([378 x i8]* align 512 %3, [378 x i8]* %2)
  call fastcc void @onebyonecpy_hls.p0a16i8([16 x i8]* align 512 %5, [16 x i8]* %4)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @onebyonecpy_hls.p0a402i8([402 x i8]* noalias align 512 %dst, [402 x i8]* noalias readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [402 x i8]* %dst, null
  %1 = icmp eq [402 x i8]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a402i8([402 x i8]* nonnull %dst, [402 x i8]* nonnull %src, i64 402)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a402i8([402 x i8]* %dst, [402 x i8]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [402 x i8]* %src, null
  %1 = icmp eq [402 x i8]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [402 x i8], [402 x i8]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [402 x i8], [402 x i8]* %src, i64 0, i64 %for.loop.idx2
  %3 = load i8, i8* %src.addr, align 1
  store i8 %3, i8* %dst.addr, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @onebyonecpy_hls.p0a378i8([378 x i8]* noalias align 512 %dst, [378 x i8]* noalias readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [378 x i8]* %dst, null
  %1 = icmp eq [378 x i8]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a378i8([378 x i8]* nonnull %dst, [378 x i8]* nonnull %src, i64 378)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a378i8([378 x i8]* %dst, [378 x i8]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [378 x i8]* %src, null
  %1 = icmp eq [378 x i8]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [378 x i8], [378 x i8]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [378 x i8], [378 x i8]* %src, i64 0, i64 %for.loop.idx2
  %3 = load i8, i8* %src.addr, align 1
  store i8 %3, i8* %dst.addr, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @onebyonecpy_hls.p0a16i8([16 x i8]* noalias align 512 %dst, [16 x i8]* noalias readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [16 x i8]* %dst, null
  %1 = icmp eq [16 x i8]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a16i8([16 x i8]* nonnull %dst, [16 x i8]* nonnull %src, i64 16)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a16i8([16 x i8]* %dst, [16 x i8]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [16 x i8]* %src, null
  %1 = icmp eq [16 x i8]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [16 x i8], [16 x i8]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [16 x i8], [16 x i8]* %src, i64 0, i64 %for.loop.idx2
  %3 = load i8, i8* %src.addr, align 1
  store i8 %3, i8* %dst.addr, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_out([402 x i8]* noalias, [402 x i8]* noalias readonly align 512, [378 x i8]* noalias, [378 x i8]* noalias readonly align 512, [16 x i8]* noalias, [16 x i8]* noalias readonly align 512) unnamed_addr #4 {
entry:
  call fastcc void @onebyonecpy_hls.p0a402i8([402 x i8]* %0, [402 x i8]* align 512 %1)
  call fastcc void @onebyonecpy_hls.p0a378i8([378 x i8]* %2, [378 x i8]* align 512 %3)
  call fastcc void @onebyonecpy_hls.p0a16i8([16 x i8]* %4, [16 x i8]* align 512 %5)
  ret void
}

declare void @apatb_sikep503_kem_enc_hw_hw([402 x i8]*, [378 x i8]*, [16 x i8]*)

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_back([402 x i8]* noalias, [402 x i8]* noalias readonly align 512, [378 x i8]* noalias, [378 x i8]* noalias readonly align 512, [16 x i8]* noalias, [16 x i8]* noalias readonly align 512) unnamed_addr #4 {
entry:
  call fastcc void @onebyonecpy_hls.p0a402i8([402 x i8]* %0, [402 x i8]* align 512 %1)
  call fastcc void @onebyonecpy_hls.p0a16i8([16 x i8]* %4, [16 x i8]* align 512 %5)
  ret void
}

declare void @sikep503_kem_enc_hw_hw_stub(i8* noalias nocapture nonnull, i8* noalias nocapture nonnull readonly, i8* noalias nocapture nonnull)

define void @sikep503_kem_enc_hw_hw_stub_wrapper([402 x i8]*, [378 x i8]*, [16 x i8]*) #5 {
entry:
  call void @copy_out([402 x i8]* null, [402 x i8]* %0, [378 x i8]* null, [378 x i8]* %1, [16 x i8]* null, [16 x i8]* %2)
  %3 = bitcast [402 x i8]* %0 to i8*
  %4 = bitcast [378 x i8]* %1 to i8*
  %5 = bitcast [16 x i8]* %2 to i8*
  call void @sikep503_kem_enc_hw_hw_stub(i8* %3, i8* %4, i8* %5)
  call void @copy_in([402 x i8]* null, [402 x i8]* %0, [378 x i8]* null, [378 x i8]* %1, [16 x i8]* null, [16 x i8]* %2)
  ret void
}

attributes #0 = { noinline willreturn "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="arraycpy_hls" }
attributes #4 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyout" }
attributes #5 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
