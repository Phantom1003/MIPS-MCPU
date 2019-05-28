<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1(63:0)" />
        <signal name="XLXN_2(63:0)" />
        <signal name="XLXN_3(63:0)" />
        <signal name="SW0" />
        <signal name="flash" />
        <signal name="Hexs(31:0)" />
        <signal name="point(7:0)" />
        <signal name="LES(7:0)" />
        <signal name="Hexs(31:0),Hexs(31:0)" />
        <signal name="Start" />
        <signal name="rst" />
        <signal name="clk" />
        <signal name="seg_clk" />
        <signal name="seg_sout" />
        <signal name="SEG_PEN" />
        <signal name="seg_clrn" />
        <port polarity="Input" name="SW0" />
        <port polarity="Input" name="flash" />
        <port polarity="Input" name="Hexs(31:0)" />
        <port polarity="Input" name="point(7:0)" />
        <port polarity="Input" name="LES(7:0)" />
        <port polarity="Input" name="Start" />
        <port polarity="Input" name="rst" />
        <port polarity="Input" name="clk" />
        <port polarity="Output" name="seg_clk" />
        <port polarity="Output" name="seg_sout" />
        <port polarity="Output" name="SEG_PEN" />
        <port polarity="Output" name="seg_clrn" />
        <blockdef name="P2S">
            <timestamp>2016-2-25T15:50:0</timestamp>
            <rect width="208" x="16" y="-212" height="212" />
            <line x2="224" y1="-32" y2="-32" x1="240" />
            <line x2="224" y1="-128" y2="-128" x1="240" />
            <line x2="0" y1="-128" y2="-128" x1="16" />
            <line x2="0" y1="-80" y2="-80" x1="16" />
            <line x2="224" y1="-80" y2="-80" x1="240" />
            <line x2="0" y1="-176" y2="-176" x1="16" />
            <line x2="224" y1="-176" y2="-176" x1="240" />
            <line x2="0" y1="-32" y2="-32" style="linewidth:W" x1="16" />
        </blockdef>
        <blockdef name="SSeg_map">
            <timestamp>2016-2-25T15:50:0</timestamp>
            <rect width="212" x="12" y="-224" height="220" />
            <line x2="0" y1="-176" y2="-176" style="linewidth:W" x1="12" />
            <line x2="240" y1="-32" y2="-32" style="linewidth:W" x1="224" />
        </blockdef>
        <blockdef name="HexTo8SEG">
            <timestamp>2018-3-15T7:55:4</timestamp>
            <rect width="224" x="32" y="-212" height="212" />
            <line x2="0" y1="-32" y2="-32" style="linewidth:W" x1="32" />
            <line x2="0" y1="-80" y2="-80" style="linewidth:W" x1="32" />
            <line x2="0" y1="-128" y2="-128" style="linewidth:W" x1="32" />
            <line x2="288" y1="-160" y2="-160" style="linewidth:W" x1="256" />
            <line x2="32" y1="-176" y2="-176" x1="0" />
        </blockdef>
        <blockdef name="MUX2T1_64">
            <timestamp>2016-2-25T15:50:0</timestamp>
            <line x2="0" y1="-48" y2="-48" style="linewidth:W" x1="16" />
            <rect width="96" x="16" y="-224" height="224" />
            <line x2="64" y1="-224" y2="-240" x1="64" />
            <line x2="0" y1="-176" y2="-176" style="linewidth:W" x1="16" />
            <line x2="112" y1="-112" y2="-112" style="linewidth:W" x1="128" />
        </blockdef>
        <block symbolname="P2S" name="XLXI_1">
            <blockpin signalname="seg_clrn" name="s_clrn" />
            <blockpin signalname="seg_sout" name="sout" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="SEG_PEN" name="EN" />
            <blockpin signalname="Start" name="Serial" />
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="seg_clk" name="s_clk" />
            <blockpin signalname="XLXN_3(63:0)" name="P_Data(63:0)" />
        </block>
        <block symbolname="SSeg_map" name="XLXI_2">
            <blockpin signalname="Hexs(31:0),Hexs(31:0)" name="Disp_num(63:0)" />
            <blockpin signalname="XLXN_2(63:0)" name="Seg_map(63:0)" />
        </block>
        <block symbolname="HexTo8SEG" name="XLXI_3">
            <blockpin signalname="flash" name="flash" />
            <blockpin signalname="LES(7:0)" name="LES(7:0)" />
            <blockpin signalname="point(7:0)" name="points(7:0)" />
            <blockpin signalname="Hexs(31:0)" name="Hexs(31:0)" />
            <blockpin signalname="XLXN_1(63:0)" name="SEG_TXT(63:0)" />
        </block>
        <block symbolname="MUX2T1_64" name="XLXI_4">
            <blockpin signalname="XLXN_2(63:0)" name="b(63:0)" />
            <blockpin signalname="SW0" name="sel" />
            <blockpin signalname="XLXN_1(63:0)" name="a(63:0)" />
            <blockpin signalname="XLXN_3(63:0)" name="o(63:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1760" y="1216" name="XLXI_2" orien="R0">
        </instance>
        <instance x="1744" y="880" name="XLXI_3" orien="R0">
        </instance>
        <instance x="2352" y="1040" name="XLXI_4" orien="R0">
        </instance>
        <branch name="XLXN_1(63:0)">
            <wire x2="2192" y1="720" y2="720" x1="2032" />
            <wire x2="2192" y1="720" y2="864" x1="2192" />
            <wire x2="2352" y1="864" y2="864" x1="2192" />
        </branch>
        <branch name="XLXN_2(63:0)">
            <wire x2="2176" y1="1184" y2="1184" x1="2000" />
            <wire x2="2176" y1="992" y2="1184" x1="2176" />
            <wire x2="2352" y1="992" y2="992" x1="2176" />
        </branch>
        <branch name="XLXN_3(63:0)">
            <wire x2="2576" y1="928" y2="928" x1="2480" />
            <wire x2="2720" y1="432" y2="432" x1="2576" />
            <wire x2="2576" y1="432" y2="928" x1="2576" />
        </branch>
        <branch name="SW0">
            <wire x2="2416" y1="496" y2="496" x1="1568" />
            <wire x2="2416" y1="496" y2="800" x1="2416" />
        </branch>
        <branch name="flash">
            <wire x2="1744" y1="704" y2="704" x1="1584" />
        </branch>
        <branch name="Hexs(31:0)">
            <wire x2="1744" y1="752" y2="752" x1="1584" />
        </branch>
        <branch name="point(7:0)">
            <wire x2="1744" y1="800" y2="800" x1="1584" />
        </branch>
        <branch name="LES(7:0)">
            <wire x2="1744" y1="848" y2="848" x1="1584" />
        </branch>
        <branch name="Hexs(31:0),Hexs(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1552" y="1040" type="branch" />
            <wire x2="1760" y1="1040" y2="1040" x1="1552" />
        </branch>
        <instance x="2720" y="464" name="XLXI_1" orien="R0">
        </instance>
        <branch name="Start">
            <wire x2="2720" y1="384" y2="384" x1="2048" />
        </branch>
        <branch name="rst">
            <wire x2="2704" y1="336" y2="336" x1="2048" />
            <wire x2="2720" y1="336" y2="336" x1="2704" />
        </branch>
        <branch name="clk">
            <wire x2="2720" y1="288" y2="288" x1="2048" />
        </branch>
        <branch name="seg_clk">
            <wire x2="2992" y1="288" y2="288" x1="2960" />
        </branch>
        <iomarker fontsize="28" x="2992" y="288" name="seg_clk" orien="R0" />
        <branch name="seg_sout">
            <wire x2="2992" y1="336" y2="336" x1="2960" />
        </branch>
        <iomarker fontsize="28" x="2992" y="336" name="seg_sout" orien="R0" />
        <branch name="SEG_PEN">
            <wire x2="2992" y1="384" y2="384" x1="2960" />
        </branch>
        <iomarker fontsize="28" x="2992" y="384" name="SEG_PEN" orien="R0" />
        <branch name="seg_clrn">
            <wire x2="2992" y1="432" y2="432" x1="2960" />
        </branch>
        <iomarker fontsize="28" x="2992" y="432" name="seg_clrn" orien="R0" />
        <iomarker fontsize="28" x="2048" y="288" name="clk" orien="R180" />
        <iomarker fontsize="28" x="2048" y="336" name="rst" orien="R180" />
        <iomarker fontsize="28" x="2048" y="384" name="Start" orien="R180" />
        <iomarker fontsize="28" x="1584" y="704" name="flash" orien="R180" />
        <iomarker fontsize="28" x="1584" y="752" name="Hexs(31:0)" orien="R180" />
        <iomarker fontsize="28" x="1584" y="800" name="point(7:0)" orien="R180" />
        <iomarker fontsize="28" x="1584" y="848" name="LES(7:0)" orien="R180" />
        <iomarker fontsize="28" x="1568" y="496" name="SW0" orien="R180" />
    </sheet>
</drawing>