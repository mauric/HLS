-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2013.2
-- Copyright (C) 2013 Xilinx Inc. All rights reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity gaussian is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    in_r_address0 : OUT STD_LOGIC_VECTOR (20 downto 0);
    in_r_ce0 : OUT STD_LOGIC;
    in_r_q0 : IN STD_LOGIC_VECTOR (15 downto 0);
    in_r_address1 : OUT STD_LOGIC_VECTOR (20 downto 0);
    in_r_ce1 : OUT STD_LOGIC;
    in_r_q1 : IN STD_LOGIC_VECTOR (15 downto 0);
    out_r_address0 : OUT STD_LOGIC_VECTOR (20 downto 0);
    out_r_ce0 : OUT STD_LOGIC;
    out_r_we0 : OUT STD_LOGIC;
    out_r_d0 : OUT STD_LOGIC_VECTOR (15 downto 0) );
end;


architecture behav of gaussian is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "gaussian,hls_ip_2013_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z010clg400-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=8.092000,HLS_SYN_LAT=74529769,HLS_SYN_TPT=none,HLS_SYN_MEM=4,HLS_SYN_DSP=16,HLS_SYN_FF=3261,HLS_SYN_LUT=5294}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_st1_fsm_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_ST_st2_fsm_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";

    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "0";
    signal grp_gaussian_1line_fu_17_ap_start : STD_LOGIC;
    signal grp_gaussian_1line_fu_17_ap_done : STD_LOGIC;
    signal grp_gaussian_1line_fu_17_ap_idle : STD_LOGIC;
    signal grp_gaussian_1line_fu_17_ap_ready : STD_LOGIC;
    signal grp_gaussian_1line_fu_17_in_r_address0 : STD_LOGIC_VECTOR (20 downto 0);
    signal grp_gaussian_1line_fu_17_in_r_ce0 : STD_LOGIC;
    signal grp_gaussian_1line_fu_17_in_r_q0 : STD_LOGIC_VECTOR (15 downto 0);
    signal grp_gaussian_1line_fu_17_in_r_address1 : STD_LOGIC_VECTOR (20 downto 0);
    signal grp_gaussian_1line_fu_17_in_r_ce1 : STD_LOGIC;
    signal grp_gaussian_1line_fu_17_in_r_q1 : STD_LOGIC_VECTOR (15 downto 0);
    signal grp_gaussian_1line_fu_17_out_r_address0 : STD_LOGIC_VECTOR (20 downto 0);
    signal grp_gaussian_1line_fu_17_out_r_ce0 : STD_LOGIC;
    signal grp_gaussian_1line_fu_17_out_r_we0 : STD_LOGIC;
    signal grp_gaussian_1line_fu_17_out_r_d0 : STD_LOGIC_VECTOR (15 downto 0);
    signal grp_gaussian_1line_fu_17_ap_start_ap_start_reg : STD_LOGIC := '0';
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);

    component gaussian_1line IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        in_r_address0 : OUT STD_LOGIC_VECTOR (20 downto 0);
        in_r_ce0 : OUT STD_LOGIC;
        in_r_q0 : IN STD_LOGIC_VECTOR (15 downto 0);
        in_r_address1 : OUT STD_LOGIC_VECTOR (20 downto 0);
        in_r_ce1 : OUT STD_LOGIC;
        in_r_q1 : IN STD_LOGIC_VECTOR (15 downto 0);
        out_r_address0 : OUT STD_LOGIC_VECTOR (20 downto 0);
        out_r_ce0 : OUT STD_LOGIC;
        out_r_we0 : OUT STD_LOGIC;
        out_r_d0 : OUT STD_LOGIC_VECTOR (15 downto 0) );
    end component;



