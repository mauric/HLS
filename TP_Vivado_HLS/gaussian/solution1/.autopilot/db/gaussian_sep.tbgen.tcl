set moduleName gaussian_sep
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set isOneStateSeq 0
set C_modelName gaussian_sep
set C_modelType { void 0 }
set C_modelArgList { 
	{ in_r int 16 regular {array 2073600 { 1 1 } 1 1 }  }
	{ out_r int 16 regular {array 2073600 { 0 3 } 1 1 }  }
}

# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ in_r_address0 sc_out sc_lv 21 signal 0 } 
	{ in_r_ce0 sc_out sc_logic 1 signal 0 } 
	{ in_r_q0 sc_in sc_lv 16 signal 0 } 
	{ in_r_address1 sc_out sc_lv 21 signal 0 } 
	{ in_r_ce1 sc_out sc_logic 1 signal 0 } 
	{ in_r_q1 sc_in sc_lv 16 signal 0 } 
	{ out_r_address0 sc_out sc_lv 21 signal 1 } 
	{ out_r_ce0 sc_out sc_logic 1 signal 1 } 
	{ out_r_we0 sc_out sc_logic 1 signal 1 } 
	{ out_r_d0 sc_out sc_lv 16 signal 1 } 
}

set Spec2ImplPortList { 
	in_r { ap_memory {  { in_r_address0 mem_address 1 21 }  { in_r_ce0 mem_ce 1 1 }  { in_r_q0 mem_dout 0 16 }  { in_r_address1 mem_address 1 21 }  { in_r_ce1 mem_ce 1 1 }  { in_r_q1 mem_dout 0 16 } } }
	out_r { ap_memory {  { out_r_address0 mem_address 1 21 }  { out_r_ce0 mem_ce 1 1 }  { out_r_we0 mem_we 1 1 }  { out_r_d0 mem_din 1 16 } } }
}
