-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.2
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity pattern_generator_cross is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst_n : IN STD_LOGIC;
    outputStream_V_TDATA : OUT STD_LOGIC_VECTOR (7 downto 0);
    outputStream_V_TVALID : OUT STD_LOGIC;
    outputStream_V_TREADY : IN STD_LOGIC );
end;


architecture behav of pattern_generator_cross is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "pattern_generator_cross,hls_ip_2018_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020clg484-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=3.451000,HLS_SYN_LAT=735423,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=262,HLS_SYN_LUT=421,HLS_VERSION=2018_2}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (5 downto 0) := "000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (5 downto 0) := "000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (5 downto 0) := "000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (5 downto 0) := "001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (5 downto 0) := "010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (5 downto 0) := "100000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv2_2 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv2_3 : STD_LOGIC_VECTOR (1 downto 0) := "11";
    constant ap_const_lv2_1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv9_0 : STD_LOGIC_VECTOR (8 downto 0) := "000000000";
    constant ap_const_lv10_0 : STD_LOGIC_VECTOR (9 downto 0) := "0000000000";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv8_3E : STD_LOGIC_VECTOR (7 downto 0) := "00111110";
    constant ap_const_lv8_C1 : STD_LOGIC_VECTOR (7 downto 0) := "11000001";
    constant ap_const_lv9_1FE : STD_LOGIC_VECTOR (8 downto 0) := "111111110";
    constant ap_const_lv9_1 : STD_LOGIC_VECTOR (8 downto 0) := "000000001";
    constant ap_const_lv9_1E0 : STD_LOGIC_VECTOR (8 downto 0) := "111100000";
    constant ap_const_lv32_27F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000001001111111";
    constant ap_const_lv10_2D0 : STD_LOGIC_VECTOR (9 downto 0) := "1011010000";
    constant ap_const_lv10_1 : STD_LOGIC_VECTOR (9 downto 0) := "0000000001";
    constant ap_const_lv10_280 : STD_LOGIC_VECTOR (9 downto 0) := "1010000000";
    constant ap_const_lv32_1DF : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000111011111";
    constant ap_const_lv32_FFFFFFFF : STD_LOGIC_VECTOR (31 downto 0) := "11111111111111111111111111111111";

    signal ap_rst_n_inv : STD_LOGIC;
    signal outputStream_V_1_data_in : STD_LOGIC_VECTOR (7 downto 0);
    signal outputStream_V_1_data_out : STD_LOGIC_VECTOR (7 downto 0);
    signal outputStream_V_1_vld_in : STD_LOGIC;
    signal outputStream_V_1_vld_out : STD_LOGIC;
    signal outputStream_V_1_ack_in : STD_LOGIC;
    signal outputStream_V_1_ack_out : STD_LOGIC;
    signal outputStream_V_1_payload_A : STD_LOGIC_VECTOR (7 downto 0);
    signal outputStream_V_1_payload_B : STD_LOGIC_VECTOR (7 downto 0);
    signal outputStream_V_1_sel_rd : STD_LOGIC := '0';
    signal outputStream_V_1_sel_wr : STD_LOGIC := '0';
    signal outputStream_V_1_sel : STD_LOGIC;
    signal outputStream_V_1_load_A : STD_LOGIC;
    signal outputStream_V_1_load_B : STD_LOGIC;
    signal outputStream_V_1_state : STD_LOGIC_VECTOR (1 downto 0) := "00";
    signal outputStream_V_1_state_cmp_full : STD_LOGIC;
    signal lineX : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    signal lineY : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    signal dirX : STD_LOGIC_VECTOR (0 downto 0) := "0";
    signal dirY : STD_LOGIC_VECTOR (0 downto 0) := "0";
    signal outputStream_V_TDATA_blk_n : STD_LOGIC;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (5 downto 0) := "000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal exitcond_fu_184_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_cond_fu_202_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_cond7_fu_212_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal or_cond_reg_335 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_cond7_reg_339 : STD_LOGIC_VECTOR (0 downto 0);
    signal lineX_load_reg_287 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal lineY_load_reg_295 : STD_LOGIC_VECTOR (31 downto 0);
    signal y_1_fu_141_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal y_1_reg_306 : STD_LOGIC_VECTOR (8 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal tmp_1_fu_147_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_1_reg_311 : STD_LOGIC_VECTOR (0 downto 0);
    signal exitcond5_fu_135_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_8_fu_153_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_8_reg_316 : STD_LOGIC_VECTOR (0 downto 0);
    signal x_1_fu_190_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal x_1_reg_330 : STD_LOGIC_VECTOR (9 downto 0);
    signal ap_predicate_op48_write_state3 : BOOLEAN;
    signal ap_predicate_op49_write_state3 : BOOLEAN;
    signal ap_block_state3_io : BOOLEAN;
    signal y_reg_79 : STD_LOGIC_VECTOR (8 downto 0);
    signal x_reg_90 : STD_LOGIC_VECTOR (9 downto 0);
    signal ap_predicate_op51_write_state4 : BOOLEAN;
    signal ap_predicate_op53_write_state4 : BOOLEAN;
    signal ap_block_state4_io : BOOLEAN;
    signal tmp_5_reg_101 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_fu_158_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_s_reg_112 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal tmp_6_fu_217_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal storemerge_fu_251_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal storemerge4_fu_275_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal tmp_2_fu_163_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_9_fu_222_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal y_cast2_fu_131_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_4_fu_196_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal x_cast1_fu_180_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_7_fu_207_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal storemerge_v_cast_ca_fu_243_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal storemerge4_v_cast_c_fu_267_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (5 downto 0);


begin




    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    dirX_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                dirX <= ap_const_lv1_0;
            else
                if (((exitcond5_fu_135_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    if ((tmp_fu_158_p2 = ap_const_lv1_1)) then 
                        dirX <= ap_const_lv1_0;
                    elsif (((tmp_2_fu_163_p2 = ap_const_lv1_1) and (tmp_fu_158_p2 = ap_const_lv1_0))) then 
                        dirX <= ap_const_lv1_1;
                    end if;
                end if; 
            end if;
        end if;
    end process;


    dirY_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                dirY <= ap_const_lv1_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state5)) then
                    if ((tmp_6_fu_217_p2 = ap_const_lv1_1)) then 
                        dirY <= ap_const_lv1_0;
                    elsif (((tmp_9_fu_222_p2 = ap_const_lv1_1) and (tmp_6_fu_217_p2 = ap_const_lv1_0))) then 
                        dirY <= ap_const_lv1_1;
                    end if;
                end if; 
            end if;
        end if;
    end process;


    lineX_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                lineX <= ap_const_lv32_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
                    lineX <= storemerge_fu_251_p2;
                end if; 
            end if;
        end if;
    end process;


    lineY_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                lineY <= ap_const_lv32_0;
            else
                if (((outputStream_V_1_ack_in = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state6))) then 
                    lineY <= storemerge4_fu_275_p2;
                end if; 
            end if;
        end if;
    end process;


    outputStream_V_1_sel_rd_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                outputStream_V_1_sel_rd <= ap_const_logic_0;
            else
                if (((outputStream_V_1_ack_out = ap_const_logic_1) and (outputStream_V_1_vld_out = ap_const_logic_1))) then 
                                        outputStream_V_1_sel_rd <= not(outputStream_V_1_sel_rd);
                end if; 
            end if;
        end if;
    end process;


    outputStream_V_1_sel_wr_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                outputStream_V_1_sel_wr <= ap_const_logic_0;
            else
                if (((outputStream_V_1_ack_in = ap_const_logic_1) and (outputStream_V_1_vld_in = ap_const_logic_1))) then 
                                        outputStream_V_1_sel_wr <= not(outputStream_V_1_sel_wr);
                end if; 
            end if;
        end if;
    end process;


    outputStream_V_1_state_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                outputStream_V_1_state <= ap_const_lv2_0;
            else
                if ((((outputStream_V_1_state = ap_const_lv2_2) and (outputStream_V_1_vld_in = ap_const_logic_0)) or ((outputStream_V_1_state = ap_const_lv2_3) and (outputStream_V_1_vld_in = ap_const_logic_0) and (outputStream_V_1_ack_out = ap_const_logic_1)))) then 
                    outputStream_V_1_state <= ap_const_lv2_2;
                elsif ((((outputStream_V_1_state = ap_const_lv2_1) and (outputStream_V_1_ack_out = ap_const_logic_0)) or ((outputStream_V_1_state = ap_const_lv2_3) and (outputStream_V_1_ack_out = ap_const_logic_0) and (outputStream_V_1_vld_in = ap_const_logic_1)))) then 
                    outputStream_V_1_state <= ap_const_lv2_1;
                elsif (((not(((outputStream_V_1_vld_in = ap_const_logic_0) and (outputStream_V_1_ack_out = ap_const_logic_1))) and not(((outputStream_V_1_ack_out = ap_const_logic_0) and (outputStream_V_1_vld_in = ap_const_logic_1))) and (outputStream_V_1_state = ap_const_lv2_3)) or ((outputStream_V_1_state = ap_const_lv2_1) and (outputStream_V_1_ack_out = ap_const_logic_1)) or ((outputStream_V_1_state = ap_const_lv2_2) and (outputStream_V_1_vld_in = ap_const_logic_1)))) then 
                    outputStream_V_1_state <= ap_const_lv2_3;
                else 
                    outputStream_V_1_state <= ap_const_lv2_2;
                end if; 
            end if;
        end if;
    end process;


    tmp_5_reg_101_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond5_fu_135_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                if ((tmp_fu_158_p2 = ap_const_lv1_1)) then 
                    tmp_5_reg_101 <= ap_const_lv32_0;
                elsif ((tmp_fu_158_p2 = ap_const_lv1_0)) then 
                    tmp_5_reg_101 <= lineX_load_reg_287;
                end if;
            end if; 
        end if;
    end process;

    tmp_s_reg_112_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state5)) then
                if ((tmp_6_fu_217_p2 = ap_const_lv1_1)) then 
                    tmp_s_reg_112 <= ap_const_lv32_0;
                elsif ((tmp_6_fu_217_p2 = ap_const_lv1_0)) then 
                    tmp_s_reg_112 <= lineY_load_reg_295;
                end if;
            end if; 
        end if;
    end process;

    x_reg_90_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond5_fu_135_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                x_reg_90 <= ap_const_lv10_0;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state4) and (ap_const_boolean_0 = ap_block_state4_io))) then 
                x_reg_90 <= x_1_reg_330;
            end if; 
        end if;
    end process;

    y_reg_79_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond_fu_184_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3) and (ap_const_boolean_0 = ap_block_state3_io))) then 
                y_reg_79 <= y_1_reg_306;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state1)) then 
                y_reg_79 <= ap_const_lv9_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state1)) then
                lineX_load_reg_287 <= lineX;
                lineY_load_reg_295 <= lineY;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((or_cond_fu_202_p2 = ap_const_lv1_1) and (exitcond_fu_184_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3) and (ap_const_boolean_0 = ap_block_state3_io))) then
                or_cond7_reg_339 <= or_cond7_fu_212_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond_fu_184_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3) and (ap_const_boolean_0 = ap_block_state3_io))) then
                or_cond_reg_335 <= or_cond_fu_202_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((outputStream_V_1_load_A = ap_const_logic_1)) then
                outputStream_V_1_payload_A <= outputStream_V_1_data_in;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((outputStream_V_1_load_B = ap_const_logic_1)) then
                outputStream_V_1_payload_B <= outputStream_V_1_data_in;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond5_fu_135_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                tmp_1_reg_311 <= tmp_1_fu_147_p2;
                tmp_8_reg_316 <= tmp_8_fu_153_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state3) and (ap_const_boolean_0 = ap_block_state3_io))) then
                x_1_reg_330 <= x_1_fu_190_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                y_1_reg_306 <= y_1_fu_141_p2;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (outputStream_V_1_ack_in, ap_CS_fsm, ap_CS_fsm_state3, exitcond_fu_184_p2, ap_CS_fsm_state4, ap_CS_fsm_state2, exitcond5_fu_135_p2, ap_block_state3_io, ap_block_state4_io, ap_CS_fsm_state6)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                ap_NS_fsm <= ap_ST_fsm_state2;
            when ap_ST_fsm_state2 => 
                if (((exitcond5_fu_135_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state5;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state3 => 
                if (((exitcond_fu_184_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3) and (ap_const_boolean_0 = ap_block_state3_io))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                elsif (((exitcond_fu_184_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3) and (ap_const_boolean_0 = ap_block_state3_io))) then
                    ap_NS_fsm <= ap_ST_fsm_state4;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state4 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state4) and (ap_const_boolean_0 = ap_block_state4_io))) then
                    ap_NS_fsm <= ap_ST_fsm_state3;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state6;
            when ap_ST_fsm_state6 => 
                if (((outputStream_V_1_ack_in = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state6))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state6;
                end if;
            when others =>  
                ap_NS_fsm <= "XXXXXX";
        end case;
    end process;
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);
    ap_CS_fsm_state6 <= ap_CS_fsm(5);

    ap_block_state3_io_assign_proc : process(outputStream_V_1_ack_in, ap_predicate_op48_write_state3, ap_predicate_op49_write_state3)
    begin
                ap_block_state3_io <= (((ap_predicate_op49_write_state3 = ap_const_boolean_1) and (outputStream_V_1_ack_in = ap_const_logic_0)) or ((ap_predicate_op48_write_state3 = ap_const_boolean_1) and (outputStream_V_1_ack_in = ap_const_logic_0)));
    end process;


    ap_block_state4_io_assign_proc : process(outputStream_V_1_ack_in, ap_predicate_op51_write_state4, ap_predicate_op53_write_state4)
    begin
                ap_block_state4_io <= (((ap_predicate_op53_write_state4 = ap_const_boolean_1) and (outputStream_V_1_ack_in = ap_const_logic_0)) or ((ap_predicate_op51_write_state4 = ap_const_boolean_1) and (outputStream_V_1_ack_in = ap_const_logic_0)));
    end process;


    ap_predicate_op48_write_state3_assign_proc : process(exitcond_fu_184_p2, or_cond_fu_202_p2, or_cond7_fu_212_p2)
    begin
                ap_predicate_op48_write_state3 <= ((or_cond_fu_202_p2 = ap_const_lv1_1) and (or_cond7_fu_212_p2 = ap_const_lv1_0) and (exitcond_fu_184_p2 = ap_const_lv1_0));
    end process;


    ap_predicate_op49_write_state3_assign_proc : process(exitcond_fu_184_p2, or_cond_fu_202_p2, or_cond7_fu_212_p2)
    begin
                ap_predicate_op49_write_state3 <= ((or_cond7_fu_212_p2 = ap_const_lv1_1) and (or_cond_fu_202_p2 = ap_const_lv1_1) and (exitcond_fu_184_p2 = ap_const_lv1_0));
    end process;


    ap_predicate_op51_write_state4_assign_proc : process(or_cond_reg_335, or_cond7_reg_339)
    begin
                ap_predicate_op51_write_state4 <= ((or_cond_reg_335 = ap_const_lv1_1) and (or_cond7_reg_339 = ap_const_lv1_0));
    end process;


    ap_predicate_op53_write_state4_assign_proc : process(or_cond_reg_335, or_cond7_reg_339)
    begin
                ap_predicate_op53_write_state4 <= ((or_cond7_reg_339 = ap_const_lv1_1) and (or_cond_reg_335 = ap_const_lv1_1));
    end process;


    ap_rst_n_inv_assign_proc : process(ap_rst_n)
    begin
                ap_rst_n_inv <= not(ap_rst_n);
    end process;

    exitcond5_fu_135_p2 <= "1" when (y_reg_79 = ap_const_lv9_1FE) else "0";
    exitcond_fu_184_p2 <= "1" when (x_reg_90 = ap_const_lv10_2D0) else "0";
    or_cond7_fu_212_p2 <= (tmp_8_reg_316 or tmp_7_fu_207_p2);
    or_cond_fu_202_p2 <= (tmp_4_fu_196_p2 and tmp_1_reg_311);
    outputStream_V_1_ack_in <= outputStream_V_1_state(1);
    outputStream_V_1_ack_out <= outputStream_V_TREADY;

    outputStream_V_1_data_in_assign_proc : process(ap_CS_fsm_state3, ap_predicate_op48_write_state3, ap_predicate_op49_write_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then
            if ((ap_predicate_op49_write_state3 = ap_const_boolean_1)) then 
                outputStream_V_1_data_in <= ap_const_lv8_C1;
            elsif ((ap_predicate_op48_write_state3 = ap_const_boolean_1)) then 
                outputStream_V_1_data_in <= ap_const_lv8_3E;
            else 
                outputStream_V_1_data_in <= "XXXXXXXX";
            end if;
        else 
            outputStream_V_1_data_in <= "XXXXXXXX";
        end if; 
    end process;


    outputStream_V_1_data_out_assign_proc : process(outputStream_V_1_payload_A, outputStream_V_1_payload_B, outputStream_V_1_sel)
    begin
        if ((outputStream_V_1_sel = ap_const_logic_1)) then 
            outputStream_V_1_data_out <= outputStream_V_1_payload_B;
        else 
            outputStream_V_1_data_out <= outputStream_V_1_payload_A;
        end if; 
    end process;

    outputStream_V_1_load_A <= (outputStream_V_1_state_cmp_full and not(outputStream_V_1_sel_wr));
    outputStream_V_1_load_B <= (outputStream_V_1_state_cmp_full and outputStream_V_1_sel_wr);
    outputStream_V_1_sel <= outputStream_V_1_sel_rd;
    outputStream_V_1_state_cmp_full <= '0' when (outputStream_V_1_state = ap_const_lv2_1) else '1';

    outputStream_V_1_vld_in_assign_proc : process(ap_CS_fsm_state3, ap_predicate_op48_write_state3, ap_predicate_op49_write_state3, ap_block_state3_io)
    begin
        if ((((ap_predicate_op49_write_state3 = ap_const_boolean_1) and (ap_const_logic_1 = ap_CS_fsm_state3) and (ap_const_boolean_0 = ap_block_state3_io)) or ((ap_predicate_op48_write_state3 = ap_const_boolean_1) and (ap_const_logic_1 = ap_CS_fsm_state3) and (ap_const_boolean_0 = ap_block_state3_io)))) then 
            outputStream_V_1_vld_in <= ap_const_logic_1;
        else 
            outputStream_V_1_vld_in <= ap_const_logic_0;
        end if; 
    end process;

    outputStream_V_1_vld_out <= outputStream_V_1_state(0);
    outputStream_V_TDATA <= outputStream_V_1_data_out;

    outputStream_V_TDATA_blk_n_assign_proc : process(outputStream_V_1_state, ap_CS_fsm_state3, exitcond_fu_184_p2, or_cond_fu_202_p2, or_cond7_fu_212_p2, ap_CS_fsm_state4, or_cond_reg_335, or_cond7_reg_339)
    begin
        if ((((or_cond7_fu_212_p2 = ap_const_lv1_1) and (or_cond_fu_202_p2 = ap_const_lv1_1) and (exitcond_fu_184_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3)) or ((or_cond_fu_202_p2 = ap_const_lv1_1) and (or_cond7_fu_212_p2 = ap_const_lv1_0) and (exitcond_fu_184_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3)) or ((or_cond_reg_335 = ap_const_lv1_1) and (or_cond7_reg_339 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4)) or ((or_cond7_reg_339 = ap_const_lv1_1) and (or_cond_reg_335 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state4)))) then 
            outputStream_V_TDATA_blk_n <= outputStream_V_1_state(1);
        else 
            outputStream_V_TDATA_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    outputStream_V_TVALID <= outputStream_V_1_state(0);
    storemerge4_fu_275_p2 <= std_logic_vector(unsigned(tmp_s_reg_112) + unsigned(storemerge4_v_cast_c_fu_267_p3));
    storemerge4_v_cast_c_fu_267_p3 <= 
        ap_const_lv32_FFFFFFFF when (dirY(0) = '1') else 
        ap_const_lv32_1;
    storemerge_fu_251_p2 <= std_logic_vector(unsigned(tmp_5_reg_101) + unsigned(storemerge_v_cast_ca_fu_243_p3));
    storemerge_v_cast_ca_fu_243_p3 <= 
        ap_const_lv32_FFFFFFFF when (dirX(0) = '1') else 
        ap_const_lv32_1;
    tmp_1_fu_147_p2 <= "1" when (unsigned(y_reg_79) < unsigned(ap_const_lv9_1E0)) else "0";
    tmp_2_fu_163_p2 <= "1" when (lineX_load_reg_287 = ap_const_lv32_27F) else "0";
    tmp_4_fu_196_p2 <= "1" when (unsigned(x_reg_90) < unsigned(ap_const_lv10_280)) else "0";
    tmp_6_fu_217_p2 <= "1" when (lineY_load_reg_295 = ap_const_lv32_0) else "0";
    tmp_7_fu_207_p2 <= "1" when (x_cast1_fu_180_p1 = lineX_load_reg_287) else "0";
    tmp_8_fu_153_p2 <= "1" when (y_cast2_fu_131_p1 = lineY_load_reg_295) else "0";
    tmp_9_fu_222_p2 <= "1" when (lineY_load_reg_295 = ap_const_lv32_1DF) else "0";
    tmp_fu_158_p2 <= "1" when (lineX_load_reg_287 = ap_const_lv32_0) else "0";
    x_1_fu_190_p2 <= std_logic_vector(unsigned(x_reg_90) + unsigned(ap_const_lv10_1));
    x_cast1_fu_180_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(x_reg_90),32));
    y_1_fu_141_p2 <= std_logic_vector(unsigned(y_reg_79) + unsigned(ap_const_lv9_1));
    y_cast2_fu_131_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(y_reg_79),32));
end behav;
