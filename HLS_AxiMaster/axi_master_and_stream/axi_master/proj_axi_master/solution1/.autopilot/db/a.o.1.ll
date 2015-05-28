; ModuleID = '/home/user/utils/HLS_AxiMaster/axi_master_and_stream/axi_master/proj_axi_master/solution1/.autopilot/db/a.g.1.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"ap_bus\00", align 1 ; [#uses=1 type=[7 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str2 = private unnamed_addr constant [6 x i8] c"AXI4M\00", align 1 ; [#uses=1 type=[6 x i8]*]
@.str3 = private unnamed_addr constant [5 x i8] c"axis\00", align 1 ; [#uses=1 type=[5 x i8]*]
@.str4 = private unnamed_addr constant [8 x i8] c"ap_none\00", align 1 ; [#uses=1 type=[8 x i8]*]
@.str5 = private unnamed_addr constant [10 x i8] c"AXI4LiteS\00", align 1 ; [#uses=1 type=[10 x i8]*]
@.str6 = private unnamed_addr constant [19 x i8] c"-bus_bundle MYAXIL\00", align 1 ; [#uses=1 type=[19 x i8]*]
@.str7 = private unnamed_addr constant [8 x i8] c"ap_ovld\00", align 1 ; [#uses=1 type=[8 x i8]*]
@count = internal unnamed_addr global i32 0, align 4 ; [#uses=2 type=i32*]
@int_pending = internal unnamed_addr global i1 false, align 1 ; [#uses=4 type=i1*]
@local_ctrl_reg = internal unnamed_addr global i32 0, align 4 ; [#uses=0 type=i32*]
@.str8 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1 ; [#uses=1 type=[12 x i8]*]
@str = internal constant [8 x i8] c"example\00"   ; [#uses=1 type=[8 x i8]*]
@str1 = internal constant [18 x i8] c"memcpy.a.buff.gep\00" ; [#uses=1 type=[18 x i8]*]
@str2 = internal constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@str3 = internal constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@.str9 = internal constant [18 x i8] c"burstwrite.region\00" ; [#uses=2 type=[18 x i8]*]

; [#uses=0]
define void @example(i32* %a, i32* %stream_in, i32 %byte_wroffset, i32 %ctrl_reg, i32* %status_reg, i1* %interrupt) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecTopModule([8 x i8]* @str) nounwind
  %buff = alloca [128 x i32], align 16            ; [#uses=2 type=[128 x i32]*]
  call void @llvm.dbg.value(metadata !{i32* %a}, i64 0, metadata !32), !dbg !33 ; [debug line = 4:28] [debug variable = a]
  call void @llvm.dbg.value(metadata !{i32* %stream_in}, i64 0, metadata !34), !dbg !35 ; [debug line = 4:35] [debug variable = stream_in]
  call void @llvm.dbg.value(metadata !{i32 %byte_wroffset}, i64 0, metadata !36), !dbg !37 ; [debug line = 4:64] [debug variable = byte_wroffset]
  call void @llvm.dbg.value(metadata !{i32 %ctrl_reg}, i64 0, metadata !38), !dbg !39 ; [debug line = 5:18] [debug variable = ctrl_reg]
  call void @llvm.dbg.value(metadata !{i32* %status_reg}, i64 0, metadata !40), !dbg !41 ; [debug line = 5:42] [debug variable = status_reg]
  call void @llvm.dbg.value(metadata !{i1* %interrupt}, i64 0, metadata !42), !dbg !43 ; [debug line = 5:60] [debug variable = interrupt]
  call void (...)* @_ssdm_SpecArrayDimSize(i32* %stream_in, i32 128) nounwind, !dbg !44 ; [debug line = 6:2]
  call void (...)* @_ssdm_op_SpecInterface(i32* %a, i8* getelementptr inbounds ([7 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !46 ; [debug line = 7:1]
  call void (...)* @_ssdm_op_SpecResource(i32* %a, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 -1, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !47 ; [debug line = 8:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %stream_in, i8* getelementptr inbounds ([5 x i8]* @.str3, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !48 ; [debug line = 9:1]
  call void (...)* @_ssdm_SpecStream(i32* %stream_in, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !49 ; [debug line = 10:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %byte_wroffset, i8* getelementptr inbounds ([8 x i8]* @.str4, i64 0, i64 0), i32 1, i32 1, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !50 ; [debug line = 11:1]
  call void (...)* @_ssdm_op_SpecResource(i32 %byte_wroffset, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 -1, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8]* @.str6, i64 0, i64 0)) nounwind, !dbg !51 ; [debug line = 12:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %ctrl_reg, i8* getelementptr inbounds ([8 x i8]* @.str4, i64 0, i64 0), i32 1, i32 1, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !52 ; [debug line = 13:1]
  call void (...)* @_ssdm_op_SpecResource(i32 %ctrl_reg, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 -1, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8]* @.str6, i64 0, i64 0)) nounwind, !dbg !53 ; [debug line = 14:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %status_reg, i8* getelementptr inbounds ([8 x i8]* @.str7, i64 0, i64 0), i32 1, i32 1, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !54 ; [debug line = 15:1]
  call void (...)* @_ssdm_op_SpecInterface(i1* %interrupt, i8* getelementptr inbounds ([8 x i8]* @.str7, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !55 ; [debug line = 17:1]
  call void @llvm.dbg.declare(metadata !{[128 x i32]* %buff}, metadata !56), !dbg !60 ; [debug line = 19:6] [debug variable = buff]
  %tmp = and i32 %ctrl_reg, 1, !dbg !61           ; [#uses=1 type=i32] [debug line = 25:2]
  %tmp.1 = icmp eq i32 %tmp, 0, !dbg !61          ; [#uses=1 type=i1] [debug line = 25:2]
  br i1 %tmp.1, label %._crit_edge, label %1, !dbg !61 ; [debug line = 25:2]

; <label>:1                                       ; preds = %0
  %int_pending.load = load i1* @int_pending, align 1, !dbg !61 ; [#uses=1 type=i1] [debug line = 25:2]
  br i1 %int_pending.load, label %._crit_edge, label %2, !dbg !61 ; [debug line = 25:2]

; <label>:2                                       ; preds = %1
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([12 x i8]* @.str8, i64 0, i64 0)) nounwind, !dbg !62 ; [#uses=1 type=i32] [debug line = 25:54]
  br label %3, !dbg !64                           ; [debug line = 26:8]

; <label>:3                                       ; preds = %4, %2
  %i = phi i32 [ 0, %2 ], [ %i.1, %4 ]            ; [#uses=3 type=i32]
  %exitcond = icmp eq i32 %i, 128, !dbg !64       ; [#uses=1 type=i1] [debug line = 26:8]
  br i1 %exitcond, label %5, label %4, !dbg !64   ; [debug line = 26:8]

; <label>:4                                       ; preds = %3
  %tmp.3 = sext i32 %i to i64, !dbg !66           ; [#uses=2 type=i64] [debug line = 27:5]
  %stream_in.addr = getelementptr inbounds i32* %stream_in, i64 %tmp.3, !dbg !66 ; [#uses=1 type=i32*] [debug line = 27:5]
  %stream_in.load = load i32* %stream_in.addr, align 4, !dbg !66 ; [#uses=2 type=i32] [debug line = 27:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %stream_in.load) nounwind
  %buff.addr = getelementptr inbounds [128 x i32]* %buff, i64 0, i64 %tmp.3, !dbg !66 ; [#uses=1 type=i32*] [debug line = 27:5]
  store i32 %stream_in.load, i32* %buff.addr, align 4, !dbg !66 ; [debug line = 27:5]
  %i.1 = add nsw i32 %i, 1, !dbg !67              ; [#uses=1 type=i32] [debug line = 26:22]
  call void @llvm.dbg.value(metadata !{i32 %i.1}, i64 0, metadata !68), !dbg !67 ; [debug line = 26:22] [debug variable = i]
  br label %3, !dbg !67                           ; [debug line = 26:22]

; <label>:5                                       ; preds = %3
  %tmp.2 = lshr i32 %byte_wroffset, 2, !dbg !69   ; [#uses=1 type=i32] [debug line = 28:4]
  br label %burst.wr.header

burst.wr.header:                                  ; preds = %burst.wr.body, %5
  %indvar = phi i32 [ 0, %5 ], [ %indvar.next, %burst.wr.body ] ; [#uses=4 type=i32]
  %exitcond3 = icmp eq i32 %indvar, 128           ; [#uses=1 type=i1]
  br i1 %exitcond3, label %burst.wr.end, label %burst.wr.body

burst.wr.body:                                    ; preds = %burst.wr.header
  %burstwrite.rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin([18 x i8]* @.str9) nounwind ; [#uses=1 type=i32]
  %6 = call i32 (...)* @_ssdm_op_SpecBurst(i32* %a, i32 0, i32 128) nounwind ; [#uses=0 type=i32]
  %7 = call i32 (...)* @_ssdm_SpecLoopFlatten(i32 1, [1 x i8]* @str3) nounwind ; [#uses=0 type=i32]
  %8 = call i32 (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @str2) nounwind ; [#uses=0 type=i32]
  %9 = call i32 (...)* @_ssdm_op_SpecLoopName([18 x i8]* @str1) nounwind ; [#uses=0 type=i32]
  %indvar.next = add i32 %indvar, 1               ; [#uses=1 type=i32]
  %tmp.6 = sext i32 %indvar to i64, !dbg !69      ; [#uses=1 type=i64] [debug line = 28:4]
  %buff.addr.1 = getelementptr [128 x i32]* %buff, i64 0, i64 %tmp.6, !dbg !69 ; [#uses=1 type=i32*] [debug line = 28:4]
  %buff.load = load i32* %buff.addr.1, align 4, !dbg !69 ; [#uses=1 type=i32] [debug line = 28:4]
  %a.addr = add i32 %indvar, %tmp.2               ; [#uses=1 type=i32]
  %tmp.7 = sext i32 %a.addr to i64, !dbg !69      ; [#uses=1 type=i64] [debug line = 28:4]
  %a.addr.1 = getelementptr i32* %a, i64 %tmp.7, !dbg !69 ; [#uses=1 type=i32*] [debug line = 28:4]
  store i32 %buff.load, i32* %a.addr.1, align 4, !dbg !69 ; [debug line = 28:4]
  %burstwrite.rend = call i32 (...)* @_ssdm_op_SpecRegionEnd([18 x i8]* @.str9, i32 %burstwrite.rbegin) nounwind ; [#uses=0 type=i32]
  br label %burst.wr.header

burst.wr.end:                                     ; preds = %burst.wr.header
  %count.load = load i32* @count, align 4, !dbg !70 ; [#uses=1 type=i32] [debug line = 29:4]
  %tmp.5 = add i32 %count.load, 128, !dbg !70     ; [#uses=2 type=i32] [debug line = 29:4]
  store i32 %tmp.5, i32* @count, align 4, !dbg !70 ; [debug line = 29:4]
  store i32 %tmp.5, i32* %status_reg, align 4, !dbg !71 ; [debug line = 30:4]
  call void (...)* @_ssdm_op_SpecResource(i32* %status_reg, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 -1, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8]* @.str6, i64 0, i64 0)) nounwind, !dbg !72 ; [debug line = 31:1]
  store i1 true, i1* @int_pending, align 1, !dbg !73 ; [debug line = 31:4]
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([12 x i8]* @.str8, i64 0, i64 0), i32 %rbegin) nounwind, !dbg !74 ; [#uses=0 type=i32] [debug line = 32:2]
  br label %._crit_edge, !dbg !74                 ; [debug line = 32:2]

._crit_edge:                                      ; preds = %burst.wr.end, %1, %0
  %tmp.8 = and i32 %ctrl_reg, 2, !dbg !75         ; [#uses=1 type=i32] [debug line = 33:2]
  %tmp.9 = icmp eq i32 %tmp.8, 0, !dbg !75        ; [#uses=1 type=i1] [debug line = 33:2]
  br i1 %tmp.9, label %._crit_edge2, label %10, !dbg !75 ; [debug line = 33:2]

; <label>:10                                      ; preds = %._crit_edge
  store i1 false, i1* @int_pending, align 1, !dbg !76 ; [debug line = 34:3]
  br label %._crit_edge2, !dbg !78                ; [debug line = 35:2]

._crit_edge2:                                     ; preds = %10, %._crit_edge
  %int_pending.load.1 = load i1* @int_pending, align 1, !dbg !79 ; [#uses=1 type=i1] [debug line = 36:2]
  store i1 %int_pending.load.1, i1* %interrupt, align 1, !dbg !79 ; [debug line = 36:2]
  ret void, !dbg !80                              ; [debug line = 37:1]
}

; [#uses=1]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=1]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

; [#uses=6]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=4]
declare void @_ssdm_op_SpecResource(...) nounwind

; [#uses=1]
declare void @_ssdm_SpecStream(...) nounwind

; [#uses=7]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
declare void @_ssdm_SpecKeepArrayLoad(...)

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

!llvm.dbg.cu = !{!0}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"/home/user/utils/HLS_AxiMaster/axi_master_and_stream/axi_master/proj_axi_master/solution1/.autopilot/db/example.pragma.2.cpp", metadata !"/home/user/utils/HLS_AxiMaster/axi_master_and_stream/axi_master", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !19} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"example", metadata !"example", metadata !"_Z7examplePViPijjPjPb", metadata !6, i32 4, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32*, i32*, i32, i32, i32*, i1*)* @example, null, null, metadata !17, i32 6} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"example.cpp", metadata !"/home/user/utils/HLS_AxiMaster/axi_master_and_stream/axi_master", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9, metadata !12, metadata !13, metadata !13, metadata !14, metadata !15}
!9 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!10 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_volatile_type ]
!11 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!12 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !11} ; [ DW_TAG_pointer_type ]
!13 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!14 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !13} ; [ DW_TAG_pointer_type ]
!15 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !16} ; [ DW_TAG_pointer_type ]
!16 = metadata !{i32 786468, null, metadata !"bool", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 2} ; [ DW_TAG_base_type ]
!17 = metadata !{metadata !18}
!18 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!19 = metadata !{metadata !20}
!20 = metadata !{metadata !21, metadata !22, metadata !23, metadata !24, metadata !27, metadata !28, metadata !29, metadata !31}
!21 = metadata !{i32 786484, i32 0, metadata !5, metadata !"count", metadata !"count", metadata !"", metadata !6, i32 20, metadata !13, i32 1, i32 1, i32* @count} ; [ DW_TAG_variable ]
!22 = metadata !{i32 786484, i32 0, metadata !5, metadata !"int_pending", metadata !"int_pending", metadata !"", metadata !6, i32 21, metadata !16, i32 1, i32 1, i1* @int_pending} ; [ DW_TAG_variable ]
!23 = metadata !{i32 786484, i32 0, metadata !5, metadata !"local_ctrl_reg", metadata !"local_ctrl_reg", metadata !"", metadata !6, i32 22, metadata !13, i32 1, i32 1, i32* @local_ctrl_reg} ; [ DW_TAG_variable ]
!24 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdin_", metadata !"_IO_2_1_stdin_", metadata !"", metadata !25, i32 320, metadata !26, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!25 = metadata !{i32 786473, metadata !"/usr/include/libio.h", metadata !"/home/user/utils/HLS_AxiMaster/axi_master_and_stream/axi_master", null} ; [ DW_TAG_file_type ]
!26 = metadata !{i32 786434, null, metadata !"_IO_FILE_plus", metadata !25, i32 318, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!27 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdout_", metadata !"_IO_2_1_stdout_", metadata !"", metadata !25, i32 321, metadata !26, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!28 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stderr_", metadata !"_IO_2_1_stderr_", metadata !"", metadata !25, i32 322, metadata !26, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!29 = metadata !{i32 786484, i32 0, null, metadata !"sys_nerr", metadata !"sys_nerr", metadata !"", metadata !30, i32 26, metadata !11, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!30 = metadata !{i32 786473, metadata !"/usr/include/x86_64-linux-gnu/bits/sys_errlist.h", metadata !"/home/user/utils/HLS_AxiMaster/axi_master_and_stream/axi_master", null} ; [ DW_TAG_file_type ]
!31 = metadata !{i32 786484, i32 0, null, metadata !"_sys_nerr", metadata !"_sys_nerr", metadata !"", metadata !30, i32 30, metadata !11, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!32 = metadata !{i32 786689, metadata !5, metadata !"a", metadata !6, i32 16777220, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!33 = metadata !{i32 4, i32 28, metadata !5, null}
!34 = metadata !{i32 786689, metadata !5, metadata !"stream_in", metadata !6, i32 33554436, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!35 = metadata !{i32 4, i32 35, metadata !5, null}
!36 = metadata !{i32 786689, metadata !5, metadata !"byte_wroffset", metadata !6, i32 50331652, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!37 = metadata !{i32 4, i32 64, metadata !5, null}
!38 = metadata !{i32 786689, metadata !5, metadata !"ctrl_reg", metadata !6, i32 67108869, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!39 = metadata !{i32 5, i32 18, metadata !5, null}
!40 = metadata !{i32 786689, metadata !5, metadata !"status_reg", metadata !6, i32 83886085, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!41 = metadata !{i32 5, i32 42, metadata !5, null}
!42 = metadata !{i32 786689, metadata !5, metadata !"interrupt", metadata !6, i32 100663301, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!43 = metadata !{i32 5, i32 60, metadata !5, null}
!44 = metadata !{i32 6, i32 2, metadata !45, null}
!45 = metadata !{i32 786443, metadata !5, i32 6, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!46 = metadata !{i32 7, i32 1, metadata !45, null}
!47 = metadata !{i32 8, i32 1, metadata !45, null}
!48 = metadata !{i32 9, i32 1, metadata !45, null}
!49 = metadata !{i32 10, i32 1, metadata !45, null}
!50 = metadata !{i32 11, i32 1, metadata !45, null}
!51 = metadata !{i32 12, i32 1, metadata !45, null}
!52 = metadata !{i32 13, i32 1, metadata !45, null}
!53 = metadata !{i32 14, i32 1, metadata !45, null}
!54 = metadata !{i32 15, i32 1, metadata !45, null}
!55 = metadata !{i32 17, i32 1, metadata !45, null}
!56 = metadata !{i32 786688, metadata !45, metadata !"buff", metadata !6, i32 19, metadata !57, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!57 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 4096, i64 32, i32 0, i32 0, metadata !11, metadata !58, i32 0, i32 0} ; [ DW_TAG_array_type ]
!58 = metadata !{metadata !59}
!59 = metadata !{i32 786465, i64 0, i64 127}      ; [ DW_TAG_subrange_type ]
!60 = metadata !{i32 19, i32 6, metadata !45, null}
!61 = metadata !{i32 25, i32 2, metadata !45, null}
!62 = metadata !{i32 25, i32 54, metadata !63, null}
!63 = metadata !{i32 786443, metadata !45, i32 25, i32 53, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!64 = metadata !{i32 26, i32 8, metadata !65, null}
!65 = metadata !{i32 786443, metadata !63, i32 26, i32 4, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!66 = metadata !{i32 27, i32 5, metadata !65, null}
!67 = metadata !{i32 26, i32 22, metadata !65, null}
!68 = metadata !{i32 786688, metadata !45, metadata !"i", metadata !6, i32 18, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!69 = metadata !{i32 28, i32 4, metadata !63, null}
!70 = metadata !{i32 29, i32 4, metadata !63, null}
!71 = metadata !{i32 30, i32 4, metadata !63, null}
!72 = metadata !{i32 31, i32 1, metadata !63, null}
!73 = metadata !{i32 31, i32 4, metadata !63, null}
!74 = metadata !{i32 32, i32 2, metadata !63, null}
!75 = metadata !{i32 33, i32 2, metadata !45, null}
!76 = metadata !{i32 34, i32 3, metadata !77, null}
!77 = metadata !{i32 786443, metadata !45, i32 33, i32 26, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!78 = metadata !{i32 35, i32 2, metadata !77, null}
!79 = metadata !{i32 36, i32 2, metadata !45, null}
!80 = metadata !{i32 37, i32 1, metadata !45, null}
