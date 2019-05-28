<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="XLXN_2" />
        <signal name="XLXN_3" />
        <signal name="XLXN_4" />
        <signal name="XLXN_5" />
        <signal name="XLXN_7" />
        <signal name="XLXN_8" />
        <signal name="XLXN_9(1:0)" />
        <signal name="XLXN_10(1:0)" />
        <signal name="XLXN_11(1:0)" />
        <signal name="XLXN_12(1:0)" />
        <signal name="XLXN_13(2:0)" />
        <signal name="clk" />
        <signal name="XLXN_15" />
        <signal name="XLXN_16" />
        <signal name="reset" />
        <signal name="XLXN_18" />
        <signal name="XLXN_19" />
        <signal name="XLXN_20" />
        <signal name="MIO_ready" />
        <signal name="XLXN_23" />
        <signal name="INT" />
        <signal name="inst_out(31:0)" />
        <signal name="state(4:0)" />
        <signal name="Data_in(31:0)" />
        <signal name="PC_out(31:0)" />
        <signal name="Data_out(31:0)" />
        <signal name="Addr_out(31:0)" />
        <signal name="CPU_MIO" />
        <signal name="XLXN_32" />
        <signal name="XLXN_33" />
        <signal name="XLXN_34" />
        <signal name="mem_w" />
        <signal name="XLXN_36" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="reset" />
        <port polarity="Input" name="MIO_ready" />
        <port polarity="Input" name="INT" />
        <port polarity="Output" name="inst_out(31:0)" />
        <port polarity="Output" name="state(4:0)" />
        <port polarity="Input" name="Data_in(31:0)" />
        <port polarity="Output" name="PC_out(31:0)" />
        <port polarity="Output" name="Data_out(31:0)" />
        <port polarity="Output" name="Addr_out(31:0)" />
        <port polarity="Output" name="CPU_MIO" />
        <port polarity="Output" name="mem_w" />
        <blockdef name="M_datapath">
            <timestamp>2015-5-30T16:1:51</timestamp>
            <rect style="fillcolor:rgb(0,255,255);fillstyle:Solid" width="400" x="64" y="-1024" height="1024" />
            <line x2="0" y1="-992" y2="-992" x1="64" />
            <line x2="0" y1="-928" y2="-928" x1="64" />
            <line x2="0" y1="-864" y2="-864" x1="64" />
            <line x2="0" y1="-800" y2="-800" x1="64" />
            <line x2="0" y1="-736" y2="-736" x1="64" />
            <line x2="0" y1="-672" y2="-672" x1="64" />
            <line x2="0" y1="-608" y2="-608" x1="64" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <rect width="64" x="0" y="-364" height="24" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="528" y1="-992" y2="-992" x1="464" />
            <line x2="528" y1="-800" y2="-800" x1="464" />
            <rect width="64" x="464" y="-620" height="24" />
            <line x2="528" y1="-608" y2="-608" x1="464" />
            <rect width="64" x="464" y="-428" height="24" />
            <line x2="528" y1="-416" y2="-416" x1="464" />
            <rect width="64" x="464" y="-236" height="24" />
            <line x2="528" y1="-224" y2="-224" x1="464" />
            <rect width="64" x="464" y="-44" height="24" />
            <line x2="528" y1="-32" y2="-32" x1="464" />
        </blockdef>
        <blockdef name="ctrl">
            <timestamp>2015-5-30T12:21:59</timestamp>
            <rect style="fillcolor:rgb(255,170,255);fillstyle:Solid" width="352" x="64" y="-1024" height="1024" />
            <line x2="0" y1="-992" y2="-992" x1="64" />
            <line x2="0" y1="-800" y2="-800" x1="64" />
            <line x2="0" y1="-608" y2="-608" x1="64" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="480" y1="-992" y2="-992" x1="416" />
            <line x2="480" y1="-928" y2="-928" x1="416" />
            <line x2="480" y1="-864" y2="-864" x1="416" />
            <line x2="480" y1="-800" y2="-800" x1="416" />
            <line x2="480" y1="-736" y2="-736" x1="416" />
            <line x2="480" y1="-672" y2="-672" x1="416" />
            <line x2="480" y1="-608" y2="-608" x1="416" />
            <line x2="480" y1="-544" y2="-544" x1="416" />
            <line x2="480" y1="-480" y2="-480" x1="416" />
            <line x2="480" y1="-416" y2="-416" x1="416" />
            <rect width="64" x="416" y="-364" height="24" />
            <line x2="480" y1="-352" y2="-352" x1="416" />
            <rect width="64" x="416" y="-300" height="24" />
            <line x2="480" y1="-288" y2="-288" x1="416" />
            <rect width="64" x="416" y="-236" height="24" />
            <line x2="480" y1="-224" y2="-224" x1="416" />
            <rect width="64" x="416" y="-172" height="24" />
            <line x2="480" y1="-160" y2="-160" x1="416" />
            <rect width="64" x="416" y="-108" height="24" />
            <line x2="480" y1="-96" y2="-96" x1="416" />
            <rect width="64" x="416" y="-44" height="24" />
            <line x2="480" y1="-32" y2="-32" x1="416" />
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
        <block symbolname="M_datapath" name="U1_2">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="MIO_ready" name="MIO_ready" />
            <blockpin signalname="XLXN_1" name="IorD" />
            <blockpin signalname="XLXN_2" name="IRWrite" />
            <blockpin signalname="XLXN_3" name="RegWrite" />
            <blockpin signalname="XLXN_4" name="ALUSrcA" />
            <blockpin signalname="XLXN_5" name="PCWrite" />
            <blockpin signalname="XLXN_7" name="PCWriteCond" />
            <blockpin signalname="XLXN_8" name="Branch" />
            <blockpin signalname="XLXN_9(1:0)" name="RegDst(1:0)" />
            <blockpin signalname="XLXN_10(1:0)" name="MemtoReg(1:0)" />
            <blockpin signalname="XLXN_11(1:0)" name="ALUSrcB(1:0)" />
            <blockpin signalname="XLXN_12(1:0)" name="PCSource(1:0)" />
            <blockpin signalname="XLXN_13(2:0)" name="ALU_operation(2:0)" />
            <blockpin signalname="Data_in(31:0)" name="data2CPU(31:0)" />
            <blockpin signalname="XLXN_19" name="zero" />
            <blockpin signalname="XLXN_36" name="overflow" />
            <blockpin signalname="PC_out(31:0)" name="PC_Current(31:0)" />
            <blockpin signalname="inst_out(31:0)" name="Inst(31:0)" />
            <blockpin signalname="Data_out(31:0)" name="data_out(31:0)" />
            <blockpin signalname="Addr_out(31:0)" name="M_addr(31:0)" />
        </block>
        <block symbolname="ctrl" name="U11">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="XLXN_19" name="zero" />
            <blockpin signalname="XLXN_36" name="overflow" />
            <blockpin signalname="MIO_ready" name="MIO_ready" />
            <blockpin signalname="inst_out(31:0)" name="Inst_in(31:0)" />
            <blockpin signalname="XLXN_32" name="MemRead" />
            <blockpin signalname="XLXN_34" name="MemWrite" />
            <blockpin signalname="CPU_MIO" name="CPU_MIO" />
            <blockpin signalname="XLXN_1" name="IorD" />
            <blockpin signalname="XLXN_2" name="IRWrite" />
            <blockpin signalname="XLXN_3" name="RegWrite" />
            <blockpin signalname="XLXN_4" name="ALUSrcA" />
            <blockpin signalname="XLXN_5" name="PCWrite" />
            <blockpin signalname="XLXN_7" name="PCWriteCond" />
            <blockpin signalname="XLXN_8" name="Branch" />
            <blockpin signalname="XLXN_9(1:0)" name="RegDst(1:0)" />
            <blockpin signalname="XLXN_10(1:0)" name="MemtoReg(1:0)" />
            <blockpin signalname="XLXN_11(1:0)" name="ALUSrcB(1:0)" />
            <blockpin signalname="XLXN_12(1:0)" name="PCSource(1:0)" />
            <blockpin signalname="XLXN_13(2:0)" name="ALU_operation(2:0)" />
            <blockpin signalname="state(4:0)" name="state_out(4:0)" />
        </block>
        <block symbolname="inv" name="XLXI_3">
            <blockpin signalname="XLXN_32" name="I" />
            <blockpin signalname="XLXN_33" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_4">
            <blockpin signalname="XLXN_34" name="I0" />
            <blockpin signalname="XLXN_33" name="I1" />
            <blockpin signalname="mem_w" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="656" y="1312" name="U11" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="208" y="-736" type="instance" />
        </instance>
        <instance x="1568" y="1312" name="U1_2" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="240" y="-816" type="instance" />
        </instance>
        <branch name="XLXN_1">
            <wire x2="1568" y1="512" y2="512" x1="1136" />
        </branch>
        <branch name="XLXN_2">
            <wire x2="1568" y1="576" y2="576" x1="1136" />
        </branch>
        <branch name="XLXN_3">
            <wire x2="1568" y1="640" y2="640" x1="1136" />
        </branch>
        <branch name="XLXN_4">
            <wire x2="1568" y1="704" y2="704" x1="1136" />
        </branch>
        <branch name="XLXN_5">
            <wire x2="1568" y1="768" y2="768" x1="1136" />
        </branch>
        <branch name="XLXN_7">
            <wire x2="1568" y1="832" y2="832" x1="1136" />
        </branch>
        <branch name="XLXN_8">
            <wire x2="1568" y1="896" y2="896" x1="1136" />
        </branch>
        <branch name="XLXN_9(1:0)">
            <wire x2="1568" y1="960" y2="960" x1="1136" />
        </branch>
        <branch name="XLXN_10(1:0)">
            <wire x2="1568" y1="1024" y2="1024" x1="1136" />
        </branch>
        <branch name="XLXN_11(1:0)">
            <wire x2="1568" y1="1088" y2="1088" x1="1136" />
        </branch>
        <branch name="XLXN_12(1:0)">
            <wire x2="1568" y1="1152" y2="1152" x1="1136" />
        </branch>
        <branch name="XLXN_13(2:0)">
            <wire x2="1568" y1="1216" y2="1216" x1="1136" />
        </branch>
        <branch name="clk">
            <wire x2="528" y1="112" y2="112" x1="144" />
            <wire x2="1520" y1="112" y2="112" x1="528" />
            <wire x2="1520" y1="112" y2="320" x1="1520" />
            <wire x2="1568" y1="320" y2="320" x1="1520" />
            <wire x2="528" y1="112" y2="320" x1="528" />
            <wire x2="656" y1="320" y2="320" x1="528" />
        </branch>
        <branch name="reset">
            <wire x2="480" y1="160" y2="160" x1="144" />
            <wire x2="1472" y1="160" y2="160" x1="480" />
            <wire x2="1472" y1="160" y2="384" x1="1472" />
            <wire x2="1568" y1="384" y2="384" x1="1472" />
            <wire x2="480" y1="160" y2="512" x1="480" />
            <wire x2="656" y1="512" y2="512" x1="480" />
        </branch>
        <branch name="XLXN_19">
            <wire x2="624" y1="256" y2="704" x1="624" />
            <wire x2="656" y1="704" y2="704" x1="624" />
            <wire x2="2160" y1="256" y2="256" x1="624" />
            <wire x2="2160" y1="256" y2="320" x1="2160" />
            <wire x2="2160" y1="320" y2="320" x1="2096" />
        </branch>
        <branch name="MIO_ready">
            <wire x2="336" y1="208" y2="208" x1="160" />
            <wire x2="1424" y1="208" y2="208" x1="336" />
            <wire x2="1424" y1="208" y2="448" x1="1424" />
            <wire x2="1568" y1="448" y2="448" x1="1424" />
            <wire x2="336" y1="208" y2="1088" x1="336" />
            <wire x2="656" y1="1088" y2="1088" x1="336" />
        </branch>
        <iomarker fontsize="28" x="144" y="112" name="clk" orien="R180" />
        <iomarker fontsize="28" x="144" y="160" name="reset" orien="R180" />
        <iomarker fontsize="28" x="160" y="208" name="MIO_ready" orien="R180" />
        <branch name="INT">
            <wire x2="368" y1="48" y2="48" x1="208" />
        </branch>
        <iomarker fontsize="28" x="208" y="48" name="INT" orien="R180" />
        <branch name="inst_out(31:0)">
            <wire x2="512" y1="1280" y2="1392" x1="512" />
            <wire x2="2224" y1="1392" y2="1392" x1="512" />
            <wire x2="656" y1="1280" y2="1280" x1="512" />
            <wire x2="2224" y1="896" y2="896" x1="2096" />
            <wire x2="2224" y1="896" y2="1392" x1="2224" />
            <wire x2="2512" y1="896" y2="896" x1="2224" />
        </branch>
        <branch name="state(4:0)">
            <wire x2="1232" y1="1280" y2="1280" x1="1136" />
            <wire x2="1232" y1="1280" y2="1664" x1="1232" />
            <wire x2="1648" y1="1664" y2="1664" x1="1232" />
        </branch>
        <iomarker fontsize="28" x="1648" y="1664" name="state(4:0)" orien="R0" />
        <branch name="Data_in(31:0)">
            <wire x2="1424" y1="1552" y2="1552" x1="704" />
            <wire x2="1424" y1="1280" y2="1552" x1="1424" />
            <wire x2="1568" y1="1280" y2="1280" x1="1424" />
        </branch>
        <iomarker fontsize="28" x="704" y="1552" name="Data_in(31:0)" orien="R180" />
        <branch name="PC_out(31:0)">
            <wire x2="2512" y1="704" y2="704" x1="2096" />
        </branch>
        <branch name="Data_out(31:0)">
            <wire x2="2512" y1="1088" y2="1088" x1="2096" />
        </branch>
        <iomarker fontsize="28" x="2512" y="1088" name="Data_out(31:0)" orien="R0" />
        <branch name="Addr_out(31:0)">
            <wire x2="2512" y1="1280" y2="1280" x1="2096" />
        </branch>
        <iomarker fontsize="28" x="2512" y="1280" name="Addr_out(31:0)" orien="R0" />
        <iomarker fontsize="28" x="2512" y="896" name="inst_out(31:0)" orien="R0" />
        <iomarker fontsize="28" x="2512" y="704" name="PC_out(31:0)" orien="R0" />
        <branch name="CPU_MIO">
            <wire x2="1280" y1="448" y2="448" x1="1136" />
            <wire x2="1280" y1="448" y2="1488" x1="1280" />
            <wire x2="1712" y1="1488" y2="1488" x1="1280" />
        </branch>
        <iomarker fontsize="28" x="1712" y="1488" name="CPU_MIO" orien="R0" />
        <branch name="XLXN_32">
            <wire x2="1248" y1="320" y2="320" x1="1136" />
            <wire x2="1248" y1="48" y2="320" x1="1248" />
            <wire x2="1936" y1="48" y2="48" x1="1248" />
        </branch>
        <instance x="1936" y="80" name="XLXI_3" orien="R0" />
        <instance x="2320" y="176" name="XLXI_4" orien="R0" />
        <branch name="XLXN_33">
            <wire x2="2320" y1="48" y2="48" x1="2160" />
        </branch>
        <branch name="XLXN_34">
            <wire x2="1312" y1="384" y2="384" x1="1136" />
            <wire x2="1568" y1="224" y2="224" x1="1312" />
            <wire x2="1312" y1="224" y2="384" x1="1312" />
            <wire x2="2320" y1="112" y2="112" x1="1568" />
            <wire x2="1568" y1="112" y2="224" x1="1568" />
        </branch>
        <branch name="mem_w">
            <wire x2="2672" y1="80" y2="80" x1="2576" />
        </branch>
        <iomarker fontsize="28" x="2672" y="80" name="mem_w" orien="R0" />
        <branch name="XLXN_36">
            <wire x2="656" y1="896" y2="896" x1="544" />
            <wire x2="544" y1="896" y2="1424" x1="544" />
            <wire x2="2320" y1="1424" y2="1424" x1="544" />
            <wire x2="2320" y1="512" y2="512" x1="2096" />
            <wire x2="2320" y1="512" y2="1424" x1="2320" />
        </branch>
    </sheet>
</drawing>