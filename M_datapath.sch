<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="IorD" />
        <signal name="ALU_operation(2:0)" />
        <signal name="ALUSrcB(1:0)" />
        <signal name="ALUSrcA" />
        <signal name="clk" />
        <signal name="RegWrite" />
        <signal name="RegDst(1:0)" />
        <signal name="IRWrite" />
        <signal name="MemtoReg(1:0)" />
        <signal name="data2CPU(31:0)" />
        <signal name="reset" />
        <signal name="N0" />
        <signal name="V5" />
        <signal name="Inst(31:0)" />
        <signal name="Inst(25:21)" />
        <signal name="Inst(20:16)" />
        <signal name="Inst(15:11)" />
        <signal name="XLXN_38(4:0)" />
        <signal name="XLXN_39(31:0)" />
        <signal name="XLXN_40(31:0)" />
        <signal name="Inst(15:0)" />
        <signal name="imm_32(31:0)" />
        <signal name="XLXN_43(31:0)" />
        <signal name="XLXN_44(31:0)" />
        <signal name="XLXN_46(31:0)" />
        <signal name="data_out(31:0)" />
        <signal name="PC_Current(31:0)" />
        <signal name="N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,V5,N0,N0" />
        <signal name="Inst(15),Inst(15),Inst(15),Inst(15),Inst(15),Inst(15),Inst(15),Inst(15),Inst(15),Inst(15),Inst(15),Inst(15),Inst(15),Inst(15),Inst(15:0),N0,N0" />
        <signal name="PCSource(1:0)" />
        <signal name="ALU_Out(31:0)" />
        <signal name="XLXN_69(31:0)" />
        <signal name="overflow" />
        <signal name="zero" />
        <signal name="M_addr(31:0)" />
        <signal name="PC_Current(31:28),Inst(25:0),N0,N0" />
        <signal name="MIO_ready" />
        <signal name="PCWrite" />
        <signal name="PCWriteCond" />
        <signal name="Branch" />
        <signal name="XLXN_89" />
        <signal name="XLXN_95" />
        <signal name="XLXN_98" />
        <signal name="XLXN_101(31:0)" />
        <signal name="Inst(15:0),N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0" />
        <signal name="XLXN_106" />
        <signal name="XLXN_107" />
        <port polarity="Input" name="IorD" />
        <port polarity="Input" name="ALU_operation(2:0)" />
        <port polarity="Input" name="ALUSrcB(1:0)" />
        <port polarity="Input" name="ALUSrcA" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="RegWrite" />
        <port polarity="Input" name="RegDst(1:0)" />
        <port polarity="Input" name="IRWrite" />
        <port polarity="Input" name="MemtoReg(1:0)" />
        <port polarity="Input" name="data2CPU(31:0)" />
        <port polarity="Input" name="reset" />
        <port polarity="Output" name="Inst(31:0)" />
        <port polarity="Output" name="data_out(31:0)" />
        <port polarity="Output" name="PC_Current(31:0)" />
        <port polarity="Input" name="PCSource(1:0)" />
        <port polarity="Output" name="overflow" />
        <port polarity="Output" name="zero" />
        <port polarity="Output" name="M_addr(31:0)" />
        <port polarity="Input" name="MIO_ready" />
        <port polarity="Input" name="PCWrite" />
        <port polarity="Input" name="PCWriteCond" />
        <port polarity="Input" name="Branch" />
        <blockdef name="REG32">
            <timestamp>2017-4-4T15:18:0</timestamp>
            <rect style="fillcolor:rgb(0,255,255);fillstyle:Solid" width="88" x="32" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="32" />
            <line x2="0" y1="-160" y2="-160" x1="32" />
            <line x2="0" y1="-96" y2="-96" x1="32" />
            <line x2="0" y1="-32" y2="-32" style="linewidth:W" x1="32" />
            <line x2="120" y1="-128" y2="-128" style="linewidth:W" x1="144" />
        </blockdef>
        <blockdef name="alu">
            <timestamp>2017-4-4T15:18:0</timestamp>
            <line x2="108" y1="-216" y2="-136" style="linewidth:W;linecolor:rgb(255,0,0)" x1="32" />
            <line x2="108" y1="-72" y2="-136" style="linewidth:W;linecolor:rgb(255,0,0)" x1="32" />
            <line x2="32" y1="-72" y2="96" style="linewidth:W;linecolor:rgb(255,0,0)" x1="32" />
            <line x2="352" y1="-48" y2="-232" style="linewidth:W;linecolor:rgb(255,0,0)" x1="352" />
            <line x2="32" y1="-232" y2="-384" style="linewidth:W;linecolor:rgb(255,0,0)" x1="352" />
            <line x2="32" y1="-216" y2="-384" style="linewidth:W;linecolor:rgb(255,0,0)" x1="32" />
            <line x2="32" y1="-48" y2="96" style="linewidth:W;linecolor:rgb(255,0,0)" x1="352" />
            <line x2="0" y1="-288" y2="-288" style="linewidth:W" x1="32" />
            <line x2="0" y1="16" y2="16" style="linewidth:W" x1="32" />
            <line x2="208" y1="-384" y2="-300" style="linewidth:W" x1="208" />
            <line x2="384" y1="-208" y2="-208" x1="352" />
            <line x2="384" y1="-144" y2="-144" style="linewidth:W" x1="352" />
            <line x2="384" y1="-80" y2="-80" x1="352" />
        </blockdef>
        <blockdef name="MUX2T1_32">
            <timestamp>2017-4-4T15:18:0</timestamp>
            <rect width="40" x="12" y="-100" height="100" />
            <line x2="32" y1="-112" y2="-100" x1="32" />
            <line x2="52" y1="-48" y2="-48" style="linewidth:W;linecolor:rgb(0,0,0)" x1="64" />
            <line x2="0" y1="-80" y2="-80" style="linewidth:W" x1="12" />
            <line x2="0" y1="-16" y2="-16" style="linewidth:W" x1="12" />
        </blockdef>
        <blockdef name="MUX4T1_5">
            <timestamp>2017-4-4T15:18:0</timestamp>
            <rect width="24" x="4" y="-136" height="136" />
            <line x2="16" y1="-144" y2="-136" x1="16" />
            <line x2="4" y1="-112" y2="-112" style="linewidth:W" x1="0" />
            <line x2="4" y1="-80" y2="-80" style="linewidth:W" x1="0" />
            <line x2="28" y1="-64" y2="-64" style="linewidth:W" x1="32" />
            <line x2="4" y1="-48" y2="-48" style="linewidth:W" x1="0" />
        </blockdef>
        <blockdef name="MUX4T1_32">
            <timestamp>2017-4-4T15:18:0</timestamp>
            <line x2="0" y1="-80" y2="-80" style="linewidth:W" x1="12" />
            <line x2="0" y1="-48" y2="-48" style="linewidth:W" x1="12" />
            <line x2="0" y1="-16" y2="-16" style="linewidth:W" x1="12" />
            <rect width="40" x="12" y="-136" height="128" />
            <line x2="0" y1="-112" y2="-112" style="linewidth:W" x1="12" />
            <line x2="32" y1="-136" y2="-144" style="linewidth:W" x1="32" />
            <line x2="52" y1="-96" y2="-96" style="linewidth:W;linecolor:rgb(0,0,0)" x1="64" />
        </blockdef>
        <blockdef name="Regs">
            <timestamp>2017-4-4T15:18:0</timestamp>
            <rect style="linewidth:W;linecolor:rgb(255,0,0);fillcolor:rgb(254,180,229);fillstyle:Solid" width="352" x="64" y="-448" height="448" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="240" y1="-496" y2="-448" x1="240" />
            <rect width="64" x="416" y="-396" height="24" />
            <line x2="480" y1="-384" y2="-384" x1="416" />
            <line x2="0" y1="-368" y2="-368" x1="64" />
            <rect width="64" x="0" y="-60" height="24" />
            <line x2="0" y1="-48" y2="-48" x1="64" />
            <rect width="64" x="416" y="-124" height="24" />
            <line x2="480" y1="-112" y2="-112" x1="416" />
            <rect width="64" x="0" y="-332" height="24" />
            <line x2="0" y1="-320" y2="-320" x1="64" />
            <rect width="64" x="0" y="-284" height="24" />
            <line x2="0" y1="-272" y2="-272" x1="64" />
            <rect width="64" x="0" y="-204" height="24" />
            <line x2="0" y1="-192" y2="-192" x1="64" />
        </blockdef>
        <blockdef name="Ext_32">
            <timestamp>2017-4-4T15:18:0</timestamp>
            <circle style="linewidth:W;linecolor:rgb(255,0,0);linestyle:Dash" r="69" cx="185" cy="-33" />
            <line x2="124" y1="0" y2="0" style="linewidth:W" x1="96" />
            <line x2="272" y1="-64" y2="-64" style="linewidth:W" x1="248" />
            <rect style="linecolor:rgb(255,255,255)" width="128" x="120" y="-80" height="88" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="and2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
        </blockdef>
        <blockdef name="or2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
        </blockdef>
        <blockdef name="xor2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="60" y1="-128" y2="-128" x1="0" />
            <line x2="208" y1="-96" y2="-96" x1="256" />
            <arc ex="44" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <arc ex="64" ey="-144" sx="64" sy="-48" r="56" cx="32" cy="-96" />
            <line x2="64" y1="-144" y2="-144" x1="128" />
            <line x2="64" y1="-48" y2="-48" x1="128" />
            <arc ex="128" ey="-144" sx="208" sy="-96" r="88" cx="132" cy="-56" />
            <arc ex="208" ey="-96" sx="128" sy="-48" r="88" cx="132" cy="-136" />
        </blockdef>
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <block symbolname="REG32" name="XLXI_2">
            <blockpin signalname="data2CPU(31:0)" name="D(31:0)" />
            <blockpin signalname="IRWrite" name="CE" />
            <blockpin signalname="reset" name="rst" />
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="Inst(31:0)" name="Q(31:0)" />
        </block>
        <block symbolname="REG32" name="XLXI_3">
            <blockpin signalname="data2CPU(31:0)" name="D(31:0)" />
            <blockpin signalname="V5" name="CE" />
            <blockpin signalname="N0" name="rst" />
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="XLXN_40(31:0)" name="Q(31:0)" />
        </block>
        <block symbolname="alu" name="XLXI_4">
            <blockpin signalname="ALU_operation(2:0)" name="ALU_Ctr(2:0)" />
            <blockpin signalname="XLXN_101(31:0)" name="res(31:0)" />
            <blockpin signalname="zero" name="zero" />
            <blockpin signalname="overflow" name="overflow" />
            <blockpin signalname="XLXN_44(31:0)" name="A(31:0)" />
            <blockpin signalname="XLXN_46(31:0)" name="B(31:0)" />
        </block>
        <block symbolname="REG32" name="XLXI_5">
            <blockpin signalname="XLXN_101(31:0)" name="D(31:0)" />
            <blockpin signalname="V5" name="CE" />
            <blockpin signalname="N0" name="rst" />
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="ALU_Out(31:0)" name="Q(31:0)" />
        </block>
        <block symbolname="REG32" name="XLXI_6">
            <blockpin signalname="XLXN_69(31:0)" name="D(31:0)" />
            <blockpin signalname="XLXN_98" name="CE" />
            <blockpin signalname="reset" name="rst" />
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="PC_Current(31:0)" name="Q(31:0)" />
        </block>
        <block symbolname="MUX4T1_5" name="XLXI_8">
            <blockpin signalname="RegDst(1:0)" name="s(1:0)" />
            <blockpin signalname="Inst(15:11)" name="I1(4:0)" />
            <blockpin signalname="Inst(20:16)" name="I0(4:0)" />
            <blockpin signalname="XLXN_38(4:0)" name="o(4:0)" />
            <blockpin name="I2(4:0)" />
            <blockpin name="I3(4:0)" />
        </block>
        <block symbolname="MUX2T1_32" name="XLXI_10">
            <blockpin signalname="ALUSrcA" name="s" />
            <blockpin signalname="PC_Current(31:0)" name="I0(31:0)" />
            <blockpin signalname="XLXN_43(31:0)" name="I1(31:0)" />
            <blockpin signalname="XLXN_44(31:0)" name="o(31:0)" />
        </block>
        <block symbolname="MUX4T1_32" name="XLXI_11">
            <blockpin signalname="ALUSrcB(1:0)" name="s(1:0)" />
            <blockpin signalname="data_out(31:0)" name="I0(31:0)" />
            <blockpin signalname="N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,V5,N0,N0" name="I1(31:0)" />
            <blockpin signalname="imm_32(31:0)" name="I2(31:0)" />
            <blockpin signalname="Inst(15),Inst(15),Inst(15),Inst(15),Inst(15),Inst(15),Inst(15),Inst(15),Inst(15),Inst(15),Inst(15),Inst(15),Inst(15),Inst(15),Inst(15:0),N0,N0" name="I3(31:0)" />
            <blockpin signalname="XLXN_46(31:0)" name="o(31:0)" />
        </block>
        <block symbolname="MUX2T1_32" name="XLXI_12">
            <blockpin signalname="IorD" name="s" />
            <blockpin signalname="PC_Current(31:0)" name="I0(31:0)" />
            <blockpin signalname="ALU_Out(31:0)" name="I1(31:0)" />
            <blockpin signalname="M_addr(31:0)" name="o(31:0)" />
        </block>
        <block symbolname="Regs" name="XLXI_13">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="RegWrite" name="L_S" />
            <blockpin signalname="XLXN_43(31:0)" name="rdata_A(31:0)" />
            <blockpin signalname="reset" name="rst" />
            <blockpin signalname="XLXN_39(31:0)" name="Wt_data(31:0)" />
            <blockpin signalname="data_out(31:0)" name="rdata_B(31:0)" />
            <blockpin signalname="Inst(25:21)" name="R_addr_A(4:0)" />
            <blockpin signalname="Inst(20:16)" name="R_addr_B(4:0)" />
            <blockpin signalname="XLXN_38(4:0)" name="Wt_addr(4:0)" />
        </block>
        <block symbolname="MUX4T1_32" name="XLXI_14">
            <blockpin signalname="MemtoReg(1:0)" name="s(1:0)" />
            <blockpin signalname="ALU_Out(31:0)" name="I0(31:0)" />
            <blockpin signalname="XLXN_40(31:0)" name="I1(31:0)" />
            <blockpin signalname="Inst(15:0),N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0" name="I2(31:0)" />
            <blockpin signalname="PC_Current(31:0)" name="I3(31:0)" />
            <blockpin signalname="XLXN_39(31:0)" name="o(31:0)" />
        </block>
        <block symbolname="Ext_32" name="XLXI_15">
            <blockpin signalname="Inst(15:0)" name="imm_16(15:0)" />
            <blockpin signalname="imm_32(31:0)" name="Imm_32(31:0)" />
        </block>
        <block symbolname="MUX4T1_32" name="XLXI_16">
            <blockpin signalname="PCSource(1:0)" name="s(1:0)" />
            <blockpin signalname="XLXN_101(31:0)" name="I0(31:0)" />
            <blockpin signalname="ALU_Out(31:0)" name="I1(31:0)" />
            <blockpin signalname="PC_Current(31:28),Inst(25:0),N0,N0" name="I2(31:0)" />
            <blockpin name="I3(31:0)" />
            <blockpin signalname="XLXN_69(31:0)" name="o(31:0)" />
        </block>
        <block symbolname="vcc" name="XLXI_17">
            <blockpin signalname="V5" name="P" />
        </block>
        <block symbolname="gnd" name="XLXI_18">
            <blockpin signalname="N0" name="G" />
        </block>
        <block symbolname="and2" name="XLXI_20">
            <blockpin signalname="XLXN_107" name="I0" />
            <blockpin signalname="PCWriteCond" name="I1" />
            <blockpin signalname="XLXN_89" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_21">
            <blockpin signalname="XLXN_89" name="I0" />
            <blockpin signalname="PCWrite" name="I1" />
            <blockpin signalname="XLXN_95" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_22">
            <blockpin signalname="XLXN_95" name="I0" />
            <blockpin signalname="MIO_ready" name="I1" />
            <blockpin signalname="XLXN_98" name="O" />
        </block>
        <block symbolname="xor2" name="XLXI_23">
            <blockpin signalname="zero" name="I0" />
            <blockpin signalname="Branch" name="I1" />
            <blockpin signalname="XLXN_106" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_24">
            <blockpin signalname="XLXN_106" name="I" />
            <blockpin signalname="XLXN_107" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="2688" y="576" name="XLXI_6" orien="R0">
        </instance>
        <instance x="704" y="1728" name="XLXI_2" orien="R0">
        </instance>
        <instance x="704" y="2240" name="XLXI_3" orien="R0">
        </instance>
        <iomarker fontsize="28" x="128" y="80" name="clk" orien="R180" />
        <instance x="3040" y="1312" name="XLXI_12" orien="R0">
        </instance>
        <branch name="IorD">
            <wire x2="3072" y1="1072" y2="1072" x1="80" />
            <wire x2="3072" y1="1072" y2="1200" x1="3072" />
        </branch>
        <branch name="ALU_operation(2:0)">
            <wire x2="2448" y1="1136" y2="1136" x1="80" />
            <wire x2="2448" y1="1136" y2="1616" x1="2448" />
        </branch>
        <branch name="ALUSrcB(1:0)">
            <wire x2="2128" y1="1200" y2="1200" x1="96" />
            <wire x2="2128" y1="1200" y2="1968" x1="2128" />
        </branch>
        <iomarker fontsize="28" x="80" y="1136" name="ALU_operation(2:0)" orien="R180" />
        <iomarker fontsize="28" x="96" y="1200" name="ALUSrcB(1:0)" orien="R180" />
        <branch name="clk">
            <wire x2="160" y1="80" y2="80" x1="128" />
            <wire x2="160" y1="80" y2="1360" x1="160" />
            <wire x2="160" y1="1360" y2="1504" x1="160" />
            <wire x2="704" y1="1504" y2="1504" x1="160" />
            <wire x2="160" y1="1504" y2="2016" x1="160" />
            <wire x2="704" y1="2016" y2="2016" x1="160" />
            <wire x2="1344" y1="1360" y2="1360" x1="160" />
            <wire x2="1344" y1="1360" y2="1600" x1="1344" />
            <wire x2="1392" y1="1600" y2="1600" x1="1344" />
            <wire x2="2512" y1="80" y2="80" x1="160" />
            <wire x2="2512" y1="80" y2="352" x1="2512" />
            <wire x2="2688" y1="352" y2="352" x1="2512" />
            <wire x2="2512" y1="352" y2="1200" x1="2512" />
            <wire x2="2672" y1="1200" y2="1200" x1="2512" />
        </branch>
        <instance x="2240" y="2000" name="XLXI_4" orien="R0">
        </instance>
        <instance x="2096" y="2112" name="XLXI_11" orien="R0">
        </instance>
        <instance x="1392" y="2016" name="XLXI_13" orien="R0">
        </instance>
        <branch name="RegWrite">
            <wire x2="1632" y1="1312" y2="1312" x1="80" />
            <wire x2="1632" y1="1312" y2="1520" x1="1632" />
        </branch>
        <branch name="RegDst(1:0)">
            <wire x2="1232" y1="1408" y2="1408" x1="80" />
            <wire x2="1232" y1="1408" y2="1792" x1="1232" />
        </branch>
        <iomarker fontsize="28" x="80" y="1408" name="RegDst(1:0)" orien="R180" />
        <branch name="IRWrite">
            <wire x2="704" y1="1632" y2="1632" x1="80" />
        </branch>
        <iomarker fontsize="28" x="80" y="1632" name="IRWrite" orien="R180" />
        <iomarker fontsize="28" x="80" y="1248" name="ALUSrcA" orien="R180" />
        <iomarker fontsize="28" x="80" y="1072" name="IorD" orien="R180" />
        <iomarker fontsize="28" x="80" y="1312" name="RegWrite" orien="R180" />
        <branch name="MemtoReg(1:0)">
            <wire x2="96" y1="1856" y2="1856" x1="80" />
            <wire x2="96" y1="1856" y2="1952" x1="96" />
            <wire x2="1232" y1="1952" y2="1952" x1="96" />
            <wire x2="1232" y1="1952" y2="2048" x1="1232" />
        </branch>
        <branch name="data2CPU(31:0)">
            <wire x2="656" y1="2208" y2="2208" x1="192" />
            <wire x2="704" y1="2208" y2="2208" x1="656" />
            <wire x2="704" y1="1696" y2="1696" x1="656" />
            <wire x2="656" y1="1696" y2="2208" x1="656" />
        </branch>
        <iomarker fontsize="28" x="192" y="2208" name="data2CPU(31:0)" orien="R180" />
        <iomarker fontsize="28" x="80" y="1856" name="MemtoReg(1:0)" orien="R180" />
        <branch name="N0">
            <wire x2="704" y1="2080" y2="2080" x1="512" />
        </branch>
        <branch name="V5">
            <wire x2="704" y1="2144" y2="2144" x1="512" />
        </branch>
        <branch name="Inst(31:0)">
            <wire x2="896" y1="1600" y2="1600" x1="848" />
            <wire x2="896" y1="1600" y2="1696" x1="896" />
            <wire x2="896" y1="1696" y2="1744" x1="896" />
            <wire x2="896" y1="1744" y2="1856" x1="896" />
            <wire x2="896" y1="1856" y2="2272" x1="896" />
            <wire x2="896" y1="2272" y2="2384" x1="896" />
            <wire x2="3392" y1="2384" y2="2384" x1="896" />
        </branch>
        <iomarker fontsize="28" x="3392" y="2384" name="Inst(31:0)" orien="R0" />
        <bustap x2="992" y1="1696" y2="1696" x1="896" />
        <branch name="Inst(25:21)">
            <wire x2="1392" y1="1696" y2="1696" x1="992" />
        </branch>
        <bustap x2="992" y1="1744" y2="1744" x1="896" />
        <branch name="Inst(20:16)">
            <wire x2="1088" y1="1744" y2="1744" x1="992" />
            <wire x2="1392" y1="1744" y2="1744" x1="1088" />
            <wire x2="1088" y1="1744" y2="1824" x1="1088" />
            <wire x2="1216" y1="1824" y2="1824" x1="1088" />
        </branch>
        <instance x="1216" y="1936" name="XLXI_8" orien="R0">
        </instance>
        <bustap x2="992" y1="1856" y2="1856" x1="896" />
        <branch name="Inst(15:11)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1104" y="1856" type="branch" />
            <wire x2="1104" y1="1856" y2="1856" x1="992" />
            <wire x2="1216" y1="1856" y2="1856" x1="1104" />
        </branch>
        <branch name="XLXN_38(4:0)">
            <wire x2="1312" y1="1872" y2="1872" x1="1248" />
            <wire x2="1312" y1="1824" y2="1872" x1="1312" />
            <wire x2="1392" y1="1824" y2="1824" x1="1312" />
        </branch>
        <branch name="XLXN_39(31:0)">
            <wire x2="1376" y1="2096" y2="2096" x1="1264" />
            <wire x2="1392" y1="1968" y2="1968" x1="1376" />
            <wire x2="1376" y1="1968" y2="2096" x1="1376" />
        </branch>
        <branch name="XLXN_40(31:0)">
            <wire x2="1200" y1="2112" y2="2112" x1="848" />
        </branch>
        <instance x="1200" y="2192" name="XLXI_14" orien="R0">
        </instance>
        <instance x="1456" y="2272" name="XLXI_15" orien="R0">
        </instance>
        <bustap x2="992" y1="2272" y2="2272" x1="896" />
        <branch name="Inst(15:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1272" y="2272" type="branch" />
            <wire x2="1552" y1="2272" y2="2272" x1="992" />
        </branch>
        <branch name="imm_32(31:0)">
            <wire x2="1936" y1="2208" y2="2208" x1="1728" />
            <wire x2="2096" y1="2064" y2="2064" x1="1936" />
            <wire x2="1936" y1="2064" y2="2208" x1="1936" />
        </branch>
        <branch name="XLXN_44(31:0)">
            <wire x2="2064" y1="1632" y2="1632" x1="2016" />
            <wire x2="2064" y1="1632" y2="1712" x1="2064" />
            <wire x2="2240" y1="1712" y2="1712" x1="2064" />
        </branch>
        <branch name="XLXN_46(31:0)">
            <wire x2="2240" y1="2016" y2="2016" x1="2160" />
        </branch>
        <branch name="data_out(31:0)">
            <wire x2="1984" y1="1904" y2="1904" x1="1872" />
            <wire x2="1984" y1="1904" y2="2000" x1="1984" />
            <wire x2="2096" y1="2000" y2="2000" x1="1984" />
            <wire x2="1984" y1="2000" y2="2224" x1="1984" />
            <wire x2="3376" y1="2224" y2="2224" x1="1984" />
        </branch>
        <iomarker fontsize="28" x="3376" y="2224" name="data_out(31:0)" orien="R0" />
        <iomarker fontsize="28" x="3232" y="448" name="PC_Current(31:0)" orien="R0" />
        <branch name="N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,V5,N0,N0">
            <wire x2="2096" y1="2032" y2="2032" x1="1952" />
        </branch>
        <branch name="Inst(15),Inst(15),Inst(15),Inst(15),Inst(15),Inst(15),Inst(15),Inst(15),Inst(15),Inst(15),Inst(15),Inst(15),Inst(15),Inst(15),Inst(15:0),N0,N0">
            <wire x2="2096" y1="2096" y2="2096" x1="1952" />
        </branch>
        <instance x="2240" y="752" name="XLXI_16" orien="R0">
        </instance>
        <branch name="PCSource(1:0)">
            <wire x2="2272" y1="592" y2="592" x1="80" />
            <wire x2="2272" y1="592" y2="608" x1="2272" />
        </branch>
        <iomarker fontsize="28" x="80" y="592" name="PCSource(1:0)" orien="R180" />
        <branch name="reset">
            <wire x2="192" y1="128" y2="128" x1="112" />
            <wire x2="2688" y1="128" y2="128" x1="192" />
            <wire x2="2688" y1="128" y2="416" x1="2688" />
            <wire x2="192" y1="128" y2="1568" x1="192" />
            <wire x2="192" y1="1568" y2="1648" x1="192" />
            <wire x2="1392" y1="1648" y2="1648" x1="192" />
            <wire x2="704" y1="1568" y2="1568" x1="192" />
        </branch>
        <iomarker fontsize="28" x="112" y="128" name="reset" orien="R180" />
        <branch name="ALU_Out(31:0)">
            <wire x2="2240" y1="672" y2="672" x1="1152" />
            <wire x2="1152" y1="672" y2="816" x1="1152" />
            <wire x2="1152" y1="816" y2="2080" x1="1152" />
            <wire x2="1200" y1="2080" y2="2080" x1="1152" />
            <wire x2="2912" y1="816" y2="816" x1="1152" />
            <wire x2="2912" y1="816" y2="1296" x1="2912" />
            <wire x2="3040" y1="1296" y2="1296" x1="2912" />
            <wire x2="2912" y1="1296" y2="1296" x1="2816" />
        </branch>
        <instance x="2672" y="1424" name="XLXI_5" orien="R0">
        </instance>
        <branch name="ALUSrcA">
            <wire x2="1984" y1="1248" y2="1248" x1="80" />
            <wire x2="1984" y1="1248" y2="1568" x1="1984" />
        </branch>
        <branch name="XLXN_43(31:0)">
            <wire x2="1904" y1="1632" y2="1632" x1="1872" />
            <wire x2="1904" y1="1632" y2="1664" x1="1904" />
            <wire x2="1952" y1="1664" y2="1664" x1="1904" />
        </branch>
        <branch name="PC_Current(31:0)">
            <wire x2="1200" y1="2176" y2="2336" x1="1200" />
            <wire x2="1888" y1="2336" y2="2336" x1="1200" />
            <wire x2="2976" y1="2336" y2="2336" x1="1888" />
            <wire x2="1888" y1="1600" y2="2336" x1="1888" />
            <wire x2="1952" y1="1600" y2="1600" x1="1888" />
            <wire x2="2976" y1="448" y2="448" x1="2832" />
            <wire x2="3232" y1="448" y2="448" x1="2976" />
            <wire x2="2976" y1="448" y2="1232" x1="2976" />
            <wire x2="3040" y1="1232" y2="1232" x1="2976" />
            <wire x2="2976" y1="1232" y2="2336" x1="2976" />
        </branch>
        <instance x="1952" y="1680" name="XLXI_10" orien="R0">
        </instance>
        <branch name="XLXN_69(31:0)">
            <wire x2="2496" y1="656" y2="656" x1="2304" />
            <wire x2="2496" y1="544" y2="656" x1="2496" />
            <wire x2="2688" y1="544" y2="544" x1="2496" />
        </branch>
        <branch name="overflow">
            <wire x2="3328" y1="1920" y2="1920" x1="2624" />
        </branch>
        <iomarker fontsize="28" x="3328" y="1920" name="overflow" orien="R0" />
        <instance x="1568" y="2592" name="XLXI_17" orien="R0" />
        <branch name="V5">
            <wire x2="1632" y1="2592" y2="2608" x1="1632" />
            <wire x2="1696" y1="2608" y2="2608" x1="1632" />
        </branch>
        <instance x="1792" y="2672" name="XLXI_18" orien="R0" />
        <branch name="N0">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1856" y="2528" type="branch" />
            <wire x2="1920" y1="2528" y2="2528" x1="1856" />
            <wire x2="1856" y1="2528" y2="2544" x1="1856" />
        </branch>
        <branch name="N0">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2560" y="1264" type="branch" />
            <wire x2="2672" y1="1264" y2="1264" x1="2560" />
        </branch>
        <branch name="V5">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2560" y="1328" type="branch" />
            <wire x2="2672" y1="1328" y2="1328" x1="2560" />
        </branch>
        <branch name="zero">
            <wire x2="432" y1="432" y2="432" x1="352" />
            <wire x2="352" y1="432" y2="1024" x1="352" />
            <wire x2="2656" y1="1024" y2="1024" x1="352" />
            <wire x2="2656" y1="1024" y2="1792" x1="2656" />
            <wire x2="3312" y1="1792" y2="1792" x1="2656" />
            <wire x2="2656" y1="1792" y2="1792" x1="2624" />
        </branch>
        <iomarker fontsize="28" x="3312" y="1792" name="zero" orien="R0" />
        <branch name="M_addr(31:0)">
            <wire x2="3264" y1="1264" y2="1264" x1="3104" />
        </branch>
        <iomarker fontsize="28" x="3264" y="1264" name="M_addr(31:0)" orien="R0" />
        <branch name="PC_Current(31:28),Inst(25:0),N0,N0">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2112" y="704" type="branch" />
            <wire x2="2240" y1="704" y2="704" x1="2112" />
        </branch>
        <branch name="MIO_ready">
            <wire x2="2128" y1="192" y2="192" x1="112" />
        </branch>
        <iomarker fontsize="28" x="112" y="192" name="MIO_ready" orien="R180" />
        <branch name="PCWrite">
            <wire x2="1696" y1="256" y2="256" x1="128" />
        </branch>
        <branch name="PCWriteCond">
            <wire x2="1056" y1="304" y2="304" x1="112" />
        </branch>
        <branch name="Branch">
            <wire x2="432" y1="368" y2="368" x1="128" />
        </branch>
        <iomarker fontsize="28" x="128" y="256" name="PCWrite" orien="R180" />
        <iomarker fontsize="28" x="112" y="304" name="PCWriteCond" orien="R180" />
        <iomarker fontsize="28" x="128" y="368" name="Branch" orien="R180" />
        <instance x="1056" y="432" name="XLXI_20" orien="R0" />
        <instance x="1696" y="384" name="XLXI_21" orien="R0" />
        <branch name="XLXN_89">
            <wire x2="1328" y1="336" y2="336" x1="1312" />
            <wire x2="1696" y1="320" y2="320" x1="1328" />
            <wire x2="1328" y1="320" y2="336" x1="1328" />
        </branch>
        <instance x="2128" y="320" name="XLXI_22" orien="R0" />
        <branch name="XLXN_95">
            <wire x2="2032" y1="288" y2="288" x1="1952" />
            <wire x2="2032" y1="256" y2="288" x1="2032" />
            <wire x2="2128" y1="256" y2="256" x1="2032" />
        </branch>
        <branch name="XLXN_98">
            <wire x2="2400" y1="224" y2="224" x1="2384" />
            <wire x2="2400" y1="224" y2="480" x1="2400" />
            <wire x2="2688" y1="480" y2="480" x1="2400" />
        </branch>
        <branch name="XLXN_101(31:0)">
            <wire x2="2240" y1="640" y2="640" x1="2208" />
            <wire x2="2208" y1="640" y2="1392" x1="2208" />
            <wire x2="2624" y1="1392" y2="1392" x1="2208" />
            <wire x2="2624" y1="1392" y2="1552" x1="2624" />
            <wire x2="2688" y1="1552" y2="1552" x1="2624" />
            <wire x2="2688" y1="1552" y2="1856" x1="2688" />
            <wire x2="2672" y1="1392" y2="1392" x1="2624" />
            <wire x2="2688" y1="1856" y2="1856" x1="2624" />
        </branch>
        <branch name="Inst(15:0),N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0">
            <wire x2="1200" y1="2144" y2="2144" x1="1072" />
        </branch>
        <instance x="432" y="496" name="XLXI_23" orien="R0" />
        <branch name="XLXN_106">
            <wire x2="720" y1="400" y2="400" x1="688" />
        </branch>
        <instance x="720" y="432" name="XLXI_24" orien="R0" />
        <branch name="XLXN_107">
            <wire x2="992" y1="400" y2="400" x1="944" />
            <wire x2="992" y1="368" y2="400" x1="992" />
            <wire x2="1056" y1="368" y2="368" x1="992" />
        </branch>
    </sheet>
</drawing>