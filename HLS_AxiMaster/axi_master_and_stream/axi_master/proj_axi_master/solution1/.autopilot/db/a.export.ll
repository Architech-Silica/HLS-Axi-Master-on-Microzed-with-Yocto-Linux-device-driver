; ModuleID = '/home/user/utils/HLS_AxiMaster/axi_master_and_stream/axi_master/proj_axi_master/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p_str = private unnamed_addr constant [7 x i8] c"ap_bus\00", align 1
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str2 = private unnamed_addr constant [6 x i8] c"AXI4M\00", align 1
@p_str3 = private unnamed_addr constant [5 x i8] c"axis\00", align 1
@p_str4 = private unnamed_addr constant [8 x i8] c"ap_none\00", align 1
@p_str5 = private unnamed_addr constant [10 x i8] c"AXI4LiteS\00", align 1
@p_str6 = private unnamed_addr constant [19 x i8] c"-bus_bundle MYAXIL\00", align 1
@p_str7 = private unnamed_addr constant [8 x i8] c"ap_ovld\00", align 1
@count = internal unnamed_addr global i32 0, align 4
@int_pending = internal unnamed_addr global i1 false, align 1
@p_str8 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1
@str = internal constant [8 x i8] c"example\00"
@str1 = internal constant [18 x i8] c"memcpy.a.buff.gep\00"
@str2 = internal constant [1 x i8] zeroinitializer
@p_str9 = internal constant [18 x i8] c"burstwrite.region\00"

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecLoopName(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecPipeline(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecIFCore(...) {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define void @example(i32* %a, i32* %stream_in, i32 %byte_wroffset, i32 %ctrl_reg, i32* %status_reg, i1* %interrupt_r) {
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %a) nounwind, !map !0
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %stream_in), !map !6
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %byte_wroffset) nounwind, !map !12
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %ctrl_reg) nounwind, !map !18
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %status_reg) nounwind, !map !22
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %interrupt_r) nounwind, !map !26
  call void (...)* @_ssdm_op_SpecTopModule([8 x i8]* @str) nounwind
  %ctrl_reg_read = call i32 @_ssdm_op_Read.ap_none.i32(i32 %ctrl_reg)
  %byte_wroffset_read = call i32 @_ssdm_op_Read.ap_none.i32(i32 %byte_wroffset)
  %buff = alloca [128 x i32], align 16
  call void (...)* @_ssdm_op_SpecInterface(i32* %a, [7 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecIFCore(i32* %a, [1 x i8]* @p_str1, [6 x i8]* @p_str2, [1 x i8]* @p_str1, i32 -1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %stream_in, [5 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecInterface(i32 %byte_wroffset, [8 x i8]* @p_str4, i32 1, i32 1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecIFCore(i32 %byte_wroffset, [1 x i8]* @p_str1, [10 x i8]* @p_str5, [1 x i8]* @p_str1, i32 -1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [19 x i8]* @p_str6) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %ctrl_reg, [8 x i8]* @p_str4, i32 1, i32 1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecIFCore(i32 %ctrl_reg, [1 x i8]* @p_str1, [10 x i8]* @p_str5, [1 x i8]* @p_str1, i32 -1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [19 x i8]* @p_str6) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %status_reg, [8 x i8]* @p_str7, i32 1, i32 1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i1* %interrupt_r, [8 x i8]* @p_str7, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  %tmp_2 = trunc i32 %ctrl_reg_read to i1
  %tmp_1 = xor i1 %tmp_2, true
  %int_pending_load = load i1* @int_pending, align 1
  %brmerge = or i1 %int_pending_load, %tmp_1
  br i1 %brmerge, label %._crit_edge, label %1

; <label>:1                                       ; preds = %0
  %tmp_4 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str8) nounwind
  br label %2

; <label>:2                                       ; preds = %3, %1
  %i = phi i8 [ 0, %1 ], [ %i_1, %3 ]
  %exitcond = icmp eq i8 %i, -128
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 128, i64 128, i64 128) nounwind
  %i_1 = add i8 %i, 1
  br i1 %exitcond, label %4, label %3

; <label>:3                                       ; preds = %2
  %tmp_3 = zext i8 %i to i64
  %stream_in_read = call i32 @_ssdm_op_Read.axis.volatile.i32P(i32* %stream_in)
  %buff_addr = getelementptr inbounds [128 x i32]* %buff, i64 0, i64 %tmp_3
  store i32 %stream_in_read, i32* %buff_addr, align 4
  br label %2

; <label>:4                                       ; preds = %2
  %tmp = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %byte_wroffset_read, i32 2, i32 31)
  %tmp_7 = zext i30 %tmp to i64
  %a_addr = getelementptr i32* %a, i64 %tmp_7
  br label %burst.wr.header

burst.wr.header:                                  ; preds = %burstWrDataBB, %4
  %indvar = phi i8 [ 0, %4 ], [ %indvar_next, %burstWrDataBB ]
  %exitcond3 = icmp eq i8 %indvar, -128
  %empty_5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 128, i64 128, i64 128) nounwind
  %indvar_next = add i8 %indvar, 1
  br i1 %exitcond3, label %burst.wr.end, label %burst.wr.body

burst.wr.body:                                    ; preds = %burst.wr.header
  %burstwrite_rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin([18 x i8]* @p_str9) nounwind
  %empty_6 = call i32 (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @str2) nounwind
  %empty_7 = call i32 (...)* @_ssdm_op_SpecLoopName([18 x i8]* @str1) nounwind
  %tmp_6 = zext i8 %indvar to i64
  %buff_addr_1 = getelementptr [128 x i32]* %buff, i64 0, i64 %tmp_6
  %buff_load = load i32* %buff_addr_1, align 4
  %is_0iter = icmp eq i8 %indvar, 0
  br i1 %is_0iter, label %burstWrReqBB, label %burstWrDataBB

burstWrReqBB:                                     ; preds = %burst.wr.body
  %p_wr_req = call i1 @_ssdm_op_WriteReq.ap_bus.i32P(i32* %a_addr, i32 128)
  br label %burstWrDataBB

burstWrDataBB:                                    ; preds = %burstWrReqBB, %burst.wr.body
  call void @_ssdm_op_Write.ap_bus.i32P(i32* %a_addr, i32 %buff_load)
  %burstwrite_rend = call i32 (...)* @_ssdm_op_SpecRegionEnd([18 x i8]* @p_str9, i32 %burstwrite_rbegin) nounwind
  br label %burst.wr.header

burst.wr.end:                                     ; preds = %burst.wr.header
  %count_load = load i32* @count, align 4
  %tmp_5 = add i32 %count_load, 128
  store i32 %tmp_5, i32* @count, align 4
  call void @_ssdm_op_Write.ap_ovld.i32P(i32* %status_reg, i32 %tmp_5)
  call void (...)* @_ssdm_op_SpecIFCore(i32* %status_reg, [1 x i8]* @p_str1, [10 x i8]* @p_str5, [1 x i8]* @p_str1, i32 -1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [19 x i8]* @p_str6) nounwind
  %empty_8 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str8, i32 %tmp_4) nounwind
  br label %._crit_edge

