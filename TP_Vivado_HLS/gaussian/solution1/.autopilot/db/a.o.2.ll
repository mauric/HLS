; ModuleID = '/users/deastir/mcaceres/Documents/VIVADO/TP_Vivado_HLS/TP_Vivado_HLS/gaussian/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64"
target triple = "x86_64-unknown-linux-gnu"

%"struct.std::ios_base::Init" = type <{ i8 }>

@.str = private constant [10 x i8] c"ap_memory\00", align 1 ; <[10 x i8]*> [#uses=2]
@.str1 = private constant [1 x i8] zeroinitializer, align 1 ; <[1 x i8]*> [#uses=2]
@tmp = internal global [1920 x float] zeroinitializer, align 32 ; <[1920 x float]*> [#uses=5]
@llvm.global_ctors.0 = appending global [1 x i32] [i32 65535] ; <[1 x i32]*> [#uses=0]
@llvm.global_ctors.1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I__Z19gaussian_fixedPointPA1920_tS0_] ; <[1 x void ()*]*> [#uses=0]
@llvm.global_dtors.0 = appending global [1 x i32] [i32 65535] ; <[1 x i32]*> [#uses=0]
@llvm.global_dtors.1 = appending global [1 x void ()*] [void ()* @_GLOBAL__D__Z19gaussian_fixedPointPA1920_tS0_] ; <[1 x void ()*]*> [#uses=0]

declare void @_ssdm_op_SpecMem(...) nounwind

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @_GLOBAL__I__Z19gaussian_fixedPointPA1920_tS0_() nounwind

declare void @_GLOBAL__D__Z19gaussian_fixedPointPA1920_tS0_() nounwind

define void @gaussian([1080 x [1920 x i16]]* %in, [1080 x [1920 x i16]]* %out) nounwind {
entry:
  call void @llvm.dbg.value(metadata !{[1080 x [1920 x i16]]* %in}, i64 0, metadata !7)
  call void @llvm.dbg.value(metadata !{[1080 x [1920 x i16]]* %out}, i64 0, metadata !19)
  call void (...)* @_ssdm_op_SpecMem([1080 x [1920 x i16]]* %in, [10 x i8]* @.str, i32 0, i32 0, i32 0, [1 x i8]* @.str1) nounwind, !dbg !20
  call void (...)* @_ssdm_op_SpecMem([1080 x [1920 x i16]]* %out, [10 x i8]* @.str, i32 0, i32 0, i32 0, [1 x i8]* @.str1) nounwind, !dbg !22
  call fastcc void @gaussian_1line([1080 x [1920 x i16]]* %in, [1080 x [1920 x i16]]* %out) nounwind, !dbg !23
  ret void, !dbg !24
}

define internal fastcc void @gaussian_1line([1080 x [1920 x i16]]* nocapture %in, [1080 x [1920 x i16]]* nocapture %out) nounwind {
entry:
  call void @llvm.dbg.value(metadata !{[1080 x [1920 x i16]]* %in}, i64 0, metadata !25)
  call void @llvm.dbg.value(metadata !{[1080 x [1920 x i16]]* %out}, i64 0, metadata !33)
  br label %bb4, !dbg !34

bb:                                               ; preds = %bb4
  %tmp.1 = zext i11 %indvar1 to i64, !dbg !37     ; <i64> [#uses=3]
  %in.addr = getelementptr [1080 x [1920 x i16]]* %in, i64 0, i64 %tmp.1, i64 0, !dbg !37 ; <i16*> [#uses=1]
  %in.load = load i16* %in.addr, align 2, !dbg !37 ; <i16> [#uses=1]
  %tmp.2 = zext i16 %in.load to i64, !dbg !37     ; <i64> [#uses=1]
  %tmp.3 = sitofp i64 %tmp.2 to float, !dbg !37   ; <float> [#uses=1]
  %tmp.4 = fmul float %tmp.3, 0x3FCF91E640000000, !dbg !37 ; <float> [#uses=1]
  %tmp.5 = zext i11 %i to i64, !dbg !37           ; <i64> [#uses=4]
  %in.addr.1 = getelementptr [1080 x [1920 x i16]]* %in, i64 0, i64 %tmp.5, i64 0, !dbg !37 ; <i16*> [#uses=1]
  %in.load.1 = load i16* %in.addr.1, align 2, !dbg !37 ; <i16> [#uses=1]
  %tmp.6 = zext i16 %in.load.1 to i64, !dbg !37   ; <i64> [#uses=1]
  %tmp.7 = sitofp i64 %tmp.6 to float, !dbg !37   ; <float> [#uses=1]
  %tmp.8 = fmul float %tmp.7, 0x3FE36A2B20000000, !dbg !37 ; <float> [#uses=1]
  %tmp.9 = fadd float %tmp.4, %tmp.8, !dbg !37    ; <float> [#uses=1]
  %tmp. = zext i11 %tmp to i64, !dbg !37          ; <i64> [#uses=3]
  %in.addr.2 = getelementptr [1080 x [1920 x i16]]* %in, i64 0, i64 %tmp., i64 0, !dbg !37 ; <i16*> [#uses=1]
  %in.load.2 = load i16* %in.addr.2, align 2, !dbg !37 ; <i16> [#uses=1]
  %tmp.10 = zext i16 %in.load.2 to i64, !dbg !37  ; <i64> [#uses=1]
  %tmp.11 = sitofp i64 %tmp.10 to float, !dbg !37 ; <float> [#uses=1]
  %tmp.12 = fmul float %tmp.11, 0x3FCF91E640000000, !dbg !37 ; <float> [#uses=1]
  %tmp.13 = fadd float %tmp.9, %tmp.12, !dbg !37  ; <float> [#uses=1]
  store float %tmp.13, float* getelementptr inbounds ([1920 x float]* @tmp, i64 0, i64 0), align 32, !dbg !37
  %in.addr.3 = getelementptr [1080 x [1920 x i16]]* %in, i64 0, i64 %tmp.1, i64 1, !dbg !38 ; <i16*> [#uses=1]
  %in.load.3 = load i16* %in.addr.3, align 2, !dbg !38 ; <i16> [#uses=1]
  %tmp.14 = zext i16 %in.load.3 to i64, !dbg !38  ; <i64> [#uses=1]
  %tmp.15 = sitofp i64 %tmp.14 to float, !dbg !38 ; <float> [#uses=1]
  %tmp.16 = fmul float %tmp.15, 0x3FCF91E640000000, !dbg !38 ; <float> [#uses=1]
  %in.addr.4 = getelementptr [1080 x [1920 x i16]]* %in, i64 0, i64 %tmp.5, i64 1, !dbg !38 ; <i16*> [#uses=1]
  %in.load.4 = load i16* %in.addr.4, align 2, !dbg !38 ; <i16> [#uses=1]
  %tmp.17 = zext i16 %in.load.4 to i64, !dbg !38  ; <i64> [#uses=1]
  %tmp.18 = sitofp i64 %tmp.17 to float, !dbg !38 ; <float> [#uses=1]
  %tmp.19 = fmul float %tmp.18, 0x3FE36A2B20000000, !dbg !38 ; <float> [#uses=1]
  %tmp.20 = fadd float %tmp.16, %tmp.19, !dbg !38 ; <float> [#uses=1]
  %in.addr.5 = getelementptr [1080 x [1920 x i16]]* %in, i64 0, i64 %tmp., i64 1, !dbg !38 ; <i16*> [#uses=1]
  %in.load.5 = load i16* %in.addr.5, align 2, !dbg !38 ; <i16> [#uses=1]
  %tmp.21 = zext i16 %in.load.5 to i64, !dbg !38  ; <i64> [#uses=1]
  %tmp.22 = sitofp i64 %tmp.21 to float, !dbg !38 ; <float> [#uses=1]
  %tmp.23 = fmul float %tmp.22, 0x3FCF91E640000000, !dbg !38 ; <float> [#uses=1]
  %tmp.24 = fadd float %tmp.20, %tmp.23, !dbg !38 ; <float> [#uses=1]
  store float %tmp.24, float* getelementptr inbounds ([1920 x float]* @tmp, i64 0, i64 1), align 4, !dbg !38
  br label %bb2, !dbg !39

bb1:                                              ; preds = %bb2
  %tmp.25 = zext i11 %j to i64, !dbg !40          ; <i64> [#uses=4]
  %in.addr.6 = getelementptr [1080 x [1920 x i16]]* %in, i64 0, i64 %tmp.1, i64 %tmp.25, !dbg !40 ; <i16*> [#uses=1]
  %in.load.6 = load i16* %in.addr.6, align 2, !dbg !40 ; <i16> [#uses=1]
  %tmp.26 = zext i16 %in.load.6 to i64, !dbg !40  ; <i64> [#uses=1]
  %tmp.27 = sitofp i64 %tmp.26 to float, !dbg !40 ; <float> [#uses=1]
  %tmp.28 = fmul float %tmp.27, 0x3FCF91E640000000, !dbg !40 ; <float> [#uses=1]
  %in.addr.7 = getelementptr [1080 x [1920 x i16]]* %in, i64 0, i64 %tmp.5, i64 %tmp.25, !dbg !40 ; <i16*> [#uses=1]
  %in.load.7 = load i16* %in.addr.7, align 2, !dbg !40 ; <i16> [#uses=1]
  %tmp.29 = zext i16 %in.load.7 to i64, !dbg !40  ; <i64> [#uses=1]
  %tmp.30 = sitofp i64 %tmp.29 to float, !dbg !40 ; <float> [#uses=1]
  %tmp.31 = fmul float %tmp.30, 0x3FE36A2B20000000, !dbg !40 ; <float> [#uses=1]
  %tmp.32 = fadd float %tmp.28, %tmp.31, !dbg !40 ; <float> [#uses=1]
  %in.addr.8 = getelementptr [1080 x [1920 x i16]]* %in, i64 0, i64 %tmp., i64 %tmp.25, !dbg !40 ; <i16*> [#uses=1]
  %in.load.8 = load i16* %in.addr.8, align 2, !dbg !40 ; <i16> [#uses=1]
  %tmp.33 = zext i16 %in.load.8 to i64, !dbg !40  ; <i64> [#uses=1]
  %tmp.34 = sitofp i64 %tmp.33 to float, !dbg !40 ; <float> [#uses=1]
  %tmp.35 = fmul float %tmp.34, 0x3FCF91E640000000, !dbg !40 ; <float> [#uses=1]
  %tmp.36 = fadd float %tmp.32, %tmp.35, !dbg !40 ; <float> [#uses=2]
  %tmp.addr = getelementptr inbounds [1920 x float]* @tmp, i64 0, i64 %tmp.25, !dbg !40 ; <float*> [#uses=1]
  store float %tmp.36, float* %tmp.addr, align 4, !dbg !40
  %tmp.37 = zext i11 %indvar to i64, !dbg !41     ; <i64> [#uses=1]
  %tmp.addr.1 = getelementptr inbounds [1920 x float]* @tmp, i64 0, i64 %tmp.37, !dbg !41 ; <float*> [#uses=1]
  %0 = load float* %tmp.addr.1, align 4, !dbg !41 ; <float> [#uses=1]
  %tmp.38 = fmul float %0, 0x3FCF91E640000000, !dbg !41 ; <float> [#uses=1]
  %tmp.39 = zext i11 %tmp6 to i64, !dbg !41       ; <i64> [#uses=2]
  %tmp.addr.2 = getelementptr inbounds [1920 x float]* @tmp, i64 0, i64 %tmp.39, !dbg !41 ; <float*> [#uses=1]
  %1 = load float* %tmp.addr.2, align 4, !dbg !41 ; <float> [#uses=1]
  %tmp.40 = fmul float %1, 0x3FE36A2B20000000, !dbg !41 ; <float> [#uses=1]
  %tmp.41 = fadd float %tmp.38, %tmp.40, !dbg !41 ; <float> [#uses=1]
  %tmp.42 = fmul float %tmp.36, 0x3FCF91E640000000, !dbg !41 ; <float> [#uses=1]
  %tmp.43 = fadd float %tmp.41, %tmp.42, !dbg !41 ; <float> [#uses=1]
  %tmp.44 = fptoui float %tmp.43 to i64, !dbg !41 ; <i64> [#uses=1]
  %tmp.45 = trunc i64 %tmp.44 to i16, !dbg !41    ; <i16> [#uses=1]
  %out.addr = getelementptr [1080 x [1920 x i16]]* %out, i64 0, i64 %tmp.5, i64 %tmp.39, !dbg !41 ; <i16*> [#uses=1]
  store i16 %tmp.45, i16* %out.addr, align 2, !dbg !41
  br label %bb2, !dbg !39

bb2:                                              ; preds = %bb1, %bb
  %indvar = phi i11 [ %tmp6, %bb1 ], [ 0, %bb ]   ; <i11> [#uses=4]
  %tmp6 = add i11 %indvar, 1, !dbg !41            ; <i11> [#uses=2]
  %j = add i11 %indvar, 2, !dbg !39               ; <i11> [#uses=1]
  call void @llvm.dbg.value(metadata !{i11 %j}, i64 0, metadata !42), !dbg !39
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1918, i64 1918, i64 1918) nounwind ; <i32> [#uses=0]
  %exitcond2 = icmp eq i11 %indvar, -130, !dbg !39 ; <i1> [#uses=1]
  br i1 %exitcond2, label %bb4, label %bb1, !dbg !39

bb4:                                              ; preds = %bb2, %entry
  %indvar1 = phi i11 [ 0, %entry ], [ %i, %bb2 ]  ; <i11> [#uses=4]
  %tmp = add i11 %indvar1, 2, !dbg !37            ; <i11> [#uses=1]
  %i = add i11 %indvar1, 1, !dbg !34              ; <i11> [#uses=2]
  call void @llvm.dbg.value(metadata !{i11 %i}, i64 0, metadata !44), !dbg !34
  %3 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1079, i64 1079, i64 1079) nounwind ; <i32> [#uses=0]
  %exitcond3 = icmp eq i11 %indvar1, -969, !dbg !34 ; <i1> [#uses=1]
  br i1 %exitcond3, label %return, label %bb, !dbg !34

return:                                           ; preds = %bb4
  ret void, !dbg !45
}

declare i32 @_ssdm_op_SpecLoopTripCount(...)

!llvm.dbg.gv = !{!0}

!0 = metadata !{i32 458804, i32 0, metadata !1, metadata !"tmp", metadata !"tmp", metadata !"", metadata !2, i32 5, metadata !3, i1 true, i1 true, [1920 x float]* @tmp} ; [ DW_TAG_variable ]
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
!23 = metadata !{i32 11, i32 0, metadata !21, null}
!24 = metadata !{i32 15, i32 0, metadata !21, null}
!25 = metadata !{i32 459009, metadata !26, metadata !"in", metadata !2, i32 7, metadata !32} ; [ DW_TAG_arg_variable ]
!26 = metadata !{i32 458798, i32 0, metadata !1, metadata !"gaussian_1line", metadata !"gaussian_1line", metadata !"_Z14gaussian_1linePA1920_tS0_", metadata !2, i32 7, metadata !27, i1 false, i1 true, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!27 = metadata !{i32 458773, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !28, i32 0, null} ; [ DW_TAG_subroutine_type ]
!28 = metadata !{null, metadata !29, metadata !29}
!29 = metadata !{i32 458767, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !30} ; [ DW_TAG_pointer_type ]
!30 = metadata !{i32 458753, metadata !1, metadata !"", metadata !1, i32 0, i64 30720, i64 16, i64 0, i32 0, metadata !31, metadata !5, i32 0, null} ; [ DW_TAG_array_type ]
!31 = metadata !{i32 458788, metadata !1, metadata !"short unsigned int", metadata !1, i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!32 = metadata !{i32 458753, metadata !1, metadata !"", metadata !1, i32 0, i64 33177600, i64 16, i64 0, i32 0, metadata !31, metadata !17, i32 0, null} ; [ DW_TAG_array_type ]
!33 = metadata !{i32 459009, metadata !26, metadata !"out", metadata !2, i32 7, metadata !32} ; [ DW_TAG_arg_variable ]
!34 = metadata !{i32 21, i32 0, metadata !35, null}
!35 = metadata !{i32 458763, metadata !36, i32 7, i32 0} ; [ DW_TAG_lexical_block ]
!36 = metadata !{i32 458763, metadata !26, i32 7, i32 0} ; [ DW_TAG_lexical_block ]
!37 = metadata !{i32 22, i32 0, metadata !35, null}
!38 = metadata !{i32 23, i32 0, metadata !35, null}
!39 = metadata !{i32 24, i32 0, metadata !35, null}
!40 = metadata !{i32 25, i32 0, metadata !35, null}
!41 = metadata !{i32 26, i32 0, metadata !35, null}
!42 = metadata !{i32 459008, metadata !35, metadata !"j", metadata !2, i32 20, metadata !43} ; [ DW_TAG_auto_variable ]
!43 = metadata !{i32 458788, metadata !1, metadata !"int", metadata !1, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!44 = metadata !{i32 459008, metadata !35, metadata !"i", metadata !2, i32 20, metadata !43} ; [ DW_TAG_auto_variable ]
!45 = metadata !{i32 30, i32 0, metadata !35, null}
