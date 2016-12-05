; ModuleID = '/users/deastir/mcaceres/Documents/VIVADO/TP_Vivado_HLS/TP_Vivado_HLS/gaussian/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64"
target triple = "x86_64-unknown-linux-gnu"

%"struct.std::ios_base::Init" = type <{ i8 }>

@p_str = private constant [10 x i8] c"ap_memory\00", align 1 ; <[10 x i8]*> [#uses=2]
@p_str1 = private constant [1 x i8] zeroinitializer, align 1 ; <[1 x i8]*> [#uses=2]
@tmp = internal global [1920 x float] zeroinitializer, align 32 ; <[1920 x float]*> [#uses=5]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535] ; <[1 x i32]*> [#uses=0]
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I__Z19gaussian_fixedPointPA1920_tS0_] ; <[1 x void ()*]*> [#uses=0]
@llvm_global_dtors_0 = appending global [1 x i32] [i32 65535] ; <[1 x i32]*> [#uses=0]
@llvm_global_dtors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__D__Z19gaussian_fixedPointPA1920_tS0_] ; <[1 x void ()*]*> [#uses=0]

define weak void @_ssdm_op_SpecMem(...) nounwind {
entry:
  ret void
}

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @_GLOBAL__I__Z19gaussian_fixedPointPA1920_tS0_() nounwind

declare void @_GLOBAL__D__Z19gaussian_fixedPointPA1920_tS0_() nounwind

define void @gaussian([2073600 x i16]* %in_r, [2073600 x i16]* %out_r) nounwind {
entry:
  call void (...)* @_ssdm_op_SpecMem([2073600 x i16]* %in_r, [10 x i8]* @p_str, i32 0, i32 0, i32 0, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecMem([2073600 x i16]* %out_r, [10 x i8]* @p_str, i32 0, i32 0, i32 0, [1 x i8]* @p_str1) nounwind
  call fastcc void @gaussian_1line([2073600 x i16]* nocapture %in_r, [2073600 x i16]* nocapture %out_r) nounwind
  ret void
}

define internal fastcc void @gaussian_1line([2073600 x i16]* nocapture %in_r, [2073600 x i16]* nocapture %out_r) nounwind {
entry:
  br label %bb4

bb:                                               ; preds = %bb4
  %tmp_1 = call i22 @_ssdm_op_BitConcatenate.i22.i11.i11(i11 %indvar1, i11 0) ; <i22> [#uses=1]
  %p_shl_cast = zext i22 %tmp_1 to i23            ; <i23> [#uses=1]
  %tmp_5 = call i18 @_ssdm_op_BitConcatenate.i18.i11.i7(i11 %indvar1, i7 0) ; <i18> [#uses=1]
  %p_shl1_cast = zext i18 %tmp_5 to i23           ; <i23> [#uses=1]
  %p_addr = sub i23 %p_shl_cast, %p_shl1_cast     ; <i23> [#uses=3]
  %p_addr_cast1 = sext i23 %p_addr to i24         ; <i24> [#uses=1]
  %p_addr_cast = sext i23 %p_addr to i32          ; <i32> [#uses=1]
  %tmp_44 = zext i32 %p_addr_cast to i64          ; <i64> [#uses=1]
  %in_addr = getelementptr [2073600 x i16]* %in_r, i64 0, i64 %tmp_44 ; <i16*> [#uses=1]
  %in_load = load i16* %in_addr, align 2          ; <i16> [#uses=1]
  %tmp_2 = zext i16 %in_load to i64               ; <i64> [#uses=1]
  %tmp_3 = sitofp i64 %tmp_2 to float             ; <float> [#uses=1]
  %tmp_4 = fmul float %tmp_3, 0x3FCF91E640000000  ; <float> [#uses=1]
  %tmp_45 = call i22 @_ssdm_op_BitConcatenate.i22.i11.i11(i11 %i, i11 0) ; <i22> [#uses=1]
  %p_shl2_cast = zext i22 %tmp_45 to i23          ; <i23> [#uses=1]
  %tmp_46 = call i18 @_ssdm_op_BitConcatenate.i18.i11.i7(i11 %i, i7 0) ; <i18> [#uses=1]
  %p_shl3_cast = zext i18 %tmp_46 to i23          ; <i23> [#uses=1]
  %p_addr2 = sub i23 %p_shl2_cast, %p_shl3_cast   ; <i23> [#uses=3]
  %p_addr2_cast1 = sext i23 %p_addr2 to i24       ; <i24> [#uses=2]
  %p_addr2_cast = sext i23 %p_addr2 to i32        ; <i32> [#uses=1]
  %tmp_47 = zext i32 %p_addr2_cast to i64         ; <i64> [#uses=1]
  %in_addr_1 = getelementptr [2073600 x i16]* %in_r, i64 0, i64 %tmp_47 ; <i16*> [#uses=1]
  %in_load_1 = load i16* %in_addr_1, align 2      ; <i16> [#uses=1]
  %tmp_6 = zext i16 %in_load_1 to i64             ; <i64> [#uses=1]
  %tmp_7 = sitofp i64 %tmp_6 to float             ; <float> [#uses=1]
  %tmp_8 = fmul float %tmp_7, 0x3FE36A2B20000000  ; <float> [#uses=1]
  %tmp_9 = fadd float %tmp_4, %tmp_8              ; <float> [#uses=1]
  %tmp_48 = call i22 @_ssdm_op_BitConcatenate.i22.i11.i11(i11 %tmp_1_1, i11 0) ; <i22> [#uses=1]
  %p_shl4_cast = zext i22 %tmp_48 to i23          ; <i23> [#uses=1]
  %tmp_49 = call i18 @_ssdm_op_BitConcatenate.i18.i11.i7(i11 %tmp_1_1, i7 0) ; <i18> [#uses=1]
  %p_shl5_cast = zext i18 %tmp_49 to i23          ; <i23> [#uses=1]
  %p_addr3 = sub i23 %p_shl4_cast, %p_shl5_cast   ; <i23> [#uses=3]
  %p_addr3_cast1 = sext i23 %p_addr3 to i24       ; <i24> [#uses=1]
  %p_addr3_cast = sext i23 %p_addr3 to i32        ; <i32> [#uses=1]
  %tmp_50 = zext i32 %p_addr3_cast to i64         ; <i64> [#uses=1]
  %in_addr_2 = getelementptr [2073600 x i16]* %in_r, i64 0, i64 %tmp_50 ; <i16*> [#uses=1]
  %in_load_2 = load i16* %in_addr_2, align 2      ; <i16> [#uses=1]
  %tmp_s = zext i16 %in_load_2 to i64             ; <i64> [#uses=1]
  %tmp_10 = sitofp i64 %tmp_s to float            ; <float> [#uses=1]
  %tmp_11 = fmul float %tmp_10, 0x3FCF91E640000000 ; <float> [#uses=1]
  %tmp_12 = fadd float %tmp_9, %tmp_11            ; <float> [#uses=1]
  store float %tmp_12, float* getelementptr inbounds ([1920 x float]* @tmp, i64 0, i64 0), align 32
  %tmp_1_2 = call i22 @_ssdm_op_PartSelect.i22.i23.i32.i32(i23 %p_addr, i32 1, i32 22) ; <i22> [#uses=1]
  %tmp_51 = call i23 @_ssdm_op_BitConcatenate.i23.i22.i1(i22 %tmp_1_2, i1 true) ; <i23> [#uses=1]
  %p_addr5 = sext i23 %tmp_51 to i32              ; <i32> [#uses=1]
  %tmp_52 = zext i32 %p_addr5 to i64              ; <i64> [#uses=1]
  %in_addr_3 = getelementptr [2073600 x i16]* %in_r, i64 0, i64 %tmp_52 ; <i16*> [#uses=1]
  %in_load_3 = load i16* %in_addr_3, align 2      ; <i16> [#uses=1]
  %tmp_13 = zext i16 %in_load_3 to i64            ; <i64> [#uses=1]
  %tmp_14 = sitofp i64 %tmp_13 to float           ; <float> [#uses=1]
  %tmp_15 = fmul float %tmp_14, 0x3FCF91E640000000 ; <float> [#uses=1]
  %tmp_53 = call i22 @_ssdm_op_PartSelect.i22.i23.i32.i32(i23 %p_addr2, i32 1, i32 22) ; <i22> [#uses=1]
  %tmp_54 = call i23 @_ssdm_op_BitConcatenate.i23.i22.i1(i22 %tmp_53, i1 true) ; <i23> [#uses=1]
  %p_addr6 = sext i23 %tmp_54 to i32              ; <i32> [#uses=1]
  %tmp_55 = zext i32 %p_addr6 to i64              ; <i64> [#uses=1]
  %in_addr_4 = getelementptr [2073600 x i16]* %in_r, i64 0, i64 %tmp_55 ; <i16*> [#uses=1]
  %in_load_4 = load i16* %in_addr_4, align 2      ; <i16> [#uses=1]
  %tmp_16 = zext i16 %in_load_4 to i64            ; <i64> [#uses=1]
  %tmp_17 = sitofp i64 %tmp_16 to float           ; <float> [#uses=1]
  %tmp_18 = fmul float %tmp_17, 0x3FE36A2B20000000 ; <float> [#uses=1]
  %tmp_19 = fadd float %tmp_15, %tmp_18           ; <float> [#uses=1]
  %tmp_56 = call i22 @_ssdm_op_PartSelect.i22.i23.i32.i32(i23 %p_addr3, i32 1, i32 22) ; <i22> [#uses=1]
  %tmp_57 = call i23 @_ssdm_op_BitConcatenate.i23.i22.i1(i22 %tmp_56, i1 true) ; <i23> [#uses=1]
  %p_addr8 = sext i23 %tmp_57 to i32              ; <i32> [#uses=1]
  %tmp_58 = zext i32 %p_addr8 to i64              ; <i64> [#uses=1]
  %in_addr_5 = getelementptr [2073600 x i16]* %in_r, i64 0, i64 %tmp_58 ; <i16*> [#uses=1]
  %in_load_5 = load i16* %in_addr_5, align 2      ; <i16> [#uses=1]
  %tmp_20 = zext i16 %in_load_5 to i64            ; <i64> [#uses=1]
  %tmp_21 = sitofp i64 %tmp_20 to float           ; <float> [#uses=1]
  %tmp_22 = fmul float %tmp_21, 0x3FCF91E640000000 ; <float> [#uses=1]
  %tmp_23 = fadd float %tmp_19, %tmp_22           ; <float> [#uses=1]
  store float %tmp_23, float* getelementptr inbounds ([1920 x float]* @tmp, i64 0, i64 1), align 4
  br label %bb2

bb1:                                              ; preds = %bb2
  %tmp_24 = zext i11 %j to i64                    ; <i64> [#uses=1]
  %tmp_25_trn5_cast = zext i11 %j to i24          ; <i24> [#uses=3]
  %p_addr7 = add i24 %p_addr_cast1, %tmp_25_trn5_cast ; <i24> [#uses=1]
  %p_addr7_cast = sext i24 %p_addr7 to i32        ; <i32> [#uses=1]
  %tmp_59 = zext i32 %p_addr7_cast to i64         ; <i64> [#uses=1]
  %in_addr_6 = getelementptr [2073600 x i16]* %in_r, i64 0, i64 %tmp_59 ; <i16*> [#uses=1]
  %in_load_6 = load i16* %in_addr_6, align 2      ; <i16> [#uses=1]
  %tmp_25 = zext i16 %in_load_6 to i64            ; <i64> [#uses=1]
  %tmp_26 = sitofp i64 %tmp_25 to float           ; <float> [#uses=1]
  %tmp_27 = fmul float %tmp_26, 0x3FCF91E640000000 ; <float> [#uses=1]
  %p_addr4 = add i24 %p_addr2_cast1, %tmp_25_trn5_cast ; <i24> [#uses=1]
  %p_addr4_cast = sext i24 %p_addr4 to i32        ; <i32> [#uses=1]
  %tmp_60 = zext i32 %p_addr4_cast to i64         ; <i64> [#uses=1]
  %in_addr_7 = getelementptr [2073600 x i16]* %in_r, i64 0, i64 %tmp_60 ; <i16*> [#uses=1]
  %in_load_7 = load i16* %in_addr_7, align 2      ; <i16> [#uses=1]
  %tmp_28 = zext i16 %in_load_7 to i64            ; <i64> [#uses=1]
  %tmp_29 = sitofp i64 %tmp_28 to float           ; <float> [#uses=1]
  %tmp_30 = fmul float %tmp_29, 0x3FE36A2B20000000 ; <float> [#uses=1]
  %tmp_31 = fadd float %tmp_27, %tmp_30           ; <float> [#uses=1]
  %p_addr1 = add i24 %p_addr3_cast1, %tmp_25_trn5_cast ; <i24> [#uses=1]
  %p_addr1_cast = sext i24 %p_addr1 to i32        ; <i32> [#uses=1]
  %tmp_61 = zext i32 %p_addr1_cast to i64         ; <i64> [#uses=1]
  %in_addr_8 = getelementptr [2073600 x i16]* %in_r, i64 0, i64 %tmp_61 ; <i16*> [#uses=1]
  %in_load_8 = load i16* %in_addr_8, align 2      ; <i16> [#uses=1]
  %tmp_32 = zext i16 %in_load_8 to i64            ; <i64> [#uses=1]
  %tmp_33 = sitofp i64 %tmp_32 to float           ; <float> [#uses=1]
  %tmp_34 = fmul float %tmp_33, 0x3FCF91E640000000 ; <float> [#uses=1]
  %tmp_35 = fadd float %tmp_31, %tmp_34           ; <float> [#uses=2]
  %tmp_addr = getelementptr inbounds [1920 x float]* @tmp, i64 0, i64 %tmp_24 ; <float*> [#uses=1]
  store float %tmp_35, float* %tmp_addr, align 4
  %tmp_36 = zext i11 %indvar to i64               ; <i64> [#uses=1]
  %tmp_addr_1 = getelementptr inbounds [1920 x float]* @tmp, i64 0, i64 %tmp_36 ; <float*> [#uses=1]
  %empty = load float* %tmp_addr_1, align 4       ; <float> [#uses=1]
  %tmp_37 = fmul float %empty, 0x3FCF91E640000000 ; <float> [#uses=1]
  %tmp_38 = zext i11 %tmp6 to i64                 ; <i64> [#uses=1]
  %tmp_addr_2 = getelementptr inbounds [1920 x float]* @tmp, i64 0, i64 %tmp_38 ; <float*> [#uses=1]
  %empty_17 = load float* %tmp_addr_2, align 4    ; <float> [#uses=1]
  %tmp_39 = fmul float %empty_17, 0x3FE36A2B20000000 ; <float> [#uses=1]
  %tmp_40 = fadd float %tmp_37, %tmp_39           ; <float> [#uses=1]
  %tmp_41 = fmul float %tmp_35, 0x3FCF91E640000000 ; <float> [#uses=1]
  %tmp_42 = fadd float %tmp_40, %tmp_41           ; <float> [#uses=1]
  %tmp_43 = fptoui float %tmp_42 to i64           ; <i64> [#uses=1]
  %tmp_63 = trunc i64 %tmp_43 to i16              ; <i16> [#uses=1]
  %tmp_39_trn_cast = zext i11 %tmp6 to i24        ; <i24> [#uses=1]
  %p_addr9 = add i24 %p_addr2_cast1, %tmp_39_trn_cast ; <i24> [#uses=1]
  %p_addr9_cast = sext i24 %p_addr9 to i32        ; <i32> [#uses=1]
  %tmp_62 = zext i32 %p_addr9_cast to i64         ; <i64> [#uses=1]
  %out_addr = getelementptr [2073600 x i16]* %out_r, i64 0, i64 %tmp_62 ; <i16*> [#uses=1]
  store i16 %tmp_63, i16* %out_addr, align 2
  br label %bb2

bb2:                                              ; preds = %bb1, %bb
  %indvar = phi i11 [ %tmp6, %bb1 ], [ 0, %bb ]   ; <i11> [#uses=4]
  %tmp6 = add i11 %indvar, 1                      ; <i11> [#uses=3]
  %j = add i11 %indvar, 2                         ; <i11> [#uses=2]
  %empty_18 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1918, i64 1918, i64 1918) nounwind ; <i32> [#uses=0]
  %exitcond1 = icmp eq i11 %indvar, -130          ; <i1> [#uses=1]
  br i1 %exitcond1, label %bb4, label %bb1

bb4:                                              ; preds = %bb2, %entry
  %indvar1 = phi i11 [ 0, %entry ], [ %i, %bb2 ]  ; <i11> [#uses=5]
  %tmp_1_1 = add i11 %indvar1, 2                  ; <i11> [#uses=2]
  %i = add i11 %indvar1, 1                        ; <i11> [#uses=3]
  %empty_19 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1079, i64 1079, i64 1079) nounwind ; <i32> [#uses=0]
  %exitcond = icmp eq i11 %indvar1, -969          ; <i1> [#uses=1]
  br i1 %exitcond, label %return, label %bb

return:                                           ; preds = %bb4
  ret void
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak i22 @_ssdm_op_BitConcatenate.i22.i11.i11(i11, i11) nounwind readnone {
entry:
  %empty = zext i11 %0 to i22                     ; <i22> [#uses=1]
  %empty_20 = zext i11 %1 to i22                  ; <i22> [#uses=2]
  %empty_21 = trunc i22 %empty to i11             ; <i11> [#uses=1]
  %empty_22 = call i11 @_ssdm_op_PartSelect.i11.i22.i32.i32(i22 %empty_20, i32 11, i32 21) ; <i11> [#uses=1]
  %empty_23 = or i11 %empty_21, %empty_22         ; <i11> [#uses=1]
  %empty_24 = call i22 @_ssdm_op_PartSet.i22.i22.i11.i32.i32(i22 %empty_20, i11 %empty_23, i32 11, i32 21) ; <i22> [#uses=1]
  ret i22 %empty_24
}

define weak i18 @_ssdm_op_BitConcatenate.i18.i11.i7(i11, i7) nounwind readnone {
entry:
  %empty = zext i11 %0 to i18                     ; <i18> [#uses=1]
  %empty_25 = zext i7 %1 to i18                   ; <i18> [#uses=2]
  %empty_26 = trunc i18 %empty to i11             ; <i11> [#uses=1]
  %empty_27 = call i11 @_ssdm_op_PartSelect.i11.i18.i32.i32(i18 %empty_25, i32 7, i32 17) ; <i11> [#uses=1]
  %empty_28 = or i11 %empty_26, %empty_27         ; <i11> [#uses=1]
  %empty_29 = call i18 @_ssdm_op_PartSet.i18.i18.i11.i32.i32(i18 %empty_25, i11 %empty_28, i32 7, i32 17) ; <i18> [#uses=1]
  ret i18 %empty_29
}

define weak i22 @_ssdm_op_PartSelect.i22.i23.i32.i32(i23, i32, i32) nounwind readnone {
entry:
  %empty = call i23 @llvm.part.select.i23(i23 %0, i32 %1, i32 %2) ; <i23> [#uses=1]
  %empty_30 = trunc i23 %empty to i22             ; <i22> [#uses=1]
  ret i22 %empty_30
}

define weak i23 @_ssdm_op_BitConcatenate.i23.i22.i1(i22, i1) nounwind readnone {
entry:
  %empty = zext i22 %0 to i23                     ; <i23> [#uses=1]
  %empty_31 = zext i1 %1 to i23                   ; <i23> [#uses=2]
  %empty_32 = trunc i23 %empty to i22             ; <i22> [#uses=1]
  %empty_33 = call i22 @_ssdm_op_PartSelect.i22.i23.i32.i32(i23 %empty_31, i32 1, i32 22) ; <i22> [#uses=1]
  %empty_34 = or i22 %empty_32, %empty_33         ; <i22> [#uses=1]
  %empty_35 = call i23 @_ssdm_op_PartSet.i23.i23.i22.i32.i32(i23 %empty_31, i22 %empty_34, i32 1, i32 22) ; <i23> [#uses=1]
  ret i23 %empty_35
}

declare i23 @llvm.part.select.i23(i23, i32, i32) nounwind readnone

declare i16 @_ssdm_op_PartSelect.i16.i64.i32.i32(i64, i32, i32) nounwind readnone

define weak i11 @_ssdm_op_PartSelect.i11.i22.i32.i32(i22, i32, i32) nounwind readnone {
entry:
  %empty = call i22 @llvm.part.select.i22(i22 %0, i32 %1, i32 %2) ; <i22> [#uses=1]
  %empty_36 = trunc i22 %empty to i11             ; <i11> [#uses=1]
  ret i11 %empty_36
}

define weak i22 @_ssdm_op_PartSet.i22.i22.i11.i32.i32(i22, i11, i32, i32) nounwind readnone {
entry:
  %empty = call i22 @llvm.part.set.i22.i11(i22 %0, i11 %1, i32 %2, i32 %3) ; <i22> [#uses=1]
  ret i22 %empty
}

define weak i11 @_ssdm_op_PartSelect.i11.i18.i32.i32(i18, i32, i32) nounwind readnone {
entry:
  %empty = call i18 @llvm.part.select.i18(i18 %0, i32 %1, i32 %2) ; <i18> [#uses=1]
  %empty_37 = trunc i18 %empty to i11             ; <i11> [#uses=1]
  ret i11 %empty_37
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

!0 = metadata !{i32 458804, i32 0, metadata !1, metadata !"tmp", metadata !"tmp", metadata !"", metadata !2, i32 5, metadata !3, i1 true, i1 true, [1920 x float]* @tmp} ; [ DW_TAG_variable ]
!1 = metadata !{i32 458769, i32 0, i32 4, metadata !"gaussian_1line.pragma.2.cpp", metadata !"/users/deastir/mcaceres/Documents/VIVADO/TP_Vivado_HLS/TP_Vivado_HLS/gaussian/solution1/.autopilot/db", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.7)", i1 true, i1 false, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!2 = metadata !{i32 458769, i32 0, i32 4, metadata !"gaussian_1line.cpp", metadata !"/users/deastir/mcaceres/Documents/VIVADO/TP_Vivado_HLS/TP_Vivado_HLS/src", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.7)", i1 false, i1 false, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!3 = metadata !{i32 458753, metadata !1, metadata !"", metadata !1, i32 0, i64 61440, i64 32, i64 0, i32 0, metadata !4, metadata !5, i32 0, null} ; [ DW_TAG_array_type ]
!4 = metadata !{i32 458788, metadata !1, metadata !"float", metadata !1, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!5 = metadata !{metadata !6}
!6 = metadata !{i32 458785, i64 0, i64 1919}      ; [ DW_TAG_subrange_type ]
