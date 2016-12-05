// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2013.2
// Copyright (C) 2013 Xilinx Inc. All rights reserved.
// 
// ===========================================================

#include "gaussian.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic gaussian::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic gaussian::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<1> gaussian::ap_ST_st1_fsm_0 = "0";
const sc_lv<1> gaussian::ap_ST_st2_fsm_1 = "1";

gaussian::gaussian(sc_module_name name) : sc_module(name), mVcdFile(0) {
    grp_gaussian_loopFusion_fu_17 = new gaussian_loopFusion("grp_gaussian_loopFusion_fu_17");
    grp_gaussian_loopFusion_fu_17->ap_clk(ap_clk);
    grp_gaussian_loopFusion_fu_17->ap_rst(ap_rst);
    grp_gaussian_loopFusion_fu_17->ap_start(grp_gaussian_loopFusion_fu_17_ap_start);
    grp_gaussian_loopFusion_fu_17->ap_done(grp_gaussian_loopFusion_fu_17_ap_done);
    grp_gaussian_loopFusion_fu_17->ap_idle(grp_gaussian_loopFusion_fu_17_ap_idle);
    grp_gaussian_loopFusion_fu_17->ap_ready(grp_gaussian_loopFusion_fu_17_ap_ready);
    grp_gaussian_loopFusion_fu_17->in_r_address0(grp_gaussian_loopFusion_fu_17_in_r_address0);
    grp_gaussian_loopFusion_fu_17->in_r_ce0(grp_gaussian_loopFusion_fu_17_in_r_ce0);
    grp_gaussian_loopFusion_fu_17->in_r_q0(grp_gaussian_loopFusion_fu_17_in_r_q0);
    grp_gaussian_loopFusion_fu_17->in_r_address1(grp_gaussian_loopFusion_fu_17_in_r_address1);
    grp_gaussian_loopFusion_fu_17->in_r_ce1(grp_gaussian_loopFusion_fu_17_in_r_ce1);
    grp_gaussian_loopFusion_fu_17->in_r_q1(grp_gaussian_loopFusion_fu_17_in_r_q1);
    grp_gaussian_loopFusion_fu_17->out_r_address0(grp_gaussian_loopFusion_fu_17_out_r_address0);
    grp_gaussian_loopFusion_fu_17->out_r_ce0(grp_gaussian_loopFusion_fu_17_out_r_ce0);
    grp_gaussian_loopFusion_fu_17->out_r_we0(grp_gaussian_loopFusion_fu_17_out_r_we0);
    grp_gaussian_loopFusion_fu_17->out_r_d0(grp_gaussian_loopFusion_fu_17_out_r_d0);

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_CS_fsm );
    sensitive << ( grp_gaussian_loopFusion_fu_17_ap_done );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm );
    sensitive << ( grp_gaussian_loopFusion_fu_17_ap_done );

    SC_METHOD(thread_grp_gaussian_loopFusion_fu_17_ap_start);
    sensitive << ( grp_gaussian_loopFusion_fu_17_ap_start_ap_start_reg );

    SC_METHOD(thread_grp_gaussian_loopFusion_fu_17_in_r_q0);
    sensitive << ( ap_CS_fsm );
    sensitive << ( in_r_q0 );

    SC_METHOD(thread_grp_gaussian_loopFusion_fu_17_in_r_q1);
    sensitive << ( ap_CS_fsm );
    sensitive << ( in_r_q1 );

    SC_METHOD(thread_in_r_address0);
    sensitive << ( ap_CS_fsm );
    sensitive << ( grp_gaussian_loopFusion_fu_17_in_r_address0 );

    SC_METHOD(thread_in_r_address1);
    sensitive << ( ap_CS_fsm );
    sensitive << ( grp_gaussian_loopFusion_fu_17_in_r_address1 );

    SC_METHOD(thread_in_r_ce0);
    sensitive << ( ap_CS_fsm );
    sensitive << ( grp_gaussian_loopFusion_fu_17_in_r_ce0 );

    SC_METHOD(thread_in_r_ce1);
    sensitive << ( ap_CS_fsm );
    sensitive << ( grp_gaussian_loopFusion_fu_17_in_r_ce1 );

    SC_METHOD(thread_out_r_address0);
    sensitive << ( ap_CS_fsm );
    sensitive << ( grp_gaussian_loopFusion_fu_17_out_r_address0 );

    SC_METHOD(thread_out_r_ce0);
    sensitive << ( ap_CS_fsm );
    sensitive << ( grp_gaussian_loopFusion_fu_17_out_r_ce0 );

    SC_METHOD(thread_out_r_d0);
    sensitive << ( ap_CS_fsm );
    sensitive << ( grp_gaussian_loopFusion_fu_17_out_r_d0 );

    SC_METHOD(thread_out_r_we0);
    sensitive << ( ap_CS_fsm );
    sensitive << ( grp_gaussian_loopFusion_fu_17_out_r_we0 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( grp_gaussian_loopFusion_fu_17_ap_done );

    SC_THREAD(thread_hdltv_gen);
    sensitive << ( ap_clk.pos() );

    ap_CS_fsm = "0";
    grp_gaussian_loopFusion_fu_17_ap_start_ap_start_reg = SC_LOGIC_0;
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "gaussian_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    const char* dump_vcd = std::getenv("AP_WRITE_VCD");
    if (dump_vcd && string(dump_vcd) == "1" ) {
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, in_r_address0, "(port)in_r_address0");
    sc_trace(mVcdFile, in_r_ce0, "(port)in_r_ce0");
    sc_trace(mVcdFile, in_r_q0, "(port)in_r_q0");
    sc_trace(mVcdFile, in_r_address1, "(port)in_r_address1");
    sc_trace(mVcdFile, in_r_ce1, "(port)in_r_ce1");
    sc_trace(mVcdFile, in_r_q1, "(port)in_r_q1");
    sc_trace(mVcdFile, out_r_address0, "(port)out_r_address0");
    sc_trace(mVcdFile, out_r_ce0, "(port)out_r_ce0");
    sc_trace(mVcdFile, out_r_we0, "(port)out_r_we0");
    sc_trace(mVcdFile, out_r_d0, "(port)out_r_d0");
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, grp_gaussian_loopFusion_fu_17_ap_start, "grp_gaussian_loopFusion_fu_17_ap_start");
    sc_trace(mVcdFile, grp_gaussian_loopFusion_fu_17_ap_done, "grp_gaussian_loopFusion_fu_17_ap_done");
    sc_trace(mVcdFile, grp_gaussian_loopFusion_fu_17_ap_idle, "grp_gaussian_loopFusion_fu_17_ap_idle");
    sc_trace(mVcdFile, grp_gaussian_loopFusion_fu_17_ap_ready, "grp_gaussian_loopFusion_fu_17_ap_ready");
    sc_trace(mVcdFile, grp_gaussian_loopFusion_fu_17_in_r_address0, "grp_gaussian_loopFusion_fu_17_in_r_address0");
    sc_trace(mVcdFile, grp_gaussian_loopFusion_fu_17_in_r_ce0, "grp_gaussian_loopFusion_fu_17_in_r_ce0");
    sc_trace(mVcdFile, grp_gaussian_loopFusion_fu_17_in_r_q0, "grp_gaussian_loopFusion_fu_17_in_r_q0");
    sc_trace(mVcdFile, grp_gaussian_loopFusion_fu_17_in_r_address1, "grp_gaussian_loopFusion_fu_17_in_r_address1");
    sc_trace(mVcdFile, grp_gaussian_loopFusion_fu_17_in_r_ce1, "grp_gaussian_loopFusion_fu_17_in_r_ce1");
    sc_trace(mVcdFile, grp_gaussian_loopFusion_fu_17_in_r_q1, "grp_gaussian_loopFusion_fu_17_in_r_q1");
    sc_trace(mVcdFile, grp_gaussian_loopFusion_fu_17_out_r_address0, "grp_gaussian_loopFusion_fu_17_out_r_address0");
    sc_trace(mVcdFile, grp_gaussian_loopFusion_fu_17_out_r_ce0, "grp_gaussian_loopFusion_fu_17_out_r_ce0");
    sc_trace(mVcdFile, grp_gaussian_loopFusion_fu_17_out_r_we0, "grp_gaussian_loopFusion_fu_17_out_r_we0");
    sc_trace(mVcdFile, grp_gaussian_loopFusion_fu_17_out_r_d0, "grp_gaussian_loopFusion_fu_17_out_r_d0");
    sc_trace(mVcdFile, grp_gaussian_loopFusion_fu_17_ap_start_ap_start_reg, "grp_gaussian_loopFusion_fu_17_ap_start_ap_start_reg");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");

    }
    mHdltvinHandle.open("gaussian.hdltvin.dat");
    mHdltvoutHandle.open("gaussian.hdltvout.dat");
}