._crit_edge:                                      ; preds = %burst.wr.end, %0
  %int_pending_flag = phi i1 [ false, %0 ], [ true, %burst.wr.end ]
  %int_pending_loc = phi i1 [ %int_pending_load, %0 ], [ true, %burst.wr.end ]
  %tmp_8 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %ctrl_reg_read, i32 1)
  %rev = xor i1 %tmp_8, true
  %int_pending_flag_s = or i1 %int_pending_flag, %tmp_8
  %int_pending_loc_s = and i1 %int_pending_loc, %rev
  call void @_ssdm_op_Write.ap_ovld.i1P(i1* %interrupt_r, i1 %int_pending_loc_s)
  br i1 %int_pending_flag_s, label %mergeST, label %._crit_edge2.new

mergeST:                                          ; preds = %._crit_edge
  store i1 %rev, i1* @int_pending, align 1
  br label %._crit_edge2.new

._crit_edge2.new:                                 ; preds = %mergeST, %._crit_edge
  ret void
}

define weak i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_9 = trunc i32 %empty to i30
  ret i30 %empty_9
}

define weak i1 @_ssdm_op_WriteReq.ap_bus.i32P(i32*, i32) {
entry:
  ret i1 true
}

define weak void @_ssdm_op_Write.ap_bus.i32P(i32*, i32) {
entry:
  store i32 %1, i32* %0
  ret void
}

