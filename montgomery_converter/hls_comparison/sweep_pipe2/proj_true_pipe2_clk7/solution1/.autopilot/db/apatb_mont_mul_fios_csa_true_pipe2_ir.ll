; ModuleID = '/home/meltpoint/eeic/PQCrypto-SIKE/montgomery_converter/hls_comparison/sweep_pipe2/proj_true_pipe2_clk7/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: inaccessiblemem_or_argmemonly noinline willreturn
define void @apatb_mont_mul_fios_csa_true_pipe2_ir(i64* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="4" "partition" %a, i64* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="4" "partition" %b, i64* noalias nocapture nonnull "fpga.decayed.dim.hint"="4" "partition" %c, i64* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="4" "partition" %mod, i64 %mprime) local_unnamed_addr #0 {
entry:
  %0 = bitcast i64* %a to [4 x i64]*
  %a_copy_0 = alloca i64, align 512
  %a_copy_1 = alloca i64, align 512
  %a_copy_2 = alloca i64, align 512
  %a_copy_3 = alloca i64, align 512
  %1 = bitcast i64* %b to [4 x i64]*
  %b_copy_0 = alloca i64, align 512
  %b_copy_1 = alloca i64, align 512
  %b_copy_2 = alloca i64, align 512
  %b_copy_3 = alloca i64, align 512
  %2 = bitcast i64* %c to [4 x i64]*
  %c_copy_0 = alloca i64, align 512
  %c_copy_1 = alloca i64, align 512
  %c_copy_2 = alloca i64, align 512
  %c_copy_3 = alloca i64, align 512
  %3 = bitcast i64* %mod to [4 x i64]*
  %mod_copy_0 = alloca i64, align 512
  %mod_copy_1 = alloca i64, align 512
  %mod_copy_2 = alloca i64, align 512
  %mod_copy_3 = alloca i64, align 512
  call void @copy_in([4 x i64]* nonnull %0, i64* nonnull align 512 %a_copy_0, i64* nonnull align 512 %a_copy_1, i64* nonnull align 512 %a_copy_2, i64* nonnull align 512 %a_copy_3, [4 x i64]* nonnull %1, i64* nonnull align 512 %b_copy_0, i64* nonnull align 512 %b_copy_1, i64* nonnull align 512 %b_copy_2, i64* nonnull align 512 %b_copy_3, [4 x i64]* nonnull %2, i64* nonnull align 512 %c_copy_0, i64* nonnull align 512 %c_copy_1, i64* nonnull align 512 %c_copy_2, i64* nonnull align 512 %c_copy_3, [4 x i64]* nonnull %3, i64* nonnull align 512 %mod_copy_0, i64* nonnull align 512 %mod_copy_1, i64* nonnull align 512 %mod_copy_2, i64* nonnull align 512 %mod_copy_3)
  call void @apatb_mont_mul_fios_csa_true_pipe2_hw(i64* %a_copy_0, i64* %a_copy_1, i64* %a_copy_2, i64* %a_copy_3, i64* %b_copy_0, i64* %b_copy_1, i64* %b_copy_2, i64* %b_copy_3, i64* %c_copy_0, i64* %c_copy_1, i64* %c_copy_2, i64* %c_copy_3, i64* %mod_copy_0, i64* %mod_copy_1, i64* %mod_copy_2, i64* %mod_copy_3, i64 %mprime)
  call void @copy_back([4 x i64]* %0, i64* %a_copy_0, i64* %a_copy_1, i64* %a_copy_2, i64* %a_copy_3, [4 x i64]* %1, i64* %b_copy_0, i64* %b_copy_1, i64* %b_copy_2, i64* %b_copy_3, [4 x i64]* %2, i64* %c_copy_0, i64* %c_copy_1, i64* %c_copy_2, i64* %c_copy_3, [4 x i64]* %3, i64* %mod_copy_0, i64* %mod_copy_1, i64* %mod_copy_2, i64* %mod_copy_3)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a4i64([4 x i64]* "orig.arg.no"="0" %dst, [4 x i64]* readonly "orig.arg.no"="1" %src, i64 "orig.arg.no"="2" %num) local_unnamed_addr #1 {
