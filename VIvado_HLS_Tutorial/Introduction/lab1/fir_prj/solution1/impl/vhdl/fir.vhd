-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.2
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity fir is
generic (
    C_S_AXI_AXILITES_ADDR_WIDTH : INTEGER := 8;
    C_S_AXI_AXILITES_DATA_WIDTH : INTEGER := 32 );
port (
    ap_clk : IN STD_LOGIC;
    ap_rst_n : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    s_axi_AXILiteS_AWVALID : IN STD_LOGIC;
    s_axi_AXILiteS_AWREADY : OUT STD_LOGIC;
    s_axi_AXILiteS_AWADDR : IN STD_LOGIC_VECTOR (C_S_AXI_AXILITES_ADDR_WIDTH-1 downto 0);
    s_axi_AXILiteS_WVALID : IN STD_LOGIC;
    s_axi_AXILiteS_WREADY : OUT STD_LOGIC;
    s_axi_AXILiteS_WDATA : IN STD_LOGIC_VECTOR (C_S_AXI_AXILITES_DATA_WIDTH-1 downto 0);
    s_axi_AXILiteS_WSTRB : IN STD_LOGIC_VECTOR (C_S_AXI_AXILITES_DATA_WIDTH/8-1 downto 0);
    s_axi_AXILiteS_ARVALID : IN STD_LOGIC;
    s_axi_AXILiteS_ARREADY : OUT STD_LOGIC;
    s_axi_AXILiteS_ARADDR : IN STD_LOGIC_VECTOR (C_S_AXI_AXILITES_ADDR_WIDTH-1 downto 0);
    s_axi_AXILiteS_RVALID : OUT STD_LOGIC;
    s_axi_AXILiteS_RREADY : IN STD_LOGIC;
    s_axi_AXILiteS_RDATA : OUT STD_LOGIC_VECTOR (C_S_AXI_AXILITES_DATA_WIDTH-1 downto 0);
    s_axi_AXILiteS_RRESP : OUT STD_LOGIC_VECTOR (1 downto 0);
    s_axi_AXILiteS_BVALID : OUT STD_LOGIC;
    s_axi_AXILiteS_BREADY : IN STD_LOGIC;
    s_axi_AXILiteS_BRESP : OUT STD_LOGIC_VECTOR (1 downto 0) );
end;


