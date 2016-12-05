; ModuleID = '/users/deastir/mcaceres/Documents/VIVADO/TP_Vivado_HLS/TP_Vivado_HLS/gaussian/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64"
target triple = "x86_64-unknown-linux-gnu"

%"struct.std::ios_base::Init" = type <{ i8 }>

@p_str = private constant [10 x i8] c"ap_memory\00", align 1 ; <[10 x i8]*> [#uses=2]
@p_str1 = private constant [1 x i8] zeroinitializer, align 1 ; <[1 x i8]*> [#uses=2]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535] ; <[1 x i32]*> [#uses=0]
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I__Z19gaussian_fixedPointPA1920_tS0_] ; <[1 x void ()*]*> [#uses=0]
@llvm_global_dtors_0 = appending global [1 x i32] [i32 65535] ; <[1 x i32]*> [#uses=0]
@llvm_global_dtors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__D__Z19gaussian_fixedPointPA1920_tS0_] ; <[1 x void ()*]*> [#uses=0]
@tmp = internal global [2073600 x float] zeroinitializer ; <[2073600 x float]*> [#uses=4]

define weak void @_ssdm_op_SpecMem(...) nounwind {
entry:
  ret void
}

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @_GLOBAL__I__Z19gaussian_fixedPointPA1920_tS0_() nounwind

declare void @_GLOBAL__D__Z19gaussian_fixedPointPA1920_tS0_() nounwind

define void @gaussian([2073600 x i16]* %in, [2073600 x i16]* %out) nounwind {
entry:
  call void @llvm.dbg.value(metadata !{[2073600 x i16]* %in}, i64 0, metadata !8)
  call void @llvm.dbg.value(metadata !{[2073600 x i16]* %out}, i64 0, metadata !19)
  call void (...)* @_ssdm_op_SpecMem([2073600 x i16]* %in, [10 x i8]* @p_str, i32 0, i32 0, i32 0, [1 x i8]* @p_str1) nounwind, !dbg !20
  call void (...)* @_ssdm_op_SpecMem([2073600 x i16]* %out, [10 x i8]* @p_str, i32 0, i32 0, i32 0, [1 x i8]* @p_str1) nounwind, !dbg !22
  call fastcc void @gaussian_sep([2073600 x i16]* nocapture %in, [2073600 x i16]* nocapture %out) nounwind, !dbg !23
  ret void, !dbg !24
}

define internal fastcc void @gaussian_sep([2073600 x i16]* nocapture %in, [2073600 x i16]* nocapture %out) nounwind {
entry:
  call void @llvm.dbg.value(metadata !{[2073600 x i16]* %in}, i64 0, metadata !25)
  call void @llvm.dbg.value(metadata !{[2073600 x i16]* %out}, i64 0, metadata !33)
  br label %bb4, !dbg !34

bb1:                                              ; preds = %bb2
  %tmp_5_trn5_cast = zext i11 %j to i24           ; <i24> [#uses=3]
  %tmp_1 = call i22 @_ssdm_op_BitConcatenate.i22.i11.i11(i11 %indvar3, i11 0) ; <i22> [#uses=1]
  %p_shl_cast = zext i22 %tmp_1 to i23            ; <i23> [#uses=1]
  %tmp_2 = call i18 @_ssdm_op_BitConcatenate.i18.i11.i7(i11 %indvar3, i7 0) ; <i18> [#uses=1]
  %p_shl1_cast = zext i18 %tmp_2 to i23, !dbg !37 ; <i23> [#uses=1]
  %p_addr6 = sub i23 %p_shl_cast, %p_shl1_cast, !dbg !37 ; <i23> [#uses=1]
  %p_addr6_cast = sext i23 %p_addr6 to i24, !dbg !37 ; <i24> [#uses=1]
  %p_addr7 = add i24 %p_addr6_cast, %tmp_5_trn5_cast, !dbg !37 ; <i24> [#uses=1]
  %p_addr7_cast = sext i24 %p_addr7 to i32, !dbg !37 ; <i32> [#uses=1]
  %tmp_3 = zext i32 %p_addr7_cast to i64          ; <i64> [#uses=1]
  %in_addr = getelementptr [2073600 x i16]* %in, i64 0, i64 %tmp_3, !dbg !37 ; <i16*> [#uses=1]
  %in_load = load i16* %in_addr, align 2, !dbg !37 ; <i16> [#uses=1]
  %tmp_6 = zext i16 %in_load to i64, !dbg !37     ; <i64> [#uses=1]
  %tmp_7 = sitofp i64 %tmp_6 to float, !dbg !37   ; <float> [#uses=1]
  %tmp_8 = fmul float %tmp_7, 0x3FCF91E640000000, !dbg !37 ; <float> [#uses=1]
  %tmp_4 = call i22 @_ssdm_op_BitConcatenate.i22.i11.i11(i11 %i, i11 0) ; <i22> [#uses=1]
  %p_shl2_cast = zext i22 %tmp_4 to i23           ; <i23> [#uses=1]
  %tmp_5 = call i18 @_ssdm_op_BitConcatenate.i18.i11.i7(i11 %i, i7 0) ; <i18> [#uses=1]
  %p_shl3_cast = zext i18 %tmp_5 to i23, !dbg !37 ; <i23> [#uses=1]
  %p_addr3 = sub i23 %p_shl2_cast, %p_shl3_cast, !dbg !37 ; <i23> [#uses=1]
  %p_addr3_cast = sext i23 %p_addr3 to i24, !dbg !37 ; <i24> [#uses=1]
  %p_addr4 = add i24 %p_addr3_cast, %tmp_5_trn5_cast, !dbg !37 ; <i24> [#uses=1]
  %p_addr4_cast = sext i24 %p_addr4 to i32, !dbg !37 ; <i32> [#uses=1]
  %tmp_16 = zext i32 %p_addr4_cast to i64         ; <i64> [#uses=2]
  %in_addr_1 = getelementptr [2073600 x i16]* %in, i64 0, i64 %tmp_16, !dbg !37 ; <i16*> [#uses=1]
  %in_load_1 = load i16* %in_addr_1, align 2, !dbg !37 ; <i16> [#uses=1]
  %tmp_9 = zext i16 %in_load_1 to i64, !dbg !37   ; <i64> [#uses=1]
  %tmp_s = sitofp i64 %tmp_9 to float, !dbg !37   ; <float> [#uses=1]
  %tmp_10 = fmul float %tmp_s, 0x3FE36A2B20000000, !dbg !37 ; <float> [#uses=1]
  %tmp_11 = fadd float %tmp_8, %tmp_10, !dbg !37  ; <float> [#uses=1]
  %tmp_18 = call i22 @_ssdm_op_BitConcatenate.i22.i11.i11(i11 %tmp_1_1, i11 0) ; <i22> [#uses=1]
  %p_shl4_cast = zext i22 %tmp_18 to i23          ; <i23> [#uses=1]
  %tmp_21 = call i18 @_ssdm_op_BitConcatenate.i18.i11.i7(i11 %tmp_1_1, i7 0) ; <i18> [#uses=1]
  %p_shl5_cast = zext i18 %tmp_21 to i23, !dbg !37 ; <i23> [#uses=1]
  %p_addr = sub i23 %p_shl4_cast, %p_shl5_cast, !dbg !37 ; <i23> [#uses=1]
  %p_addr_cast = sext i23 %p_addr to i24, !dbg !37 ; <i24> [#uses=1]
  %p_addr1 = add i24 %p_addr_cast, %tmp_5_trn5_cast, !dbg !37 ; <i24> [#uses=1]
  %p_addr1_cast = sext i24 %p_addr1 to i32, !dbg !37 ; <i32> [#uses=1]
  %tmp_25 = zext i32 %p_addr1_cast to i64         ; <i64> [#uses=1]
  %in_addr_2 = getelementptr [2073600 x i16]* %in, i64 0, i64 %tmp_25, !dbg !37 ; <i16*> [#uses=1]
  %in_load_2 = load i16* %in_addr_2, align 2, !dbg !37 ; <i16> [#uses=1]
  %tmp_12 = zext i16 %in_load_2 to i64, !dbg !37  ; <i64> [#uses=1]
  %tmp_13 = sitofp i64 %tmp_12 to float, !dbg !37 ; <float> [#uses=1]
  %tmp_14 = fmul float %tmp_13, 0x3FCF91E640000000, !dbg !37 ; <float> [#uses=1]
  %tmp_15 = fadd float %tmp_11, %tmp_14, !dbg !37 ; <float> [#uses=1]
  %tmp_addr = getelementptr [2073600 x float]* @tmp, i64 0, i64 %tmp_16, !dbg !37 ; <float*> [#uses=1]
  store float %tmp_15, float* %tmp_addr, align 4, !dbg !37
  call void @llvm.dbg.value(metadata !{i11 %j_2}, i64 0, metadata !38), !dbg !40
  br label %bb2, !dbg !40

bb2:                                              ; preds = %bb4, %bb1
  %j = phi i11 [ %j_2, %bb1 ], [ 0, %bb4 ]        ; <i11> [#uses=3]
  call void @llvm.dbg.value(metadata !{i11 %j}, i64 0, metadata !38)
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1920, i64 1920, i64 1920) nounwind ; <i32> [#uses=0]
  %exitcond2 = icmp eq i11 %j, -128, !dbg !40     ; <i1> [#uses=1]
  %j_2 = add i11 %j, 1, !dbg !40                  ; <i11> [#uses=1]
  br i1 %exitcond2, label %bb4, label %bb1, !dbg !40

bb4:                                              ; preds = %bb2, %entry
  %indvar3 = phi i11 [ 0, %entry ], [ %i, %bb2 ]  ; <i11> [#uses=5]
  %tmp_1_1 = add i11 %indvar3, 2, !dbg !37        ; <i11> [#uses=2]
  %i = add i11 %indvar3, 1, !dbg !34              ; <i11> [#uses=3]
  call void @llvm.dbg.value(metadata !{i11 %i}, i64 0, metadata !41), !dbg !34
  %empty_12 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1078, i64 1078, i64 1078) nounwind ; <i32> [#uses=0]
  %exitcond1 = icmp eq i11 %indvar3, -970, !dbg !34 ; <i1> [#uses=1]
  br i1 %exitcond1, label %bb10, label %bb2, !dbg !34

bb7:                                              ; preds = %bb8
  %tmp_16_trn_cast = zext i11 %indvar to i24      ; <i24> [#uses=1]
  %tmp_26 = call i22 @_ssdm_op_BitConcatenate.i22.i11.i11(i11 %i_1, i11 0) ; <i22> [#uses=1]
  %p_shl6_cast = zext i22 %tmp_26 to i23          ; <i23> [#uses=1]
  %tmp_27 = call i18 @_ssdm_op_BitConcatenate.i18.i11.i7(i11 %i_1, i7 0) ; <i18> [#uses=1]
  %p_shl7_cast = zext i18 %tmp_27 to i23, !dbg !42 ; <i23> [#uses=1]
  %tmp_addr1 = sub i23 %p_shl6_cast, %p_shl7_cast, !dbg !42 ; <i23> [#uses=1]
  %tmp_addr1_cast = sext i23 %tmp_addr1 to i24, !dbg !42 ; <i24> [#uses=3]
  %tmp_addr2 = add i24 %tmp_addr1_cast, %tmp_16_trn_cast, !dbg !42 ; <i24> [#uses=1]
  %tmp_addr2_cast = sext i24 %tmp_addr2 to i32, !dbg !42 ; <i32> [#uses=1]
  %tmp_28 = zext i32 %tmp_addr2_cast to i64       ; <i64> [#uses=1]
  %tmp_addr_1 = getelementptr [2073600 x float]* @tmp, i64 0, i64 %tmp_28, !dbg !42 ; <float*> [#uses=1]
  %empty_13 = load float* %tmp_addr_1, align 4, !dbg !42 ; <float> [#uses=1]
  %tmp_17 = fmul float %empty_13, 0x3FCF91E640000000, !dbg !42 ; <float> [#uses=1]
  %tmp_18_trn_cast = zext i11 %j_1 to i24, !dbg !42 ; <i24> [#uses=1]
  %tmp_addr3 = add i24 %tmp_addr1_cast, %tmp_18_trn_cast, !dbg !42 ; <i24> [#uses=1]
  %tmp_addr3_cast = sext i24 %tmp_addr3 to i32, !dbg !42 ; <i32> [#uses=1]
  %tmp_29 = zext i32 %tmp_addr3_cast to i64       ; <i64> [#uses=2]
  %tmp_addr_2 = getelementptr [2073600 x float]* @tmp, i64 0, i64 %tmp_29, !dbg !42 ; <float*> [#uses=1]
  %empty_14 = load float* %tmp_addr_2, align 4, !dbg !42 ; <float> [#uses=1]
  %tmp_19 = fmul float %empty_14, 0x3FE36A2B20000000, !dbg !42 ; <float> [#uses=1]
  %tmp_20 = fadd float %tmp_17, %tmp_19, !dbg !42 ; <float> [#uses=1]
  %tmp_21_trn_cast = zext i11 %tmp8 to i24, !dbg !42 ; <i24> [#uses=1]
  %tmp_addr4 = add i24 %tmp_addr1_cast, %tmp_21_trn_cast, !dbg !42 ; <i24> [#uses=1]
  %tmp_addr4_cast = sext i24 %tmp_addr4 to i32, !dbg !42 ; <i32> [#uses=1]
  %tmp_30 = zext i32 %tmp_addr4_cast to i64       ; <i64> [#uses=1]
  %tmp_addr_3 = getelementptr [2073600 x float]* @tmp, i64 0, i64 %tmp_30, !dbg !42 ; <float*> [#uses=1]
  %empty_15 = load float* %tmp_addr_3, align 4, !dbg !42 ; <float> [#uses=1]
  %tmp_22 = fmul float %empty_15, 0x3FCF91E640000000, !dbg !42 ; <float> [#uses=1]
  %tmp_23 = fadd float %tmp_20, %tmp_22, !dbg !42 ; <float> [#uses=1]
  %tmp_24 = fptoui float %tmp_23 to i64, !dbg !42 ; <i64> [#uses=1]
  %tmp_1_2 = trunc i64 %tmp_24 to i16, !dbg !42   ; <i16> [#uses=1]
  %out_addr = getelementptr [2073600 x i16]* %out, i64 0, i64 %tmp_29, !dbg !42 ; <i16*> [#uses=1]
  store i16 %tmp_1_2, i16* %out_addr, align 2, !dbg !42
  br label %bb8, !dbg !43

bb8:                                              ; preds = %bb10, %bb7
  %indvar = phi i11 [ %j_1, %bb7 ], [ 0, %bb10 ]  ; <i11> [#uses=4]
  %tmp8 = add i11 %indvar, 2, !dbg !42            ; <i11> [#uses=1]
  %j_1 = add i11 %indvar, 1, !dbg !43             ; <i11> [#uses=2]
  call void @llvm.dbg.value(metadata !{i11 %j_1}, i64 0, metadata !38), !dbg !43
  %empty_16 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1918, i64 1918, i64 1918) nounwind ; <i32> [#uses=0]
  %exitcond3 = icmp eq i11 %indvar, -130, !dbg !43 ; <i1> [#uses=1]
  br i1 %exitcond3, label %bb10, label %bb7, !dbg !43

bb10:                                             ; preds = %bb8, %bb4
  %i_1 = phi i11 [ 0, %bb4 ], [ %i_2, %bb8 ]      ; <i11> [#uses=4]
  call void @llvm.dbg.value(metadata !{i11 %i_1}, i64 0, metadata !41)
  %empty_17 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1080, i64 1080, i64 1080) nounwind ; <i32> [#uses=0]
  %exitcond = icmp eq i11 %i_1, -968, !dbg !44    ; <i1> [#uses=1]
  %i_2 = add i11 %i_1, 1, !dbg !44                ; <i11> [#uses=1]
  call void @llvm.dbg.value(metadata !{i11 %i_2}, i64 0, metadata !41), !dbg !44
  br i1 %exitcond, label %return, label %bb8, !dbg !44

return:                                           ; preds = %bb10
  ret void, !dbg !45
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak i22 @_ssdm_op_BitConcatenate.i22.i11.i11(i11, i11) nounwind readnone {
entry:
  %empty = zext i11 %0 to i22                     ; <i22> [#uses=1]
  %empty_18 = zext i11 %1 to i22                  ; <i22> [#uses=2]
  %empty_19 = trunc i22 %empty to i11             ; <i11> [#uses=1]
  %empty_20 = call i11 @_ssdm_op_PartSelect.i11.i22.i32.i32(i22 %empty_18, i32 11, i32 21) ; <i11> [#uses=1]
  %empty_21 = or i11 %empty_19, %empty_20         ; <i11> [#uses=1]
  %empty_22 = call i22 @_ssdm_op_PartSet.i22.i22.i11.i32.i32(i22 %empty_18, i11 %empty_21, i32 11, i32 21) ; <i22> [#uses=1]
  ret i22 %empty_22
}

define weak i18 @_ssdm_op_BitConcatenate.i18.i11.i7(i11, i7) nounwind readnone {
entry:
  %empty = zext i11 %0 to i18                     ; <i18> [#uses=1]
  %empty_23 = zext i7 %1 to i18                   ; <i18> [#uses=2]
  %empty_24 = trunc i18 %empty to i11             ; <i11> [#uses=1]
  %empty_25 = call i11 @_ssdm_op_PartSelect.i11.i18.i32.i32(i18 %empty_23, i32 7, i32 17) ; <i11> [#uses=1]
  %empty_26 = or i11 %empty_24, %empty_25         ; <i11> [#uses=1]
  %empty_27 = call i18 @_ssdm_op_PartSet.i18.i18.i11.i32.i32(i18 %empty_23, i11 %empty_26, i32 7, i32 17) ; <i18> [#uses=1]
  ret i18 %empty_27
}

declare i16 @_ssdm_op_PartSelect.i16.i64.i32.i32(i64, i32, i32) nounwind readnone

define weak i11 @_ssdm_op_PartSelect.i11.i22.i32.i32(i22, i32, i32) nounwind readnone {
entry:
  %empty = call i22 @llvm.part.select.i22(i22 %0, i32 %1, i32 %2) ; <i22> [#uses=1]
  %empty_28 = trunc i22 %empty to i11             ; <i11> [#uses=1]
  ret i11 %empty_28
}

define weak i22 @_ssdm_op_PartSet.i22.i22.i11.i32.i32(i22, i11, i32, i32) nounwind readnone {
entry:
  %empty = call i22 @llvm.part.set.i22.i11(i22 %0, i11 %1, i32 %2, i32 %3) ; <i22> [#uses=1]
  ret i22 %empty
}

define weak i11 @_ssdm_op_PartSelect.i11.i18.i32.i32(i18, i32, i32) nounwind readnone {
entry:
  %empty = call i18 @llvm.part.select.i18(i18 %0, i32 %1, i32 %2) ; <i18> [#uses=1]
  %empty_29 = trunc i18 %empty to i11             ; <i11> [#uses=1]
  ret i11 %empty_29
}

define weak i18 @_ssdm_op_PartSet.i18.i18.i11.i32.i32(i18, i11, i32, i32) nounwind readnone {
entry:
  %empty = call i18 @llvm.part.set.i18.i11(i18 %0, i11 %1, i32 %2, i32 %3) ; <i18> [#uses=1]
  ret i18 %empty
}

declare i22 @llvm.part.select.i22(i22, i32, i32) nounwind readnone

declare i22 @llvm.part.set.i22.i11(i22, i11, i32, i32) nounwind readnone

declare i18 @llvm.part.select.i18(i18, i32, i32) nounwind readnone

declare i18 @llvm.part.set.i18.i11(i18, i11, i32, i32) nounwind readnone

!llvm.dbg.gv = !{!0}

!0 = metadata !{i32 458804, i32 0, metadata !1, metadata !"tmp", metadata !"tmp", metadata !"", metadata !2, i32 14, metadata !3, i1 true, i1 true, [2073600 x float]* @tmp} ; [ DW_TAG_variable ]
!1 = metadata !{i32 458769, i32 0, i32 4, metadata !"gaussian_sep.pragma.2.cpp", metadata !"/users/deastir/mcaceres/Documents/VIVADO/TP_Vivado_HLS/TP_Vivado_HLS/gaussian/solution1/.autopilot/db", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.7)", i1 true, i1 false, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!2 = metadata !{i32 458769, i32 0, i32 4, metadata !"gaussian_sep.cpp", metadata !"/users/deastir/mcaceres/Documents/VIVADO/TP_Vivado_HLS/TP_Vivado_HLS/src", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.7)", i1 false, i1 false, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!3 = metadata !{i32 458753, metadata !1, metadata !"", metadata !1, i32 0, i64 66355200, i64 32, i64 0, i32 0, metadata !4, metadata !5, i32 0, null} ; [ DW_TAG_array_type ]
!4 = metadata !{i32 458788, metadata !1, metadata !"float", metadata !1, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!5 = metadata !{metadata !6, metadata !7}
!6 = metadata !{i32 458785, i64 0, i64 1079}      ; [ DW_TAG_subrange_type ]
!7 = metadata !{i32 458785, i64 0, i64 1919}      ; [ DW_TAG_subrange_type ]
!8 = metadata !{i32 459009, metadata !9, metadata !"in", metadata !11, i32 4, metadata !18} ; [ DW_TAG_arg_variable ]
!9 = metadata !{i32 458798, i32 0, metadata !10, metadata !"gaussian", metadata !"gaussian", metadata !"_Z8gaussianPA1920_tS0_", metadata !11, i32 4, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!10 = metadata !{i32 458769, i32 0, i32 4, metadata !"gaussian.pragma.2.cpp", metadata !"/users/deastir/mcaceres/Documents/VIVADO/TP_Vivado_HLS/TP_Vivado_HLS/gaussian/solution1/.autopilot/db", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.7)", i1 true, i1 false, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!11 = metadata !{i32 458769, i32 0, i32 4, metadata !"gaussian.cpp", metadata !"/users/deastir/mcaceres/Documents/VIVADO/TP_Vivado_HLS/TP_Vivado_HLS/src", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.7)", i1 false, i1 false, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!12 = metadata !{i32 458773, metadata !10, metadata !"", metadata !10, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !13, i32 0, null} ; [ DW_TAG_subroutine_type ]
!13 = metadata !{null, metadata !14, metadata !14}
!14 = metadata !{i32 458767, metadata !10, metadata !"", metadata !10, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !15} ; [ DW_TAG_pointer_type ]
!15 = metadata !{i32 458753, metadata !10, metadata !"", metadata !10, i32 0, i64 30720, i64 16, i64 0, i32 0, metadata !16, metadata !17, i32 0, null} ; [ DW_TAG_array_type ]
!16 = metadata !{i32 458788, metadata !10, metadata !"short unsigned int", metadata !10, i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!17 = metadata !{metadata !7}
!18 = metadata !{i32 458753, metadata !10, metadata !"", metadata !10, i32 0, i64 33177600, i64 16, i64 0, i32 0, metadata !16, metadata !5, i32 0, null} ; [ DW_TAG_array_type ]
!19 = metadata !{i32 459009, metadata !9, metadata !"out", metadata !11, i32 4, metadata !18} ; [ DW_TAG_arg_variable ]
!20 = metadata !{i32 6, i32 0, metadata !21, null}
!21 = metadata !{i32 458763, metadata !9, i32 4, i32 0} ; [ DW_TAG_lexical_block ]
!22 = metadata !{i32 7, i32 0, metadata !21, null}
!23 = metadata !{i32 9, i32 0, metadata !21, null}
!24 = metadata !{i32 15, i32 0, metadata !21, null}
!25 = metadata !{i32 459009, metadata !26, metadata !"in", metadata !2, i32 16, metadata !32} ; [ DW_TAG_arg_variable ]
!26 = metadata !{i32 458798, i32 0, metadata !1, metadata !"gaussian_sep", metadata !"gaussian_sep", metadata !"_Z12gaussian_sepPA1920_tS0_", metadata !2, i32 16, metadata !27, i1 false, i1 true, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!27 = metadata !{i32 458773, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !28, i32 0, null} ; [ DW_TAG_subroutine_type ]
!28 = metadata !{null, metadata !29, metadata !29}
!29 = metadata !{i32 458767, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !30} ; [ DW_TAG_pointer_type ]
!30 = metadata !{i32 458753, metadata !1, metadata !"", metadata !1, i32 0, i64 30720, i64 16, i64 0, i32 0, metadata !31, metadata !17, i32 0, null} ; [ DW_TAG_array_type ]
!31 = metadata !{i32 458788, metadata !1, metadata !"short unsigned int", metadata !1, i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!32 = metadata !{i32 458753, metadata !1, metadata !"", metadata !1, i32 0, i64 33177600, i64 16, i64 0, i32 0, metadata !31, metadata !5, i32 0, null} ; [ DW_TAG_array_type ]
!33 = metadata !{i32 459009, metadata !26, metadata !"out", metadata !2, i32 16, metadata !32} ; [ DW_TAG_arg_variable ]
!34 = metadata !{i32 30, i32 0, metadata !35, null}
!35 = metadata !{i32 458763, metadata !36, i32 16, i32 0} ; [ DW_TAG_lexical_block ]
!36 = metadata !{i32 458763, metadata !26, i32 16, i32 0} ; [ DW_TAG_lexical_block ]
!37 = metadata !{i32 33, i32 0, metadata !35, null}
!38 = metadata !{i32 459008, metadata !35, metadata !"j", metadata !2, i32 28, metadata !39} ; [ DW_TAG_auto_variable ]
!39 = metadata !{i32 458788, metadata !1, metadata !"int", metadata !1, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!40 = metadata !{i32 31, i32 0, metadata !35, null}
!41 = metadata !{i32 459008, metadata !35, metadata !"i", metadata !2, i32 28, metadata !39} ; [ DW_TAG_auto_variable ]
!42 = metadata !{i32 40, i32 0, metadata !35, null}
!43 = metadata !{i32 38, i32 0, metadata !35, null}
!44 = metadata !{i32 37, i32 0, metadata !35, null}
!45 = metadata !{i32 45, i32 0, metadata !35, null}
