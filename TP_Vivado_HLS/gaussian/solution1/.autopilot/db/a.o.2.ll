; ModuleID = '/users/deastir/mcaceres/Documents/VIVADO/TP_Vivado_HLS/TP_Vivado_HLS/gaussian/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64"
target triple = "x86_64-unknown-linux-gnu"

%"struct.std::ios_base::Init" = type <{ i8 }>

@llvm.global_ctors.0 = appending global [1 x i32] [i32 65535] ; <[1 x i32]*> [#uses=0]
@llvm.global_ctors.1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I__Z19gaussian_fixedPointPA1920_tS0_] ; <[1 x void ()*]*> [#uses=0]
@llvm.global_dtors.0 = appending global [1 x i32] [i32 65535] ; <[1 x i32]*> [#uses=0]
@llvm.global_dtors.1 = appending global [1 x void ()*] [void ()* @_GLOBAL__D__Z19gaussian_fixedPointPA1920_tS0_] ; <[1 x void ()*]*> [#uses=0]
@.str9 = private constant [10 x i8] c"ap_memory\00", align 1 ; <[10 x i8]*> [#uses=2]
@.str110 = private constant [1 x i8] zeroinitializer, align 1 ; <[1 x i8]*> [#uses=2]

declare void @_ssdm_op_SpecMem(...) nounwind

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @_GLOBAL__I__Z19gaussian_fixedPointPA1920_tS0_() nounwind

declare void @_GLOBAL__D__Z19gaussian_fixedPointPA1920_tS0_() nounwind

define void @gaussian([1080 x [1920 x i16]]* %in, [1080 x [1920 x i16]]* %out) nounwind {
entry:
  call void @llvm.dbg.value(metadata !{[1080 x [1920 x i16]]* %in}, i64 0, metadata !7)
  call void @llvm.dbg.value(metadata !{[1080 x [1920 x i16]]* %out}, i64 0, metadata !19)
  call void (...)* @_ssdm_op_SpecMem([1080 x [1920 x i16]]* %in, [10 x i8]* @.str9, i32 0, i32 0, i32 0, [1 x i8]* @.str110) nounwind, !dbg !20
  call void (...)* @_ssdm_op_SpecMem([1080 x [1920 x i16]]* %out, [10 x i8]* @.str9, i32 0, i32 0, i32 0, [1 x i8]* @.str110) nounwind, !dbg !22
  call fastcc void @gaussian_scalarized([1080 x [1920 x i16]]* %in, [1080 x [1920 x i16]]* %out) nounwind, !dbg !23
  ret void, !dbg !24
}

define internal fastcc void @gaussian_scalarized([1080 x [1920 x i16]]* nocapture %in, [1080 x [1920 x i16]]* nocapture %out) nounwind {
entry:
  call void @llvm.dbg.value(metadata !{[1080 x [1920 x i16]]* %in}, i64 0, metadata !25)
  call void @llvm.dbg.value(metadata !{[1080 x [1920 x i16]]* %out}, i64 0, metadata !35)
  br label %bb4, !dbg !36

bb:                                               ; preds = %bb4
  %tmp.1 = zext i11 %indvar1 to i64, !dbg !39     ; <i64> [#uses=3]
  %in.addr = getelementptr [1080 x [1920 x i16]]* %in, i64 0, i64 %tmp.1, i64 0, !dbg !39 ; <i16*> [#uses=1]
  %in.load = load i16* %in.addr, align 2, !dbg !39 ; <i16> [#uses=1]
  %tmp.2 = zext i16 %in.load to i64, !dbg !39     ; <i64> [#uses=1]
  %tmp.3 = sitofp i64 %tmp.2 to float, !dbg !39   ; <float> [#uses=1]
  %tmp.4 = fmul float %tmp.3, 0x3FCF91E640000000, !dbg !39 ; <float> [#uses=1]
  %tmp.5 = zext i11 %i to i64, !dbg !39           ; <i64> [#uses=4]
  %in.addr.1 = getelementptr [1080 x [1920 x i16]]* %in, i64 0, i64 %tmp.5, i64 0, !dbg !39 ; <i16*> [#uses=1]
  %in.load.1 = load i16* %in.addr.1, align 2, !dbg !39 ; <i16> [#uses=1]
  %tmp.6 = zext i16 %in.load.1 to i64, !dbg !39   ; <i64> [#uses=1]
  %tmp.7 = sitofp i64 %tmp.6 to float, !dbg !39   ; <float> [#uses=1]
  %tmp.8 = fmul float %tmp.7, 0x3FE36A2B20000000, !dbg !39 ; <float> [#uses=1]
  %tmp.9 = fadd float %tmp.4, %tmp.8, !dbg !39    ; <float> [#uses=1]
  %tmp. = zext i11 %tmp to i64, !dbg !39          ; <i64> [#uses=3]
  %in.addr.2 = getelementptr [1080 x [1920 x i16]]* %in, i64 0, i64 %tmp., i64 0, !dbg !39 ; <i16*> [#uses=1]
  %in.load.2 = load i16* %in.addr.2, align 2, !dbg !39 ; <i16> [#uses=1]
  %tmp.10 = zext i16 %in.load.2 to i64, !dbg !39  ; <i64> [#uses=1]
  %tmp.11 = sitofp i64 %tmp.10 to float, !dbg !39 ; <float> [#uses=1]
  %tmp.12 = fmul float %tmp.11, 0x3FCF91E640000000, !dbg !39 ; <float> [#uses=1]
  %tmp0 = fadd float %tmp.9, %tmp.12, !dbg !39    ; <float> [#uses=1]
  call void @llvm.dbg.value(metadata !{float %tmp0}, i64 0, metadata !40), !dbg !39
  %in.addr.3 = getelementptr [1080 x [1920 x i16]]* %in, i64 0, i64 %tmp.1, i64 1, !dbg !42 ; <i16*> [#uses=1]
  %in.load.3 = load i16* %in.addr.3, align 2, !dbg !42 ; <i16> [#uses=1]
  %tmp.13 = zext i16 %in.load.3 to i64, !dbg !42  ; <i64> [#uses=1]
  %tmp.14 = sitofp i64 %tmp.13 to float, !dbg !42 ; <float> [#uses=1]
  %tmp.15 = fmul float %tmp.14, 0x3FCF91E640000000, !dbg !42 ; <float> [#uses=1]
  %in.addr.4 = getelementptr [1080 x [1920 x i16]]* %in, i64 0, i64 %tmp.5, i64 1, !dbg !42 ; <i16*> [#uses=1]
  %in.load.4 = load i16* %in.addr.4, align 2, !dbg !42 ; <i16> [#uses=1]
  %tmp.16 = zext i16 %in.load.4 to i64, !dbg !42  ; <i64> [#uses=1]
  %tmp.17 = sitofp i64 %tmp.16 to float, !dbg !42 ; <float> [#uses=1]
  %tmp.18 = fmul float %tmp.17, 0x3FE36A2B20000000, !dbg !42 ; <float> [#uses=1]
  %tmp.19 = fadd float %tmp.15, %tmp.18, !dbg !42 ; <float> [#uses=1]
  %in.addr.5 = getelementptr [1080 x [1920 x i16]]* %in, i64 0, i64 %tmp., i64 1, !dbg !42 ; <i16*> [#uses=1]
  %in.load.5 = load i16* %in.addr.5, align 2, !dbg !42 ; <i16> [#uses=1]
  %tmp.20 = zext i16 %in.load.5 to i64, !dbg !42  ; <i64> [#uses=1]
  %tmp.21 = sitofp i64 %tmp.20 to float, !dbg !42 ; <float> [#uses=1]
  %tmp.22 = fmul float %tmp.21, 0x3FCF91E640000000, !dbg !42 ; <float> [#uses=1]
  %tmp1 = fadd float %tmp.19, %tmp.22, !dbg !42   ; <float> [#uses=1]
  call void @llvm.dbg.value(metadata !{float %tmp1}, i64 0, metadata !43), !dbg !42
  br label %bb2, !dbg !44

bb1:                                              ; preds = %bb2
  %tmp.23 = zext i11 %j to i64, !dbg !45          ; <i64> [#uses=3]
  %in.addr.6 = getelementptr [1080 x [1920 x i16]]* %in, i64 0, i64 %tmp.1, i64 %tmp.23, !dbg !45 ; <i16*> [#uses=1]
  %in.load.6 = load i16* %in.addr.6, align 2, !dbg !45 ; <i16> [#uses=1]
  %tmp.24 = zext i16 %in.load.6 to i64, !dbg !45  ; <i64> [#uses=1]
  %tmp.25 = sitofp i64 %tmp.24 to float, !dbg !45 ; <float> [#uses=1]
  %tmp.26 = fmul float %tmp.25, 0x3FCF91E640000000, !dbg !45 ; <float> [#uses=1]
  %in.addr.7 = getelementptr [1080 x [1920 x i16]]* %in, i64 0, i64 %tmp.5, i64 %tmp.23, !dbg !45 ; <i16*> [#uses=1]
  %in.load.7 = load i16* %in.addr.7, align 2, !dbg !45 ; <i16> [#uses=1]
  %tmp.27 = zext i16 %in.load.7 to i64, !dbg !45  ; <i64> [#uses=1]
  %tmp.28 = sitofp i64 %tmp.27 to float, !dbg !45 ; <float> [#uses=1]
  %tmp.29 = fmul float %tmp.28, 0x3FE36A2B20000000, !dbg !45 ; <float> [#uses=1]
  %tmp.30 = fadd float %tmp.26, %tmp.29, !dbg !45 ; <float> [#uses=1]
  %in.addr.8 = getelementptr [1080 x [1920 x i16]]* %in, i64 0, i64 %tmp., i64 %tmp.23, !dbg !45 ; <i16*> [#uses=1]
  %in.load.8 = load i16* %in.addr.8, align 2, !dbg !45 ; <i16> [#uses=1]
  %tmp.31 = zext i16 %in.load.8 to i64, !dbg !45  ; <i64> [#uses=1]
  %tmp.32 = sitofp i64 %tmp.31 to float, !dbg !45 ; <float> [#uses=1]
  %tmp.33 = fmul float %tmp.32, 0x3FCF91E640000000, !dbg !45 ; <float> [#uses=1]
  %tmp2 = fadd float %tmp.30, %tmp.33, !dbg !45   ; <float> [#uses=2]
  call void @llvm.dbg.value(metadata !{float %tmp2}, i64 0, metadata !46), !dbg !45
  %tmp.34 = fmul float %tmp0.1, 0x3FCF91E640000000, !dbg !47 ; <float> [#uses=1]
  %tmp.35 = fmul float %tmp0.2, 0x3FE36A2B20000000, !dbg !47 ; <float> [#uses=1]
  %tmp.36 = fadd float %tmp.34, %tmp.35, !dbg !47 ; <float> [#uses=1]
  %tmp.37 = fmul float %tmp2, 0x3FCF91E640000000, !dbg !47 ; <float> [#uses=1]
  %tmp.38 = fadd float %tmp.36, %tmp.37, !dbg !47 ; <float> [#uses=1]
  %tmp.39 = fptoui float %tmp.38 to i64, !dbg !47 ; <i64> [#uses=1]
  %tmp.41 = trunc i64 %tmp.39 to i16, !dbg !47    ; <i16> [#uses=1]
  %tmp.40 = zext i11 %tmp6 to i64, !dbg !47       ; <i64> [#uses=1]
  %out.addr = getelementptr [1080 x [1920 x i16]]* %out, i64 0, i64 %tmp.5, i64 %tmp.40, !dbg !47 ; <i16*> [#uses=1]
  store i16 %tmp.41, i16* %out.addr, align 2, !dbg !47
  call void @llvm.dbg.value(metadata !{float %tmp0.2}, i64 0, metadata !40), !dbg !48
  call void @llvm.dbg.value(metadata !{float %tmp2}, i64 0, metadata !43), !dbg !49
  br label %bb2, !dbg !44

bb2:                                              ; preds = %bb1, %bb
  %indvar = phi i11 [ %tmp6, %bb1 ], [ 0, %bb ]   ; <i11> [#uses=3]
  %tmp0.2 = phi float [ %tmp2, %bb1 ], [ %tmp1, %bb ] ; <float> [#uses=2]
  %tmp0.1 = phi float [ %tmp0.2, %bb1 ], [ %tmp0, %bb ] ; <float> [#uses=1]
  call void @llvm.dbg.value(metadata !{float %tmp0.2}, i64 0, metadata !43)
  call void @llvm.dbg.value(metadata !{float %tmp0.1}, i64 0, metadata !40)
  %tmp6 = add i11 %indvar, 1, !dbg !47            ; <i11> [#uses=2]
  %j = add i11 %indvar, 2, !dbg !44               ; <i11> [#uses=1]
  call void @llvm.dbg.value(metadata !{i11 %j}, i64 0, metadata !50), !dbg !44
  %0 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1918, i64 1918, i64 1918) nounwind ; <i32> [#uses=0]
  %exitcond2 = icmp eq i11 %indvar, -130, !dbg !44 ; <i1> [#uses=1]
  br i1 %exitcond2, label %bb4, label %bb1, !dbg !44

bb4:                                              ; preds = %bb2, %entry
  %indvar1 = phi i11 [ 0, %entry ], [ %i, %bb2 ]  ; <i11> [#uses=4]
  %tmp = add i11 %indvar1, 2, !dbg !39            ; <i11> [#uses=1]
  %i = add i11 %indvar1, 1, !dbg !36              ; <i11> [#uses=2]
  call void @llvm.dbg.value(metadata !{i11 %i}, i64 0, metadata !52), !dbg !36
  %1 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1079, i64 1079, i64 1079) nounwind ; <i32> [#uses=0]
  %exitcond3 = icmp eq i11 %indvar1, -969, !dbg !36 ; <i1> [#uses=1]
  br i1 %exitcond3, label %return, label %bb, !dbg !36

return:                                           ; preds = %bb4
  ret void, !dbg !53
}

declare i32 @_ssdm_op_SpecLoopTripCount(...)

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
!40 = metadata !{i32 459008, metadata !37, metadata !"tmp0", metadata !28, i32 19, metadata !41} ; [ DW_TAG_auto_variable ]
!41 = metadata !{i32 458788, metadata !27, metadata !"float", metadata !27, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!42 = metadata !{i32 23, i32 0, metadata !37, null}
!43 = metadata !{i32 459008, metadata !37, metadata !"tmp1", metadata !28, i32 19, metadata !41} ; [ DW_TAG_auto_variable ]
!44 = metadata !{i32 24, i32 0, metadata !37, null}
!45 = metadata !{i32 25, i32 0, metadata !37, null}
!46 = metadata !{i32 459008, metadata !37, metadata !"tmp2", metadata !28, i32 19, metadata !41} ; [ DW_TAG_auto_variable ]
!47 = metadata !{i32 26, i32 0, metadata !37, null}
!48 = metadata !{i32 27, i32 0, metadata !37, null}
!49 = metadata !{i32 28, i32 0, metadata !37, null}
!50 = metadata !{i32 459008, metadata !37, metadata !"j", metadata !28, i32 20, metadata !51} ; [ DW_TAG_auto_variable ]
!51 = metadata !{i32 458788, metadata !27, metadata !"int", metadata !27, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!52 = metadata !{i32 459008, metadata !37, metadata !"i", metadata !28, i32 20, metadata !51} ; [ DW_TAG_auto_variable ]
!53 = metadata !{i32 31, i32 0, metadata !37, null}
