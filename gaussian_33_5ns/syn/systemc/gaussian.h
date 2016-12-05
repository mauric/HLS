// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2013.2
// Copyright (C) 2013 Xilinx Inc. All rights reserved.
// 
// ===========================================================

#ifndef _gaussian_HH_
#define _gaussian_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "gaussian_fadd_32ns_32ns_32_9_full_dsp.h"
#include "gaussian_fmul_32ns_32ns_32_5_max_dsp.h"
#include "gaussian_fptoui_32ns_64_6.h"
#include "gaussian_sitofp_64ns_32_9.h"

namespace ap_rtl {

struct gaussian : public sc_module {
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
    gaussian(sc_module_name name);
    SC_HAS_PROCESS(gaussian);

    ~gaussian();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    gaussian_fadd_32ns_32ns_32_9_full_dsp<1,9,32,32,32>* gaussian_fadd_32ns_32ns_32_9_full_dsp_U1;
    gaussian_fmul_32ns_32ns_32_5_max_dsp<2,5,32,32,32>* gaussian_fmul_32ns_32ns_32_5_max_dsp_U2;
    gaussian_fmul_32ns_32ns_32_5_max_dsp<3,5,32,32,32>* gaussian_fmul_32ns_32ns_32_5_max_dsp_U3;
    gaussian_fptoui_32ns_64_6<4,6,32,64>* gaussian_fptoui_32ns_64_6_U4;
    gaussian_sitofp_64ns_32_9<5,9,64,32>* gaussian_sitofp_64ns_32_9_U5;
    gaussian_sitofp_64ns_32_9<6,9,64,32>* gaussian_sitofp_64ns_32_9_U6;
    sc_signal< sc_lv<7> > ap_CS_fsm;
    sc_signal< sc_lv<16> > reg_186;
    sc_signal< sc_lv<16> > reg_190;
    sc_signal< sc_lv<32> > grp_fu_180_p1;
    sc_signal< sc_lv<32> > reg_194;
    sc_signal< sc_lv<32> > grp_fu_164_p2;
    sc_signal< sc_lv<32> > reg_199;
    sc_signal< sc_lv<32> > grp_fu_160_p2;
    sc_signal< sc_lv<32> > reg_205;
    sc_signal< sc_lv<11> > tmp_i_12_fu_211_p2;
    sc_signal< sc_lv<11> > tmp_i_12_reg_516;
    sc_signal< sc_lv<11> > i_fu_217_p2;
    sc_signal< sc_lv<11> > i_reg_522;
    sc_signal< sc_lv<11> > tmp6_i_fu_229_p2;
    sc_signal< sc_lv<11> > tmp6_i_reg_532;
    sc_signal< sc_lv<11> > j_fu_235_p2;
    sc_signal< sc_lv<11> > j_reg_537;
    sc_signal< sc_lv<23> > p_addr_fu_271_p2;
    sc_signal< sc_lv<23> > p_addr_reg_546;
    sc_signal< sc_lv<1> > exitcond1_fu_241_p2;
    sc_signal< sc_lv<24> > tmp_4_i_trn_cast_fu_277_p1;
    sc_signal< sc_lv<24> > tmp_4_i_trn_cast_reg_551;
    sc_signal< sc_lv<24> > p_addr_cast_fu_281_p1;
    sc_signal< sc_lv<24> > p_addr_cast_reg_557;
    sc_signal< sc_lv<24> > p_addr2_fu_284_p2;
    sc_signal< sc_lv<24> > p_addr2_reg_562;
    sc_signal< sc_lv<24> > tmp_8_i_trn_cast_fu_290_p1;
    sc_signal< sc_lv<24> > tmp_8_i_trn_cast_reg_567;
    sc_signal< sc_lv<24> > p_addr3_fu_293_p2;
    sc_signal< sc_lv<24> > p_addr3_reg_573;
    sc_signal< sc_lv<64> > tmp_6_i3_fu_315_p1;
    sc_signal< sc_lv<24> > tmp_12_i_trn_cast_fu_325_p1;
    sc_signal< sc_lv<24> > tmp_12_i_trn_cast_reg_598;
    sc_signal< sc_lv<24> > p_addr5_fu_328_p2;
    sc_signal< sc_lv<24> > p_addr5_reg_604;
    sc_signal< sc_lv<32> > grp_fu_183_p1;
    sc_signal< sc_lv<32> > tmp_i_reg_614;
    sc_signal< sc_lv<64> > tmp_14_i5_fu_341_p1;
    sc_signal< sc_lv<32> > grp_fu_169_p2;
    sc_signal< sc_lv<32> > tmp_10_i_reg_624;
    sc_signal< sc_lv<23> > p_addr8_fu_368_p2;
    sc_signal< sc_lv<23> > p_addr8_reg_629;
    sc_signal< sc_lv<24> > p_addr8_cast_fu_374_p1;
    sc_signal< sc_lv<24> > p_addr8_cast_reg_634;
    sc_signal< sc_lv<24> > p_addr9_fu_377_p2;
    sc_signal< sc_lv<24> > p_addr9_reg_640;
    sc_signal< sc_lv<64> > tmp_18_i6_fu_390_p1;
    sc_signal< sc_lv<23> > p_addr6_fu_417_p2;
    sc_signal< sc_lv<23> > p_addr6_reg_655;
    sc_signal< sc_lv<24> > p_addr11_fu_423_p2;
    sc_signal< sc_lv<24> > p_addr11_reg_660;
    sc_signal< sc_lv<24> > p_addr10_fu_427_p2;
    sc_signal< sc_lv<24> > p_addr10_reg_665;
    sc_signal< sc_lv<24> > p_addr7_fu_434_p2;
    sc_signal< sc_lv<24> > p_addr7_reg_670;
    sc_signal< sc_lv<24> > p_addr4_fu_439_p2;
    sc_signal< sc_lv<24> > p_addr4_reg_675;
    sc_signal< sc_lv<24> > p_addr1_fu_444_p2;
    sc_signal< sc_lv<24> > p_addr1_reg_680;
    sc_signal< sc_lv<64> > tmp_8_fu_452_p1;
    sc_signal< sc_lv<64> > tmp_8_reg_685;
    sc_signal< sc_lv<64> > tmp_22_i7_fu_481_p1;
    sc_signal< sc_lv<16> > in_load_7_reg_715;
    sc_signal< sc_lv<16> > in_load_8_reg_725;
    sc_signal< sc_lv<64> > tmp_26_i8_fu_494_p1;
    sc_signal< sc_lv<64> > tmp_30_i9_fu_499_p1;
    sc_signal< sc_lv<64> > tmp_34_i1_fu_504_p1;
    sc_signal< sc_lv<64> > tmp_38_i1_fu_508_p1;
    sc_signal< sc_lv<16> > tmp_14_fu_512_p1;
    sc_signal< sc_lv<16> > tmp_14_reg_750;
    sc_signal< sc_lv<11> > indvar1_i_reg_135;
    sc_signal< sc_lv<11> > indvar_i_reg_147;
    sc_signal< sc_lv<1> > exitcond_fu_223_p2;
    sc_signal< sc_lv<64> > tmp_2_fu_302_p1;
    sc_signal< sc_lv<64> > tmp_3_fu_310_p1;
    sc_signal< sc_lv<64> > tmp_4_fu_336_p1;
    sc_signal< sc_lv<64> > tmp_7_fu_385_p1;
    sc_signal< sc_lv<64> > tmp_9_fu_460_p1;
    sc_signal< sc_lv<64> > tmp_11_fu_468_p1;
    sc_signal< sc_lv<64> > tmp_12_fu_476_p1;
    sc_signal< sc_lv<64> > tmp_13_fu_489_p1;
    sc_signal< sc_lv<32> > grp_fu_160_p0;
    sc_signal< sc_lv<32> > grp_fu_160_p1;
    sc_signal< sc_lv<32> > grp_fu_164_p0;
    sc_signal< sc_lv<32> > grp_fu_164_p1;
    sc_signal< sc_lv<32> > grp_fu_169_p0;
    sc_signal< sc_lv<32> > grp_fu_169_p1;
    sc_signal< sc_lv<32> > grp_fu_177_p0;
    sc_signal< sc_lv<64> > grp_fu_180_p0;
    sc_signal< sc_lv<64> > grp_fu_183_p0;
    sc_signal< sc_lv<22> > tmp_fu_247_p3;
    sc_signal< sc_lv<18> > tmp_1_fu_259_p3;
    sc_signal< sc_lv<23> > p_shl_cast_fu_255_p1;
    sc_signal< sc_lv<23> > p_shl1_cast_fu_267_p1;
    sc_signal< sc_lv<24> > p_addr2_fu_284_p0;
    sc_signal< sc_lv<24> > p_addr3_fu_293_p0;
    sc_signal< sc_lv<32> > tmp_2_fu_302_p0;
    sc_signal< sc_lv<32> > tmp_3_fu_310_p0;
    sc_signal< sc_lv<32> > tmp_4_fu_336_p0;
    sc_signal< sc_lv<22> > tmp_5_fu_346_p3;
    sc_signal< sc_lv<18> > tmp_6_fu_357_p3;
    sc_signal< sc_lv<23> > p_shl2_cast_fu_353_p1;
    sc_signal< sc_lv<23> > p_shl3_cast_fu_364_p1;
    sc_signal< sc_lv<24> > p_addr9_fu_377_p0;
    sc_signal< sc_lv<32> > tmp_7_fu_385_p0;
    sc_signal< sc_lv<22> > tmp_s_fu_395_p3;
    sc_signal< sc_lv<18> > tmp_10_fu_406_p3;
    sc_signal< sc_lv<23> > p_shl4_cast_fu_402_p1;
    sc_signal< sc_lv<23> > p_shl5_cast_fu_413_p1;
    sc_signal< sc_lv<24> > p_addr7_fu_434_p0;
    sc_signal< sc_lv<24> > p_addr6_cast_fu_431_p1;
    sc_signal< sc_lv<24> > p_addr4_fu_439_p0;
    sc_signal< sc_lv<24> > p_addr1_fu_444_p0;
    sc_signal< sc_lv<32> > tmp_8_fu_452_p0;
    sc_signal< sc_lv<32> > tmp_9_fu_460_p0;
    sc_signal< sc_lv<32> > tmp_11_fu_468_p0;
    sc_signal< sc_lv<32> > tmp_12_fu_476_p0;
    sc_signal< sc_lv<32> > tmp_13_fu_489_p0;
    sc_signal< sc_lv<64> > grp_fu_177_p1;
    sc_signal< sc_logic > grp_fu_160_ce;
    sc_signal< sc_logic > grp_fu_164_ce;
    sc_signal< sc_logic > grp_fu_169_ce;
    sc_signal< sc_logic > grp_fu_177_ce;
    sc_signal< sc_logic > grp_fu_180_ce;
    sc_signal< sc_logic > grp_fu_183_ce;
    sc_signal< sc_lv<7> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<7> ap_ST_st1_fsm_0;
    static const sc_lv<7> ap_ST_st2_fsm_1;
    static const sc_lv<7> ap_ST_st3_fsm_2;
    static const sc_lv<7> ap_ST_st4_fsm_3;
    static const sc_lv<7> ap_ST_st5_fsm_4;
    static const sc_lv<7> ap_ST_st6_fsm_5;
    static const sc_lv<7> ap_ST_st7_fsm_6;
    static const sc_lv<7> ap_ST_st8_fsm_7;
    static const sc_lv<7> ap_ST_st9_fsm_8;
    static const sc_lv<7> ap_ST_st10_fsm_9;
    static const sc_lv<7> ap_ST_st11_fsm_10;
    static const sc_lv<7> ap_ST_st12_fsm_11;
    static const sc_lv<7> ap_ST_st13_fsm_12;
    static const sc_lv<7> ap_ST_st14_fsm_13;
    static const sc_lv<7> ap_ST_st15_fsm_14;
    static const sc_lv<7> ap_ST_st16_fsm_15;
    static const sc_lv<7> ap_ST_st17_fsm_16;
    static const sc_lv<7> ap_ST_st18_fsm_17;
    static const sc_lv<7> ap_ST_st19_fsm_18;
    static const sc_lv<7> ap_ST_st20_fsm_19;
    static const sc_lv<7> ap_ST_st21_fsm_20;
    static const sc_lv<7> ap_ST_st22_fsm_21;
    static const sc_lv<7> ap_ST_st23_fsm_22;
    static const sc_lv<7> ap_ST_st24_fsm_23;
    static const sc_lv<7> ap_ST_st25_fsm_24;
    static const sc_lv<7> ap_ST_st26_fsm_25;
    static const sc_lv<7> ap_ST_st27_fsm_26;
    static const sc_lv<7> ap_ST_st28_fsm_27;
    static const sc_lv<7> ap_ST_st29_fsm_28;
    static const sc_lv<7> ap_ST_st30_fsm_29;
    static const sc_lv<7> ap_ST_st31_fsm_30;
    static const sc_lv<7> ap_ST_st32_fsm_31;
    static const sc_lv<7> ap_ST_st33_fsm_32;
    static const sc_lv<7> ap_ST_st34_fsm_33;
    static const sc_lv<7> ap_ST_st35_fsm_34;
    static const sc_lv<7> ap_ST_st36_fsm_35;
    static const sc_lv<7> ap_ST_st37_fsm_36;
    static const sc_lv<7> ap_ST_st38_fsm_37;
    static const sc_lv<7> ap_ST_st39_fsm_38;
    static const sc_lv<7> ap_ST_st40_fsm_39;
    static const sc_lv<7> ap_ST_st41_fsm_40;
    static const sc_lv<7> ap_ST_st42_fsm_41;
    static const sc_lv<7> ap_ST_st43_fsm_42;
    static const sc_lv<7> ap_ST_st44_fsm_43;
    static const sc_lv<7> ap_ST_st45_fsm_44;
    static const sc_lv<7> ap_ST_st46_fsm_45;
    static const sc_lv<7> ap_ST_st47_fsm_46;
    static const sc_lv<7> ap_ST_st48_fsm_47;
    static const sc_lv<7> ap_ST_st49_fsm_48;
    static const sc_lv<7> ap_ST_st50_fsm_49;
    static const sc_lv<7> ap_ST_st51_fsm_50;
    static const sc_lv<7> ap_ST_st52_fsm_51;
    static const sc_lv<7> ap_ST_st53_fsm_52;
    static const sc_lv<7> ap_ST_st54_fsm_53;
    static const sc_lv<7> ap_ST_st55_fsm_54;
    static const sc_lv<7> ap_ST_st56_fsm_55;
    static const sc_lv<7> ap_ST_st57_fsm_56;
    static const sc_lv<7> ap_ST_st58_fsm_57;
    static const sc_lv<7> ap_ST_st59_fsm_58;
    static const sc_lv<7> ap_ST_st60_fsm_59;
    static const sc_lv<7> ap_ST_st61_fsm_60;
    static const sc_lv<7> ap_ST_st62_fsm_61;
    static const sc_lv<7> ap_ST_st63_fsm_62;
    static const sc_lv<7> ap_ST_st64_fsm_63;
    static const sc_lv<7> ap_ST_st65_fsm_64;
    static const sc_lv<7> ap_ST_st66_fsm_65;
    static const sc_lv<7> ap_ST_st67_fsm_66;
    static const sc_lv<7> ap_ST_st68_fsm_67;
    static const sc_lv<7> ap_ST_st69_fsm_68;
    static const sc_lv<7> ap_ST_st70_fsm_69;
    static const sc_lv<7> ap_ST_st71_fsm_70;
    static const sc_lv<7> ap_ST_st72_fsm_71;
    static const sc_lv<7> ap_ST_st73_fsm_72;
    static const sc_lv<7> ap_ST_st74_fsm_73;
    static const sc_lv<7> ap_ST_st75_fsm_74;
    static const sc_lv<7> ap_ST_st76_fsm_75;
    static const sc_lv<7> ap_ST_st77_fsm_76;
    static const sc_lv<7> ap_ST_st78_fsm_77;
    static const sc_lv<7> ap_ST_st79_fsm_78;
    static const sc_lv<7> ap_ST_st80_fsm_79;
    static const sc_lv<7> ap_ST_st81_fsm_80;
    static const sc_lv<7> ap_ST_st82_fsm_81;
    static const sc_lv<7> ap_ST_st83_fsm_82;
    static const sc_lv<7> ap_ST_st84_fsm_83;
    static const sc_lv<7> ap_ST_st85_fsm_84;
    static const sc_lv<7> ap_ST_st86_fsm_85;
    static const sc_lv<7> ap_ST_st87_fsm_86;
    static const sc_lv<7> ap_ST_st88_fsm_87;
    static const sc_lv<7> ap_ST_st89_fsm_88;
    static const sc_lv<7> ap_ST_st90_fsm_89;
    static const sc_lv<7> ap_ST_st91_fsm_90;
    static const sc_lv<7> ap_ST_st92_fsm_91;
    static const sc_lv<7> ap_ST_st93_fsm_92;
    static const sc_lv<7> ap_ST_st94_fsm_93;
    static const sc_lv<7> ap_ST_st95_fsm_94;
    static const sc_lv<7> ap_ST_st96_fsm_95;
    static const sc_lv<7> ap_ST_st97_fsm_96;
    static const sc_lv<7> ap_ST_st98_fsm_97;
    static const sc_lv<7> ap_ST_st99_fsm_98;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<11> ap_const_lv11_0;
    static const sc_lv<32> ap_const_lv32_3D7929ED;
    static const sc_lv<32> ap_const_lv32_3E193AF7;
    static const sc_lv<32> ap_const_lv32_3EBC7736;
    static const sc_lv<32> ap_const_lv32_3E19389B;
    static const sc_lv<11> ap_const_lv11_2;
    static const sc_lv<11> ap_const_lv11_1;
    static const sc_lv<11> ap_const_lv11_436;
    static const sc_lv<11> ap_const_lv11_77E;
    static const sc_lv<7> ap_const_lv7_0;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_exitcond1_fu_241_p2();
    void thread_exitcond_fu_223_p2();
    void thread_grp_fu_160_ce();
    void thread_grp_fu_160_p0();
    void thread_grp_fu_160_p1();
    void thread_grp_fu_164_ce();
    void thread_grp_fu_164_p0();
    void thread_grp_fu_164_p1();
    void thread_grp_fu_169_ce();
    void thread_grp_fu_169_p0();
    void thread_grp_fu_169_p1();
    void thread_grp_fu_177_ce();
    void thread_grp_fu_177_p0();
    void thread_grp_fu_180_ce();
    void thread_grp_fu_180_p0();
    void thread_grp_fu_183_ce();
    void thread_grp_fu_183_p0();
    void thread_i_fu_217_p2();
    void thread_in_r_address0();
    void thread_in_r_address1();
    void thread_in_r_ce0();
    void thread_in_r_ce1();
    void thread_j_fu_235_p2();
    void thread_out_r_address0();
    void thread_out_r_ce0();
    void thread_out_r_d0();
    void thread_out_r_we0();
    void thread_p_addr10_fu_427_p2();
    void thread_p_addr11_fu_423_p2();
    void thread_p_addr1_fu_444_p0();
    void thread_p_addr1_fu_444_p2();
    void thread_p_addr2_fu_284_p0();
    void thread_p_addr2_fu_284_p2();
    void thread_p_addr3_fu_293_p0();
    void thread_p_addr3_fu_293_p2();
    void thread_p_addr4_fu_439_p0();
    void thread_p_addr4_fu_439_p2();
    void thread_p_addr5_fu_328_p2();
    void thread_p_addr6_cast_fu_431_p1();
    void thread_p_addr6_fu_417_p2();
    void thread_p_addr7_fu_434_p0();
    void thread_p_addr7_fu_434_p2();
    void thread_p_addr8_cast_fu_374_p1();
    void thread_p_addr8_fu_368_p2();
    void thread_p_addr9_fu_377_p0();
    void thread_p_addr9_fu_377_p2();
    void thread_p_addr_cast_fu_281_p1();
    void thread_p_addr_fu_271_p2();
    void thread_p_shl1_cast_fu_267_p1();
    void thread_p_shl2_cast_fu_353_p1();
    void thread_p_shl3_cast_fu_364_p1();
    void thread_p_shl4_cast_fu_402_p1();
    void thread_p_shl5_cast_fu_413_p1();
    void thread_p_shl_cast_fu_255_p1();
    void thread_tmp6_i_fu_229_p2();
    void thread_tmp_10_fu_406_p3();
    void thread_tmp_11_fu_468_p0();
    void thread_tmp_11_fu_468_p1();
    void thread_tmp_12_fu_476_p0();
    void thread_tmp_12_fu_476_p1();
    void thread_tmp_12_i_trn_cast_fu_325_p1();
    void thread_tmp_13_fu_489_p0();
    void thread_tmp_13_fu_489_p1();
    void thread_tmp_14_fu_512_p1();
    void thread_tmp_14_i5_fu_341_p1();
    void thread_tmp_18_i6_fu_390_p1();
    void thread_tmp_1_fu_259_p3();
    void thread_tmp_22_i7_fu_481_p1();
    void thread_tmp_26_i8_fu_494_p1();
    void thread_tmp_2_fu_302_p0();
    void thread_tmp_2_fu_302_p1();
    void thread_tmp_30_i9_fu_499_p1();
    void thread_tmp_34_i1_fu_504_p1();
    void thread_tmp_38_i1_fu_508_p1();
    void thread_tmp_3_fu_310_p0();
    void thread_tmp_3_fu_310_p1();
    void thread_tmp_4_fu_336_p0();
    void thread_tmp_4_fu_336_p1();
    void thread_tmp_4_i_trn_cast_fu_277_p1();
    void thread_tmp_5_fu_346_p3();
    void thread_tmp_6_fu_357_p3();
    void thread_tmp_6_i3_fu_315_p1();
    void thread_tmp_7_fu_385_p0();
    void thread_tmp_7_fu_385_p1();
    void thread_tmp_8_fu_452_p0();
    void thread_tmp_8_fu_452_p1();
    void thread_tmp_8_i_trn_cast_fu_290_p1();
    void thread_tmp_9_fu_460_p0();
    void thread_tmp_9_fu_460_p1();
    void thread_tmp_fu_247_p3();
    void thread_tmp_i_12_fu_211_p2();
    void thread_tmp_s_fu_395_p3();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