define weak i32 @_ssdm_op_Read.ap_none.i32(i32) {
entry:
  ret i32 %0
}

define weak i32 @_ssdm_op_Read.axis.volatile.i32P(i32*) {
entry:
  %empty = load i32* %0
  ret i32 %empty
}

define weak void @_ssdm_op_Write.ap_ovld.i32P(i32*, i32) {
entry:
  store i32 %1, i32* %0
  ret void
}

define weak void @_ssdm_op_Write.ap_ovld.i1P(i1*, i1) {
entry:
  store i1 %1, i1* %0
  ret void
}

define weak i1 @_ssdm_op_BitSelect.i1.i2.i32(i2, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i2
  %empty_10 = shl i2 1, %empty
  %empty_11 = and i2 %0, %empty_10
  %empty_12 = icmp ne i2 %empty_11, 0
  ret i1 %empty_12
}

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare i1 @_ssdm_op_PartSelect.i1.i32.i32.i32(i32, i32, i32) nounwind readnone

define weak i1 @_ssdm_op_BitSelect.i1.i32.i32(i32, i32) nounwind readnone {
entry:
  %empty = shl i32 1, %1
  %empty_13 = and i32 %0, %empty
  %empty_14 = icmp ne i32 %empty_13, 0
  ret i1 %empty_14
}

!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{metadata !1}
!1 = metadata !{i32 0, i32 31, metadata !2}
!2 = metadata !{metadata !3}
!3 = metadata !{metadata !"a", metadata !4, metadata !"int", i32 0, i32 31}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 0, i32 0, i32 1}
!6 = metadata !{metadata !7}
!7 = metadata !{i32 0, i32 31, metadata !8}
!8 = metadata !{metadata !9}
!9 = metadata !{metadata !"stream_in", metadata !10, metadata !"int", i32 0, i32 31}
!10 = metadata !{metadata !11}
!11 = metadata !{i32 0, i32 127, i32 1}
!12 = metadata !{metadata !13}
!13 = metadata !{i32 0, i32 31, metadata !14}
!14 = metadata !{metadata !15}
!15 = metadata !{metadata !"byte_wroffset", metadata !16, metadata !"unsigned int", i32 0, i32 31}
!16 = metadata !{metadata !17}
!17 = metadata !{i32 0, i32 0, i32 0}
!18 = metadata !{metadata !19}
!19 = metadata !{i32 0, i32 31, metadata !20}
!20 = metadata !{metadata !21}
!21 = metadata !{metadata !"ctrl_reg", metadata !16, metadata !"unsigned int", i32 0, i32 31}
!22 = metadata !{metadata !23}
!23 = metadata !{i32 0, i32 31, metadata !24}
!24 = metadata !{metadata !25}
!25 = metadata !{metadata !"status_reg", metadata !4, metadata !"unsigned int", i32 0, i32 31}
!26 = metadata !{metadata !27}
!27 = metadata !{i32 0, i32 0, metadata !28}
!28 = metadata !{metadata !29}
!29 = metadata !{metadata !"interrupt", metadata !4, metadata !"bool", i32 0, i32 0}
