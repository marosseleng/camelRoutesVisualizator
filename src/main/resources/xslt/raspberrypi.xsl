<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.w3.org/2000/svg" version="1.0">
    <xsl:output method="xml"
                doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN"
                doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"
                encoding="UTF-8"
                indent="yes"/>
    <xsl:variable name="piSVG" select="document('../boards/raspberryPi_board.svg')"/>
    <xsl:variable name="ethernetRect" select="$piSVG//*[@id='ethernet']"/>
    <xsl:variable name="pinNumber" select="substring(//from/@uri,10,2)"/>
    <xsl:variable name="pinNumberFinal" select="translate($pinNumber,'?','')"/>
    <xsl:variable name="outPin" select="$piSVG//*[@id=$pinNumberFinal]"/>
    <xsl:variable name="beanWidth">80</xsl:variable>
    <xsl:variable name="beanHeight">45</xsl:variable>
    <xsl:variable name="beansX">45</xsl:variable>
    <xsl:variable name="beansY">80</xsl:variable>
    <xsl:variable name="beansWidth">350</xsl:variable>
    <xsl:variable name="beansHeight">200</xsl:variable>
    <xsl:variable name="beanTop" select="((round($beansHeight div 2)) + $beansY - (round($beanHeight div 2)))"/>
    <xsl:variable name="mqqtBeanX">310</xsl:variable>

    <xsl:template match="/">
        <svg xmlns="http://www.w3.org/2000/svg" width="100%" height="100%">

            <defs>
                <marker id="end-marker" markerHeight="12" markerUnits="strokeWidth" markerWidth="15" orient="auto"
                        refX="-3" refY="0" viewBox="-15 -5 20 20">
                    <path d="M -15 -5 L 0 0 L -15 5 z" fill="white"/>
                </marker>
            </defs>

            <!--BOARD-->
            <rect x="0" y="0" stroke="black" id="e1_rectangle"
                  style="stroke-width: 1px; vector-effect: non-scaling-stroke;"
                  width="600" height="400" fill="#008000" rx="25" ry="25"/>
            <circle cx="23" cy="23" stroke="black" style="stroke-width: 1px; vector-effect: non-scaling-stroke;" r="20"
                    fill="khaki" id="e2_circle"/>
            <circle cx="23" cy="377" stroke="black" style="stroke-width: 1px; vector-effect: non-scaling-stroke;" r="20"
                    fill="khaki" id="e3_circle"/>
            <circle cx="380" cy="377" stroke="black" style="stroke-width: 1px; vector-effect: non-scaling-stroke;"
                    r="20"
                    fill="khaki" id="e4_circle"/>
            <circle cx="380" cy="22" stroke="black" style="stroke-width: 1px; vector-effect: non-scaling-stroke;" r="20"
                    fill="khaki" id="e5_circle"/>
            <circle cx="23" cy="23" stroke="black" style="stroke-width: 1px; vector-effect: non-scaling-stroke;" r="9"
                    fill="oldlace" id="e6_circle"/>
            <circle cx="23" cy="377" stroke="black" style="stroke-width: 1px; vector-effect: non-scaling-stroke;" r="9"
                    fill="oldlace" id="e7_circle"/>
            <circle cx="380" cy="377" stroke="black" style="stroke-width: 1px; vector-effect: non-scaling-stroke;" r="9"
                    fill="oldlace" id="e9_circle"/>
            <circle cx="380" cy="23" stroke="black" style="stroke-width: 1px; vector-effect: non-scaling-stroke;" r="9"
                    fill="oldlace" id="e10_circle"/>
            <xsl:element name="rect">
                <xsl:attribute name="x">
                    <xsl:value-of select="$beansX"/>
                </xsl:attribute>
                <xsl:attribute name="y">
                    <xsl:value-of select="$beansY"/>
                </xsl:attribute>
                <xsl:attribute name="width">
                    <xsl:value-of select="$beansWidth"/>
                </xsl:attribute>
                <xsl:attribute name="height">
                    <xsl:value-of select="$beansHeight"/>
                </xsl:attribute>
                <xsl:attribute name="stroke">black</xsl:attribute>
                <xsl:attribute name="fill">#1C1C1C</xsl:attribute>
            </xsl:element>

            <!--PIN BACKGROUND-->
            <rect x="270" y="4" id="e11_rectangle" style="stroke-width: 1px; vector-effect: non-scaling-stroke;"
                  width="15"
                  height="36" fill="#1C1C1C" rx="0" ry="5"/>
            <rect x="330" y="4" style="stroke-width: 1px; vector-effect: non-scaling-stroke;" width="15" height="36"
                  fill="#1C1C1C" rx="0" ry="5" id="e13_rectangle"/>
            <rect x="315" y="4" style="stroke-width: 1px; vector-effect: non-scaling-stroke;" width="15" height="36"
                  fill="#1C1C1C" rx="0" ry="5" id="e14_rectangle"/>
            <rect x="300" y="4" style="stroke-width: 1px; vector-effect: non-scaling-stroke;" width="15" height="36"
                  fill="#1C1C1C" rx="0" ry="5" id="e15_rectangle"/>
            <rect x="285" y="4" style="stroke-width: 1px; vector-effect: non-scaling-stroke;" width="15" height="36"
                  fill="#1C1C1C" rx="0" ry="5" id="e16_rectangle"/>
            <rect x="255" y="4" style="stroke-width: 1px; vector-effect: non-scaling-stroke;" width="15" height="36"
                  fill="#1C1C1C" rx="0" ry="5" id="e17_rectangle"/>
            <rect x="240" y="4" style="stroke-width: 1px; vector-effect: non-scaling-stroke;" width="15" height="36"
                  fill="#1C1C1C" rx="0" ry="5" id="e18_rectangle"/>
            <rect x="225" y="4" style="stroke-width: 1px; vector-effect: non-scaling-stroke;" width="15" height="36"
                  fill="#1C1C1C" rx="0" ry="5" id="e19_rectangle"/>
            <rect x="210" y="4" style="stroke-width: 1px; vector-effect: non-scaling-stroke;" width="15" height="36"
                  fill="#1C1C1C" rx="0" ry="5" id="e20_rectangle"/>
            <rect x="195" y="4" style="stroke-width: 1px; vector-effect: non-scaling-stroke;" width="15" height="36"
                  fill="#1C1C1C" rx="0" ry="5" id="e21_rectangle"/>
            <rect x="180" y="4" style="stroke-width: 1px; vector-effect: non-scaling-stroke;" width="15" height="36"
                  fill="#1C1C1C" rx="0" ry="5" id="e22_rectangle"/>
            <rect x="165" y="4" style="stroke-width: 1px; vector-effect: non-scaling-stroke;" width="15" height="36"
                  fill="#1C1C1C" rx="0" ry="5" id="e23_rectangle"/>
            <rect x="150" y="4" style="stroke-width: 1px; vector-effect: non-scaling-stroke;" width="15" height="36"
                  fill="#1C1C1C" rx="0" ry="5" id="e24_rectangle"/>
            <rect x="135" y="4" style="stroke-width: 1px; vector-effect: non-scaling-stroke;" width="15" height="36"
                  fill="#1C1C1C" rx="0" ry="5" id="e25_rectangle"/>
            <rect x="120" y="4" style="stroke-width: 1px; vector-effect: non-scaling-stroke;" width="15" height="36"
                  fill="#1C1C1C" rx="0" ry="5" id="e26_rectangle"/>
            <rect x="105" y="4" style="stroke-width: 1px; vector-effect: non-scaling-stroke;" width="15" height="36"
                  fill="#1C1C1C" rx="0" ry="5" id="e27_rectangle"/>
            <rect x="90" y="4" style="stroke-width: 1px; vector-effect: non-scaling-stroke;" width="15" height="36"
                  fill="#1C1C1C" rx="0" ry="5" id="e28_rectangle"/>
            <rect x="75" y="4" style="stroke-width: 1px; vector-effect: non-scaling-stroke;" width="15" height="36"
                  fill="#1C1C1C" rx="0" ry="5" id="e29_rectangle"/>
            <rect x="60" y="4" style="stroke-width: 1px; vector-effect: non-scaling-stroke;" width="15" height="36"
                  fill="#1C1C1C" rx="0" ry="5" id="e30_rectangle"/>
            <rect x="45" y="4" style="stroke-width: 1px; vector-effect: non-scaling-stroke;" width="15" height="36"
                  fill="#1C1C1C" rx="0" ry="5" id="e12_rectangle"/>

            <!--PINS-->
            <rect x="50" y="30" stroke="black" style="stroke-width: 1px; vector-effect: non-scaling-stroke;" width="4"
                  height="4" fill="darkgoldenrod" id="1"/>
            <rect x="50" y="10" stroke="black" style="stroke-width: 1px; vector-effect: non-scaling-stroke;" width="4"
                  height="4" fill="darkgoldenrod" id="2"/>
            <rect x="65" y="30" stroke="black" style="stroke-width: 1px; vector-effect: non-scaling-stroke;" width="4"
                  height="4" fill="darkgoldenrod" id="3"/>
            <rect x="65" y="10" stroke="black" style="stroke-width: 1px; vector-effect: non-scaling-stroke;" width="4"
                  height="4" fill="darkgoldenrod" id="4"/>
            <rect x="80" y="10" stroke="black" style="stroke-width: 1px; vector-effect: non-scaling-stroke;" width="4"
                  height="4" fill="darkgoldenrod" id="6"/>
            <rect x="80" y="30" stroke="black" style="stroke-width: 1px; vector-effect: non-scaling-stroke;" width="4"
                  height="4" fill="darkgoldenrod" id="5"/>
            <rect x="95" y="30" stroke="black" style="stroke-width: 1px; vector-effect: non-scaling-stroke;" width="4"
                  height="4" fill="darkgoldenrod" id="7"/>
            <rect x="95" y="10" stroke="black" style="stroke-width: 1px; vector-effect: non-scaling-stroke;" width="4"
                  height="4" fill="darkgoldenrod" id="8"/>
            <rect x="110" y="30" stroke="black" style="stroke-width: 1px; vector-effect: non-scaling-stroke;" width="4"
                  height="4" fill="darkgoldenrod" id="9"/>
            <rect x="110" y="10" stroke="black" style="stroke-width: 1px; vector-effect: non-scaling-stroke;" width="4"
                  height="4" fill="darkgoldenrod" id="10"/>
            <rect x="125" y="30" stroke="black" style="stroke-width: 1px; vector-effect: non-scaling-stroke;" width="4"
                  height="4" fill="darkgoldenrod" id="11"/>
            <rect x="125" y="10" stroke="black" style="stroke-width: 1px; vector-effect: non-scaling-stroke;" width="4"
                  height="4" fill="darkgoldenrod" id="12"/>
            <rect x="140" y="30" stroke="black" style="stroke-width: 1px; vector-effect: non-scaling-stroke;" width="4"
                  height="4" fill="darkgoldenrod" id="13"/>
            <rect x="140" y="10" stroke="black" style="stroke-width: 1px; vector-effect: non-scaling-stroke;" width="4"
                  height="4" fill="darkgoldenrod" id="14"/>
            <rect x="155" y="30" stroke="black" style="stroke-width: 1px; vector-effect: non-scaling-stroke;" width="4"
                  height="4" fill="darkgoldenrod" id="15"/>
            <rect x="155" y="10" stroke="black" style="stroke-width: 1px; vector-effect: non-scaling-stroke;" width="4"
                  height="4" fill="darkgoldenrod" id="16"/>
            <rect x="170" y="10" stroke="black" style="stroke-width: 1px; vector-effect: non-scaling-stroke;" width="4"
                  height="4" fill="darkgoldenrod" id="18"/>
            <rect x="170" y="30" stroke="black" style="stroke-width: 1px; vector-effect: non-scaling-stroke;" width="4"
                  height="4" fill="darkgoldenrod" id="17"/>
            <rect x="185" y="30" stroke="black" style="stroke-width: 1px; vector-effect: non-scaling-stroke;" width="4"
                  height="4" fill="darkgoldenrod" id="19"/>
            <rect x="185" y="10" stroke="black" style="stroke-width: 1px; vector-effect: non-scaling-stroke;" width="4"
                  height="4" fill="darkgoldenrod" id="20"/>
            <rect x="200" y="30" stroke="black" style="stroke-width: 1px; vector-effect: non-scaling-stroke;" width="4"
                  height="4" fill="darkgoldenrod" id="21"/>
            <rect x="200" y="10" stroke="black" style="stroke-width: 1px; vector-effect: non-scaling-stroke;" width="4"
                  height="4" fill="darkgoldenrod" id="22"/>
            <rect x="215" y="30" stroke="black" style="stroke-width: 1px; vector-effect: non-scaling-stroke;" width="4"
                  height="4" fill="darkgoldenrod" id="23"/>
            <rect x="215" y="10" stroke="black" style="stroke-width: 1px; vector-effect: non-scaling-stroke;" width="4"
                  height="4" fill="darkgoldenrod" id="24"/>
            <rect x="230" y="30" stroke="black" style="stroke-width: 1px; vector-effect: non-scaling-stroke;" width="4"
                  height="4" fill="darkgoldenrod" id="25"/>
            <rect x="230" y="10" stroke="black" style="stroke-width: 1px; vector-effect: non-scaling-stroke;" width="4"
                  height="4" fill="darkgoldenrod" id="26"/>
            <rect x="245" y="30" stroke="black" style="stroke-width: 1px; vector-effect: non-scaling-stroke;" width="4"
                  height="4" fill="darkgoldenrod" id="27"/>
            <rect x="245" y="10" stroke="black" style="stroke-width: 1px; vector-effect: non-scaling-stroke;" width="4"
                  height="4" fill="darkgoldenrod" id="28"/>
            <rect x="260" y="30" stroke="black" style="stroke-width: 1px; vector-effect: non-scaling-stroke;" width="4"
                  height="4" fill="darkgoldenrod" id="29"/>
            <rect x="260" y="10" stroke="black" style="stroke-width: 1px; vector-effect: non-scaling-stroke;" width="4"
                  height="4" fill="darkgoldenrod" id="30"/>
            <rect x="275" y="30" stroke="black" style="stroke-width: 1px; vector-effect: non-scaling-stroke;" width="4"
                  height="4" fill="darkgoldenrod" id="31"/>
            <rect x="275" y="10" stroke="black" style="stroke-width: 1px; vector-effect: non-scaling-stroke;" width="4"
                  height="4" fill="darkgoldenrod" id="32"/>
            <rect x="290" y="30" stroke="black" style="stroke-width: 1px; vector-effect: non-scaling-stroke;" width="4"
                  height="4" fill="darkgoldenrod" id="33"/>
            <rect x="290" y="10" stroke="black" style="stroke-width: 1px; vector-effect: non-scaling-stroke;" width="4"
                  height="4" fill="darkgoldenrod" id="34"/>
            <rect x="305" y="30" stroke="black" style="stroke-width: 1px; vector-effect: non-scaling-stroke;" width="4"
                  height="4" fill="darkgoldenrod" id="35"/>
            <rect x="305" y="10" stroke="black" style="stroke-width: 1px; vector-effect: non-scaling-stroke;" width="4"
                  height="4" fill="darkgoldenrod" id="36"/>
            <rect x="320" y="30" stroke="black" style="stroke-width: 1px; vector-effect: non-scaling-stroke;" width="4"
                  height="4" fill="darkgoldenrod" id="37"/>
            <rect x="320" y="10" stroke="black" style="stroke-width: 1px; vector-effect: non-scaling-stroke;" width="4"
                  height="4" fill="darkgoldenrod" id="38"/>
            <rect x="335" y="30" stroke="black" style="stroke-width: 1px; vector-effect: non-scaling-stroke;" width="4"
                  height="4" fill="darkgoldenrod" id="39"/>
            <rect x="335" y="10" stroke="black" style="stroke-width: 1px; vector-effect: non-scaling-stroke;" width="4"
                  height="4" fill="darkgoldenrod" id="40"/>

            <!--PORTS-->
            <rect x="510" y="30" stroke="silver" style="stroke-width: 1px; vector-effect: non-scaling-stroke;"
                  width="100"
                  height="100" fill="lightgray" id="usb01"/>
            <rect x="510" y="150" stroke="silver" style="stroke-width: 1px; vector-effect: non-scaling-stroke;"
                  width="100"
                  height="100" fill="lightgray" id="usb02"/>
            <rect x="440" y="270" stroke="silver" style="stroke-width: 1px; vector-effect: non-scaling-stroke;"
                  width="170"
                  height="100" fill="lightgray" id="ethernet"/>
            <rect x="140" y="302" stroke="silver" style="stroke-width: 1px; vector-effect: non-scaling-stroke;"
                  width="120"
                  height="100" fill="lightgray" id="hdmi"/>
            <rect x="320" y="300" stroke="black" style="stroke-width: 1px; vector-effect: non-scaling-stroke;"
                  width="35"
                  height="100" fill="black" id="audio"/>
            <rect x="60" y="370" stroke="silver" style="stroke-width: 1px; vector-effect: non-scaling-stroke;"
                  width="30"
                  height="30" fill="lightgray" id="power"/>

            <!--PORT DETAILS-->
            <rect x="440" y="270" style="stroke-width: 1px; vector-effect: non-scaling-stroke;" width="170" height="10"
                  fill="#E0E0E0" id="e84_rectangle"/>
            <rect x="440" y="360" style="stroke-width: 1px; vector-effect: non-scaling-stroke;" width="170" height="10"
                  fill="#B0B0B0" id="e85_rectangle"/>
            <rect x="510" y="30" style="stroke-width: 1px; vector-effect: non-scaling-stroke;" width="100" height="10"
                  fill="lightgray" id="e86_rectangle"/>
            <rect x="610" y="27" stroke="silver" style="stroke-width: 1px; vector-effect: non-scaling-stroke;" width="3"
                  height="106" fill="lightgray" id="e90_rectangle"/>
            <rect x="610" y="147" stroke="silver" style="stroke-width: 1px; vector-effect: non-scaling-stroke;"
                  width="3"
                  height="106" fill="lightgray" id="e91_rectangle"/>
            <rect x="325" y="390" stroke="black" style="stroke-width: 1px; vector-effect: non-scaling-stroke;"
                  width="25"
                  height="25" fill="black" id="e8_rectangle"/>

            <!--TEXTS-->
            <text fill="black" x="536.981" y="82.9283" id="e1_texte" style="font-family: monospace; font-size: 16px;">
                USB01
            </text>
            <text fill="black" x="535.98" y="208.978" id="e2_texte" style="font-family: monospace; font-size: 16px;">
                USB02
            </text>
            <text fill="black" x="473.956" y="325.023" id="e3_texte" style="font-family: monospace; font-size: 16px;">
                Ethernet
            </text>
            <text fill="white" x="285.882" y="255.996" id="e4_texte" style="font-family: monospace; font-size: 16px;"
                  transform="matrix(-0.00123645 -1 1 -0.00123645 85.7669 664.711)">Audio
            </text>
            <text fill="black" x="179.84" y="347.032" id="e5_texte" style="font-family: monospace; font-size: 16px;">
                HDMI
            </text>
            <text fill="black" x="33.1743" y="379.43" id="e6_texte" style="font-family: monospace; font-size: 16px;"
                  transform="matrix(0.0184957 -1 1 0.0184957 -278.099 421.771)">Power
            </text>

            <xsl:apply-templates mode="routeTemplate" select="//route"/>
            <xsl:call-template name="mqqtTemplate"/>
        </svg>
    </xsl:template>

    <xsl:template match="//from" mode="routeTemplate">
        <xsl:element name="rect">
            <xsl:attribute name="x">
                <xsl:value-of select="$beansX + 5"/>
            </xsl:attribute>
            <xsl:attribute name="y">
                <xsl:value-of select="$beanTop"/>
            </xsl:attribute>
            <xsl:attribute name="width">
                <xsl:value-of select="$beanWidth"/>
            </xsl:attribute>
            <xsl:attribute name="height">
                <xsl:value-of select="$beanHeight"/>
            </xsl:attribute>
            <xsl:attribute name="stroke">black</xsl:attribute>
            <xsl:attribute name="fill">white</xsl:attribute>
            <xsl:attribute name="id">fromRect</xsl:attribute>
        </xsl:element>
        <xsl:element name="text">
            <xsl:attribute name="fill">black</xsl:attribute>
            <xsl:attribute name="style">font-family: monospace; font-size: 20px;</xsl:attribute>
            <xsl:attribute name="x">
                <xsl:value-of select="$beansX + 24"/>
            </xsl:attribute>
            <xsl:attribute name="y">
                <xsl:value-of select="$beanTop + 30"/>
            </xsl:attribute>
            gpio
        </xsl:element>
        <xsl:variable name="ycorHalf" select="(154-$outPin/@y) div 2"/>
        <xsl:variable name="beanXHalf" select="round($beanWidth div 2) + $beansX"/>
        <xsl:element name="polyline">
            <xsl:attribute name="points"><xsl:value-of select="$outPin/@x + 2"/>,<xsl:value-of
                    select="$outPin/@y + 2"/><xsl:text> </xsl:text><xsl:value-of select="$outPin/@x + 2"/>,<xsl:value-of
                    select="round($ycorHalf)"/><xsl:text> </xsl:text><xsl:value-of select="$beanXHalf"/>,<xsl:value-of
                    select="round($ycorHalf)"/><xsl:text> </xsl:text><xsl:value-of select="$beanXHalf"/>,<xsl:value-of
                    select="$beanTop"/>
            </xsl:attribute>
            <xsl:attribute name="style">fill:none;stroke:white;stroke-width:3;marker-end: url(#end-marker)
            </xsl:attribute>
        </xsl:element>
    </xsl:template>
    <xsl:template match="//to[starts-with(@uri,'mqqt')]" name="mqqtTemplate">
        <xsl:element name="rect">
            <xsl:attribute name="x">
                <xsl:value-of select="$mqqtBeanX"/>
            </xsl:attribute>
            <xsl:attribute name="y">
                <xsl:value-of select="$beanTop"/>
            </xsl:attribute>
            <xsl:attribute name="width">
                <xsl:value-of select="$beanWidth"/>
            </xsl:attribute>
            <xsl:attribute name="height">
                <xsl:value-of select="$beanHeight"/>
            </xsl:attribute>
            <xsl:attribute name="stroke">black</xsl:attribute>
            <xsl:attribute name="fill">white</xsl:attribute>
            <xsl:attribute name="id">mqqtRect</xsl:attribute>
        </xsl:element>
        <xsl:element name="text">
            <xsl:attribute name="fill">black</xsl:attribute>
            <xsl:attribute name="style">font-family: monospace; font-size: 20px;</xsl:attribute>
            <xsl:attribute name="x">
                <xsl:value-of select="$mqqtBeanX + 19"/>
            </xsl:attribute>
            <xsl:attribute name="y">
                <xsl:value-of select="$beanTop + 30"/>
            </xsl:attribute>
            mqqt
        </xsl:element>
        <xsl:element name="polyline">
            <xsl:attribute name="points">
            </xsl:attribute>
            <xsl:attribute name="style">fill:none;stroke:white;stroke-width:3;marker-end: url(#end-marker)
            </xsl:attribute>
        </xsl:element>
    </xsl:template>
</xsl:stylesheet>