entry:
  %0 = icmp eq [4 x i64]* %src, null
  %1 = icmp eq [4 x i64]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [4 x i64], [4 x i64]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [4 x i64], [4 x i64]* %src, i64 0, i64 %for.loop.idx2
  %3 = load i64, i64* %src.addr, align 8
  store i64 %3, i64* %dst.addr, align 8
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #2

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a4i64.5.6(i64* "orig.arg.no"="0" "unpacked"="0.0" %dst_0, i64* "orig.arg.no"="0" "unpacked"="0.1" %dst_1, i64* "orig.arg.no"="0" "unpacked"="0.2" %dst_2, i64* "orig.arg.no"="0" "unpacked"="0.3" %dst_3, [4 x i64]* readonly "orig.arg.no"="1" %src, i64 "orig.arg.no"="2" %num) #1 {
entry:
  %0 = icmp eq [4 x i64]* %src, null
  %1 = icmp eq i64* %dst_0, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %dst.addr.exit, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %dst.addr.exit ]
  %src.addr = getelementptr [4 x i64], [4 x i64]* %src, i64 0, i64 %for.loop.idx2
  %3 = load i64, i64* %src.addr, align 8
  switch i64 %for.loop.idx2, label %dst.addr.case.3 [
    i64 0, label %dst.addr.case.0
    i64 1, label %dst.addr.case.1
    i64 2, label %dst.addr.case.2
  ]

dst.addr.case.0:                                  ; preds = %for.loop
  store i64 %3, i64* %dst_0, align 8
  br label %dst.addr.exit

dst.addr.case.1:                                  ; preds = %for.loop
  store i64 %3, i64* %dst_1, align 8
  br label %dst.addr.exit

dst.addr.case.2:                                  ; preds = %for.loop
  store i64 %3, i64* %dst_2, align 8
  br label %dst.addr.exit

dst.addr.case.3:                                  ; preds = %for.loop
  %4 = icmp eq i64 %for.loop.idx2, 3
  call void @llvm.assume(i1 %4)
  store i64 %3, i64* %dst_3, align 8
  br label %dst.addr.exit

dst.addr.exit:                                    ; preds = %dst.addr.case.3, %dst.addr.case.2, %dst.addr.case.1, %dst.addr.case.0
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %dst.addr.exit, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal void @onebyonecpy_hls.p0a4i64.4.7(i64* noalias align 512 "orig.arg.no"="0" "unpacked"="0.0" %dst_0, i64* noalias align 512 "orig.arg.no"="0" "unpacked"="0.1" %dst_1, i64* noalias align 512 "orig.arg.no"="0" "unpacked"="0.2" %dst_2, i64* noalias align 512 "orig.arg.no"="0" "unpacked"="0.3" %dst_3, [4 x i64]* noalias readonly "orig.arg.no"="1" %src) #3 {
entry:
  %0 = icmp eq i64* %dst_0, null
  %1 = icmp eq [4 x i64]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a4i64.5.6(i64* nonnull %dst_0, i64* %dst_1, i64* %dst_2, i64* %dst_3, [4 x i64]* nonnull %src, i64 4)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal void @copy_in([4 x i64]* noalias readonly "orig.arg.no"="0", i64* noalias align 512 "orig.arg.no"="1" "unpacked"="1.0" %_0, i64* noalias align 512 "orig.arg.no"="1" "unpacked"="1.1" %_1, i64* noalias align 512 "orig.arg.no"="1" "unpacked"="1.2" %_2, i64* noalias align 512 "orig.arg.no"="1" "unpacked"="1.3" %_3, [4 x i64]* noalias readonly "orig.arg.no"="2", i64* noalias align 512 "orig.arg.no"="3" "unpacked"="3.0" %_01, i64* noalias align 512 "orig.arg.no"="3" "unpacked"="3.1" %_12, i64* noalias align 512 "orig.arg.no"="3" "unpacked"="3.2" %_23, i64* noalias align 512 "orig.arg.no"="3" "unpacked"="3.3" %_34, [4 x i64]* noalias readonly "orig.arg.no"="4", i64* noalias align 512 "orig.arg.no"="5" "unpacked"="5.0" %_05, i64* noalias align 512 "orig.arg.no"="5" "unpacked"="5.1" %_16, i64* noalias align 512 "orig.arg.no"="5" "unpacked"="5.2" %_27, i64* noalias align 512 "orig.arg.no"="5" "unpacked"="5.3" %_38, [4 x i64]* noalias readonly "orig.arg.no"="6", i64* noalias align 512 "orig.arg.no"="7" "unpacked"="7.0" %_09, i64* noalias align 512 "orig.arg.no"="7" "unpacked"="7.1" %_110, i64* noalias align 512 "orig.arg.no"="7" "unpacked"="7.2" %_211, i64* noalias align 512 "orig.arg.no"="7" "unpacked"="7.3" %_312) #4 {
