<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.w3.org/2000/svg" version="1.0">
    <xsl:output method="xml"
                doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN"
                doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"
                encoding="UTF-8"
                indent="yes"/>
    <xsl:variable name="beanWidth">60</xsl:variable>
    <xsl:variable name="beanHeight">45</xsl:variable>
    <xsl:variable name="beansX">10</xsl:variable>
    <xsl:variable name="beansY">80</xsl:variable>
    <xsl:variable name="beansWidth">400</xsl:variable>
    <xsl:variable name="beansHeight">200</xsl:variable>
    <xsl:variable name="innerSpace" select="30"/>
    <xsl:variable name="availableSpace" select="$beansWidth - 10 - (2 * $beanWidth) - (2 * $innerSpace)"/>
    <xsl:variable name="beanStartX" select="$beansX + 5 + $innerSpace + $beanWidth"/>
    <xsl:variable name="beansCount" select="count(//to) - 1"/>
    <xsl:variable name="innerBeanWidth"
                  select="round(($availableSpace - (($beansCount - 1) * $innerSpace)) div $beansCount)"/>
    <xsl:variable name="piSVG" select="document('../boards/raspberryPi_board.svg')"/>
    <xsl:variable name="ethernetRect" select="$piSVG//*[@id='ethernet']"/>
    <xsl:variable name="beanTop" select="((round($beansHeight div 2)) + $beansY - (round($beanHeight div 2)))"/>
    <xsl:variable name="mqqtBeanX" select="$beansX + $beansWidth - 5 - $beanWidth"/>
    <xsl:variable name="ethernetEndpointY" select="$ethernetRect/@y + round($ethernetRect/@height div 2)"/>

    <xsl:template match="/">
        <svg xmlns="http://www.w3.org/2000/svg" width="100%" height="100%">

            <defs>
                <marker id="end-marker" markerHeight="8" markerUnits="strokeWidth" markerWidth="10" orient="auto"
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

            <!--PORTS-->
            <rect x="440" y="270" stroke="silver" style="stroke-width: 1px; vector-effect: non-scaling-stroke;"
                  width="170"
                  height="100" fill="lightgray" id="ethernet"/>

            <!--PORT DETAILS-->
            <rect x="440" y="270" style="stroke-width: 1px; vector-effect: non-scaling-stroke;" width="170" height="10"
                  fill="#E0E0E0" id="e84_rectangle"/>
            <rect x="440" y="360" style="stroke-width: 1px; vector-effect: non-scaling-stroke;" width="170" height="10"
                  fill="#B0B0B0" id="e85_rectangle"/>

            <!--TEXTS-->
            <text fill="black" x="473.956" y="325.023" id="e3_texte" style="font-family: monospace; font-size: 16px;">
                Ethernet
            </text>

            <xsl:call-template name="fromTemplate"/>
            <xsl:call-template name="mqqtTemplate"/>
            <xsl:for-each select="//to[not(contains(@uri,'//'))]">
                <xsl:call-template name="beanTemplate">
                    <xsl:with-param name="relativeX" select="position()"/>
                </xsl:call-template>
            </xsl:for-each>
        </svg>
    </xsl:template>

    <xsl:template match="//from" name="fromTemplate">
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
            <xsl:attribute name="stroke">white</xsl:attribute>
            <xsl:attribute name="fill">white</xsl:attribute>
            <xsl:attribute name="id">fromRect</xsl:attribute>
        </xsl:element>
        <xsl:element name="text">
            <xsl:attribute name="fill">black</xsl:attribute>
            <xsl:attribute name="style">font-family: monospace; font-size: 20px;</xsl:attribute>
            <xsl:attribute name="x">
                <xsl:value-of select="$beansX + round($beanWidth div 4)"/>
            </xsl:attribute>
            <xsl:attribute name="y">
                <xsl:value-of select="$beanTop + (($beanHeight * 2) div 3)"/>
            </xsl:attribute>
            gpio
        </xsl:element>
        <xsl:variable name="ycorHalf" select="(154-20) div 2"/>
        <xsl:variable name="beanXHalf" select="round($beanWidth div 2) + $beansX"/>
        <xsl:element name="polyline">
            <xsl:attribute name="points"><xsl:value-of select="200"/>,<xsl:value-of
                    select="20"/><xsl:text> </xsl:text><xsl:value-of select="200"/>,<xsl:value-of
                    select="round($ycorHalf)"/><xsl:text> </xsl:text><xsl:value-of select="$beanXHalf"/>,<xsl:value-of
                    select="round($ycorHalf)"/><xsl:text> </xsl:text><xsl:value-of select="$beanXHalf"/>,<xsl:value-of
                    select="$beanTop"/>
            </xsl:attribute>
            <xsl:attribute name="style">fill:none;stroke:white;stroke-width:3;marker-end: url(#end-marker)
            </xsl:attribute>
            <xsl:attribute name="stroke-dasharray">10,5</xsl:attribute>
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
            <xsl:attribute name="stroke">white</xsl:attribute>
            <xsl:attribute name="fill">white</xsl:attribute>
            <xsl:attribute name="id">mqqtRect</xsl:attribute>
        </xsl:element>

        <xsl:element name="text">
            <xsl:attribute name="fill">black</xsl:attribute>
            <xsl:attribute name="style">font-family: monospace; font-size: 20px;</xsl:attribute>
            <xsl:attribute name="x">
                <xsl:value-of select="$mqqtBeanX + round($beanWidth div 4)"/>
            </xsl:attribute>
            <xsl:attribute name="y">
                <xsl:value-of select="$beanTop + (($beanHeight * 2) div 3)"/>
            </xsl:attribute>
            mqtt
        </xsl:element>

        <xsl:element name="polyline">
            <xsl:attribute name="points">
                <xsl:value-of select="$mqqtBeanX + $beanWidth"/>,<xsl:value-of
                    select="$beanTop + round($beanHeight div 2)"/>
                <xsl:text> </xsl:text>
                <xsl:value-of select="$mqqtBeanX + $beanWidth + (($ethernetRect/@x - $mqqtBeanX - $beanWidth) div 2)"/>,<xsl:value-of
                    select="$beanTop + round($beanHeight div 2)"/>
                <xsl:text> </xsl:text>
                <xsl:value-of select="$mqqtBeanX + $beanWidth + (($ethernetRect/@x - $mqqtBeanX - $beanWidth) div 2)"/>,<xsl:value-of
                    select="$ethernetEndpointY"/>
                <xsl:text> </xsl:text>
                <xsl:value-of select="$ethernetRect/@x"/>,<xsl:value-of select="$ethernetEndpointY"/>
            </xsl:attribute>
            <xsl:attribute name="style">fill:none;stroke:white;stroke-width:3;marker-end: url(#end-marker)
            </xsl:attribute>
            <xsl:attribute name="stroke-dasharray">10,5</xsl:attribute>
        </xsl:element>
    </xsl:template>

    <xsl:template match="//to[not(contains(@uri,'//'))]" name="beanTemplate">
        <xsl:param name="relativeX"/>
        <xsl:variable name="relativePositionX"
                      select="(($relativeX - 1) * $innerBeanWidth) + (($relativeX - 1) * $innerSpace)"/>
        <xsl:element name="rect">
            <xsl:attribute name="x">
                <xsl:value-of select="$beanStartX + $relativePositionX"/>
            </xsl:attribute>
            <xsl:attribute name="y">
                <xsl:value-of select="$beanTop"/>
            </xsl:attribute>
            <xsl:attribute name="width">
                <xsl:value-of select="$innerBeanWidth"/>
            </xsl:attribute>
            <xsl:attribute name="height">
                <xsl:value-of select="$beanHeight"/>
            </xsl:attribute>
            <xsl:attribute name="fill">darkgrey</xsl:attribute>
            <xsl:attribute name="stroke">darkgrey</xsl:attribute>
        </xsl:element>

        <xsl:element name="text">
            <xsl:attribute name="fill">black</xsl:attribute>
            <xsl:attribute name="style">font-family: monospace; font-size: 20px;</xsl:attribute>
            <xsl:attribute name="x">
                <xsl:value-of select="$beanStartX + $relativePositionX"/>
            </xsl:attribute>
            <xsl:attribute name="y">
                <xsl:value-of select="$beanTop + (($beanHeight * 2) div 3)"/>
            </xsl:attribute>
            <xsl:value-of select="substring(substring-before(@uri,':'),1,floor($innerBeanWidth div 10))"/>
        </xsl:element>

        <xsl:element name="line">
            <xsl:attribute name="x1">
                <xsl:value-of select="$beanStartX + $relativePositionX - $innerSpace"/>
            </xsl:attribute>
            <xsl:attribute name="y1">
                <xsl:value-of
                        select="$beanTop + round($beanHeight div 2)"/>
            </xsl:attribute>
            <xsl:attribute name="x2">
                <xsl:value-of select="$beanStartX + $relativePositionX"/>
            </xsl:attribute>
            <xsl:attribute name="y2">
                <xsl:value-of
                        select="$beanTop + round($beanHeight div 2)"/>
            </xsl:attribute>
            <xsl:attribute name="style">fill:none;stroke:white;stroke-width:3;marker-end: url(#end-marker)
            </xsl:attribute>
        </xsl:element>

        <xsl:if test="$relativeX = $beansCount">
            <xsl:element name="line">
                <xsl:attribute name="x1">
                    <xsl:value-of select="$beanStartX + $relativePositionX + $innerBeanWidth"/>
                </xsl:attribute>
                <xsl:attribute name="y1">
                    <xsl:value-of
                            select="$beanTop + round($beanHeight div 2)"/>
                </xsl:attribute>
                <xsl:attribute name="x2">
                    <xsl:value-of select="$mqqtBeanX"/>
                </xsl:attribute>
                <xsl:attribute name="y2">
                    <xsl:value-of
                            select="$beanTop + round($beanHeight div 2)"/>
                </xsl:attribute>
                <xsl:attribute name="style">fill:none;stroke:white;stroke-width:3;marker-end: url(#end-marker)
                </xsl:attribute>
            </xsl:element>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>