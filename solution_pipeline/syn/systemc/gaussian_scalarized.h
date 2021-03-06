// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2013.2
// Copyright (C) 2013 Xilinx Inc. All rights reserved.
// 
// ===========================================================

#ifndef _gaussian_scalarized_HH_
#define _gaussian_scalarized_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "gaussian_fadd_32ns_32ns_32_5_full_dsp.h"
#include "gaussian_fmul_32ns_32ns_32_4_max_dsp.h"
#include "gaussian_fptoui_32ns_64_4.h"
#include "gaussian_sitofp_64ns_32_6.h"

namespace ap_rtl {

struct gaussian_scalarized : public sc_module {
    // Port declarations 16
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<21> > in_r_address0;
    sc_out< sc_logic > in_r_ce0;
    sc_in< sc_lv<16> > in_r_q0;
    sc_out< sc_lv<21> > in_r_address1;
    sc_out< sc_logic > in_r_ce1;
    sc_in< sc_lv<16> > in_r_q1;
    sc_out< sc_lv<21> > out_r_address0;
    sc_out< sc_logic > out_r_ce0;
    sc_out< sc_logic > out_r_we0;
    sc_out< sc_lv<16> > out_r_d0;


    // Module declarations
    gaussian_scalarized(sc_module_name name);
    SC_HAS_PROCESS(gaussian_scalarized);

    ~gaussian_scalarized();

    sc_trace_file* mVcdFile;