entry:
  call void @onebyonecpy_hls.p0a4i64.4.7(i64* align 512 %_0, i64* align 512 %_1, i64* align 512 %_2, i64* align 512 %_3, [4 x i64]* %0)
  call void @onebyonecpy_hls.p0a4i64.4.7(i64* align 512 %_01, i64* align 512 %_12, i64* align 512 %_23, i64* align 512 %_34, [4 x i64]* %1)
  call void @onebyonecpy_hls.p0a4i64.4.7(i64* align 512 %_05, i64* align 512 %_16, i64* align 512 %_27, i64* align 512 %_38, [4 x i64]* %2)
  call void @onebyonecpy_hls.p0a4i64.4.7(i64* align 512 %_09, i64* align 512 %_110, i64* align 512 %_211, i64* align 512 %_312, [4 x i64]* %3)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a4i64.15.16([4 x i64]* "orig.arg.no"="0" %dst, i64* readonly "orig.arg.no"="1" "unpacked"="1.0" %src_0, i64* readonly "orig.arg.no"="1" "unpacked"="1.1" %src_1, i64* readonly "orig.arg.no"="1" "unpacked"="1.2" %src_2, i64* readonly "orig.arg.no"="1" "unpacked"="1.3" %src_3, i64 "orig.arg.no"="2" %num) #1 {
entry:
  %0 = icmp eq i64* %src_0, null
  %1 = icmp eq [4 x i64]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %src.addr.exit, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %src.addr.exit ]
  %dst.addr = getelementptr [4 x i64], [4 x i64]* %dst, i64 0, i64 %for.loop.idx2
  switch i64 %for.loop.idx2, label %src.addr.case.3 [
    i64 0, label %src.addr.case.0
    i64 1, label %src.addr.case.1
    i64 2, label %src.addr.case.2
  ]

src.addr.case.0:                                  ; preds = %for.loop
  %_0 = load i64, i64* %src_0, align 8
  br label %src.addr.exit

src.addr.case.1:                                  ; preds = %for.loop
  %_1 = load i64, i64* %src_1, align 8
  br label %src.addr.exit

src.addr.case.2:                                  ; preds = %for.loop
  %_2 = load i64, i64* %src_2, align 8
  br label %src.addr.exit

src.addr.case.3:                                  ; preds = %for.loop
  %3 = icmp eq i64 %for.loop.idx2, 3
  call void @llvm.assume(i1 %3)
  %_3 = load i64, i64* %src_3, align 8
  br label %src.addr.exit

