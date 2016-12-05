; ModuleID = '/users/deastir/mcaceres/Documents/VIVADO/TP_Vivado_HLS/TP_Vivado_HLS/gaussian/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64"
target triple = "x86_64-unknown-linux-gnu"

%"struct.std::ios_base::Init" = type <{ i8 }>

@.str = private constant [10 x i8] c"ap_memory\00", align 1 ; <[10 x i8]*> [#uses=2]
@.str1 = private constant [1 x i8] zeroinitializer, align 1 ; <[1 x i8]*> [#uses=2]
@llvm.global_ctors.0 = appending global [1 x i32] [i32 65535] ; <[1 x i32]*> [#uses=0]
@llvm.global_ctors.1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I__Z19gaussian_fixedPointPA1920_tS0_] ; <[1 x void ()*]*> [#uses=0]
@llvm.global_dtors.0 = appending global [1 x i32] [i32 65535] ; <[1 x i32]*> [#uses=0]
@llvm.global_dtors.1 = appending global [1 x void ()*] [void ()* @_GLOBAL__D__Z19gaussian_fixedPointPA1920_tS0_] ; <[1 x void ()*]*> [#uses=0]
@tmp = internal global [1080 x [1920 x float]] zeroinitializer, align 32 ; <[1080 x [1920 x float]]*> [#uses=4]

declare void @_ssdm_op_SpecMem(...) nounwind

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @_GLOBAL__I__Z19gaussian_fixedPointPA1920_tS0_() nounwind

declare void @_GLOBAL__D__Z19gaussian_fixedPointPA1920_tS0_() nounwind

define void @gaussian([1080 x [1920 x i16]]* %in, [1080 x [1920 x i16]]* %out) nounwind {
entry:
  call void @llvm.dbg.value(metadata !{[1080 x [1920 x i16]]* %in}, i64 0, metadata !8)
  call void @llvm.dbg.value(metadata !{[1080 x [1920 x i16]]* %out}, i64 0, metadata !19)
  call void (...)* @_ssdm_op_SpecMem([1080 x [1920 x i16]]* %in, [10 x i8]* @.str, i32 0, i32 0, i32 0, [1 x i8]* @.str1) nounwind, !dbg !20
  call void (...)* @_ssdm_op_SpecMem([1080 x [1920 x i16]]* %out, [10 x i8]* @.str, i32 0, i32 0, i32 0, [1 x i8]* @.str1) nounwind, !dbg !22
  call fastcc void @gaussian_sep([1080 x [1920 x i16]]* %in, [1080 x [1920 x i16]]* %out) nounwind, !dbg !23
  ret void, !dbg !24
}

define internal fastcc void @gaussian_sep([1080 x [1920 x i16]]* nocapture %in, [1080 x [1920 x i16]]* nocapture %out) nounwind {
entry:
  call void @llvm.dbg.value(metadata !{[1080 x [1920 x i16]]* %in}, i64 0, metadata !25)
  call void @llvm.dbg.value(metadata !{[1080 x [1920 x i16]]* %out}, i64 0, metadata !33)
  br label %bb4, !dbg !34

bb1:                                              ; preds = %bb2
  %tmp.5 = zext i11 %j to i64, !dbg !37           ; <i64> [#uses=4]
  %in.addr = getelementptr [1080 x [1920 x i16]]* %in, i64 0, i64 %tmp.1, i64 %tmp.5, !dbg !37 ; <i16*> [#uses=1]
  %in.load = load i16* %in.addr, align 2, !dbg !37 ; <i16> [#uses=1]
  %tmp.6 = zext i16 %in.load to i64, !dbg !37     ; <i64> [#uses=1]
  %tmp.7 = sitofp i64 %tmp.6 to float, !dbg !37   ; <float> [#uses=1]
  %tmp.8 = fmul float %tmp.7, 0x3FCF91E640000000, !dbg !37 ; <float> [#uses=1]
  %in.addr.1 = getelementptr [1080 x [1920 x i16]]* %in, i64 0, i64 %tmp.2, i64 %tmp.5, !dbg !37 ; <i16*> [#uses=1]
  %in.load.1 = load i16* %in.addr.1, align 2, !dbg !37 ; <i16> [#uses=1]
  %tmp.9 = zext i16 %in.load.1 to i64, !dbg !37   ; <i64> [#uses=1]
  %tmp. = sitofp i64 %tmp.9 to float, !dbg !37    ; <float> [#uses=1]
  %tmp.10 = fmul float %tmp., 0x3FE36A2B20000000, !dbg !37 ; <float> [#uses=1]
  %tmp.11 = fadd float %tmp.8, %tmp.10, !dbg !37  ; <float> [#uses=1]
  %in.addr.2 = getelementptr [1080 x [1920 x i16]]* %in, i64 0, i64 %tmp.3, i64 %tmp.5, !dbg !37 ; <i16*> [#uses=1]
  %in.load.2 = load i16* %in.addr.2, align 2, !dbg !37 ; <i16> [#uses=1]
  %tmp.12 = zext i16 %in.load.2 to i64, !dbg !37  ; <i64> [#uses=1]
  %tmp.13 = sitofp i64 %tmp.12 to float, !dbg !37 ; <float> [#uses=1]
  %tmp.14 = fmul float %tmp.13, 0x3FCF91E640000000, !dbg !37 ; <float> [#uses=1]
  %tmp.15 = fadd float %tmp.11, %tmp.14, !dbg !37 ; <float> [#uses=1]
  %tmp.addr = getelementptr inbounds [1080 x [1920 x float]]* @tmp, i64 0, i64 %tmp.2, i64 %tmp.5, !dbg !37 ; <float*> [#uses=1]
  store float %tmp.15, float* %tmp.addr, align 4, !dbg !37
  %j.2 = add i11 %j, 1, !dbg !38                  ; <i11> [#uses=1]
  call void @llvm.dbg.value(metadata !{i11 %j.2}, i64 0, metadata !39), !dbg !38
  br label %bb2, !dbg !38

bb2:                                              ; preds = %bb2.preheader, %bb1
  %j = phi i11 [ %j.2, %bb1 ], [ 0, %bb2.preheader ] ; <i11> [#uses=3]
  call void @llvm.dbg.value(metadata !{i11 %j}, i64 0, metadata !39)
  %0 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1920, i64 1920, i64 1920) nounwind ; <i32> [#uses=0]
  %exitcond6 = icmp eq i11 %j, -128, !dbg !38     ; <i1> [#uses=1]
  br i1 %exitcond6, label %bb4, label %bb1, !dbg !38

bb4:                                              ; preds = %bb2, %entry
  %indvar3 = phi i11 [ 0, %entry ], [ %i, %bb2 ]  ; <i11> [#uses=4]
  %tmp = add i11 %indvar3, 2, !dbg !37            ; <i11> [#uses=1]
  %i = add i11 %indvar3, 1, !dbg !34              ; <i11> [#uses=2]
  call void @llvm.dbg.value(metadata !{i11 %i}, i64 0, metadata !41), !dbg !34
  %1 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1078, i64 1078, i64 1078) nounwind ; <i32> [#uses=0]
  %exitcond7 = icmp eq i11 %indvar3, -970, !dbg !34 ; <i1> [#uses=1]
  br i1 %exitcond7, label %bb10, label %bb2.preheader, !dbg !34

bb2.preheader:                                    ; preds = %bb4
  %tmp.1 = zext i11 %indvar3 to i64, !dbg !37     ; <i64> [#uses=1]
  %tmp.2 = zext i11 %i to i64, !dbg !37           ; <i64> [#uses=2]
  %tmp.3 = zext i11 %tmp to i64, !dbg !37         ; <i64> [#uses=1]
  br label %bb2

bb7:                                              ; preds = %bb8
  %tmp.16 = zext i11 %indvar to i64, !dbg !42     ; <i64> [#uses=1]
  %tmp.addr.1 = getelementptr inbounds [1080 x [1920 x float]]* @tmp, i64 0, i64 %tmp.4, i64 %tmp.16, !dbg !42 ; <float*> [#uses=1]
  %2 = load float* %tmp.addr.1, align 4, !dbg !42 ; <float> [#uses=1]
  %tmp.17 = fmul float %2, 0x3FCF91E640000000, !dbg !42 ; <float> [#uses=1]
  %tmp.18 = zext i11 %j.1 to i64, !dbg !42        ; <i64> [#uses=2]
  %tmp.addr.2 = getelementptr inbounds [1080 x [1920 x float]]* @tmp, i64 0, i64 %tmp.4, i64 %tmp.18, !dbg !42 ; <float*> [#uses=1]
  %3 = load float* %tmp.addr.2, align 4, !dbg !42 ; <float> [#uses=1]
  %tmp.19 = fmul float %3, 0x3FE36A2B20000000, !dbg !42 ; <float> [#uses=1]
  %tmp.20 = fadd float %tmp.17, %tmp.19, !dbg !42 ; <float> [#uses=1]
  %tmp.21 = zext i11 %tmp8 to i64, !dbg !42       ; <i64> [#uses=1]
  %tmp.addr.3 = getelementptr inbounds [1080 x [1920 x float]]* @tmp, i64 0, i64 %tmp.4, i64 %tmp.21, !dbg !42 ; <float*> [#uses=1]
  %4 = load float* %tmp.addr.3, align 4, !dbg !42 ; <float> [#uses=1]
  %tmp.22 = fmul float %4, 0x3FCF91E640000000, !dbg !42 ; <float> [#uses=1]
  %tmp.23 = fadd float %tmp.20, %tmp.22, !dbg !42 ; <float> [#uses=1]
  %tmp.24 = fptoui float %tmp.23 to i64, !dbg !42 ; <i64> [#uses=1]
  %tmp.25 = trunc i64 %tmp.24 to i16, !dbg !42    ; <i16> [#uses=1]
  %out.addr = getelementptr [1080 x [1920 x i16]]* %out, i64 0, i64 %tmp.4, i64 %tmp.18, !dbg !42 ; <i16*> [#uses=1]
  store i16 %tmp.25, i16* %out.addr, align 2, !dbg !42
  br label %bb8, !dbg !43

bb8:                                              ; preds = %bb8.preheader, %bb7
  %indvar = phi i11 [ 0, %bb8.preheader ], [ %j.1, %bb7 ] ; <i11> [#uses=4]
  %tmp8 = add i11 %indvar, 2, !dbg !42            ; <i11> [#uses=1]
  %j.1 = add i11 %indvar, 1, !dbg !43             ; <i11> [#uses=2]
  call void @llvm.dbg.value(metadata !{i11 %j.1}, i64 0, metadata !39), !dbg !43
  %5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1918, i64 1918, i64 1918) nounwind ; <i32> [#uses=0]
  %exitcond4 = icmp eq i11 %indvar, -130, !dbg !43 ; <i1> [#uses=1]
  br i1 %exitcond4, label %bb9, label %bb7, !dbg !43

bb9:                                              ; preds = %bb8
  %i.2 = add i11 %i.1, 1, !dbg !44                ; <i11> [#uses=1]
  call void @llvm.dbg.value(metadata !{i11 %i.2}, i64 0, metadata !41), !dbg !44
  br label %bb10, !dbg !44

bb10:                                             ; preds = %bb9, %bb4
  %i.1 = phi i11 [ %i.2, %bb9 ], [ 0, %bb4 ]      ; <i11> [#uses=3]
  call void @llvm.dbg.value(metadata !{i11 %i.1}, i64 0, metadata !41)
  %6 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1080, i64 1080, i64 1080) nounwind ; <i32> [#uses=0]
  %exitcond5 = icmp eq i11 %i.1, -968, !dbg !44   ; <i1> [#uses=1]
  br i1 %exitcond5, label %return, label %bb8.preheader, !dbg !44

bb8.preheader:                                    ; preds = %bb10
  %tmp.4 = zext i11 %i.1 to i64, !dbg !42         ; <i64> [#uses=4]
  br label %bb8

return:                                           ; preds = %bb10
  ret void, !dbg !45
}

declare i32 @_ssdm_op_SpecLoopTripCount(...)

!llvm.dbg.gv = !{!0}

!0 = metadata !{i32 458804, i32 0, metadata !1, metadata !"tmp", metadata !"tmp", metadata !"", metadata !2, i32 14, metadata !3, i1 true, i1 true, [1080 x [1920 x float]]* @tmp} ; [ DW_TAG_variable ]
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
!38 = metadata !{i32 31, i32 0, metadata !35, null}
!39 = metadata !{i32 459008, metadata !35, metadata !"j", metadata !2, i32 28, metadata !40} ; [ DW_TAG_auto_variable ]
!40 = metadata !{i32 458788, metadata !1, metadata !"int", metadata !1, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!41 = metadata !{i32 459008, metadata !35, metadata !"i", metadata !2, i32 28, metadata !40} ; [ DW_TAG_auto_variable ]
!42 = metadata !{i32 40, i32 0, metadata !35, null}
!43 = metadata !{i32 38, i32 0, metadata !35, null}
!44 = metadata !{i32 37, i32 0, metadata !35, null}
!45 = metadata !{i32 45, i32 0, metadata !35, null}
