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
@p_str7 = private constant [36 x i8] c"gaussian_scalarized_label0_pipeline\00", align 8 ; <[36 x i8]*> [#uses=3]
@p_str18 = private constant [1 x i8] zeroinitializer, align 1 ; <[1 x i8]*> [#uses=1]

define weak void @_ssdm_op_SpecMem(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @_GLOBAL__I__Z19gaussian_fixedPointPA1920_tS0_() nounwind

declare void @_GLOBAL__D__Z19gaussian_fixedPointPA1920_tS0_() nounwind

define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

define void @gaussian([2073600 x i16]* %in, [2073600 x i16]* %out) nounwind {
entry:
  call void @llvm.dbg.value(metadata !{[2073600 x i16]* %in}, i64 0, metadata !7)
  call void @llvm.dbg.value(metadata !{[2073600 x i16]* %out}, i64 0, metadata !19)
  call void (...)* @_ssdm_op_SpecMem([2073600 x i16]* %in, [10 x i8]* @p_str, i32 0, i32 0, i32 0, [1 x i8]* @p_str1) nounwind, !dbg !20
  call void (...)* @_ssdm_op_SpecMem([2073600 x i16]* %out, [10 x i8]* @p_str, i32 0, i32 0, i32 0, [1 x i8]* @p_str1) nounwind, !dbg !22
  call fastcc void @gaussian_scalarized([2073600 x i16]* nocapture %in, [2073600 x i16]* nocapture %out) nounwind, !dbg !23
  ret void, !dbg !24
}

define internal fastcc void @gaussian_scalarized([2073600 x i16]* nocapture %in, [2073600 x i16]* nocapture %out) nounwind {
entry:
  call void @llvm.dbg.value(metadata !{[2073600 x i16]* %in}, i64 0, metadata !25)
  call void @llvm.dbg.value(metadata !{[2073600 x i16]* %out}, i64 0, metadata !35)
  br label %bb4, !dbg !36

bb:                                               ; preds = %bb4
  %tmp = add i11 %indvar1, 2, !dbg !39            ; <i11> [#uses=2]
  call void @llvm.dbg.value(metadata !{i11 %i}, i64 0, metadata !40), !dbg !36
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1079, i64 1079, i64 1079) nounwind ; <i32> [#uses=0]
  %tmp_1 = call i22 @_ssdm_op_BitConcatenate.i22.i11.i11(i11 %indvar1, i11 0) ; <i22> [#uses=1]
  %p_shl_cast = zext i22 %tmp_1 to i23            ; <i23> [#uses=1]
  %tmp_5 = call i18 @_ssdm_op_BitConcatenate.i18.i11.i7(i11 %indvar1, i7 0) ; <i18> [#uses=1]
  %p_shl1_cast = zext i18 %tmp_5 to i23, !dbg !39 ; <i23> [#uses=1]
  %p_addr = sub i23 %p_shl_cast, %p_shl1_cast, !dbg !39 ; <i23> [#uses=3]
  %p_addr_cast1 = sext i23 %p_addr to i24, !dbg !39 ; <i24> [#uses=1]
  %p_addr_cast = sext i23 %p_addr to i32, !dbg !39 ; <i32> [#uses=1]
  %tmp_23 = zext i32 %p_addr_cast to i64          ; <i64> [#uses=1]
  %in_addr = getelementptr [2073600 x i16]* %in, i64 0, i64 %tmp_23, !dbg !39 ; <i16*> [#uses=1]
  %in_load = load i16* %in_addr, align 2, !dbg !39 ; <i16> [#uses=1]
  %tmp_2 = zext i16 %in_load to i64, !dbg !39     ; <i64> [#uses=1]
  %tmp_3 = sitofp i64 %tmp_2 to float, !dbg !39   ; <float> [#uses=1]
  %tmp_4 = fmul float %tmp_3, 0x3FCF91E640000000, !dbg !39 ; <float> [#uses=1]
  %tmp_40 = call i22 @_ssdm_op_BitConcatenate.i22.i11.i11(i11 %i, i11 0) ; <i22> [#uses=1]
  %p_shl2_cast = zext i22 %tmp_40 to i23          ; <i23> [#uses=1]
  %tmp_41 = call i18 @_ssdm_op_BitConcatenate.i18.i11.i7(i11 %i, i7 0) ; <i18> [#uses=1]
  %p_shl3_cast = zext i18 %tmp_41 to i23, !dbg !39 ; <i23> [#uses=1]
  %p_addr2 = sub i23 %p_shl2_cast, %p_shl3_cast, !dbg !39 ; <i23> [#uses=3]
  %p_addr2_cast1 = sext i23 %p_addr2 to i24, !dbg !39 ; <i24> [#uses=2]
  %p_addr2_cast = sext i23 %p_addr2 to i32, !dbg !39 ; <i32> [#uses=1]
  %tmp_42 = zext i32 %p_addr2_cast to i64         ; <i64> [#uses=1]
  %in_addr_1 = getelementptr [2073600 x i16]* %in, i64 0, i64 %tmp_42, !dbg !39 ; <i16*> [#uses=1]
  %in_load_1 = load i16* %in_addr_1, align 2, !dbg !39 ; <i16> [#uses=1]
  %tmp_6 = zext i16 %in_load_1 to i64, !dbg !39   ; <i64> [#uses=1]
  %tmp_7 = sitofp i64 %tmp_6 to float, !dbg !39   ; <float> [#uses=1]
  %tmp_8 = fmul float %tmp_7, 0x3FE36A2B20000000, !dbg !39 ; <float> [#uses=1]
  %tmp_9 = fadd float %tmp_4, %tmp_8, !dbg !39    ; <float> [#uses=1]
  %tmp_43 = call i22 @_ssdm_op_BitConcatenate.i22.i11.i11(i11 %tmp, i11 0) ; <i22> [#uses=1]
  %p_shl4_cast = zext i22 %tmp_43 to i23          ; <i23> [#uses=1]
  %tmp_44 = call i18 @_ssdm_op_BitConcatenate.i18.i11.i7(i11 %tmp, i7 0) ; <i18> [#uses=1]
  %p_shl5_cast = zext i18 %tmp_44 to i23, !dbg !39 ; <i23> [#uses=1]
  %p_addr3 = sub i23 %p_shl4_cast, %p_shl5_cast, !dbg !39 ; <i23> [#uses=3]
  %p_addr3_cast1 = sext i23 %p_addr3 to i24, !dbg !39 ; <i24> [#uses=1]
  %p_addr3_cast = sext i23 %p_addr3 to i32, !dbg !39 ; <i32> [#uses=1]
  %tmp_45 = zext i32 %p_addr3_cast to i64         ; <i64> [#uses=1]
  %in_addr_2 = getelementptr [2073600 x i16]* %in, i64 0, i64 %tmp_45, !dbg !39 ; <i16*> [#uses=1]
  %in_load_2 = load i16* %in_addr_2, align 2, !dbg !39 ; <i16> [#uses=1]
  %tmp_s = zext i16 %in_load_2 to i64, !dbg !39   ; <i64> [#uses=1]
  %tmp_10 = sitofp i64 %tmp_s to float, !dbg !39  ; <float> [#uses=1]
  %tmp_11 = fmul float %tmp_10, 0x3FCF91E640000000, !dbg !39 ; <float> [#uses=1]
  %tmp0 = fadd float %tmp_9, %tmp_11, !dbg !39    ; <float> [#uses=1]
  call void @llvm.dbg.value(metadata !{float %tmp0}, i64 0, metadata !42), !dbg !39
  %tmp_46 = call i22 @_ssdm_op_PartSelect.i22.i23.i32.i32(i23 %p_addr, i32 1, i32 22) ; <i22> [#uses=1]
  %tmp_47 = call i23 @_ssdm_op_BitConcatenate.i23.i22.i1(i22 %tmp_46, i1 true) ; <i23> [#uses=1]
  %p_addr5 = sext i23 %tmp_47 to i32, !dbg !44    ; <i32> [#uses=1]
  %tmp_48 = zext i32 %p_addr5 to i64              ; <i64> [#uses=1]
  %in_addr_3 = getelementptr [2073600 x i16]* %in, i64 0, i64 %tmp_48, !dbg !44 ; <i16*> [#uses=1]
  %in_load_3 = load i16* %in_addr_3, align 2, !dbg !44 ; <i16> [#uses=1]
  %tmp_12 = zext i16 %in_load_3 to i64, !dbg !44  ; <i64> [#uses=1]
  %tmp_13 = sitofp i64 %tmp_12 to float, !dbg !44 ; <float> [#uses=1]
  %tmp_14 = fmul float %tmp_13, 0x3FCF91E640000000, !dbg !44 ; <float> [#uses=1]
  %tmp_49 = call i22 @_ssdm_op_PartSelect.i22.i23.i32.i32(i23 %p_addr2, i32 1, i32 22) ; <i22> [#uses=1]
  %tmp_50 = call i23 @_ssdm_op_BitConcatenate.i23.i22.i1(i22 %tmp_49, i1 true) ; <i23> [#uses=1]
  %p_addr6 = sext i23 %tmp_50 to i32, !dbg !44    ; <i32> [#uses=1]
  %tmp_51 = zext i32 %p_addr6 to i64              ; <i64> [#uses=1]
  %in_addr_4 = getelementptr [2073600 x i16]* %in, i64 0, i64 %tmp_51, !dbg !44 ; <i16*> [#uses=1]
  %in_load_4 = load i16* %in_addr_4, align 2, !dbg !44 ; <i16> [#uses=1]
  %tmp_15 = zext i16 %in_load_4 to i64, !dbg !44  ; <i64> [#uses=1]
  %tmp_16 = sitofp i64 %tmp_15 to float, !dbg !44 ; <float> [#uses=1]
  %tmp_17 = fmul float %tmp_16, 0x3FE36A2B20000000, !dbg !44 ; <float> [#uses=1]
  %tmp_18 = fadd float %tmp_14, %tmp_17, !dbg !44 ; <float> [#uses=1]
  %tmp_52 = call i22 @_ssdm_op_PartSelect.i22.i23.i32.i32(i23 %p_addr3, i32 1, i32 22) ; <i22> [#uses=1]
  %tmp_58 = call i23 @_ssdm_op_BitConcatenate.i23.i22.i1(i22 %tmp_52, i1 true) ; <i23> [#uses=1]
  %p_addr8 = sext i23 %tmp_58 to i32, !dbg !44    ; <i32> [#uses=1]
  %tmp_53 = zext i32 %p_addr8 to i64              ; <i64> [#uses=1]
  %in_addr_5 = getelementptr [2073600 x i16]* %in, i64 0, i64 %tmp_53, !dbg !44 ; <i16*> [#uses=1]
  %in_load_5 = load i16* %in_addr_5, align 2, !dbg !44 ; <i16> [#uses=1]
  %tmp_19 = zext i16 %in_load_5 to i64, !dbg !44  ; <i64> [#uses=1]
  %tmp_20 = sitofp i64 %tmp_19 to float, !dbg !44 ; <float> [#uses=1]
  %tmp_21 = fmul float %tmp_20, 0x3FCF91E640000000, !dbg !44 ; <float> [#uses=1]
  %tmp1 = fadd float %tmp_18, %tmp_21, !dbg !44   ; <float> [#uses=1]
  call void @llvm.dbg.value(metadata !{float %tmp1}, i64 0, metadata !45), !dbg !44
  br label %bb2, !dbg !46

bb1:                                              ; preds = %bb2
  call void @llvm.dbg.value(metadata !{float %tmp1_3}, i64 0, metadata !45)
  call void @llvm.dbg.value(metadata !{float %tmp0_1}, i64 0, metadata !42)
  %j = add i11 %indvar, 2, !dbg !46               ; <i11> [#uses=1]
  call void @llvm.dbg.value(metadata !{i11 %j}, i64 0, metadata !47), !dbg !46
  %empty_17 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1918, i64 1918, i64 1918) nounwind ; <i32> [#uses=0]
  call void (...)* @_ssdm_op_SpecLoopName([36 x i8]* @p_str7) nounwind, !dbg !46
  %tmp_22 = call i32 (...)* @_ssdm_op_SpecRegionBegin([36 x i8]* @p_str7) nounwind, !dbg !46 ; <i32> [#uses=1]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, [1 x i8]* @p_str18) nounwind, !dbg !48
  %tmp_23_trn5_cast = zext i11 %j to i24, !dbg !48 ; <i24> [#uses=3]
  %p_addr7 = add i24 %p_addr_cast1, %tmp_23_trn5_cast, !dbg !48 ; <i24> [#uses=1]
  %p_addr7_cast = sext i24 %p_addr7 to i32, !dbg !48 ; <i32> [#uses=1]
  %tmp_54 = zext i32 %p_addr7_cast to i64         ; <i64> [#uses=1]
  %in_addr_6 = getelementptr [2073600 x i16]* %in, i64 0, i64 %tmp_54, !dbg !48 ; <i16*> [#uses=1]
  %in_load_6 = load i16* %in_addr_6, align 2, !dbg !48 ; <i16> [#uses=1]
  %tmp_24 = zext i16 %in_load_6 to i64, !dbg !48  ; <i64> [#uses=1]
  %tmp_25 = sitofp i64 %tmp_24 to float, !dbg !48 ; <float> [#uses=1]
  %tmp_26 = fmul float %tmp_25, 0x3FCF91E640000000, !dbg !48 ; <float> [#uses=1]
  %p_addr4 = add i24 %p_addr2_cast1, %tmp_23_trn5_cast, !dbg !48 ; <i24> [#uses=1]
  %p_addr4_cast = sext i24 %p_addr4 to i32, !dbg !48 ; <i32> [#uses=1]
  %tmp_55 = zext i32 %p_addr4_cast to i64         ; <i64> [#uses=1]
  %in_addr_7 = getelementptr [2073600 x i16]* %in, i64 0, i64 %tmp_55, !dbg !48 ; <i16*> [#uses=1]
  %in_load_7 = load i16* %in_addr_7, align 2, !dbg !48 ; <i16> [#uses=1]
  %tmp_27 = zext i16 %in_load_7 to i64, !dbg !48  ; <i64> [#uses=1]
  %tmp_28 = sitofp i64 %tmp_27 to float, !dbg !48 ; <float> [#uses=1]
  %tmp_29 = fmul float %tmp_28, 0x3FE36A2B20000000, !dbg !48 ; <float> [#uses=1]
  %tmp_30 = fadd float %tmp_26, %tmp_29, !dbg !48 ; <float> [#uses=1]
  %p_addr1 = add i24 %p_addr3_cast1, %tmp_23_trn5_cast, !dbg !48 ; <i24> [#uses=1]
  %p_addr1_cast = sext i24 %p_addr1 to i32, !dbg !48 ; <i32> [#uses=1]
  %tmp_56 = zext i32 %p_addr1_cast to i64         ; <i64> [#uses=1]
  %in_addr_8 = getelementptr [2073600 x i16]* %in, i64 0, i64 %tmp_56, !dbg !48 ; <i16*> [#uses=1]
  %in_load_8 = load i16* %in_addr_8, align 2, !dbg !48 ; <i16> [#uses=1]
  %tmp_31 = zext i16 %in_load_8 to i64, !dbg !48  ; <i64> [#uses=1]
  %tmp_32 = sitofp i64 %tmp_31 to float, !dbg !48 ; <float> [#uses=1]
  %tmp_33 = fmul float %tmp_32, 0x3FCF91E640000000, !dbg !48 ; <float> [#uses=1]
  %tmp2 = fadd float %tmp_30, %tmp_33, !dbg !48   ; <float> [#uses=2]
  call void @llvm.dbg.value(metadata !{float %tmp2}, i64 0, metadata !49), !dbg !48
  %tmp_34 = fmul float %tmp0_1, 0x3FCF91E640000000, !dbg !50 ; <float> [#uses=1]
  %tmp_35 = fmul float %tmp1_3, 0x3FE36A2B20000000, !dbg !50 ; <float> [#uses=1]
  %tmp_36 = fadd float %tmp_34, %tmp_35, !dbg !50 ; <float> [#uses=1]
  %tmp_37 = fmul float %tmp2, 0x3FCF91E640000000, !dbg !50 ; <float> [#uses=1]
  %tmp_38 = fadd float %tmp_36, %tmp_37, !dbg !50 ; <float> [#uses=1]
  %tmp_39 = fptoui float %tmp_38 to i64, !dbg !50 ; <i64> [#uses=1]
  %tmp_59 = trunc i64 %tmp_39 to i16, !dbg !50    ; <i16> [#uses=1]
  %tmp_40_trn_cast = zext i11 %tmp6 to i24, !dbg !50 ; <i24> [#uses=1]
  %p_addr9 = add i24 %p_addr2_cast1, %tmp_40_trn_cast, !dbg !50 ; <i24> [#uses=1]
  %p_addr9_cast = sext i24 %p_addr9 to i32, !dbg !50 ; <i32> [#uses=1]
  %tmp_57 = zext i32 %p_addr9_cast to i64         ; <i64> [#uses=1]
  %out_addr = getelementptr [2073600 x i16]* %out, i64 0, i64 %tmp_57, !dbg !50 ; <i16*> [#uses=1]
  store i16 %tmp_59, i16* %out_addr, align 2, !dbg !50
  call void @llvm.dbg.value(metadata !{float %tmp1_3}, i64 0, metadata !42), !dbg !51
  call void @llvm.dbg.value(metadata !{float %tmp2}, i64 0, metadata !45), !dbg !52
  %empty_18 = call i32 (...)* @_ssdm_op_SpecRegionEnd([36 x i8]* @p_str7, i32 %tmp_22) nounwind, !dbg !53 ; <i32> [#uses=0]
  br label %bb2, !dbg !46

bb2:                                              ; preds = %bb1, %bb
  %indvar = phi i11 [ 0, %bb ], [ %tmp6, %bb1 ]   ; <i11> [#uses=3]
  %tmp1_3 = phi float [ %tmp1, %bb ], [ %tmp2, %bb1 ] ; <float> [#uses=2]
  %tmp0_1 = phi float [ %tmp0, %bb ], [ %tmp1_3, %bb1 ] ; <float> [#uses=1]
  %exitcond1 = icmp eq i11 %indvar, -130, !dbg !46 ; <i1> [#uses=1]
  %tmp6 = add i11 %indvar, 1, !dbg !50            ; <i11> [#uses=2]
  br i1 %exitcond1, label %bb4, label %bb1, !dbg !46

bb4:                                              ; preds = %bb2, %entry
  %indvar1 = phi i11 [ 0, %entry ], [ %i, %bb2 ]  ; <i11> [#uses=5]
  %exitcond = icmp eq i11 %indvar1, -969, !dbg !36 ; <i1> [#uses=1]
  %i = add i11 %indvar1, 1, !dbg !36              ; <i11> [#uses=3]
  br i1 %exitcond, label %return, label %bb, !dbg !36

return:                                           ; preds = %bb4
  ret void, !dbg !54
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak i22 @_ssdm_op_BitConcatenate.i22.i11.i11(i11, i11) nounwind readnone {
entry:
  %empty = zext i11 %0 to i22                     ; <i22> [#uses=1]
  %empty_19 = zext i11 %1 to i22                  ; <i22> [#uses=2]
  %empty_20 = trunc i22 %empty to i11             ; <i11> [#uses=1]
  %empty_21 = call i11 @_ssdm_op_PartSelect.i11.i22.i32.i32(i22 %empty_19, i32 11, i32 21) ; <i11> [#uses=1]
  %empty_22 = or i11 %empty_20, %empty_21         ; <i11> [#uses=1]
  %empty_23 = call i22 @_ssdm_op_PartSet.i22.i22.i11.i32.i32(i22 %empty_19, i11 %empty_22, i32 11, i32 21) ; <i22> [#uses=1]
  ret i22 %empty_23
}

define weak i18 @_ssdm_op_BitConcatenate.i18.i11.i7(i11, i7) nounwind readnone {
entry:
  %empty = zext i11 %0 to i18                     ; <i18> [#uses=1]
  %empty_24 = zext i7 %1 to i18                   ; <i18> [#uses=2]
  %empty_25 = trunc i18 %empty to i11             ; <i11> [#uses=1]
  %empty_26 = call i11 @_ssdm_op_PartSelect.i11.i18.i32.i32(i18 %empty_24, i32 7, i32 17) ; <i11> [#uses=1]
  %empty_27 = or i11 %empty_25, %empty_26         ; <i11> [#uses=1]
  %empty_28 = call i18 @_ssdm_op_PartSet.i18.i18.i11.i32.i32(i18 %empty_24, i11 %empty_27, i32 7, i32 17) ; <i18> [#uses=1]
  ret i18 %empty_28
}

define weak i22 @_ssdm_op_PartSelect.i22.i23.i32.i32(i23, i32, i32) nounwind readnone {
entry:
  %empty = call i23 @llvm.part.select.i23(i23 %0, i32 %1, i32 %2) ; <i23> [#uses=1]
  %empty_29 = trunc i23 %empty to i22             ; <i22> [#uses=1]
  ret i22 %empty_29
}

define weak i23 @_ssdm_op_BitConcatenate.i23.i22.i1(i22, i1) nounwind readnone {
entry:
  %empty = zext i22 %0 to i23                     ; <i23> [#uses=1]
  %empty_30 = zext i1 %1 to i23                   ; <i23> [#uses=2]
  %empty_31 = trunc i23 %empty to i22             ; <i22> [#uses=1]
  %empty_32 = call i22 @_ssdm_op_PartSelect.i22.i23.i32.i32(i23 %empty_30, i32 1, i32 22) ; <i22> [#uses=1]
  %empty_33 = or i22 %empty_31, %empty_32         ; <i22> [#uses=1]
  %empty_34 = call i23 @_ssdm_op_PartSet.i23.i23.i22.i32.i32(i23 %empty_30, i22 %empty_33, i32 1, i32 22) ; <i23> [#uses=1]
  ret i23 %empty_34
}

declare i23 @llvm.part.select.i23(i23, i32, i32) nounwind readnone

declare i16 @_ssdm_op_PartSelect.i16.i64.i32.i32(i64, i32, i32) nounwind readnone

define weak i11 @_ssdm_op_PartSelect.i11.i22.i32.i32(i22, i32, i32) nounwind readnone {
entry:
  %empty = call i22 @llvm.part.select.i22(i22 %0, i32 %1, i32 %2) ; <i22> [#uses=1]
  %empty_35 = trunc i22 %empty to i11             ; <i11> [#uses=1]
  ret i11 %empty_35
}

define weak i22 @_ssdm_op_PartSet.i22.i22.i11.i32.i32(i22, i11, i32, i32) nounwind readnone {
entry:
  %empty = call i22 @llvm.part.set.i22.i11(i22 %0, i11 %1, i32 %2, i32 %3) ; <i22> [#uses=1]
  ret i22 %empty
}

define weak i11 @_ssdm_op_PartSelect.i11.i18.i32.i32(i18, i32, i32) nounwind readnone {
entry:
  %empty = call i18 @llvm.part.select.i18(i18 %0, i32 %1, i32 %2) ; <i18> [#uses=1]
  %empty_36 = trunc i18 %empty to i11             ; <i11> [#uses=1]
  ret i11 %empty_36
}

define weak i18 @_ssdm_op_PartSet.i18.i18.i11.i32.i32(i18, i11, i32, i32) nounwind readnone {
entry:
  %empty = call i18 @llvm.part.set.i18.i11(i18 %0, i11 %1, i32 %2, i32 %3) ; <i18> [#uses=1]
  ret i18 %empty
}

define weak i23 @_ssdm_op_PartSet.i23.i23.i22.i32.i32(i23, i22, i32, i32) nounwind readnone {
entry:
  %empty = call i23 @llvm.part.set.i23.i22(i23 %0, i22 %1, i32 %2, i32 %3) ; <i23> [#uses=1]
  ret i23 %empty
}

declare i22 @llvm.part.select.i22(i22, i32, i32) nounwind readnone

declare i22 @llvm.part.set.i22.i11(i22, i11, i32, i32) nounwind readnone

declare i18 @llvm.part.select.i18(i18, i32, i32) nounwind readnone

declare i18 @llvm.part.set.i18.i11(i18, i11, i32, i32) nounwind readnone

declare i23 @llvm.part.set.i23.i22(i23, i22, i32, i32) nounwind readnone

!llvm.dbg.gv = !{!0}

!0 = metadata !{i32 458804, i32 0, metadata !1, metadata !"tmp", metadata !"tmp", metadata !"", metadata !2, i32 5, metadata !3, i1 true, i1 true, null} ; [ DW_TAG_variable ]
!1 = metadata !{i32 458769, i32 0, i32 4, metadata !"gaussian_1line.pragma.2.cpp", metadata !"/users/deastir/mcaceres/Documents/VIVADO/TP_Vivado_HLS/TP_Vivado_HLS/gaussian/solution1/.autopilot/db", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.7)", i1 true, i1 false, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!2 = metadata !{i32 458769, i32 0, i32 4, metadata !"gaussian_1line.cpp", metadata !"/users/deastir/mcaceres/Documents/VIVADO/TP_Vivado_HLS/TP_Vivado_HLS/src", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.7)", i1 false, i1 false, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!3 = metadata !{i32 458753, metadata !1, metadata !"", metadata !1, i32 0, i64 61440, i64 32, i64 0, i32 0, metadata !4, metadata !5, i32 0, null} ; [ DW_TAG_array_type ]
!4 = metadata !{i32 458788, metadata !1, metadata !"float", metadata !1, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!5 = metadata !{metadata !6}
!6 = metadata !{i32 458785, i64 0, i64 1919}      ; [ DW_TAG_subrange_type ]
!7 = metadata !{i32 459009, metadata !8, metadata !"in", metadata !10, i32 4, metadata !16} ; [ DW_TAG_arg_variable ]
!8 = metadata !{i32 458798, i32 0, metadata !9, metadata !"gaussian", metadata !"gaussian", metadata !"_Z8gaussianPA1920_tS0_", metadata !10, i32 4, metadata !11, i1 false, i1 true, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!9 = metadata !{i32 458769, i32 0, i32 4, metadata !"gaussian.pragma.2.cpp", metadata !"/users/deastir/mcaceres/Documents/VIVADO/TP_Vivado_HLS/TP_Vivado_HLS/gaussian/solution1/.autopilot/db", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.7)", i1 true, i1 false, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!10 = metadata !{i32 458769, i32 0, i32 4, metadata !"gaussian.cpp", metadata !"/users/deastir/mcaceres/Documents/VIVADO/TP_Vivado_HLS/TP_Vivado_HLS/src", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.7)", i1 false, i1 false, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!11 = metadata !{i32 458773, metadata !9, metadata !"", metadata !9, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !12, i32 0, null} ; [ DW_TAG_subroutine_type ]
!12 = metadata !{null, metadata !13, metadata !13}
!13 = metadata !{i32 458767, metadata !9, metadata !"", metadata !9, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ]
!14 = metadata !{i32 458753, metadata !9, metadata !"", metadata !9, i32 0, i64 30720, i64 16, i64 0, i32 0, metadata !15, metadata !5, i32 0, null} ; [ DW_TAG_array_type ]
!15 = metadata !{i32 458788, metadata !9, metadata !"short unsigned int", metadata !9, i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!16 = metadata !{i32 458753, metadata !9, metadata !"", metadata !9, i32 0, i64 33177600, i64 16, i64 0, i32 0, metadata !15, metadata !17, i32 0, null} ; [ DW_TAG_array_type ]
!17 = metadata !{metadata !18, metadata !6}
!18 = metadata !{i32 458785, i64 0, i64 1079}     ; [ DW_TAG_subrange_type ]
!19 = metadata !{i32 459009, metadata !8, metadata !"out", metadata !10, i32 4, metadata !16} ; [ DW_TAG_arg_variable ]
!20 = metadata !{i32 6, i32 0, metadata !21, null}
!21 = metadata !{i32 458763, metadata !8, i32 4, i32 0} ; [ DW_TAG_lexical_block ]
!22 = metadata !{i32 7, i32 0, metadata !21, null}
!23 = metadata !{i32 12, i32 0, metadata !21, null}
!24 = metadata !{i32 15, i32 0, metadata !21, null}
!25 = metadata !{i32 459009, metadata !26, metadata !"in", metadata !28, i32 5, metadata !34} ; [ DW_TAG_arg_variable ]
!26 = metadata !{i32 458798, i32 0, metadata !27, metadata !"gaussian_scalarized", metadata !"gaussian_scalarized", metadata !"_Z19gaussian_scalarizedPA1920_tS0_", metadata !28, i32 5, metadata !29, i1 false, i1 true, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!27 = metadata !{i32 458769, i32 0, i32 4, metadata !"gaussian_scalarized.pragma.2.cpp", metadata !"/users/deastir/mcaceres/Documents/VIVADO/TP_Vivado_HLS/TP_Vivado_HLS/gaussian/solution1/.autopilot/db", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.7)", i1 true, i1 false, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!28 = metadata !{i32 458769, i32 0, i32 4, metadata !"gaussian_scalarized.cpp", metadata !"/users/deastir/mcaceres/Documents/VIVADO/TP_Vivado_HLS/TP_Vivado_HLS/src", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.7)", i1 false, i1 false, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!29 = metadata !{i32 458773, metadata !27, metadata !"", metadata !27, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !30, i32 0, null} ; [ DW_TAG_subroutine_type ]
!30 = metadata !{null, metadata !31, metadata !31}
!31 = metadata !{i32 458767, metadata !27, metadata !"", metadata !27, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !32} ; [ DW_TAG_pointer_type ]
!32 = metadata !{i32 458753, metadata !27, metadata !"", metadata !27, i32 0, i64 30720, i64 16, i64 0, i32 0, metadata !33, metadata !5, i32 0, null} ; [ DW_TAG_array_type ]
!33 = metadata !{i32 458788, metadata !27, metadata !"short unsigned int", metadata !27, i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!34 = metadata !{i32 458753, metadata !27, metadata !"", metadata !27, i32 0, i64 33177600, i64 16, i64 0, i32 0, metadata !33, metadata !17, i32 0, null} ; [ DW_TAG_array_type ]
!35 = metadata !{i32 459009, metadata !26, metadata !"out", metadata !28, i32 5, metadata !34} ; [ DW_TAG_arg_variable ]
!36 = metadata !{i32 21, i32 0, metadata !37, null}
!37 = metadata !{i32 458763, metadata !38, i32 5, i32 0} ; [ DW_TAG_lexical_block ]
!38 = metadata !{i32 458763, metadata !26, i32 5, i32 0} ; [ DW_TAG_lexical_block ]
!39 = metadata !{i32 22, i32 0, metadata !37, null}
!40 = metadata !{i32 459008, metadata !37, metadata !"i", metadata !28, i32 20, metadata !41} ; [ DW_TAG_auto_variable ]
!41 = metadata !{i32 458788, metadata !27, metadata !"int", metadata !27, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!42 = metadata !{i32 459008, metadata !37, metadata !"tmp0", metadata !28, i32 19, metadata !43} ; [ DW_TAG_auto_variable ]
!43 = metadata !{i32 458788, metadata !27, metadata !"float", metadata !27, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!44 = metadata !{i32 23, i32 0, metadata !37, null}
!45 = metadata !{i32 459008, metadata !37, metadata !"tmp1", metadata !28, i32 19, metadata !43} ; [ DW_TAG_auto_variable ]
!46 = metadata !{i32 24, i32 0, metadata !37, null}
!47 = metadata !{i32 459008, metadata !37, metadata !"j", metadata !28, i32 20, metadata !41} ; [ DW_TAG_auto_variable ]
!48 = metadata !{i32 25, i32 0, metadata !37, null}
!49 = metadata !{i32 459008, metadata !37, metadata !"tmp2", metadata !28, i32 19, metadata !43} ; [ DW_TAG_auto_variable ]
!50 = metadata !{i32 26, i32 0, metadata !37, null}
!51 = metadata !{i32 27, i32 0, metadata !37, null}
!52 = metadata !{i32 28, i32 0, metadata !37, null}
!53 = metadata !{i32 29, i32 0, metadata !37, null}
!54 = metadata !{i32 35, i32 0, metadata !37, null}