begin
    grp_gaussian_1line_fu_17 : component gaussian_1line
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_gaussian_1line_fu_17_ap_start,
        ap_done => grp_gaussian_1line_fu_17_ap_done,
        ap_idle => grp_gaussian_1line_fu_17_ap_idle,
        ap_ready => grp_gaussian_1line_fu_17_ap_ready,
        in_r_address0 => grp_gaussian_1line_fu_17_in_r_address0,
        in_r_ce0 => grp_gaussian_1line_fu_17_in_r_ce0,
        in_r_q0 => grp_gaussian_1line_fu_17_in_r_q0,
        in_r_address1 => grp_gaussian_1line_fu_17_in_r_address1,
        in_r_ce1 => grp_gaussian_1line_fu_17_in_r_ce1,
        in_r_q1 => grp_gaussian_1line_fu_17_in_r_q1,
        out_r_address0 => grp_gaussian_1line_fu_17_out_r_address0,
        out_r_ce0 => grp_gaussian_1line_fu_17_out_r_ce0,
        out_r_we0 => grp_gaussian_1line_fu_17_out_r_we0,
        out_r_d0 => grp_gaussian_1line_fu_17_out_r_d0);




    -- the current state (ap_CS_fsm) of the state machine. --
    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_st1_fsm_0;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    -- grp_gaussian_1line_fu_17_ap_start_ap_start_reg assign process. --
    grp_gaussian_1line_fu_17_ap_start_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_gaussian_1line_fu_17_ap_start_ap_start_reg <= ap_const_logic_0;
            else
                if (((ap_ST_st1_fsm_0 = ap_CS_fsm) and not((ap_start = ap_const_logic_0)))) then 
                    grp_gaussian_1line_fu_17_ap_start_ap_start_reg <= ap_const_logic_1;
                elsif ((ap_const_logic_1 = grp_gaussian_1line_fu_17_ap_ready)) then 
                    grp_gaussian_1line_fu_17_ap_start_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    -- the next state (ap_NS_fsm) of the state machine. --
    ap_NS_fsm_assign_proc : process (ap_start , ap_CS_fsm , grp_gaussian_1line_fu_17_ap_done)
    begin
        case ap_CS_fsm is
            when ap_ST_st1_fsm_0 => 
                if (not((ap_start = ap_const_logic_0))) then
                    ap_NS_fsm <= ap_ST_st2_fsm_1;
                else
                    ap_NS_fsm <= ap_ST_st1_fsm_0;
                end if;
            when ap_ST_st2_fsm_1 => 
                if (not((ap_const_logic_0 = grp_gaussian_1line_fu_17_ap_done))) then
                    ap_NS_fsm <= ap_ST_st1_fsm_0;
                else
                    ap_NS_fsm <= ap_ST_st2_fsm_1;
                end if;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;

    -- ap_done assign process. --
    ap_done_assign_proc : process(ap_CS_fsm, grp_gaussian_1line_fu_17_ap_done)
    begin
        if (((ap_ST_st2_fsm_1 = ap_CS_fsm) and not((ap_const_logic_0 = grp_gaussian_1line_fu_17_ap_done)))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_idle assign process. --
    ap_idle_assign_proc : process(ap_start, ap_CS_fsm)
    begin
        if ((not((ap_const_logic_1 = ap_start)) and (ap_ST_st1_fsm_0 = ap_CS_fsm))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_ready assign process. --
    ap_ready_assign_proc : process(ap_CS_fsm, grp_gaussian_1line_fu_17_ap_done)
    begin
        if (((ap_ST_st2_fsm_1 = ap_CS_fsm) and not((ap_const_logic_0 = grp_gaussian_1line_fu_17_ap_done)))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    grp_gaussian_1line_fu_17_ap_start <= grp_gaussian_1line_fu_17_ap_start_ap_start_reg;
    grp_gaussian_1line_fu_17_in_r_q0 <= in_r_q0;
    grp_gaussian_1line_fu_17_in_r_q1 <= in_r_q1;
    in_r_address0 <= grp_gaussian_1line_fu_17_in_r_address0;
    in_r_address1 <= grp_gaussian_1line_fu_17_in_r_address1;

    -- in_r_ce0 assign process. --
    in_r_ce0_assign_proc : process(ap_CS_fsm, grp_gaussian_1line_fu_17_in_r_ce0)
    begin
        if ((ap_ST_st2_fsm_1 = ap_CS_fsm)) then 
            in_r_ce0 <= grp_gaussian_1line_fu_17_in_r_ce0;
        else 
            in_r_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    -- in_r_ce1 assign process. --
    in_r_ce1_assign_proc : process(ap_CS_fsm, grp_gaussian_1line_fu_17_in_r_ce1)
    begin
        if ((ap_ST_st2_fsm_1 = ap_CS_fsm)) then 
            in_r_ce1 <= grp_gaussian_1line_fu_17_in_r_ce1;
        else 
            in_r_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    out_r_address0 <= grp_gaussian_1line_fu_17_out_r_address0;

    -- out_r_ce0 assign process. --
    out_r_ce0_assign_proc : process(ap_CS_fsm, grp_gaussian_1line_fu_17_out_r_ce0)
    begin
        if ((ap_ST_st2_fsm_1 = ap_CS_fsm)) then 
            out_r_ce0 <= grp_gaussian_1line_fu_17_out_r_ce0;
        else 
            out_r_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    out_r_d0 <= grp_gaussian_1line_fu_17_out_r_d0;

    -- out_r_we0 assign process. --
    out_r_we0_assign_proc : process(ap_CS_fsm, grp_gaussian_1line_fu_17_out_r_we0)
    begin
        if ((ap_ST_st2_fsm_1 = ap_CS_fsm)) then 
            out_r_we0 <= grp_gaussian_1line_fu_17_out_r_we0;
        else 
            out_r_we0 <= ap_const_logic_0;
        end if; 
    end process;

end behav;