architecture behav of fir is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "fir,hls_ip_2018_2,{HLS_INPUT_TYPE=c,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020clg484-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=8.510000,HLS_SYN_LAT=58,HLS_SYN_TPT=none,HLS_SYN_MEM=2,HLS_SYN_DSP=3,HLS_SYN_FF=526,HLS_SYN_LUT=451,HLS_VERSION=2018_2}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (7 downto 0) := "00000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (7 downto 0) := "00000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (7 downto 0) := "00000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (7 downto 0) := "00001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (7 downto 0) := "00010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (7 downto 0) := "00100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (7 downto 0) := "01000000";
    constant ap_ST_fsm_state8 : STD_LOGIC_VECTOR (7 downto 0) := "10000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant C_S_AXI_DATA_WIDTH : INTEGER range 63 downto 0 := 20;
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv5_A : STD_LOGIC_VECTOR (4 downto 0) := "01010";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv5_1F : STD_LOGIC_VECTOR (4 downto 0) := "11111";
    constant ap_const_lv5_0 : STD_LOGIC_VECTOR (4 downto 0) := "00000";
    constant ap_const_lv32_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000111";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_rst_n_inv : STD_LOGIC;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (7 downto 0) := "00000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal y_1_data_reg : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    signal y_1_vld_reg : STD_LOGIC := '0';
    signal y_1_vld_in : STD_LOGIC;
    signal y_1_ack_in : STD_LOGIC;
    signal c_address0 : STD_LOGIC_VECTOR (3 downto 0);
    signal c_ce0 : STD_LOGIC;
    signal c_q0 : STD_LOGIC_VECTOR (31 downto 0);
    signal x : STD_LOGIC_VECTOR (31 downto 0);
    signal x_0_data_reg : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    signal x_0_vld_reg : STD_LOGIC := '0';
    signal x_0_ack_out : STD_LOGIC;
    signal shift_reg_address0 : STD_LOGIC_VECTOR (3 downto 0);
    signal shift_reg_ce0 : STD_LOGIC;
    signal shift_reg_we0 : STD_LOGIC;
    signal shift_reg_d0 : STD_LOGIC_VECTOR (31 downto 0);
    signal shift_reg_q0 : STD_LOGIC_VECTOR (31 downto 0);
    signal x_read_reg_191 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal i_cast_fu_150_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_cast_reg_197 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal tmp_1_fu_162_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_1_reg_206 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_fu_154_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal grp_fu_143_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal i_1_reg_225 : STD_LOGIC_VECTOR (4 downto 0);
    signal c_load_reg_230 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal tmp_6_fu_181_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_6_reg_235 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal acc_1_fu_186_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state7 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state7 : signal is "none";
    signal acc_reg_107 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_phi_mux_i_phi_fu_125_p4 : STD_LOGIC_VECTOR (4 downto 0);
    signal i_reg_121 : STD_LOGIC_VECTOR (4 downto 0);
    signal data1_reg_133 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_3_fu_168_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_4_fu_173_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_5_fu_177_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal grp_fu_143_p0 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_CS_fsm_state8 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state8 : signal is "none";
    signal ap_NS_fsm : STD_LOGIC_VECTOR (7 downto 0);

    component fir_shift_reg IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (3 downto 0);
        ce0 : IN STD_LOGIC;
        we0 : IN STD_LOGIC;
        d0 : IN STD_LOGIC_VECTOR (31 downto 0);
        q0 : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;


    component fir_AXILiteS_s_axi IS
    generic (
        C_S_AXI_ADDR_WIDTH : INTEGER;
        C_S_AXI_DATA_WIDTH : INTEGER );
    port (
        AWVALID : IN STD_LOGIC;
        AWREADY : OUT STD_LOGIC;
        AWADDR : IN STD_LOGIC_VECTOR (C_S_AXI_ADDR_WIDTH-1 downto 0);
        WVALID : IN STD_LOGIC;
        WREADY : OUT STD_LOGIC;
        WDATA : IN STD_LOGIC_VECTOR (C_S_AXI_DATA_WIDTH-1 downto 0);
        WSTRB : IN STD_LOGIC_VECTOR (C_S_AXI_DATA_WIDTH/8-1 downto 0);
        ARVALID : IN STD_LOGIC;
        ARREADY : OUT STD_LOGIC;
        ARADDR : IN STD_LOGIC_VECTOR (C_S_AXI_ADDR_WIDTH-1 downto 0);
        RVALID : OUT STD_LOGIC;
        RREADY : IN STD_LOGIC;
        RDATA : OUT STD_LOGIC_VECTOR (C_S_AXI_DATA_WIDTH-1 downto 0);
        RRESP : OUT STD_LOGIC_VECTOR (1 downto 0);
        BVALID : OUT STD_LOGIC;
        BREADY : IN STD_LOGIC;
        BRESP : OUT STD_LOGIC_VECTOR (1 downto 0);
        ACLK : IN STD_LOGIC;
        ARESET : IN STD_LOGIC;
        ACLK_EN : IN STD_LOGIC;
        y : IN STD_LOGIC_VECTOR (31 downto 0);
        y_ap_vld : IN STD_LOGIC;
        c_address0 : IN STD_LOGIC_VECTOR (3 downto 0);
        c_ce0 : IN STD_LOGIC;
        c_q0 : OUT STD_LOGIC_VECTOR (31 downto 0);
        x : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;



begin
    shift_reg_U : component fir_shift_reg
    generic map (
        DataWidth => 32,
        AddressRange => 11,
        AddressWidth => 4)
    port map (
        clk => ap_clk,
        reset => ap_rst_n_inv,
        address0 => shift_reg_address0,
        ce0 => shift_reg_ce0,
        we0 => shift_reg_we0,
        d0 => shift_reg_d0,
        q0 => shift_reg_q0);

    fir_AXILiteS_s_axi_U : component fir_AXILiteS_s_axi
    generic map (
        C_S_AXI_ADDR_WIDTH => C_S_AXI_AXILITES_ADDR_WIDTH,
        C_S_AXI_DATA_WIDTH => C_S_AXI_AXILITES_DATA_WIDTH)
    port map (
        AWVALID => s_axi_AXILiteS_AWVALID,
        AWREADY => s_axi_AXILiteS_AWREADY,
        AWADDR => s_axi_AXILiteS_AWADDR,
        WVALID => s_axi_AXILiteS_WVALID,
        WREADY => s_axi_AXILiteS_WREADY,
        WDATA => s_axi_AXILiteS_WDATA,
        WSTRB => s_axi_AXILiteS_WSTRB,
        ARVALID => s_axi_AXILiteS_ARVALID,
        ARREADY => s_axi_AXILiteS_ARREADY,
        ARADDR => s_axi_AXILiteS_ARADDR,
        RVALID => s_axi_AXILiteS_RVALID,
        RREADY => s_axi_AXILiteS_RREADY,
        RDATA => s_axi_AXILiteS_RDATA,
        RRESP => s_axi_AXILiteS_RRESP,
        BVALID => s_axi_AXILiteS_BVALID,
        BREADY => s_axi_AXILiteS_BREADY,
        BRESP => s_axi_AXILiteS_BRESP,
        ACLK => ap_clk,
        ARESET => ap_rst_n_inv,
        ACLK_EN => ap_const_logic_1,
        y => y_1_data_reg,
        y_ap_vld => y_1_vld_reg,
        c_address0 => c_address0,
        c_ce0 => c_ce0,
        c_q0 => c_q0,
        x => x);





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


    acc_reg_107_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
                acc_reg_107 <= acc_1_fu_186_p2;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
                acc_reg_107 <= ap_const_lv32_0;
            end if; 
        end if;
    end process;

    data1_reg_133_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state4) and (tmp_1_reg_206 = ap_const_lv1_0))) then 
                data1_reg_133 <= shift_reg_q0;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state3) and (tmp_fu_154_p3 = ap_const_lv1_0) and (tmp_1_fu_162_p2 = ap_const_lv1_1))) then 
                data1_reg_133 <= x_read_reg_191;
            end if; 
        end if;
    end process;

    i_reg_121_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
                i_reg_121 <= i_1_reg_225;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
                i_reg_121 <= ap_const_lv5_A;
            end if; 
        end if;
    end process;

    x_0_vld_reg_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
        end if;
    end process;

    y_1_vld_reg_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not(((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) and (y_1_vld_reg = ap_const_logic_0) and (y_1_vld_in = ap_const_logic_1))) then 
                y_1_vld_reg <= ap_const_logic_1;
            elsif (((y_1_vld_in = ap_const_logic_0) and (ap_const_logic_1 = ap_const_logic_1) and (y_1_vld_reg = ap_const_logic_1))) then 
                y_1_vld_reg <= ap_const_logic_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state5)) then
                c_load_reg_230 <= c_q0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then
                i_1_reg_225 <= grp_fu_143_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then
                i_cast_reg_197 <= i_cast_fu_150_p1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state3) and (tmp_fu_154_p3 = ap_const_lv1_0))) then
                tmp_1_reg_206 <= tmp_1_fu_162_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state6)) then
                tmp_6_reg_235 <= tmp_6_fu_181_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((not(((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) and (x_0_vld_reg = ap_const_logic_0) and (ap_const_logic_1 = ap_const_logic_1)) or (not(((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) and (x_0_ack_out = ap_const_logic_1) and (ap_const_logic_1 = ap_const_logic_1) and (x_0_vld_reg = ap_const_logic_1)))) then
                x_0_data_reg <= x;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                x_read_reg_191 <= x_0_data_reg;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((not(((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) and (y_1_vld_reg = ap_const_logic_0) and (y_1_vld_in = ap_const_logic_1)) or (not(((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) and (ap_const_logic_1 = ap_const_logic_1) and (y_1_vld_in = ap_const_logic_1) and (y_1_vld_reg = ap_const_logic_1)))) then
                y_1_data_reg <= acc_reg_107;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, y_1_ack_in, ap_CS_fsm_state3, tmp_fu_154_p3, ap_CS_fsm_state8)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                ap_NS_fsm <= ap_ST_fsm_state3;
            when ap_ST_fsm_state3 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state3) and (tmp_fu_154_p3 = ap_const_lv1_0))) then
                    ap_NS_fsm <= ap_ST_fsm_state4;
                else
                    ap_NS_fsm <= ap_ST_fsm_state8;
                end if;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state5;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state6;
            when ap_ST_fsm_state6 => 
                ap_NS_fsm <= ap_ST_fsm_state7;
            when ap_ST_fsm_state7 => 
                ap_NS_fsm <= ap_ST_fsm_state3;
            when ap_ST_fsm_state8 => 
                if (((y_1_ack_in = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state8))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state8;
                end if;
            when others =>  
                ap_NS_fsm <= "XXXXXXXX";
        end case;
    end process;
    acc_1_fu_186_p2 <= std_logic_vector(unsigned(tmp_6_reg_235) + unsigned(acc_reg_107));
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);
    ap_CS_fsm_state6 <= ap_CS_fsm(5);
    ap_CS_fsm_state7 <= ap_CS_fsm(6);
    ap_CS_fsm_state8 <= ap_CS_fsm(7);

    ap_done_assign_proc : process(y_1_ack_in, ap_CS_fsm_state8)
    begin
        if (((y_1_ack_in = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state8))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;

    ap_phi_mux_i_phi_fu_125_p4 <= i_reg_121;

    ap_ready_assign_proc : process(y_1_ack_in, ap_CS_fsm_state8)
    begin
        if (((y_1_ack_in = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state8))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    ap_rst_n_inv_assign_proc : process(ap_rst_n)
    begin
                ap_rst_n_inv <= not(ap_rst_n);
    end process;

    c_address0 <= tmp_5_fu_177_p1(4 - 1 downto 0);

    c_ce0_assign_proc : process(ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            c_ce0 <= ap_const_logic_1;
        else 
            c_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    grp_fu_143_p0_assign_proc : process(ap_CS_fsm_state3, ap_CS_fsm_state4, ap_phi_mux_i_phi_fu_125_p4, i_reg_121)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            grp_fu_143_p0 <= i_reg_121;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            grp_fu_143_p0 <= ap_phi_mux_i_phi_fu_125_p4;
        else 
            grp_fu_143_p0 <= "XXXXX";
        end if; 
    end process;

    grp_fu_143_p2 <= std_logic_vector(signed(grp_fu_143_p0) + signed(ap_const_lv5_1F));
        i_cast_fu_150_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(i_reg_121),32));


    shift_reg_address0_assign_proc : process(ap_CS_fsm_state3, tmp_1_fu_162_p2, tmp_fu_154_p3, ap_CS_fsm_state4, tmp_3_fu_168_p1, tmp_4_fu_173_p1)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            shift_reg_address0 <= tmp_4_fu_173_p1(4 - 1 downto 0);
        elsif (((ap_const_logic_1 = ap_CS_fsm_state3) and (tmp_fu_154_p3 = ap_const_lv1_0) and (tmp_1_fu_162_p2 = ap_const_lv1_1))) then 
            shift_reg_address0 <= ap_const_lv4_0;
        elsif (((ap_const_logic_1 = ap_CS_fsm_state3) and (tmp_fu_154_p3 = ap_const_lv1_0) and (tmp_1_fu_162_p2 = ap_const_lv1_0))) then 
            shift_reg_address0 <= tmp_3_fu_168_p1(4 - 1 downto 0);
        else 
            shift_reg_address0 <= "XXXX";
        end if; 
    end process;


    shift_reg_ce0_assign_proc : process(ap_CS_fsm_state3, tmp_1_fu_162_p2, tmp_fu_154_p3, ap_CS_fsm_state4)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state4) or ((ap_const_logic_1 = ap_CS_fsm_state3) and (tmp_fu_154_p3 = ap_const_lv1_0) and (tmp_1_fu_162_p2 = ap_const_lv1_1)) or ((ap_const_logic_1 = ap_CS_fsm_state3) and (tmp_fu_154_p3 = ap_const_lv1_0) and (tmp_1_fu_162_p2 = ap_const_lv1_0)))) then 
            shift_reg_ce0 <= ap_const_logic_1;
        else 
            shift_reg_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    shift_reg_d0_assign_proc : process(shift_reg_q0, x_read_reg_191, ap_CS_fsm_state3, tmp_1_fu_162_p2, tmp_fu_154_p3, ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            shift_reg_d0 <= shift_reg_q0;
        elsif (((ap_const_logic_1 = ap_CS_fsm_state3) and (tmp_fu_154_p3 = ap_const_lv1_0) and (tmp_1_fu_162_p2 = ap_const_lv1_1))) then 
            shift_reg_d0 <= x_read_reg_191;
        else 
            shift_reg_d0 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    shift_reg_we0_assign_proc : process(ap_CS_fsm_state3, tmp_1_fu_162_p2, tmp_1_reg_206, tmp_fu_154_p3, ap_CS_fsm_state4)
    begin
        if ((((ap_const_logic_1 = ap_CS_fsm_state4) and (tmp_1_reg_206 = ap_const_lv1_0)) or ((ap_const_logic_1 = ap_CS_fsm_state3) and (tmp_fu_154_p3 = ap_const_lv1_0) and (tmp_1_fu_162_p2 = ap_const_lv1_1)))) then 
            shift_reg_we0 <= ap_const_logic_1;
        else 
            shift_reg_we0 <= ap_const_logic_0;
        end if; 
    end process;

    tmp_1_fu_162_p2 <= "1" when (i_reg_121 = ap_const_lv5_0) else "0";
    tmp_3_fu_168_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(grp_fu_143_p2),64));
    tmp_4_fu_173_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_cast_reg_197),64));
    tmp_5_fu_177_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_cast_reg_197),64));
    tmp_6_fu_181_p2 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(std_logic_vector(signed(c_load_reg_230) * signed(data1_reg_133))), 32));
    tmp_fu_154_p3 <= i_reg_121(4 downto 4);

    x_0_ack_out_assign_proc : process(y_1_ack_in, ap_CS_fsm_state8)
    begin
        if (((y_1_ack_in = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state8))) then 
            x_0_ack_out <= ap_const_logic_1;
        else 
            x_0_ack_out <= ap_const_logic_0;
        end if; 
    end process;


    y_1_ack_in_assign_proc : process(y_1_vld_reg)
    begin
        if (((y_1_vld_reg = ap_const_logic_0) or ((ap_const_logic_1 = ap_const_logic_1) and (y_1_vld_reg = ap_const_logic_1)))) then 
            y_1_ack_in <= ap_const_logic_1;
        else 
            y_1_ack_in <= ap_const_logic_0;
        end if; 
    end process;


    y_1_vld_in_assign_proc : process(ap_CS_fsm_state3, tmp_fu_154_p3)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state3) and (tmp_fu_154_p3 = ap_const_lv1_1))) then 
            y_1_vld_in <= ap_const_logic_1;
        else 
            y_1_vld_in <= ap_const_logic_0;
        end if; 
    end process;

end behav;