src.addr.exit:                                    ; preds = %src.addr.case.3, %src.addr.case.2, %src.addr.case.1, %src.addr.case.0
  %4 = phi i64 [ %_0, %src.addr.case.0 ], [ %_1, %src.addr.case.1 ], [ %_2, %src.addr.case.2 ], [ %_3, %src.addr.case.3 ]
  store i64 %4, i64* %dst.addr, align 8
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %src.addr.exit, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal void @onebyonecpy_hls.p0a4i64.14.17([4 x i64]* noalias "orig.arg.no"="0" %dst, i64* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.0" %src_0, i64* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.1" %src_1, i64* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.2" %src_2, i64* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.3" %src_3) #3 {
entry:
  %0 = icmp eq [4 x i64]* %dst, null
  %1 = icmp eq i64* %src_0, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a4i64.15.16([4 x i64]* nonnull %dst, i64* nonnull %src_0, i64* %src_1, i64* %src_2, i64* %src_3, i64 4)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal void @copy_out([4 x i64]* noalias "orig.arg.no"="0", i64* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.0" %_0, i64* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.1" %_1, i64* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.2" %_2, i64* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.3" %_3, [4 x i64]* noalias "orig.arg.no"="2", i64* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.0" %_01, i64* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.1" %_12, i64* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.2" %_23, i64* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.3" %_34, [4 x i64]* noalias "orig.arg.no"="4", i64* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.0" %_05, i64* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.1" %_16, i64* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.2" %_27, i64* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.3" %_38, [4 x i64]* noalias "orig.arg.no"="6", i64* noalias readonly align 512 "orig.arg.no"="7" "unpacked"="7.0" %_09, i64* noalias readonly align 512 "orig.arg.no"="7" "unpacked"="7.1" %_110, i64* noalias readonly align 512 "orig.arg.no"="7" "unpacked"="7.2" %_211, i64* noalias readonly align 512 "orig.arg.no"="7" "unpacked"="7.3" %_312) #5 {
entry:
  call void @onebyonecpy_hls.p0a4i64.14.17([4 x i64]* %0, i64* align 512 %_0, i64* align 512 %_1, i64* align 512 %_2, i64* align 512 %_3)
  call void @onebyonecpy_hls.p0a4i64.14.17([4 x i64]* %1, i64* align 512 %_01, i64* align 512 %_12, i64* align 512 %_23, i64* align 512 %_34)
  call void @onebyonecpy_hls.p0a4i64.14.17([4 x i64]* %2, i64* align 512 %_05, i64* align 512 %_16, i64* align 512 %_27, i64* align 512 %_38)
  call void @onebyonecpy_hls.p0a4i64.14.17([4 x i64]* %3, i64* align 512 %_09, i64* align 512 %_110, i64* align 512 %_211, i64* align 512 %_312)
  ret void
}

declare i8* @malloc(i64)

declare void @free(i8*)

declare void @apatb_mont_mul_fios_csa_true_pipe2_hw(i64*, i64*, i64*, i64*, i64*, i64*, i64*, i64*, i64*, i64*, i64*, i64*, i64*, i64*, i64*, i64*, i64)

; Function Attrs: argmemonly noinline norecurse willreturn
define internal void @copy_back([4 x i64]* noalias "orig.arg.no"="0", i64* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.0" %_0, i64* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.1" %_1, i64* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.2" %_2, i64* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.3" %_3, [4 x i64]* noalias "orig.arg.no"="2", i64* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.0" %_01, i64* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.1" %_12, i64* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.2" %_23, i64* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.3" %_34, [4 x i64]* noalias "orig.arg.no"="4", i64* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.0" %_05, i64* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.1" %_16, i64* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.2" %_27, i64* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.3" %_38, [4 x i64]* noalias "orig.arg.no"="6", i64* noalias readonly align 512 "orig.arg.no"="7" "unpacked"="7.0" %_09, i64* noalias readonly align 512 "orig.arg.no"="7" "unpacked"="7.1" %_110, i64* noalias readonly align 512 "orig.arg.no"="7" "unpacked"="7.2" %_211, i64* noalias readonly align 512 "orig.arg.no"="7" "unpacked"="7.3" %_312) #5 {
entry:
  call void @onebyonecpy_hls.p0a4i64.14.17([4 x i64]* %2, i64* align 512 %_05, i64* align 512 %_16, i64* align 512 %_27, i64* align 512 %_38)
  ret void
}

