; ModuleID = '/home/user/utils/HLS_AxiMaster/axi_master_and_stream/axi_master/proj_axi_master/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p_str = private unnamed_addr constant [7 x i8] c"ap_bus\00", align 1 ; [#uses=1 type=[7 x i8]*]
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=35 type=[1 x i8]*]
@p_str2 = private unnamed_addr constant [6 x i8] c"AXI4M\00", align 1 ; [#uses=1 type=[6 x i8]*]
@p_str3 = private unnamed_addr constant [5 x i8] c"axis\00", align 1 ; [#uses=1 type=[5 x i8]*]
@p_str4 = private unnamed_addr constant [8 x i8] c"ap_none\00", align 1 ; [#uses=2 type=[8 x i8]*]
@p_str5 = private unnamed_addr constant [10 x i8] c"AXI4LiteS\00", align 1 ; [#uses=3 type=[10 x i8]*]
@p_str6 = private unnamed_addr constant [19 x i8] c"-bus_bundle MYAXIL\00", align 1 ; [#uses=3 type=[19 x i8]*]
@p_str7 = private unnamed_addr constant [8 x i8] c"ap_ovld\00", align 1 ; [#uses=2 type=[8 x i8]*]
@count = internal unnamed_addr global i32 0, align 4 ; [#uses=2 type=i32*]
@int_pending = internal unnamed_addr global i1 false, align 1 ; [#uses=2 type=i1*]
@p_str8 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1 ; [#uses=2 type=[12 x i8]*]
@str = internal constant [8 x i8] c"example\00"   ; [#uses=1 type=[8 x i8]*]
@str1 = internal constant [18 x i8] c"memcpy.a.buff.gep\00" ; [#uses=1 type=[18 x i8]*]
@str2 = internal constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@p_str9 = internal constant [18 x i8] c"burstwrite.region\00" ; [#uses=2 type=[18 x i8]*]

; [#uses=1]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=6]
define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

; [#uses=9]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=1]
define weak i32 @_ssdm_op_SpecLoopName(...) {
entry:
  ret i32 0
}

; [#uses=1]
define weak i32 @_ssdm_op_SpecPipeline(...) {
entry:
  ret i32 0
}

; [#uses=2]
define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

; [#uses=2]
define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

; [#uses=4]
define weak void @_ssdm_op_SpecIFCore(...) {
entry:
  ret void
}

; [#uses=6]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=2]
define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

; [#uses=0]
define void @example(i32* %a, i32* %stream_in, i32 %byte_wroffset, i32 %ctrl_reg, i32* %status_reg, i1* %interrupt) {
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %a) nounwind, !map !0
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %stream_in), !map !6
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %byte_wroffset) nounwind, !map !12
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %ctrl_reg) nounwind, !map !18
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %status_reg) nounwind, !map !22
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %interrupt) nounwind, !map !26
  call void (...)* @_ssdm_op_SpecTopModule([8 x i8]* @str) nounwind
  %ctrl_reg_read = call i32 @_ssdm_op_Read.ap_none.i32(i32 %ctrl_reg) ; [#uses=2 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %ctrl_reg_read}, i64 0, metadata !30), !dbg !45 ; [debug line = 5:18] [debug variable = ctrl_reg]
  %byte_wroffset_read = call i32 @_ssdm_op_Read.ap_none.i32(i32 %byte_wroffset) ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %byte_wroffset_read}, i64 0, metadata !46), !dbg !47 ; [debug line = 4:64] [debug variable = byte_wroffset]
  %buff = alloca [128 x i32], align 16            ; [#uses=2 type=[128 x i32]*]
  call void @llvm.dbg.value(metadata !{i32* %a}, i64 0, metadata !48), !dbg !49 ; [debug line = 4:28] [debug variable = a]
  call void @llvm.dbg.value(metadata !{i32* %stream_in}, i64 0, metadata !50), !dbg !54 ; [debug line = 4:35] [debug variable = stream_in]
  call void @llvm.dbg.value(metadata !{i32 %byte_wroffset}, i64 0, metadata !46), !dbg !47 ; [debug line = 4:64] [debug variable = byte_wroffset]
  call void @llvm.dbg.value(metadata !{i32 %ctrl_reg}, i64 0, metadata !30), !dbg !45 ; [debug line = 5:18] [debug variable = ctrl_reg]
  call void @llvm.dbg.value(metadata !{i32* %status_reg}, i64 0, metadata !55), !dbg !56 ; [debug line = 5:42] [debug variable = status_reg]
  call void @llvm.dbg.value(metadata !{i1* %interrupt}, i64 0, metadata !57), !dbg !58 ; [debug line = 5:60] [debug variable = interrupt]
  call void (...)* @_ssdm_op_SpecInterface(i32* %a, [7 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !59 ; [debug line = 7:1]
  call void (...)* @_ssdm_op_SpecIFCore(i32* %a, [1 x i8]* @p_str1, [6 x i8]* @p_str2, [1 x i8]* @p_str1, i32 -1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !61 ; [debug line = 8:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %stream_in, [5 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecInterface(i32 %byte_wroffset, [8 x i8]* @p_str4, i32 1, i32 1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !62 ; [debug line = 11:1]
  call void (...)* @_ssdm_op_SpecIFCore(i32 %byte_wroffset, [1 x i8]* @p_str1, [10 x i8]* @p_str5, [1 x i8]* @p_str1, i32 -1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [19 x i8]* @p_str6) nounwind, !dbg !63 ; [debug line = 12:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %ctrl_reg, [8 x i8]* @p_str4, i32 1, i32 1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !64 ; [debug line = 13:1]
  call void (...)* @_ssdm_op_SpecIFCore(i32 %ctrl_reg, [1 x i8]* @p_str1, [10 x i8]* @p_str5, [1 x i8]* @p_str1, i32 -1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [19 x i8]* @p_str6) nounwind, !dbg !65 ; [debug line = 14:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %status_reg, [8 x i8]* @p_str7, i32 1, i32 1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !66 ; [debug line = 15:1]
  call void (...)* @_ssdm_op_SpecInterface(i1* %interrupt, [8 x i8]* @p_str7, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !67 ; [debug line = 17:1]
  call void @llvm.dbg.declare(metadata !{[128 x i32]* %buff}, metadata !68), !dbg !69 ; [debug line = 19:6] [debug variable = buff]
  %tmp_2 = trunc i32 %ctrl_reg_read to i1, !dbg !70 ; [#uses=1 type=i1] [debug line = 25:2]
  %tmp_1 = xor i1 %tmp_2, true, !dbg !70          ; [#uses=1 type=i1] [debug line = 25:2]
  %int_pending_load = load i1* @int_pending, align 1, !dbg !70 ; [#uses=2 type=i1] [debug line = 25:2]
  %brmerge = or i1 %int_pending_load, %tmp_1, !dbg !70 ; [#uses=1 type=i1] [debug line = 25:2]
  br i1 %brmerge, label %._crit_edge, label %1, !dbg !70 ; [debug line = 25:2]

; <label>:1                                       ; preds = %0
  %tmp_4 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str8) nounwind, !dbg !71 ; [#uses=1 type=i32] [debug line = 25:54]
  br label %2, !dbg !73                           ; [debug line = 26:8]

; <label>:2                                       ; preds = %3, %1
  %i = phi i8 [ 0, %1 ], [ %i_1, %3 ]             ; [#uses=3 type=i8]
  %exitcond = icmp eq i8 %i, -128, !dbg !73       ; [#uses=1 type=i1] [debug line = 26:8]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 128, i64 128, i64 128) nounwind ; [#uses=0 type=i32]
  %i_1 = add i8 %i, 1, !dbg !75                   ; [#uses=1 type=i8] [debug line = 26:22]
  br i1 %exitcond, label %4, label %3, !dbg !73   ; [debug line = 26:8]

; <label>:3                                       ; preds = %2
  %tmp_3 = zext i8 %i to i64, !dbg !76            ; [#uses=1 type=i64] [debug line = 27:5]
  %stream_in_read = call i32 @_ssdm_op_Read.axis.volatile.i32P(i32* %stream_in), !dbg !76 ; [#uses=1 type=i32] [debug line = 27:5]
  %buff_addr = getelementptr inbounds [128 x i32]* %buff, i64 0, i64 %tmp_3, !dbg !76 ; [#uses=1 type=i32*] [debug line = 27:5]
  store i32 %stream_in_read, i32* %buff_addr, align 4, !dbg !76 ; [debug line = 27:5]
  call void @llvm.dbg.value(metadata !{i8 %i_1}, i64 0, metadata !77), !dbg !75 ; [debug line = 26:22] [debug variable = i]
  br label %2, !dbg !75                           ; [debug line = 26:22]

; <label>:4                                       ; preds = %2
  %tmp = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %byte_wroffset_read, i32 2, i32 31) ; [#uses=1 type=i30]
  %tmp_7 = zext i30 %tmp to i64, !dbg !78         ; [#uses=1 type=i64] [debug line = 28:4]
  %a_addr = getelementptr i32* %a, i64 %tmp_7, !dbg !78 ; [#uses=2 type=i32*] [debug line = 28:4]
  br label %burst.wr.header

burst.wr.header:                                  ; preds = %burstWrDataBB, %4
  %indvar = phi i8 [ 0, %4 ], [ %indvar_next, %burstWrDataBB ] ; [#uses=4 type=i8]
  %exitcond3 = icmp eq i8 %indvar, -128           ; [#uses=1 type=i1]
  %empty_5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 128, i64 128, i64 128) nounwind ; [#uses=0 type=i32]
  %indvar_next = add i8 %indvar, 1                ; [#uses=1 type=i8]
  br i1 %exitcond3, label %burst.wr.end, label %burst.wr.body

burst.wr.body:                                    ; preds = %burst.wr.header
  %burstwrite_rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin([18 x i8]* @p_str9) nounwind ; [#uses=1 type=i32]
  %empty_6 = call i32 (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @str2) nounwind ; [#uses=0 type=i32]
  %empty_7 = call i32 (...)* @_ssdm_op_SpecLoopName([18 x i8]* @str1) nounwind ; [#uses=0 type=i32]
  %tmp_6 = zext i8 %indvar to i64, !dbg !78       ; [#uses=1 type=i64] [debug line = 28:4]
  %buff_addr_1 = getelementptr [128 x i32]* %buff, i64 0, i64 %tmp_6, !dbg !78 ; [#uses=1 type=i32*] [debug line = 28:4]
  %buff_load = load i32* %buff_addr_1, align 4, !dbg !78 ; [#uses=1 type=i32] [debug line = 28:4]
  %is_0iter = icmp eq i8 %indvar, 0, !dbg !78     ; [#uses=1 type=i1] [debug line = 28:4]
  br i1 %is_0iter, label %burstWrReqBB, label %burstWrDataBB

burstWrReqBB:                                     ; preds = %burst.wr.body
  %p_wr_req = call i1 @_ssdm_op_WriteReq.ap_bus.i32P(i32* %a_addr, i32 128), !dbg !78 ; [#uses=0 type=i1] [debug line = 28:4]
  br label %burstWrDataBB

burstWrDataBB:                                    ; preds = %burstWrReqBB, %burst.wr.body
  call void @_ssdm_op_Write.ap_bus.i32P(i32* %a_addr, i32 %buff_load), !dbg !78 ; [debug line = 28:4]
  %burstwrite_rend = call i32 (...)* @_ssdm_op_SpecRegionEnd([18 x i8]* @p_str9, i32 %burstwrite_rbegin) nounwind ; [#uses=0 type=i32]
  br label %burst.wr.header

burst.wr.end:                                     ; preds = %burst.wr.header
  %count_load = load i32* @count, align 4, !dbg !79 ; [#uses=1 type=i32] [debug line = 29:4]
  %tmp_5 = add i32 %count_load, 128, !dbg !79     ; [#uses=2 type=i32] [debug line = 29:4]
  store i32 %tmp_5, i32* @count, align 4, !dbg !79 ; [debug line = 29:4]
  call void @_ssdm_op_Write.ap_ovld.i32P(i32* %status_reg, i32 %tmp_5), !dbg !80 ; [debug line = 30:4]
  call void (...)* @_ssdm_op_SpecIFCore(i32* %status_reg, [1 x i8]* @p_str1, [10 x i8]* @p_str5, [1 x i8]* @p_str1, i32 -1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [19 x i8]* @p_str6) nounwind, !dbg !81 ; [debug line = 31:1]
  %empty_8 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str8, i32 %tmp_4) nounwind, !dbg !82 ; [#uses=0 type=i32] [debug line = 32:2]
  br label %._crit_edge, !dbg !82                 ; [debug line = 32:2]

._crit_edge:                                      ; preds = %burst.wr.end, %0
  %int_pending_flag = phi i1 [ false, %0 ], [ true, %burst.wr.end ] ; [#uses=1 type=i1]
  %int_pending_loc = phi i1 [ %int_pending_load, %0 ], [ true, %burst.wr.end ] ; [#uses=1 type=i1]
  %tmp_8 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %ctrl_reg_read, i32 1), !dbg !83 ; [#uses=2 type=i1] [debug line = 33:2]
  %rev = xor i1 %tmp_8, true, !dbg !83            ; [#uses=2 type=i1] [debug line = 33:2]
  %int_pending_flag_s = or i1 %int_pending_flag, %tmp_8, !dbg !83 ; [#uses=1 type=i1] [debug line = 33:2]
  %int_pending_loc_s = and i1 %int_pending_loc, %rev, !dbg !83 ; [#uses=1 type=i1] [debug line = 33:2]
  call void @_ssdm_op_Write.ap_ovld.i1P(i1* %interrupt, i1 %int_pending_loc_s), !dbg !84 ; [debug line = 36:2]
  br i1 %int_pending_flag_s, label %mergeST, label %._crit_edge2.new

mergeST:                                          ; preds = %._crit_edge
  store i1 %rev, i1* @int_pending, align 1, !dbg !85 ; [debug line = 31:4]
  br label %._crit_edge2.new

._crit_edge2.new:                                 ; preds = %mergeST, %._crit_edge
  ret void, !dbg !86                              ; [debug line = 37:1]
}

; [#uses=1]
define weak i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2) ; [#uses=1 type=i32]
  %empty_9 = trunc i32 %empty to i30              ; [#uses=1 type=i30]
  ret i30 %empty_9
}

; [#uses=1]
define weak i1 @_ssdm_op_WriteReq.ap_bus.i32P(i32*, i32) {
entry:
  ret i1 true
}

; [#uses=1]
define weak void @_ssdm_op_Write.ap_bus.i32P(i32*, i32) {
entry:
  store i32 %1, i32* %0
  ret void
}

; [#uses=2]
define weak i32 @_ssdm_op_Read.ap_none.i32(i32) {
entry:
  ret i32 %0
}

; [#uses=1]
define weak i32 @_ssdm_op_Read.axis.volatile.i32P(i32*) {
entry:
  %empty = load i32* %0                           ; [#uses=1 type=i32]
  ret i32 %empty
}

; [#uses=1]
define weak void @_ssdm_op_Write.ap_ovld.i32P(i32*, i32) {
entry:
  store i32 %1, i32* %0
  ret void
}

; [#uses=1]
define weak void @_ssdm_op_Write.ap_ovld.i1P(i1*, i1) {
entry:
  store i1 %1, i1* %0
  ret void
}

; [#uses=0]
define weak i1 @_ssdm_op_BitSelect.i1.i2.i32(i2, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i2                     ; [#uses=1 type=i2]
  %empty_10 = shl i2 1, %empty                    ; [#uses=1 type=i2]
  %empty_11 = and i2 %0, %empty_10                ; [#uses=1 type=i2]
  %empty_12 = icmp ne i2 %empty_11, 0             ; [#uses=1 type=i1]
  ret i1 %empty_12
}

; [#uses=1]
declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

; [#uses=0]
declare i1 @_ssdm_op_PartSelect.i1.i32.i32.i32(i32, i32, i32) nounwind readnone

; [#uses=1]
define weak i1 @_ssdm_op_BitSelect.i1.i32.i32(i32, i32) nounwind readnone {
entry:
  %empty = shl i32 1, %1                          ; [#uses=1 type=i32]
  %empty_13 = and i32 %0, %empty                  ; [#uses=1 type=i32]
  %empty_14 = icmp ne i32 %empty_13, 0            ; [#uses=1 type=i1]
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
!30 = metadata !{i32 786689, metadata !31, metadata !"ctrl_reg", metadata !32, i32 67108869, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!31 = metadata !{i32 786478, i32 0, metadata !32, metadata !"example", metadata !"example", metadata !"_Z7examplePViPijjPjPb", metadata !32, i32 4, metadata !33, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !43, i32 6} ; [ DW_TAG_subprogram ]
!32 = metadata !{i32 786473, metadata !"example.cpp", metadata !"/home/user/utils/HLS_AxiMaster/axi_master_and_stream/axi_master", null} ; [ DW_TAG_file_type ]
!33 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !34, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!34 = metadata !{null, metadata !35, metadata !38, metadata !39, metadata !39, metadata !40, metadata !41}
!35 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !36} ; [ DW_TAG_pointer_type ]
!36 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !37} ; [ DW_TAG_volatile_type ]
!37 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!38 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !37} ; [ DW_TAG_pointer_type ]
!39 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!40 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !39} ; [ DW_TAG_pointer_type ]
!41 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !42} ; [ DW_TAG_pointer_type ]
!42 = metadata !{i32 786468, null, metadata !"bool", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 2} ; [ DW_TAG_base_type ]
!43 = metadata !{metadata !44}
!44 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!45 = metadata !{i32 5, i32 18, metadata !31, null}
!46 = metadata !{i32 786689, metadata !31, metadata !"byte_wroffset", metadata !32, i32 50331652, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!47 = metadata !{i32 4, i32 64, metadata !31, null}
!48 = metadata !{i32 786689, metadata !31, metadata !"a", metadata !32, i32 16777220, metadata !35, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!49 = metadata !{i32 4, i32 28, metadata !31, null}
!50 = metadata !{i32 786689, metadata !31, metadata !"stream_in", null, i32 4, metadata !51, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!51 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 4096, i64 32, i32 0, i32 0, metadata !37, metadata !52, i32 0, i32 0} ; [ DW_TAG_array_type ]
!52 = metadata !{metadata !53}
!53 = metadata !{i32 786465, i64 0, i64 127}      ; [ DW_TAG_subrange_type ]
!54 = metadata !{i32 4, i32 35, metadata !31, null}
!55 = metadata !{i32 786689, metadata !31, metadata !"status_reg", metadata !32, i32 83886085, metadata !40, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!56 = metadata !{i32 5, i32 42, metadata !31, null}
!57 = metadata !{i32 786689, metadata !31, metadata !"interrupt", metadata !32, i32 100663301, metadata !41, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!58 = metadata !{i32 5, i32 60, metadata !31, null}
!59 = metadata !{i32 7, i32 1, metadata !60, null}
!60 = metadata !{i32 786443, metadata !31, i32 6, i32 1, metadata !32, i32 0} ; [ DW_TAG_lexical_block ]
!61 = metadata !{i32 8, i32 1, metadata !60, null}
!62 = metadata !{i32 11, i32 1, metadata !60, null}
!63 = metadata !{i32 12, i32 1, metadata !60, null}
!64 = metadata !{i32 13, i32 1, metadata !60, null}
!65 = metadata !{i32 14, i32 1, metadata !60, null}
!66 = metadata !{i32 15, i32 1, metadata !60, null}
!67 = metadata !{i32 17, i32 1, metadata !60, null}
!68 = metadata !{i32 786688, metadata !60, metadata !"buff", metadata !32, i32 19, metadata !51, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!69 = metadata !{i32 19, i32 6, metadata !60, null}
!70 = metadata !{i32 25, i32 2, metadata !60, null}
!71 = metadata !{i32 25, i32 54, metadata !72, null}
!72 = metadata !{i32 786443, metadata !60, i32 25, i32 53, metadata !32, i32 1} ; [ DW_TAG_lexical_block ]
!73 = metadata !{i32 26, i32 8, metadata !74, null}
!74 = metadata !{i32 786443, metadata !72, i32 26, i32 4, metadata !32, i32 2} ; [ DW_TAG_lexical_block ]
!75 = metadata !{i32 26, i32 22, metadata !74, null}
!76 = metadata !{i32 27, i32 5, metadata !74, null}
!77 = metadata !{i32 786688, metadata !60, metadata !"i", metadata !32, i32 18, metadata !37, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!78 = metadata !{i32 28, i32 4, metadata !72, null}
!79 = metadata !{i32 29, i32 4, metadata !72, null}
!80 = metadata !{i32 30, i32 4, metadata !72, null}
!81 = metadata !{i32 31, i32 1, metadata !72, null}
!82 = metadata !{i32 32, i32 2, metadata !72, null}
!83 = metadata !{i32 33, i32 2, metadata !60, null}
!84 = metadata !{i32 36, i32 2, metadata !60, null}
!85 = metadata !{i32 31, i32 4, metadata !72, null}
!86 = metadata !{i32 37, i32 1, metadata !60, null}
