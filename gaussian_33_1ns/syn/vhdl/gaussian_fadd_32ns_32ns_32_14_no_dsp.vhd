-- ==============================================================
-- File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2013.2
-- Copyright (C) 2013 Xilinx Inc. All rights reserved.
-- 
-- ==============================================================

Library ieee;
use ieee.std_logic_1164.all;

entity gaussian_fadd_32ns_32ns_32_14_no_dsp is
    generic (
        ID         : integer := 1;
        NUM_STAGE  : integer := 14;
        din0_WIDTH : integer := 32;
        din1_WIDTH : integer := 32;
        dout_WIDTH : integer := 32
    );
    port (
        clk   : in  std_logic;
        reset : in  std_logic;
        ce    : in  std_logic;
        din0  : in  std_logic_vector(din0_WIDTH-1 downto 0);
        din1  : in  std_logic_vector(din1_WIDTH-1 downto 0);
        dout  : out std_logic_vector(dout_WIDTH-1 downto 0)
    );
end entity;

architecture arch of gaussian_fadd_32ns_32ns_32_14_no_dsp is
    --------------------- Component ---------------------
    component fadd_v7 is
        port (
            aclk                 : in  std_logic;
            aclken               : in  std_logic;
            s_axis_a_tvalid      : in  std_logic;
            s_axis_a_tdata       : in  std_logic_vector(31 downto 0);
            s_axis_b_tvalid      : in  std_logic;
            s_axis_b_tdata       : in  std_logic_vector(31 downto 0);
            m_axis_result_tvalid : out std_logic;
            m_axis_result_tdata  : out std_logic_vector(31 downto 0)
        );
    end component;
    --------------------- Local signal ------------------
    signal aclk      : std_logic;
    signal aclken    : std_logic;
    signal a_tvalid  : std_logic;
    signal a_tdata   : std_logic_vector(31 downto 0);
    signal b_tvalid  : std_logic;
    signal b_tdata   : std_logic_vector(31 downto 0);
    signal r_tvalid  : std_logic;
    signal r_tdata   : std_logic_vector(31 downto 0);
    signal din0_buf1 : std_logic_vector(din0_WIDTH-1 downto 0);
    signal din1_buf1 : std_logic_vector(din1_WIDTH-1 downto 0);
    signal out_buf0 : std_logic_vector(dout_WIDTH-1 downto 0);
    signal out_buf1 : std_logic_vector(dout_WIDTH-1 downto 0);
    signal out_buf2 : std_logic_vector(dout_WIDTH-1 downto 0);
    signal out_buf3 : std_logic_vector(dout_WIDTH-1 downto 0);
    signal out_buf4 : std_logic_vector(dout_WIDTH-1 downto 0);
    signal out_buf5 : std_logic_vector(dout_WIDTH-1 downto 0);
    signal out_buf6 : std_logic_vector(dout_WIDTH-1 downto 0);
    signal out_buf7 : std_logic_vector(dout_WIDTH-1 downto 0);
    signal out_buf8 : std_logic_vector(dout_WIDTH-1 downto 0);
    signal out_buf9 : std_logic_vector(dout_WIDTH-1 downto 0);
    signal out_buf10 : std_logic_vector(dout_WIDTH-1 downto 0);
begin
    --------------------- Instantiation -----------------
    fadd_v7_u : component fadd_v7
    port map (
        aclk                 => aclk,
        aclken               => aclken,
        s_axis_a_tvalid      => a_tvalid,
        s_axis_a_tdata       => a_tdata,
        s_axis_b_tvalid      => b_tvalid,
        s_axis_b_tdata       => b_tdata,
        m_axis_result_tvalid => r_tvalid,
        m_axis_result_tdata  => r_tdata
    );

    --------------------- Assignment --------------------
    aclk     <= clk;
    aclken   <= ce;
    a_tvalid <= '1';
    a_tdata  <= din0_buf1;
    b_tvalid <= '1';
    b_tdata  <= din1_buf1;
    dout     <= out_buf10;

    --------------------- Input buffer ------------------
    process (clk) begin
        if clk'event and clk = '1' then
            if ce = '1' then
                din0_buf1 <= din0;
                din1_buf1 <= din1;
            end if;
        end if;
    end process;

    process (clk) begin
        if clk'event and clk = '1' then
            if ce = '1' then
                out_buf0 <= r_tdata;
                out_buf1 <= out_buf0;
                out_buf2 <= out_buf1;
                out_buf3 <= out_buf2;
                out_buf4 <= out_buf3;
                out_buf5 <= out_buf4;
                out_buf6 <= out_buf5;
                out_buf7 <= out_buf6;
                out_buf8 <= out_buf7;
                out_buf9 <= out_buf8;
                out_buf10 <= out_buf9;
            end if;
        end if;
    end process;
end architecture;