declare void @mont_mul_fios_csa_true_pipe2_hw_stub(i64* noalias nocapture nonnull readonly, i64* noalias nocapture nonnull readonly, i64* noalias nocapture nonnull, i64* noalias nocapture nonnull readonly, i64)

define void @mont_mul_fios_csa_true_pipe2_hw_stub_wrapper(i64*, i64*, i64*, i64*, i64*, i64*, i64*, i64*, i64*, i64*, i64*, i64*, i64*, i64*, i64*, i64*, i64) #6 {
entry:
  %17 = call i8* @malloc(i64 32)
  %18 = bitcast i8* %17 to [4 x i64]*
  %19 = call i8* @malloc(i64 32)
  %20 = bitcast i8* %19 to [4 x i64]*
  %21 = call i8* @malloc(i64 32)
  %22 = bitcast i8* %21 to [4 x i64]*
  %23 = call i8* @malloc(i64 32)
  %24 = bitcast i8* %23 to [4 x i64]*
  call void @copy_out([4 x i64]* %18, i64* %0, i64* %1, i64* %2, i64* %3, [4 x i64]* %20, i64* %4, i64* %5, i64* %6, i64* %7, [4 x i64]* %22, i64* %8, i64* %9, i64* %10, i64* %11, [4 x i64]* %24, i64* %12, i64* %13, i64* %14, i64* %15)
  %25 = bitcast [4 x i64]* %18 to i64*
  %26 = bitcast [4 x i64]* %20 to i64*
  %27 = bitcast [4 x i64]* %22 to i64*
  %28 = bitcast [4 x i64]* %24 to i64*
  call void @mont_mul_fios_csa_true_pipe2_hw_stub(i64* %25, i64* %26, i64* %27, i64* %28, i64 %16)
  call void @copy_in([4 x i64]* %18, i64* %0, i64* %1, i64* %2, i64* %3, [4 x i64]* %20, i64* %4, i64* %5, i64* %6, i64* %7, [4 x i64]* %22, i64* %8, i64* %9, i64* %10, i64* %11, [4 x i64]* %24, i64* %12, i64* %13, i64* %14, i64* %15)
  call void @free(i8* %17)
  call void @free(i8* %19)
  call void @free(i8* %21)
  call void @free(i8* %23)
  ret void
}

attributes #0 = { inaccessiblemem_or_argmemonly noinline willreturn "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="arraycpy_hls" }
attributes #2 = { nounwind willreturn }
attributes #3 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #4 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyin" }
attributes #5 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyout" }
attributes #6 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}
!datalayout.transforms.on.top = !{!5, !15, !23, !31}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
!5 = !{!6, !8, !10}
!6 = !{!7}
!7 = !{!"0", [4 x i64]* null}
!8 = !{!9}
!9 = !{!"array_partition", !"type=Complete", !"dim=1"}
!10 = !{!11, !12, !13, !14}
!11 = !{!"0.0", i64* null}
!12 = !{!"0.1", i64* null}
!13 = !{!"0.2", i64* null}
!14 = !{!"0.3", i64* null}
!15 = !{!16, !8, !18}
!16 = !{!17}
!17 = !{!"1", [4 x i64]* null}
!18 = !{!19, !20, !21, !22}
!19 = !{!"1.0", i64* null}
!20 = !{!"1.1", i64* null}
!21 = !{!"1.2", i64* null}
!22 = !{!"1.3", i64* null}
!23 = !{!24, !8, !26}
!24 = !{!25}
!25 = !{!"2", [4 x i64]* null}
!26 = !{!27, !28, !29, !30}
!27 = !{!"2.0", i64* null}
!28 = !{!"2.1", i64* null}
!29 = !{!"2.2", i64* null}
!30 = !{!"2.3", i64* null}
!31 = !{!32, !8, !34}
!32 = !{!33}
!33 = !{!"3", [4 x i64]* null}
!34 = !{!35, !36, !37, !38}
!35 = !{!"3.0", i64* null}
!36 = !{!"3.1", i64* null}
!37 = !{!"3.2", i64* null}
!38 = !{!"3.3", i64* null}
