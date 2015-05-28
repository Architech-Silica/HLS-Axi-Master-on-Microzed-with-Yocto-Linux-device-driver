; ModuleID = '/home/user/utils/HLS_AxiMaster/axi_master_and_stream/axi_master/proj_axi_master/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"ap_bus\00", align 1 ; [#uses=1 type=[7 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=35 type=[1 x i8]*]
@.str2 = private unnamed_addr constant [6 x i8] c"AXI4M\00", align 1 ; [#uses=1 type=[6 x i8]*]
@.str3 = private unnamed_addr constant [5 x i8] c"axis\00", align 1 ; [#uses=1 type=[5 x i8]*]
@.str4 = private unnamed_addr constant [8 x i8] c"ap_none\00", align 1 ; [#uses=2 type=[8 x i8]*]
@.str5 = private unnamed_addr constant [10 x i8] c"AXI4LiteS\00", align 1 ; [#uses=3 type=[10 x i8]*]
@.str6 = private unnamed_addr constant [19 x i8] c"-bus_bundle MYAXIL\00", align 1 ; [#uses=3 type=[19 x i8]*]
@.str7 = private unnamed_addr constant [8 x i8] c"ap_ovld\00", align 1 ; [#uses=2 type=[8 x i8]*]
@count = internal unnamed_addr global i32 0, align 4 ; [#uses=2 type=i32*]
@int_pending = internal unnamed_addr global i1 false, align 1 ; [#uses=2 type=i1*]
@.str8 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1 ; [#uses=2 type=[12 x i8]*]
@str = internal constant [8 x i8] c"example\00"   ; [#uses=1 type=[8 x i8]*]
@str1 = internal constant [18 x i8] c"memcpy.a.buff.gep\00" ; [#uses=1 type=[18 x i8]*]
@str2 = internal constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@str3 = internal constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@.str9 = internal constant [18 x i8] c"burstwrite.region\00" ; [#uses=2 type=[18 x i8]*]

; [#uses=1]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=6]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=7]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=1]
declare i32 @_ssdm_op_SpecLoopName(...)

; [#uses=1]
declare i32 @_ssdm_op_SpecPipeline(...)

; [#uses=1]
declare i32 @_ssdm_SpecLoopFlatten(...)

; [#uses=1]
declare i32 @_ssdm_op_SpecBurst(...)

; [#uses=2]
declare i32 @_ssdm_op_SpecRegionBegin(...)

; [#uses=2]
declare i32 @_ssdm_op_SpecRegionEnd(...)

; [#uses=4]
declare void @_ssdm_op_SpecIFCore(...)

; [#uses=6]
declare void @_ssdm_op_SpecBitsMap(...)

; [#uses=2]
declare i32 @_ssdm_op_SpecLoopTripCount(...)

; [#uses=0]
define void @example(i32* %a, i32* %stream_in, i32 %byte_wroffset, i32 %ctrl_reg, i32* %status_reg, i1* %interrupt) {
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %a) nounwind, !map !28
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %stream_in), !map !34
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %byte_wroffset) nounwind, !map !40
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %ctrl_reg) nounwind, !map !46
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %status_reg) nounwind, !map !50
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %interrupt) nounwind, !map !54
  call void (...)* @_ssdm_op_SpecTopModule([8 x i8]* @str) nounwind
  %buff = alloca [128 x i32], align 16            ; [#uses=2 type=[128 x i32]*]
  call void @llvm.dbg.value(metadata !{i32* %a}, i64 0, metadata !58), !dbg !59 ; [debug line = 4:28] [debug variable = a]
  call void @llvm.dbg.value(metadata !{i32* %stream_in}, i64 0, metadata !60), !dbg !64 ; [debug line = 4:35] [debug variable = stream_in]
  call void @llvm.dbg.value(metadata !{i32 %byte_wroffset}, i64 0, metadata !65), !dbg !66 ; [debug line = 4:64] [debug variable = byte_wroffset]
  call void @llvm.dbg.value(metadata !{i32 %ctrl_reg}, i64 0, metadata !67), !dbg !68 ; [debug line = 5:18] [debug variable = ctrl_reg]
  call void @llvm.dbg.value(metadata !{i32* %status_reg}, i64 0, metadata !69), !dbg !70 ; [debug line = 5:42] [debug variable = status_reg]
  call void @llvm.dbg.value(metadata !{i1* %interrupt}, i64 0, metadata !71), !dbg !72 ; [debug line = 5:60] [debug variable = interrupt]
  call void (...)* @_ssdm_op_SpecInterface(i32* %a, [7 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !73 ; [debug line = 7:1]
  call void (...)* @_ssdm_op_SpecIFCore(i32* %a, [1 x i8]* @.str1, [6 x i8]* @.str2, [1 x i8]* @.str1, i32 -1, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !75 ; [debug line = 8:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %stream_in, [5 x i8]* @.str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1)
  call void (...)* @_ssdm_op_SpecInterface(i32 %byte_wroffset, [8 x i8]* @.str4, i32 1, i32 1, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !76 ; [debug line = 11:1]
  call void (...)* @_ssdm_op_SpecIFCore(i32 %byte_wroffset, [1 x i8]* @.str1, [10 x i8]* @.str5, [1 x i8]* @.str1, i32 -1, [1 x i8]* @.str1, [1 x i8]* @.str1, [19 x i8]* @.str6) nounwind, !dbg !77 ; [debug line = 12:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %ctrl_reg, [8 x i8]* @.str4, i32 1, i32 1, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !78 ; [debug line = 13:1]
  call void (...)* @_ssdm_op_SpecIFCore(i32 %ctrl_reg, [1 x i8]* @.str1, [10 x i8]* @.str5, [1 x i8]* @.str1, i32 -1, [1 x i8]* @.str1, [1 x i8]* @.str1, [19 x i8]* @.str6) nounwind, !dbg !79 ; [debug line = 14:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %status_reg, [8 x i8]* @.str7, i32 1, i32 1, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !80 ; [debug line = 15:1]
  call void (...)* @_ssdm_op_SpecInterface(i1* %interrupt, [8 x i8]* @.str7, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !81 ; [debug line = 17:1]
  call void @llvm.dbg.declare(metadata !{[128 x i32]* %buff}, metadata !82), !dbg !83 ; [debug line = 19:6] [debug variable = buff]
  %ctrl_reg.cast4 = trunc i32 %ctrl_reg to i1, !dbg !84 ; [#uses=1 type=i1] [debug line = 25:2]
  %tmp.1 = xor i1 %ctrl_reg.cast4, true, !dbg !84 ; [#uses=1 type=i1] [debug line = 25:2]
  %int_pending.load = load i1* @int_pending, align 1, !dbg !84 ; [#uses=2 type=i1] [debug line = 25:2]
  %brmerge = or i1 %int_pending.load, %tmp.1, !dbg !84 ; [#uses=1 type=i1] [debug line = 25:2]
  br i1 %brmerge, label %._crit_edge, label %1, !dbg !84 ; [debug line = 25:2]

; <label>:1                                       ; preds = %0
  %tmp.4 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @.str8) nounwind, !dbg !85 ; [#uses=1 type=i32] [debug line = 25:54]
  br label %2, !dbg !87                           ; [debug line = 26:8]

; <label>:2                                       ; preds = %4, %1
  %i = phi i8 [ 0, %1 ], [ %i.1, %4 ]             ; [#uses=3 type=i8]
  %exitcond = icmp eq i8 %i, -128, !dbg !87       ; [#uses=1 type=i1] [debug line = 26:8]
  %3 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 128, i64 128, i64 128) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond, label %5, label %4, !dbg !87   ; [debug line = 26:8]

; <label>:4                                       ; preds = %2
  %tmp.3 = zext i8 %i to i64, !dbg !89            ; [#uses=1 type=i64] [debug line = 27:5]
  %stream_in.load = load volatile i32* %stream_in, align 4, !dbg !89 ; [#uses=1 type=i32] [debug line = 27:5]
  %buff.addr = getelementptr inbounds [128 x i32]* %buff, i64 0, i64 %tmp.3, !dbg !89 ; [#uses=1 type=i32*] [debug line = 27:5]
  store i32 %stream_in.load, i32* %buff.addr, align 4, !dbg !89 ; [debug line = 27:5]
  %i.1 = add i8 %i, 1, !dbg !90                   ; [#uses=1 type=i8] [debug line = 26:22]
  call void @llvm.dbg.value(metadata !{i8 %i.1}, i64 0, metadata !91), !dbg !90 ; [debug line = 26:22] [debug variable = i]
  br label %2, !dbg !90                           ; [debug line = 26:22]

; <label>:5                                       ; preds = %2
  %tmp.2 = lshr i32 %byte_wroffset, 2, !dbg !92   ; [#uses=1 type=i32] [debug line = 28:4]
  %tmp.2.cast = trunc i32 %tmp.2 to i31           ; [#uses=1 type=i31]
  br label %burst.wr.header

burst.wr.header:                                  ; preds = %burst.wr.body, %5
  %indvar = phi i8 [ 0, %5 ], [ %indvar.next, %burst.wr.body ] ; [#uses=4 type=i8]
  %indvar.cast2 = zext i8 %indvar to i31          ; [#uses=1 type=i31]
  %exitcond3 = icmp eq i8 %indvar, -128           ; [#uses=1 type=i1]
  %6 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 128, i64 128, i64 128) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond3, label %burst.wr.end, label %burst.wr.body

burst.wr.body:                                    ; preds = %burst.wr.header
  %burstwrite.rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin([18 x i8]* @.str9) nounwind ; [#uses=1 type=i32]
  %7 = call i32 (...)* @_ssdm_op_SpecBurst(i32* %a, i32 0, i32 128) nounwind ; [#uses=0 type=i32]
  %8 = call i32 (...)* @_ssdm_SpecLoopFlatten(i32 1, [1 x i8]* @str3) nounwind ; [#uses=0 type=i32]
  %9 = call i32 (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @str2) nounwind ; [#uses=0 type=i32]
  %10 = call i32 (...)* @_ssdm_op_SpecLoopName([18 x i8]* @str1) nounwind ; [#uses=0 type=i32]
  %indvar.next = add i8 %indvar, 1                ; [#uses=1 type=i8]
  %tmp.6 = zext i8 %indvar to i64, !dbg !92       ; [#uses=1 type=i64] [debug line = 28:4]
  %buff.addr.1 = getelementptr [128 x i32]* %buff, i64 0, i64 %tmp.6, !dbg !92 ; [#uses=1 type=i32*] [debug line = 28:4]
  %buff.load = load i32* %buff.addr.1, align 4, !dbg !92 ; [#uses=1 type=i32] [debug line = 28:4]
  %a.addr = add i31 %indvar.cast2, %tmp.2.cast    ; [#uses=1 type=i31]
  %tmp.7 = zext i31 %a.addr to i64, !dbg !92      ; [#uses=1 type=i64] [debug line = 28:4]
  %a.addr.1 = getelementptr i32* %a, i64 %tmp.7, !dbg !92 ; [#uses=1 type=i32*] [debug line = 28:4]
  store i32 %buff.load, i32* %a.addr.1, align 4, !dbg !92 ; [debug line = 28:4]
  %burstwrite.rend = call i32 (...)* @_ssdm_op_SpecRegionEnd([18 x i8]* @.str9, i32 %burstwrite.rbegin) nounwind ; [#uses=0 type=i32]
  br label %burst.wr.header

burst.wr.end:                                     ; preds = %burst.wr.header
  %count.load = load i32* @count, align 4, !dbg !93 ; [#uses=1 type=i32] [debug line = 29:4]
  %tmp.5 = add i32 %count.load, 128, !dbg !93     ; [#uses=2 type=i32] [debug line = 29:4]
  store i32 %tmp.5, i32* @count, align 4, !dbg !93 ; [debug line = 29:4]
  store i32 %tmp.5, i32* %status_reg, align 4, !dbg !94 ; [debug line = 30:4]
  call void (...)* @_ssdm_op_SpecIFCore(i32* %status_reg, [1 x i8]* @.str1, [10 x i8]* @.str5, [1 x i8]* @.str1, i32 -1, [1 x i8]* @.str1, [1 x i8]* @.str1, [19 x i8]* @.str6) nounwind, !dbg !95 ; [debug line = 31:1]
  %11 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @.str8, i32 %tmp.4) nounwind, !dbg !96 ; [#uses=0 type=i32] [debug line = 32:2]
  br label %._crit_edge, !dbg !96                 ; [debug line = 32:2]

._crit_edge:                                      ; preds = %burst.wr.end, %0
  %int_pending.flag = phi i1 [ false, %0 ], [ true, %burst.wr.end ] ; [#uses=1 type=i1]
  %int_pending.loc = phi i1 [ %int_pending.load, %0 ], [ true, %burst.wr.end ] ; [#uses=1 type=i1]
  %ctrl_reg.cast = trunc i32 %ctrl_reg to i2, !dbg !97 ; [#uses=1 type=i2] [debug line = 33:2]
  %tmp.9 = icmp sgt i2 %ctrl_reg.cast, -1, !dbg !97 ; [#uses=3 type=i1] [debug line = 33:2]
  %not.tmp.9 = xor i1 %tmp.9, true, !dbg !97      ; [#uses=1 type=i1] [debug line = 33:2]
  %int_pending.flag. = or i1 %int_pending.flag, %not.tmp.9, !dbg !97 ; [#uses=1 type=i1] [debug line = 33:2]
  %int_pending.loc. = and i1 %tmp.9, %int_pending.loc, !dbg !97 ; [#uses=1 type=i1] [debug line = 33:2]
  store i1 %int_pending.loc., i1* %interrupt, align 1, !dbg !98 ; [debug line = 36:2]
  br i1 %int_pending.flag., label %mergeST, label %._crit_edge2.new

mergeST:                                          ; preds = %._crit_edge
  store i1 %tmp.9, i1* @int_pending, align 1, !dbg !99 ; [debug line = 31:4]
  br label %._crit_edge2.new

._crit_edge2.new:                                 ; preds = %mergeST, %._crit_edge
  ret void, !dbg !100                             ; [debug line = 37:1]
}

!hls.encrypted.func = !{}
!llvm.map.gv = !{}
!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"/home/user/utils/HLS_AxiMaster/axi_master_and_stream/axi_master/proj_axi_master/solution1/.autopilot/db/example.pragma.2.cpp", metadata !"/home/user/utils/HLS_AxiMaster/axi_master_and_stream/axi_master", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, null, null, null, metadata !1} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{metadata !3, metadata !18, metadata !19, metadata !20, metadata !23, metadata !24, metadata !25, metadata !27}
!3 = metadata !{i32 786484, i32 0, metadata !4, metadata !"count", metadata !"count", metadata !"", metadata !5, i32 20, metadata !12, i32 1, i32 1, i32* @count} ; [ DW_TAG_variable ]
!4 = metadata !{i32 786478, i32 0, metadata !5, metadata !"example", metadata !"example", metadata !"_Z7examplePViPijjPjPb", metadata !5, i32 4, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !16, i32 6} ; [ DW_TAG_subprogram ]
!5 = metadata !{i32 786473, metadata !"example.cpp", metadata !"/home/user/utils/HLS_AxiMaster/axi_master_and_stream/axi_master", null} ; [ DW_TAG_file_type ]
!6 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!7 = metadata !{null, metadata !8, metadata !11, metadata !12, metadata !12, metadata !13, metadata !14}
!8 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ]
!9 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_volatile_type ]
!10 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!11 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!12 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!13 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !12} ; [ DW_TAG_pointer_type ]
!14 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !15} ; [ DW_TAG_pointer_type ]
!15 = metadata !{i32 786468, null, metadata !"bool", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 2} ; [ DW_TAG_base_type ]
!16 = metadata !{metadata !17}
!17 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!18 = metadata !{i32 786484, i32 0, metadata !4, metadata !"int_pending", metadata !"int_pending", metadata !"", metadata !5, i32 21, metadata !15, i32 1, i32 1, i1* @int_pending} ; [ DW_TAG_variable ]
!19 = metadata !{i32 786484, i32 0, metadata !4, metadata !"local_ctrl_reg", metadata !"local_ctrl_reg", metadata !"", metadata !5, i32 22, metadata !12, i32 1, i32 1, null} ; [ DW_TAG_variable ]
!20 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdin_", metadata !"_IO_2_1_stdin_", metadata !"", metadata !21, i32 320, metadata !22, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!21 = metadata !{i32 786473, metadata !"/usr/include/libio.h", metadata !"/home/user/utils/HLS_AxiMaster/axi_master_and_stream/axi_master", null} ; [ DW_TAG_file_type ]
!22 = metadata !{i32 786434, null, metadata !"_IO_FILE_plus", metadata !21, i32 318, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!23 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdout_", metadata !"_IO_2_1_stdout_", metadata !"", metadata !21, i32 321, metadata !22, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!24 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stderr_", metadata !"_IO_2_1_stderr_", metadata !"", metadata !21, i32 322, metadata !22, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!25 = metadata !{i32 786484, i32 0, null, metadata !"sys_nerr", metadata !"sys_nerr", metadata !"", metadata !26, i32 26, metadata !10, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!26 = metadata !{i32 786473, metadata !"/usr/include/x86_64-linux-gnu/bits/sys_errlist.h", metadata !"/home/user/utils/HLS_AxiMaster/axi_master_and_stream/axi_master", null} ; [ DW_TAG_file_type ]
!27 = metadata !{i32 786484, i32 0, null, metadata !"_sys_nerr", metadata !"_sys_nerr", metadata !"", metadata !26, i32 30, metadata !10, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!28 = metadata !{metadata !29}
!29 = metadata !{i32 0, i32 31, metadata !30}
!30 = metadata !{metadata !31}
!31 = metadata !{metadata !"a", metadata !32, metadata !"int", i32 0, i32 31}
!32 = metadata !{metadata !33}
!33 = metadata !{i32 0, i32 0, i32 1}
!34 = metadata !{metadata !35}
!35 = metadata !{i32 0, i32 31, metadata !36}
!36 = metadata !{metadata !37}
!37 = metadata !{metadata !"stream_in", metadata !38, metadata !"int", i32 0, i32 31}
!38 = metadata !{metadata !39}
!39 = metadata !{i32 0, i32 127, i32 1}
!40 = metadata !{metadata !41}
!41 = metadata !{i32 0, i32 31, metadata !42}
!42 = metadata !{metadata !43}
!43 = metadata !{metadata !"byte_wroffset", metadata !44, metadata !"unsigned int", i32 0, i32 31}
!44 = metadata !{metadata !45}
!45 = metadata !{i32 0, i32 0, i32 0}
!46 = metadata !{metadata !47}
!47 = metadata !{i32 0, i32 31, metadata !48}
!48 = metadata !{metadata !49}
!49 = metadata !{metadata !"ctrl_reg", metadata !44, metadata !"unsigned int", i32 0, i32 31}
!50 = metadata !{metadata !51}
!51 = metadata !{i32 0, i32 31, metadata !52}
!52 = metadata !{metadata !53}
!53 = metadata !{metadata !"status_reg", metadata !32, metadata !"unsigned int", i32 0, i32 31}
!54 = metadata !{metadata !55}
!55 = metadata !{i32 0, i32 0, metadata !56}
!56 = metadata !{metadata !57}
!57 = metadata !{metadata !"interrupt", metadata !32, metadata !"bool", i32 0, i32 0}
!58 = metadata !{i32 786689, metadata !4, metadata !"a", metadata !5, i32 16777220, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!59 = metadata !{i32 4, i32 28, metadata !4, null}
!60 = metadata !{i32 786689, metadata !4, metadata !"stream_in", null, i32 4, metadata !61, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!61 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 4096, i64 32, i32 0, i32 0, metadata !10, metadata !62, i32 0, i32 0} ; [ DW_TAG_array_type ]
!62 = metadata !{metadata !63}
!63 = metadata !{i32 786465, i64 0, i64 127}      ; [ DW_TAG_subrange_type ]
!64 = metadata !{i32 4, i32 35, metadata !4, null}
!65 = metadata !{i32 786689, metadata !4, metadata !"byte_wroffset", metadata !5, i32 50331652, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!66 = metadata !{i32 4, i32 64, metadata !4, null}
!67 = metadata !{i32 786689, metadata !4, metadata !"ctrl_reg", metadata !5, i32 67108869, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!68 = metadata !{i32 5, i32 18, metadata !4, null}
!69 = metadata !{i32 786689, metadata !4, metadata !"status_reg", metadata !5, i32 83886085, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!70 = metadata !{i32 5, i32 42, metadata !4, null}
!71 = metadata !{i32 786689, metadata !4, metadata !"interrupt", metadata !5, i32 100663301, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!72 = metadata !{i32 5, i32 60, metadata !4, null}
!73 = metadata !{i32 7, i32 1, metadata !74, null}
!74 = metadata !{i32 786443, metadata !4, i32 6, i32 1, metadata !5, i32 0} ; [ DW_TAG_lexical_block ]
!75 = metadata !{i32 8, i32 1, metadata !74, null}
!76 = metadata !{i32 11, i32 1, metadata !74, null}
!77 = metadata !{i32 12, i32 1, metadata !74, null}
!78 = metadata !{i32 13, i32 1, metadata !74, null}
!79 = metadata !{i32 14, i32 1, metadata !74, null}
!80 = metadata !{i32 15, i32 1, metadata !74, null}
!81 = metadata !{i32 17, i32 1, metadata !74, null}
!82 = metadata !{i32 786688, metadata !74, metadata !"buff", metadata !5, i32 19, metadata !61, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!83 = metadata !{i32 19, i32 6, metadata !74, null}
!84 = metadata !{i32 25, i32 2, metadata !74, null}
!85 = metadata !{i32 25, i32 54, metadata !86, null}
!86 = metadata !{i32 786443, metadata !74, i32 25, i32 53, metadata !5, i32 1} ; [ DW_TAG_lexical_block ]
!87 = metadata !{i32 26, i32 8, metadata !88, null}
!88 = metadata !{i32 786443, metadata !86, i32 26, i32 4, metadata !5, i32 2} ; [ DW_TAG_lexical_block ]
!89 = metadata !{i32 27, i32 5, metadata !88, null}
!90 = metadata !{i32 26, i32 22, metadata !88, null}
!91 = metadata !{i32 786688, metadata !74, metadata !"i", metadata !5, i32 18, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!92 = metadata !{i32 28, i32 4, metadata !86, null}
!93 = metadata !{i32 29, i32 4, metadata !86, null}
!94 = metadata !{i32 30, i32 4, metadata !86, null}
!95 = metadata !{i32 31, i32 1, metadata !86, null}
!96 = metadata !{i32 32, i32 2, metadata !86, null}
!97 = metadata !{i32 33, i32 2, metadata !74, null}
!98 = metadata !{i32 36, i32 2, metadata !74, null}
!99 = metadata !{i32 31, i32 4, metadata !86, null}
!100 = metadata !{i32 37, i32 1, metadata !74, null}