gaussian::~gaussian() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    mHdltvinHandle << "] " << endl;
    mHdltvoutHandle << "] " << endl;
    mHdltvinHandle.close();
    mHdltvoutHandle.close();
    delete grp_gaussian_loopFusion_fu_17;
}

void gaussian::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_st1_fsm_0;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        grp_gaussian_loopFusion_fu_17_ap_start_ap_start_reg = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_ST_st1_fsm_0, ap_CS_fsm.read()) && 
             !esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0))) {
            grp_gaussian_loopFusion_fu_17_ap_start_ap_start_reg = ap_const_logic_1;
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, grp_gaussian_loopFusion_fu_17_ap_ready.read())) {
            grp_gaussian_loopFusion_fu_17_ap_start_ap_start_reg = ap_const_logic_0;
        }
    }
}

void gaussian::thread_ap_done() {
    if ((esl_seteq<1,1,1>(ap_ST_st2_fsm_1, ap_CS_fsm.read()) && 
         !esl_seteq<1,1,1>(ap_const_logic_0, grp_gaussian_loopFusion_fu_17_ap_done.read()))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void gaussian::thread_ap_idle() {
    if ((!esl_seteq<1,1,1>(ap_const_logic_1, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_ST_st1_fsm_0, ap_CS_fsm.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void gaussian::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_ST_st2_fsm_1, ap_CS_fsm.read()) && 
         !esl_seteq<1,1,1>(ap_const_logic_0, grp_gaussian_loopFusion_fu_17_ap_done.read()))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void gaussian::thread_grp_gaussian_loopFusion_fu_17_ap_start() {
    grp_gaussian_loopFusion_fu_17_ap_start = grp_gaussian_loopFusion_fu_17_ap_start_ap_start_reg.read();
}

void gaussian::thread_grp_gaussian_loopFusion_fu_17_in_r_q0() {
    grp_gaussian_loopFusion_fu_17_in_r_q0 = in_r_q0.read();
}

void gaussian::thread_grp_gaussian_loopFusion_fu_17_in_r_q1() {
    grp_gaussian_loopFusion_fu_17_in_r_q1 = in_r_q1.read();
}

void gaussian::thread_in_r_address0() {
    in_r_address0 = grp_gaussian_loopFusion_fu_17_in_r_address0.read();
}

void gaussian::thread_in_r_address1() {
    in_r_address1 = grp_gaussian_loopFusion_fu_17_in_r_address1.read();
}

void gaussian::thread_in_r_ce0() {
    if (esl_seteq<1,1,1>(ap_ST_st2_fsm_1, ap_CS_fsm.read())) {
        in_r_ce0 = grp_gaussian_loopFusion_fu_17_in_r_ce0.read();
    } else {
        in_r_ce0 = ap_const_logic_0;
    }
}

void gaussian::thread_in_r_ce1() {
    if (esl_seteq<1,1,1>(ap_ST_st2_fsm_1, ap_CS_fsm.read())) {
        in_r_ce1 = grp_gaussian_loopFusion_fu_17_in_r_ce1.read();
    } else {
        in_r_ce1 = ap_const_logic_0;
    }
}

void gaussian::thread_out_r_address0() {
    out_r_address0 = grp_gaussian_loopFusion_fu_17_out_r_address0.read();
}

void gaussian::thread_out_r_ce0() {
    if (esl_seteq<1,1,1>(ap_ST_st2_fsm_1, ap_CS_fsm.read())) {
        out_r_ce0 = grp_gaussian_loopFusion_fu_17_out_r_ce0.read();
    } else {
        out_r_ce0 = ap_const_logic_0;
    }
}

void gaussian::thread_out_r_d0() {
    out_r_d0 = grp_gaussian_loopFusion_fu_17_out_r_d0.read();
}

void gaussian::thread_out_r_we0() {
    if (esl_seteq<1,1,1>(ap_ST_st2_fsm_1, ap_CS_fsm.read())) {
        out_r_we0 = grp_gaussian_loopFusion_fu_17_out_r_we0.read();
    } else {
        out_r_we0 = ap_const_logic_0;
    }
}

void gaussian::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint()) {
        case 0 : 
            if (!esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0)) {
                ap_NS_fsm = ap_ST_st2_fsm_1;
            } else {
                ap_NS_fsm = ap_ST_st1_fsm_0;
            }
            break;
        case 1 : 
            if (!esl_seteq<1,1,1>(ap_const_logic_0, grp_gaussian_loopFusion_fu_17_ap_done.read())) {
                ap_NS_fsm = ap_ST_st1_fsm_0;
            } else {
                ap_NS_fsm = ap_ST_st2_fsm_1;
            }
            break;
        default : 
            ap_NS_fsm = "X";
            break;
    }
}
void gaussian::thread_hdltv_gen() {
    const char* dump_tv = std::getenv("AP_WRITE_TV");
    if (!(dump_tv && string(dump_tv) == "on")) return;

    wait();

    mHdltvinHandle << "[ " << endl;
    mHdltvoutHandle << "[ " << endl;
    int ap_cycleNo = 0;
    while (1) {
        wait();
        const char* mComma = ap_cycleNo == 0 ? " " : ", " ;
        mHdltvinHandle << mComma << "{"  <<  " \"ap_rst\" :  \"" << ap_rst.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"ap_start\" :  \"" << ap_start.read() << "\" ";
        mHdltvoutHandle << mComma << "{"  <<  " \"ap_done\" :  \"" << ap_done.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_idle\" :  \"" << ap_idle.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_ready\" :  \"" << ap_ready.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"in_r_address0\" :  \"" << in_r_address0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"in_r_ce0\" :  \"" << in_r_ce0.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"in_r_q0\" :  \"" << in_r_q0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"in_r_address1\" :  \"" << in_r_address1.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"in_r_ce1\" :  \"" << in_r_ce1.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"in_r_q1\" :  \"" << in_r_q1.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"out_r_address0\" :  \"" << out_r_address0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"out_r_ce0\" :  \"" << out_r_ce0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"out_r_we0\" :  \"" << out_r_we0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"out_r_d0\" :  \"" << out_r_d0.read() << "\" ";
        mHdltvinHandle << "}" << std::endl;
        mHdltvoutHandle << "}" << std::endl;
        ap_cycleNo++;
    }
}

}