    gaussian_fadd_32ns_32ns_32_5_full_dsp<1,5,32,32,32>* gaussian_fadd_32ns_32ns_32_5_full_dsp_U1;
    gaussian_fadd_32ns_32ns_32_5_full_dsp<2,5,32,32,32>* gaussian_fadd_32ns_32ns_32_5_full_dsp_U2;
    gaussian_fmul_32ns_32ns_32_4_max_dsp<3,4,32,32,32>* gaussian_fmul_32ns_32ns_32_4_max_dsp_U3;
    gaussian_fmul_32ns_32ns_32_4_max_dsp<4,4,32,32,32>* gaussian_fmul_32ns_32ns_32_4_max_dsp_U4;
    gaussian_fmul_32ns_32ns_32_4_max_dsp<5,4,32,32,32>* gaussian_fmul_32ns_32ns_32_4_max_dsp_U5;
    gaussian_fmul_32ns_32ns_32_4_max_dsp<6,4,32,32,32>* gaussian_fmul_32ns_32ns_32_4_max_dsp_U6;
    gaussian_fptoui_32ns_64_4<7,4,32,64>* gaussian_fptoui_32ns_64_4_U7;
    gaussian_sitofp_64ns_32_6<8,6,64,32>* gaussian_sitofp_64ns_32_6_U8;
    gaussian_sitofp_64ns_32_6<9,6,64,32>* gaussian_sitofp_64ns_32_6_U9;
    gaussian_sitofp_64ns_32_6<10,6,64,32>* gaussian_sitofp_64ns_32_6_U10;
    gaussian_sitofp_64ns_32_6<11,6,64,32>* gaussian_sitofp_64ns_32_6_U11;
    sc_signal< sc_lv<5> > ap_CS_fsm;
    sc_signal< sc_lv<11> > indvar_reg_157;
    sc_signal< sc_lv<32> > tmp1_3_reg_169;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it0;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it1;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it2;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it3;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it4;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it5;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it6;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it7;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it8;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it9;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it10;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it11;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it12;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it13;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it14;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it15;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it16;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it17;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it18;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it19;
    sc_signal< sc_lv<32> > tmp0_1_reg_179;
    sc_signal< sc_lv<16> > reg_237;
    sc_signal< sc_lv<1> > exitcond1_reg_768;
    sc_signal< sc_lv<16> > reg_241;
    sc_signal< sc_lv<32> > grp_fu_225_p1;
    sc_signal< sc_lv<32> > reg_245;
    sc_signal< sc_lv<1> > ap_reg_ppstg_exitcond1_reg_768_pp0_it3;
    sc_signal< sc_lv<32> > grp_fu_228_p1;
    sc_signal< sc_lv<32> > reg_250;
    sc_signal< sc_lv<32> > grp_fu_199_p2;
    sc_signal< sc_lv<32> > reg_255;
    sc_signal< sc_lv<1> > ap_reg_ppstg_exitcond1_reg_768_pp0_it5;
    sc_signal< sc_lv<32> > grp_fu_204_p2;
    sc_signal< sc_lv<32> > reg_261;
    sc_signal< sc_lv<32> > grp_fu_209_p2;
    sc_signal< sc_lv<32> > reg_267;
    sc_signal< sc_lv<1> > ap_reg_ppstg_exitcond1_reg_768_pp0_it11;
    sc_signal< sc_lv<32> > grp_fu_191_p2;
    sc_signal< sc_lv<32> > reg_272;
    sc_signal< sc_lv<32> > grp_fu_195_p2;
    sc_signal< sc_lv<32> > reg_278;
    sc_signal< sc_lv<11> > i_fu_290_p2;
    sc_signal< sc_lv<11> > i_reg_637;
    sc_signal< sc_lv<23> > p_addr_fu_320_p2;
    sc_signal< sc_lv<23> > p_addr_reg_642;
    sc_signal< sc_lv<1> > exitcond_fu_284_p2;
    sc_signal< sc_lv<23> > p_addr2_fu_359_p2;
    sc_signal< sc_lv<23> > p_addr2_reg_652;
    sc_signal< sc_lv<22> > tmp_46_reg_662;
    sc_signal< sc_lv<22> > tmp_49_reg_667;
    sc_signal< sc_lv<16> > in_load_3_reg_682;
    sc_signal< sc_lv<16> > in_load_4_reg_687;
    sc_signal< sc_lv<64> > tmp_2_fu_426_p1;
    sc_signal< sc_lv<64> > tmp_6_fu_431_p1;
    sc_signal< sc_lv<23> > p_addr3_fu_474_p2;
    sc_signal< sc_lv<23> > p_addr3_reg_712;
    sc_signal< sc_lv<64> > tmp_s_fu_516_p1;
    sc_signal< sc_lv<32> > grp_fu_231_p1;
    sc_signal< sc_lv<32> > tmp_13_reg_732;
    sc_signal< sc_lv<32> > grp_fu_234_p1;
    sc_signal< sc_lv<32> > tmp_16_reg_737;
    sc_signal< sc_lv<64> > tmp_19_fu_521_p1;
    sc_signal< sc_lv<32> > grp_fu_214_p2;
    sc_signal< sc_lv<32> > tmp_17_reg_747;
    sc_signal< sc_lv<24> > p_addr_cast1_fu_526_p1;
    sc_signal< sc_lv<24> > p_addr_cast1_reg_752;
    sc_signal< sc_lv<24> > p_addr2_cast1_fu_529_p1;
    sc_signal< sc_lv<24> > p_addr2_cast1_reg_757;
    sc_signal< sc_lv<24> > p_addr3_cast1_fu_532_p1;
    sc_signal< sc_lv<24> > p_addr3_cast1_reg_763;
    sc_signal< sc_lv<1> > exitcond1_fu_535_p2;
    sc_signal< sc_lv<1> > ap_reg_ppstg_exitcond1_reg_768_pp0_it1;
    sc_signal< sc_lv<1> > ap_reg_ppstg_exitcond1_reg_768_pp0_it2;
    sc_signal< sc_lv<1> > ap_reg_ppstg_exitcond1_reg_768_pp0_it4;
    sc_signal< sc_lv<1> > ap_reg_ppstg_exitcond1_reg_768_pp0_it6;
    sc_signal< sc_lv<1> > ap_reg_ppstg_exitcond1_reg_768_pp0_it7;
    sc_signal< sc_lv<1> > ap_reg_ppstg_exitcond1_reg_768_pp0_it8;
    sc_signal< sc_lv<1> > ap_reg_ppstg_exitcond1_reg_768_pp0_it9;
    sc_signal< sc_lv<1> > ap_reg_ppstg_exitcond1_reg_768_pp0_it10;
    sc_signal< sc_lv<1> > ap_reg_ppstg_exitcond1_reg_768_pp0_it12;
    sc_signal< sc_lv<1> > ap_reg_ppstg_exitcond1_reg_768_pp0_it13;
    sc_signal< sc_lv<1> > ap_reg_ppstg_exitcond1_reg_768_pp0_it14;
    sc_signal< sc_lv<1> > ap_reg_ppstg_exitcond1_reg_768_pp0_it15;
    sc_signal< sc_lv<1> > ap_reg_ppstg_exitcond1_reg_768_pp0_it16;
    sc_signal< sc_lv<1> > ap_reg_ppstg_exitcond1_reg_768_pp0_it17;
    sc_signal< sc_lv<1> > ap_reg_ppstg_exitcond1_reg_768_pp0_it18;
    sc_signal< sc_lv<1> > ap_reg_ppstg_exitcond1_reg_768_pp0_it19;
    sc_signal< sc_lv<24> > p_addr1_fu_579_p2;
    sc_signal< sc_lv<24> > p_addr1_reg_782;
    sc_signal< sc_lv<11> > tmp6_fu_584_p2;
    sc_signal< sc_lv<11> > tmp6_reg_787;
    sc_signal< sc_lv<11> > ap_reg_ppstg_tmp6_reg_787_pp0_it1;
    sc_signal< sc_lv<11> > ap_reg_ppstg_tmp6_reg_787_pp0_it2;
    sc_signal< sc_lv<11> > ap_reg_ppstg_tmp6_reg_787_pp0_it3;
    sc_signal< sc_lv<11> > ap_reg_ppstg_tmp6_reg_787_pp0_it4;
    sc_signal< sc_lv<11> > ap_reg_ppstg_tmp6_reg_787_pp0_it5;
    sc_signal< sc_lv<11> > ap_reg_ppstg_tmp6_reg_787_pp0_it6;
    sc_signal< sc_lv<11> > ap_reg_ppstg_tmp6_reg_787_pp0_it7;
    sc_signal< sc_lv<11> > ap_reg_ppstg_tmp6_reg_787_pp0_it8;
    sc_signal< sc_lv<11> > ap_reg_ppstg_tmp6_reg_787_pp0_it9;
    sc_signal< sc_lv<11> > ap_reg_ppstg_tmp6_reg_787_pp0_it10;
    sc_signal< sc_lv<11> > ap_reg_ppstg_tmp6_reg_787_pp0_it11;
    sc_signal< sc_lv<11> > ap_reg_ppstg_tmp6_reg_787_pp0_it12;
    sc_signal< sc_lv<11> > ap_reg_ppstg_tmp6_reg_787_pp0_it13;
    sc_signal< sc_lv<11> > ap_reg_ppstg_tmp6_reg_787_pp0_it14;
    sc_signal< sc_lv<11> > ap_reg_ppstg_tmp6_reg_787_pp0_it15;
    sc_signal< sc_lv<11> > ap_reg_ppstg_tmp6_reg_787_pp0_it16;
    sc_signal< sc_lv<11> > ap_reg_ppstg_tmp6_reg_787_pp0_it17;
    sc_signal< sc_lv<11> > ap_reg_ppstg_tmp6_reg_787_pp0_it18;
    sc_signal< sc_lv<64> > tmp_24_fu_598_p1;
    sc_signal< sc_lv<64> > tmp_27_fu_603_p1;
    sc_signal< sc_lv<64> > tmp_31_fu_608_p1;
    sc_signal< sc_lv<32> > tmp_32_reg_813;
    sc_signal< sc_lv<32> > tmp_33_reg_818;
    sc_signal< sc_lv<32> > ap_reg_ppstg_tmp_33_reg_818_pp0_it7;
    sc_signal< sc_lv<32> > ap_reg_ppstg_tmp_33_reg_818_pp0_it8;
    sc_signal< sc_lv<32> > tmp_30_reg_823;
    sc_signal< sc_lv<32> > tmp2_reg_828;
    sc_signal< sc_lv<32> > tmp_35_reg_834;
    sc_signal< sc_lv<32> > tmp_37_reg_839;
    sc_signal< sc_lv<32> > ap_reg_ppstg_tmp_37_reg_839_pp0_it14;
    sc_signal< sc_lv<32> > tmp_36_reg_844;
    sc_signal< sc_lv<32> > tmp_38_reg_849;
    sc_signal< sc_lv<16> > tmp_59_fu_613_p1;
    sc_signal< sc_lv<16> > tmp_59_reg_854;
    sc_signal< sc_lv<11> > indvar1_reg_145;
    sc_signal< sc_lv<11> > indvar_phi_fu_161_p4;
    sc_signal< sc_lv<32> > tmp0_1_phi_fu_182_p4;
    sc_signal< sc_lv<64> > tmp_23_fu_330_p1;
    sc_signal< sc_lv<64> > tmp_42_fu_369_p1;
    sc_signal< sc_lv<64> > tmp_48_fu_405_p1;
    sc_signal< sc_lv<64> > tmp_51_fu_421_p1;
    sc_signal< sc_lv<64> > tmp_45_fu_484_p1;
    sc_signal< sc_lv<64> > tmp_53_fu_511_p1;
    sc_signal< sc_lv<64> > tmp_54_fu_560_p1;
    sc_signal< sc_lv<64> > tmp_55_fu_574_p1;
    sc_signal< sc_lv<64> > tmp_56_fu_593_p1;
    sc_signal< sc_lv<64> > tmp_57_fu_629_p1;
    sc_signal< sc_lv<32> > grp_fu_191_p0;
    sc_signal< sc_lv<32> > grp_fu_191_p1;
    sc_signal< sc_lv<32> > grp_fu_195_p0;
    sc_signal< sc_lv<32> > grp_fu_195_p1;
    sc_signal< sc_lv<32> > grp_fu_199_p0;
    sc_signal< sc_lv<32> > grp_fu_199_p1;
    sc_signal< sc_lv<32> > grp_fu_204_p0;
    sc_signal< sc_lv<32> > grp_fu_204_p1;
    sc_signal< sc_lv<32> > grp_fu_209_p0;
    sc_signal< sc_lv<32> > grp_fu_209_p1;
    sc_signal< sc_lv<32> > grp_fu_214_p0;
    sc_signal< sc_lv<32> > grp_fu_214_p1;
    sc_signal< sc_lv<32> > grp_fu_222_p0;
    sc_signal< sc_lv<64> > grp_fu_225_p0;
    sc_signal< sc_lv<64> > grp_fu_228_p0;
    sc_signal< sc_lv<64> > grp_fu_231_p0;
    sc_signal< sc_lv<64> > grp_fu_234_p0;
    sc_signal< sc_lv<22> > tmp_1_fu_296_p3;
    sc_signal< sc_lv<18> > tmp_5_fu_308_p3;
    sc_signal< sc_lv<23> > p_shl_cast_fu_304_p1;
    sc_signal< sc_lv<23> > p_shl1_cast_fu_316_p1;
    sc_signal< sc_lv<32> > tmp_23_fu_330_p0;
    sc_signal< sc_lv<22> > tmp_40_fu_335_p3;
    sc_signal< sc_lv<18> > tmp_41_fu_347_p3;
    sc_signal< sc_lv<23> > p_shl2_cast_fu_343_p1;
    sc_signal< sc_lv<23> > p_shl3_cast_fu_355_p1;
    sc_signal< sc_lv<32> > tmp_42_fu_369_p0;
    sc_signal< sc_lv<23> > tmp_47_fu_394_p3;
    sc_signal< sc_lv<32> > tmp_48_fu_405_p0;
    sc_signal< sc_lv<23> > tmp_50_fu_410_p3;
    sc_signal< sc_lv<32> > tmp_51_fu_421_p0;
    sc_signal< sc_lv<11> > tmp_fu_444_p2;
    sc_signal< sc_lv<22> > tmp_43_fu_450_p3;
    sc_signal< sc_lv<18> > tmp_44_fu_462_p3;
    sc_signal< sc_lv<23> > p_shl4_cast_fu_458_p1;
    sc_signal< sc_lv<23> > p_shl5_cast_fu_470_p1;
    sc_signal< sc_lv<32> > tmp_45_fu_484_p0;
    sc_signal< sc_lv<22> > tmp_52_fu_489_p4;
    sc_signal< sc_lv<23> > tmp_58_fu_499_p3;
    sc_signal< sc_lv<32> > tmp_53_fu_511_p0;
    sc_signal< sc_lv<11> > j_fu_541_p2;
    sc_signal< sc_lv<24> > tmp_23_trn5_cast_fu_547_p1;
    sc_signal< sc_lv<24> > p_addr7_fu_551_p2;
    sc_signal< sc_lv<32> > tmp_54_fu_560_p0;
    sc_signal< sc_lv<24> > p_addr4_fu_565_p2;
    sc_signal< sc_lv<32> > tmp_55_fu_574_p0;
    sc_signal< sc_lv<32> > tmp_56_fu_593_p0;
    sc_signal< sc_lv<64> > grp_fu_222_p1;
    sc_signal< sc_lv<24> > tmp_40_trn_cast_fu_617_p1;
    sc_signal< sc_lv<24> > p_addr9_fu_620_p2;
    sc_signal< sc_lv<32> > tmp_57_fu_629_p0;
    sc_signal< sc_logic > grp_fu_191_ce;
    sc_signal< sc_logic > grp_fu_195_ce;
    sc_signal< sc_logic > grp_fu_199_ce;
    sc_signal< sc_logic > grp_fu_204_ce;
    sc_signal< sc_logic > grp_fu_209_ce;
    sc_signal< sc_logic > grp_fu_214_ce;
    sc_signal< sc_logic > grp_fu_222_ce;
    sc_signal< sc_logic > grp_fu_225_ce;
    sc_signal< sc_logic > grp_fu_228_ce;
    sc_signal< sc_logic > grp_fu_231_ce;
    sc_signal< sc_logic > grp_fu_234_ce;
    sc_signal< sc_lv<5> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<5> ap_ST_st1_fsm_0;
    static const sc_lv<5> ap_ST_st2_fsm_1;
    static const sc_lv<5> ap_ST_st3_fsm_2;
    static const sc_lv<5> ap_ST_st4_fsm_3;
    static const sc_lv<5> ap_ST_st5_fsm_4;
    static const sc_lv<5> ap_ST_st6_fsm_5;
    static const sc_lv<5> ap_ST_st7_fsm_6;
    static const sc_lv<5> ap_ST_st8_fsm_7;
    static const sc_lv<5> ap_ST_st9_fsm_8;
    static const sc_lv<5> ap_ST_st10_fsm_9;
    static const sc_lv<5> ap_ST_st11_fsm_10;
    static const sc_lv<5> ap_ST_st12_fsm_11;
    static const sc_lv<5> ap_ST_st13_fsm_12;
    static const sc_lv<5> ap_ST_st14_fsm_13;
    static const sc_lv<5> ap_ST_st15_fsm_14;
    static const sc_lv<5> ap_ST_st16_fsm_15;
    static const sc_lv<5> ap_ST_st17_fsm_16;
    static const sc_lv<5> ap_ST_st18_fsm_17;
    static const sc_lv<5> ap_ST_st19_fsm_18;
    static const sc_lv<5> ap_ST_st20_fsm_19;
    static const sc_lv<5> ap_ST_st21_fsm_20;
    static const sc_lv<5> ap_ST_st22_fsm_21;
    static const sc_lv<5> ap_ST_st23_fsm_22;
    static const sc_lv<5> ap_ST_st24_fsm_23;
    static const sc_lv<5> ap_ST_st25_fsm_24;
    static const sc_lv<5> ap_ST_pp0_stg0_fsm_25;
    static const sc_lv<5> ap_ST_pp0_stg1_fsm_26;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<11> ap_const_lv11_0;
    static const sc_lv<32> ap_const_lv32_3E7C8F32;
    static const sc_lv<32> ap_const_lv32_3F1B5159;
    static const sc_lv<11> ap_const_lv11_437;
    static const sc_lv<11> ap_const_lv11_1;
    static const sc_lv<7> ap_const_lv7_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_16;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<11> ap_const_lv11_2;
    static const sc_lv<11> ap_const_lv11_77E;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_exitcond1_fu_535_p2();
    void thread_exitcond_fu_284_p2();
    void thread_grp_fu_191_ce();
    void thread_grp_fu_191_p0();
    void thread_grp_fu_191_p1();
    void thread_grp_fu_195_ce();
    void thread_grp_fu_195_p0();
    void thread_grp_fu_195_p1();
    void thread_grp_fu_199_ce();
    void thread_grp_fu_199_p0();
    void thread_grp_fu_199_p1();
    void thread_grp_fu_204_ce();
    void thread_grp_fu_204_p0();
    void thread_grp_fu_204_p1();
    void thread_grp_fu_209_ce();
    void thread_grp_fu_209_p0();
    void thread_grp_fu_209_p1();
    void thread_grp_fu_214_ce();
    void thread_grp_fu_214_p0();
    void thread_grp_fu_214_p1();
    void thread_grp_fu_222_ce();
    void thread_grp_fu_222_p0();
    void thread_grp_fu_225_ce();
    void thread_grp_fu_225_p0();
    void thread_grp_fu_228_ce();
    void thread_grp_fu_228_p0();
    void thread_grp_fu_231_ce();
    void thread_grp_fu_231_p0();
    void thread_grp_fu_234_ce();
    void thread_grp_fu_234_p0();
    void thread_i_fu_290_p2();
    void thread_in_r_address0();
    void thread_in_r_address1();
    void thread_in_r_ce0();
    void thread_in_r_ce1();
    void thread_indvar_phi_fu_161_p4();
    void thread_j_fu_541_p2();
    void thread_out_r_address0();
    void thread_out_r_ce0();
    void thread_out_r_d0();
    void thread_out_r_we0();
    void thread_p_addr1_fu_579_p2();
    void thread_p_addr2_cast1_fu_529_p1();
    void thread_p_addr2_fu_359_p2();
    void thread_p_addr3_cast1_fu_532_p1();
    void thread_p_addr3_fu_474_p2();
    void thread_p_addr4_fu_565_p2();
    void thread_p_addr7_fu_551_p2();
    void thread_p_addr9_fu_620_p2();
    void thread_p_addr_cast1_fu_526_p1();
    void thread_p_addr_fu_320_p2();
    void thread_p_shl1_cast_fu_316_p1();
    void thread_p_shl2_cast_fu_343_p1();
    void thread_p_shl3_cast_fu_355_p1();
    void thread_p_shl4_cast_fu_458_p1();
    void thread_p_shl5_cast_fu_470_p1();
    void thread_p_shl_cast_fu_304_p1();
    void thread_tmp0_1_phi_fu_182_p4();
    void thread_tmp6_fu_584_p2();
    void thread_tmp_19_fu_521_p1();
    void thread_tmp_1_fu_296_p3();
    void thread_tmp_23_fu_330_p0();
    void thread_tmp_23_fu_330_p1();
    void thread_tmp_23_trn5_cast_fu_547_p1();
    void thread_tmp_24_fu_598_p1();
    void thread_tmp_27_fu_603_p1();
    void thread_tmp_2_fu_426_p1();
    void thread_tmp_31_fu_608_p1();
    void thread_tmp_40_fu_335_p3();
    void thread_tmp_40_trn_cast_fu_617_p1();
    void thread_tmp_41_fu_347_p3();
    void thread_tmp_42_fu_369_p0();
    void thread_tmp_42_fu_369_p1();
    void thread_tmp_43_fu_450_p3();
    void thread_tmp_44_fu_462_p3();
    void thread_tmp_45_fu_484_p0();
    void thread_tmp_45_fu_484_p1();
    void thread_tmp_47_fu_394_p3();
    void thread_tmp_48_fu_405_p0();
    void thread_tmp_48_fu_405_p1();
    void thread_tmp_50_fu_410_p3();
    void thread_tmp_51_fu_421_p0();
    void thread_tmp_51_fu_421_p1();
    void thread_tmp_52_fu_489_p4();
    void thread_tmp_53_fu_511_p0();
    void thread_tmp_53_fu_511_p1();
    void thread_tmp_54_fu_560_p0();
    void thread_tmp_54_fu_560_p1();
    void thread_tmp_55_fu_574_p0();
    void thread_tmp_55_fu_574_p1();
    void thread_tmp_56_fu_593_p0();
    void thread_tmp_56_fu_593_p1();
    void thread_tmp_57_fu_629_p0();
    void thread_tmp_57_fu_629_p1();
    void thread_tmp_58_fu_499_p3();
    void thread_tmp_59_fu_613_p1();
    void thread_tmp_5_fu_308_p3();
    void thread_tmp_6_fu_431_p1();
    void thread_tmp_fu_444_p2();
    void thread_tmp_s_fu_516_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
