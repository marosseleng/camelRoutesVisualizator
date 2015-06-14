<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.w3.org/2000/svg" version="1.0">
              
    <xsl:output method="xml"
                doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN"
                doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"
                encoding="UTF-8"
                indent="yes"/>
    
    <xsl:variable name="cubieSVG" select="document('../boards/cubieBoard2_board.svg')"/>
    <xsl:variable name="ethernetRect" select="$cubieSVG//*[@id='ethernet']"/>
    <xsl:variable name="miniUSBRect" select="$cubieSVG//*[@id='miniUSB']"/>
    <xsl:variable name="USBRect" select="$cubieSVG//*[@id='USB1_USB2']"/>
    <xsl:variable name="audioRect" select="$cubieSVG//*[@id='audio']"/>
    
    <xsl:template match="/">
        <svg xmlns="http://www.w3.org/2000/svg" width="100%" height="100%" >
            <defs>
                <marker id="end-marker" markerHeight="12" markerUnits="strokeWidth" markerWidth="15" orient="auto"
                        refX="-3" refY="0" viewBox="-15 -5 20 20">
                    <path d="M -15 -5 L 0 0 L -15 5 z" fill="white"/>
                </marker>
            </defs>
            <!--BOARD-->
            <rect x="0" y="0" stroke="black" id="board" style="stroke-width: 1px; vector-effect: non-scaling-stroke;"
                  width="600" height="400" fill="black" rx="30" ry="30"/>
            <circle id="e2_circle" cx="570" cy="25" stroke="black"
                    style="stroke-width: 1px; vector-effect: non-scaling-stroke;" r="18" fill="khaki" transform=""/>
            <circle cx="570" cy="373" stroke="black" style="stroke-width: 1px; vector-effect: non-scaling-stroke;"
                    r="18" fill="khaki" transform="" id="e3_circle"/>
            <circle cx="128" cy="373" stroke="black" style="stroke-width: 1px; vector-effect: non-scaling-stroke;"
                    r="18" fill="khaki" transform="" id="e4_circle"/>
            <circle cx="128" cy="25" stroke="black" style="stroke-width: 1px; vector-effect: non-scaling-stroke;" r="18"
                    fill="khaki" transform="" id="e5_circle"/>
            <circle id="e6_circle" cx="128" cy="25" stroke="black"
                    style="stroke-width: 1px; vector-effect: non-scaling-stroke;" r="9" fill="white" transform=""/>
            <circle cx="570" cy="25" stroke="black" style="stroke-width: 1px; vector-effect: non-scaling-stroke;" r="9"
                    fill="white" transform="" id="e7_circle"/>
            <circle cx="570" cy="373" stroke="black" style="stroke-width: 1px; vector-effect: non-scaling-stroke;" r="9"
                    fill="white" transform="" id="e8_circle"/>
            <circle cx="128" cy="373" stroke="black" style="stroke-width: 1px; vector-effect: non-scaling-stroke;" r="9"
                    fill="white" transform="" id="e9_circle"/>
            <!--UPPER PINS-->
            <rect x="230" y="9" id="upper_pins_board" style="fill:#000000;stroke:#ffffff;stroke-width:1px" width="322"
                  height="31" rx="0" ry="0"/>
            <circle cx="542" cy="32" style="fill:#fff8dc;stroke:#000000;stroke-width:1px" r="3" id="pin47"/>
            <circle cx="529" cy="32" style="fill:#fff8dc;stroke:#000000;stroke-width:1px" r="3" id="pin45"/>
            <circle cx="516" cy="32" style="fill:#fff8dc;stroke:#000000;stroke-width:1px" r="3" id="pin43"/>
            <circle cx="503" cy="32" style="fill:#fff8dc;stroke:#000000;stroke-width:1px" r="3" id="pin41"/>
            <circle cx="490" cy="32" style="fill:#fff8dc;stroke:#000000;stroke-width:1px" r="3" id="pin39"/>
            <circle cx="477" cy="32" style="fill:#fff8dc;stroke:#000000;stroke-width:1px" r="3" id="pin37"/>
            <circle cx="464" cy="32" style="fill:#fff8dc;stroke:#000000;stroke-width:1px" r="3" id="pin35"/>
            <circle cx="451" cy="32" style="fill:#fff8dc;stroke:#000000;stroke-width:1px" r="3" id="pin33"/>
            <circle cx="438" cy="32" style="fill:#fff8dc;stroke:#000000;stroke-width:1px" r="3" id="pin31"/>
            <circle cx="425" cy="32" style="fill:#fff8dc;stroke:#000000;stroke-width:1px" r="3" id="pin29"/>
            <circle cx="412" cy="32" style="fill:#fff8dc;stroke:#000000;stroke-width:1px" r="3" id="pin27"/>
            <circle cx="399" cy="32" style="fill:#fff8dc;stroke:#000000;stroke-width:1px" r="3" id="pin25"/>
            <circle cx="386" cy="32" style="fill:#fff8dc;stroke:#000000;stroke-width:1px" r="3" id="pin23"/>
            <circle cx="373" cy="32" style="fill:#fff8dc;stroke:#000000;stroke-width:1px" r="3" id="pin21"/>
            <circle cx="360" cy="32" style="fill:#fff8dc;stroke:#000000;stroke-width:1px" r="3" id="pin19"/>
            <circle cx="347" cy="32" style="fill:#fff8dc;stroke:#000000;stroke-width:1px" r="3" id="pin17"/>
            <circle cx="334" cy="32" style="fill:#fff8dc;stroke:#000000;stroke-width:1px" r="3" id="pin15"/>
            <circle cx="321" cy="32" style="fill:#fff8dc;stroke:#000000;stroke-width:1px" r="3" id="pin13"/>
            <circle cx="308" cy="32" style="fill:#fff8dc;stroke:#000000;stroke-width:1px" r="3" id="pin11"/>
            <circle cx="295" cy="32" style="fill:#fff8dc;stroke:#000000;stroke-width:1px" r="3" id="pin09"/>
            <circle cx="282" cy="32" style="fill:#fff8dc;stroke:#000000;stroke-width:1px" r="3" id="pin07"/>
            <circle cx="269" cy="32" style="fill:#fff8dc;stroke:#000000;stroke-width:1px" r="3" id="pin05"/>
            <circle cx="256" cy="32" style="fill:#fff8dc;stroke:#000000;stroke-width:1px" r="3" id="pin03"/>
            <circle cx="243" cy="32" style="fill:#fff8dc;stroke:#000000;stroke-width:1px" r="3" id="pin01"/>
            <circle cx="542" cy="17" style="fill:#fff8dc;stroke:#000000;stroke-width:1px" r="3" id="pin48"/>
            <circle cx="529" cy="17" style="fill:#fff8dc;stroke:#000000;stroke-width:1px" r="3" id="pin46"/>
            <circle cx="516" cy="17" style="fill:#fff8dc;stroke:#000000;stroke-width:1px" r="3" id="pin44"/>
            <circle cx="503" cy="17" style="fill:#fff8dc;stroke:#000000;stroke-width:1px" r="3" id="pin42"/>
            <circle cx="490" cy="17" style="fill:#fff8dc;stroke:#000000;stroke-width:1px" r="3" id="pin40"/>
            <circle cx="477" cy="17" style="fill:#fff8dc;stroke:#000000;stroke-width:1px" r="3" id="pin38"/>
            <circle cx="464" cy="17" style="fill:#fff8dc;stroke:#000000;stroke-width:1px" r="3" id="pin36"/>
            <circle cx="451" cy="17" style="fill:#fff8dc;stroke:#000000;stroke-width:1px" r="3" id="pin34"/>
            <circle cx="438" cy="17" style="fill:#fff8dc;stroke:#000000;stroke-width:1px" r="3" id="pin32"/>
            <circle cx="425" cy="17" style="fill:#fff8dc;stroke:#000000;stroke-width:1px" r="3" id="pin30"/>
            <circle cx="412" cy="17" style="fill:#fff8dc;stroke:#000000;stroke-width:1px" r="3" id="pin28"/>
            <circle cx="399" cy="17" style="fill:#fff8dc;stroke:#000000;stroke-width:1px" r="3" id="pin26"/>
            <circle cx="386" cy="17" style="fill:#fff8dc;stroke:#000000;stroke-width:1px" r="3" id="pin24"/>
            <circle cx="373" cy="17" style="fill:#fff8dc;stroke:#000000;stroke-width:1px" r="3" id="pin22"/>
            <circle cx="360" cy="17" style="fill:#fff8dc;stroke:#000000;stroke-width:1px" r="3" id="pin20"/>
            <circle cx="347" cy="17" style="fill:#fff8dc;stroke:#000000;stroke-width:1px" r="3" id="pin18"/>
            <circle cx="334" cy="17" style="fill:#fff8dc;stroke:#000000;stroke-width:1px" r="3" id="pin16"/>
            <circle cx="321" cy="17" style="fill:#fff8dc;stroke:#000000;stroke-width:1px" r="3" id="pin14"/>
            <circle cx="308" cy="17" style="fill:#fff8dc;stroke:#000000;stroke-width:1px" r="3" id="pin12"/>
            <circle cx="295" cy="17" style="fill:#fff8dc;stroke:#000000;stroke-width:1px" r="3" id="pin10"/>
            <circle cx="282" cy="17" style="fill:#fff8dc;stroke:#000000;stroke-width:1px" r="3" id="pin08"/>
            <circle cx="269" cy="17" style="fill:#fff8dc;stroke:#000000;stroke-width:1px" r="3" id="pin06"/>
            <circle cx="256" cy="17" style="fill:#fff8dc;stroke:#000000;stroke-width:1px" r="3" id="pin04"/>
            <circle cx="243" cy="17" style="fill:#fff8dc;stroke:#000000;stroke-width:1px" r="3" id="pin02"/>
            <!--LOWER PINS-->
            <rect x="230" y="357" id="lower_pins_board" style="fill:#000000;stroke:#ffffff;stroke-width:1px" width="322"
                  height="31" rx="0" ry="0"/>
            <circle cx="542" cy="380" style="fill:#fff8dc;stroke:#000000;stroke-width:1px" r="3" id="pin102"/>
            <circle cx="529" cy="380" style="fill:#fff8dc;stroke:#000000;stroke-width:1px" r="3" id="pin104"/>
            <circle cx="516" cy="380" style="fill:#fff8dc;stroke:#000000;stroke-width:1px" r="3" id="pin106"/>
            <circle cx="503" cy="380" style="fill:#fff8dc;stroke:#000000;stroke-width:1px" r="3" id="pin108"/>
            <circle cx="490" cy="380" style="fill:#fff8dc;stroke:#000000;stroke-width:1px" r="3" id="pin110"/>
            <circle cx="477" cy="380" style="fill:#fff8dc;stroke:#000000;stroke-width:1px" r="3" id="pin112"/>
            <circle cx="464" cy="380" style="fill:#fff8dc;stroke:#000000;stroke-width:1px" r="3" id="pin114"/>
            <circle cx="451" cy="380" style="fill:#fff8dc;stroke:#000000;stroke-width:1px" r="3" id="pin116"/>
            <circle cx="438" cy="380" style="fill:#fff8dc;stroke:#000000;stroke-width:1px" r="3" id="pin118"/>
            <circle cx="425" cy="380" style="fill:#fff8dc;stroke:#000000;stroke-width:1px" r="3" id="pin120"/>
            <circle cx="412" cy="380" style="fill:#fff8dc;stroke:#000000;stroke-width:1px" r="3" id="pin122"/>
            <circle cx="399" cy="380" style="fill:#fff8dc;stroke:#000000;stroke-width:1px" r="3" id="pin124"/>
            <circle cx="386" cy="380" style="fill:#fff8dc;stroke:#000000;stroke-width:1px" r="3" id="pin126"/>
            <circle cx="373" cy="380" style="fill:#fff8dc;stroke:#000000;stroke-width:1px" r="3" id="pin128"/>
            <circle cx="360" cy="380" style="fill:#fff8dc;stroke:#000000;stroke-width:1px" r="3" id="pin130"/>
            <circle cx="347" cy="380" style="fill:#fff8dc;stroke:#000000;stroke-width:1px" r="3" id="pin132"/>
            <circle cx="334" cy="380" style="fill:#fff8dc;stroke:#000000;stroke-width:1px" r="3" id="pin134"/>
            <circle cx="321" cy="380" style="fill:#fff8dc;stroke:#000000;stroke-width:1px" r="3" id="pin136"/>
            <circle cx="308" cy="380" style="fill:#fff8dc;stroke:#000000;stroke-width:1px" r="3" id="pin138"/>
            <circle cx="295" cy="380" style="fill:#fff8dc;stroke:#000000;stroke-width:1px" r="3" id="pin140"/>
            <circle cx="282" cy="380" style="fill:#fff8dc;stroke:#000000;stroke-width:1px" r="3" id="pin142"/>
            <circle cx="269" cy="380" style="fill:#fff8dc;stroke:#000000;stroke-width:1px" r="3" id="pin144"/>
            <circle cx="256" cy="380" style="fill:#fff8dc;stroke:#000000;stroke-width:1px" r="3" id="pin146"/>
            <circle cx="243" cy="380" style="fill:#fff8dc;stroke:#000000;stroke-width:1px" r="3" id="pin148"/>
            <circle cx="542" cy="365" style="fill:#fff8dc;stroke:#000000;stroke-width:1px" r="3" id="pin101"/>
            <circle cx="529" cy="365" style="fill:#fff8dc;stroke:#000000;stroke-width:1px" r="3" id="pin103"/>
            <circle cx="516" cy="365" style="fill:#fff8dc;stroke:#000000;stroke-width:1px" r="3" id="pin105"/>
            <circle cx="503" cy="365" style="fill:#fff8dc;stroke:#000000;stroke-width:1px" r="3" id="pin107"/>
            <circle cx="490" cy="365" style="fill:#fff8dc;stroke:#000000;stroke-width:1px" r="3" id="pin109"/>
            <circle cx="477" cy="365" style="fill:#fff8dc;stroke:#000000;stroke-width:1px" r="3" id="pin111"/>
            <circle cx="464" cy="365" style="fill:#fff8dc;stroke:#000000;stroke-width:1px" r="3" id="pin113"/>
            <circle cx="451" cy="365" style="fill:#fff8dc;stroke:#000000;stroke-width:1px" r="3" id="pin115"/>
            <circle cx="438" cy="365" style="fill:#fff8dc;stroke:#000000;stroke-width:1px" r="3" id="pin117"/>
            <circle cx="425" cy="365" style="fill:#fff8dc;stroke:#000000;stroke-width:1px" r="3" id="pin119"/>
            <circle cx="412" cy="365" style="fill:#fff8dc;stroke:#000000;stroke-width:1px" r="3" id="pin121"/>
            <circle cx="399" cy="365" style="fill:#fff8dc;stroke:#000000;stroke-width:1px" r="3" id="pin123"/>
            <circle cx="386" cy="365" style="fill:#fff8dc;stroke:#000000;stroke-width:1px" r="3" id="pin125"/>
            <circle cx="373" cy="365" style="fill:#fff8dc;stroke:#000000;stroke-width:1px" r="3" id="pin127"/>
            <circle cx="360" cy="365" style="fill:#fff8dc;stroke:#000000;stroke-width:1px" r="3" id="pin129"/>
            <circle cx="347" cy="365" style="fill:#fff8dc;stroke:#000000;stroke-width:1px" r="3" id="pin131"/>
            <circle cx="334" cy="365" style="fill:#fff8dc;stroke:#000000;stroke-width:1px" r="3" id="pin133"/>
            <circle cx="321" cy="365" style="fill:#fff8dc;stroke:#000000;stroke-width:1px" r="3" id="pin135"/>
            <circle cx="308" cy="365" style="fill:#fff8dc;stroke:#000000;stroke-width:1px" r="3" id="pin137"/>
            <circle cx="295" cy="365" style="fill:#fff8dc;stroke:#000000;stroke-width:1px" r="3" id="pin139"/>
            <circle cx="282" cy="365" style="fill:#fff8dc;stroke:#000000;stroke-width:1px" r="3" id="pin141"/>
            <circle cx="269" cy="365" style="fill:#fff8dc;stroke:#000000;stroke-width:1px" r="3" id="pin143"/>
            <circle cx="256" cy="365" style="fill:#fff8dc;stroke:#000000;stroke-width:1px" r="3" id="pin145"/>
            <circle cx="243" cy="365" style="fill:#fff8dc;stroke:#000000;stroke-width:1px" r="3" id="pin147"/>
            <!--PORTS AND TEXT-->
            <rect x="151" y="9" stroke="white" id="sata" style="stroke-width: 1px; vector-effect: non-scaling-stroke;"
                  width="69" height="30" fill="black" rx="0" ry="0"/>
            <text fill="white" x="156" y="27" id="sata_text" style="font-family: serif; font-size: 10px;">SATA DATA
            </text>
            <rect x="504" y="238" stroke="white" id="ethernet"
                  style="stroke-width: 1px; vector-effect: non-scaling-stroke;" width="97" height="98" fill="dimgray"/>
            <text fill="white" x="534" y="288" id="ethernet_text" style="font-family: serif; font-size: 12px;">
                Ethernet
            </text>
            <rect x="150" y="295" stroke="white" id="USB1_USB2"
                  style="stroke-width: 1px; vector-effect: non-scaling-stroke;" width="77" height="104" fill="dimgray"
                  rx="0" ry="0"/>
            <text fill="white" x="158" y="324" id="e64_texte" style="font-family: serif; font-size: 12px;">USB 1</text>
            <text fill="white" x="158" y="343" style="font-family: serif; font-size: 12px;" id="e65_texte" transform="">
                USB 2
            </text>
            <rect x="538" y="176" stroke="white" style="stroke-width: 1px; vector-effect: non-scaling-stroke;"
                  width="62" height="46" fill="dimgray" id="miniUSB" rx="0" ry="0"/>
            <rect x="514" y="124" stroke="white" style="stroke-width: 1px; vector-effect: non-scaling-stroke;"
                  width="108" height="25" rx="0" ry="0" id="audio" fill="black"/>
            <text fill="white" x="543" y="141" id="e69_texte" style="font-family: serif; font-size: 14px;">Audio</text>
            <rect x="27" y="312" stroke="white" style="stroke-width: 1px; vector-effect: non-scaling-stroke;" width="82"
                  height="88" fill="dimgray" id="data_card" rx="0" ry="0"/>
            <text fill="white" x="29" y="350" id="e71_texte" style="font-family: serif; font-size: 14px;">DATA CARD
            </text>
            <rect x="1" y="142" stroke="white" style="stroke-width: 1px; vector-effect: non-scaling-stroke;" width="82"
                  height="88" fill="dimgray" rx="0" ry="0" id="HDMI"/>
            <text fill="white" x="544" y="205" id="e73_texte" style="font-family: serif; font-size: 14px;">miniUSB
            </text>
            <text fill="white" x="17" y="184" id="e74_texte" style="font-family: serif; font-size: 14px;">HDMI</text>
            <rect x="102" y="59" stroke="white" id="sata_power"
                  style="stroke-width: 1px; vector-effect: non-scaling-stroke;" width="28" height="26" fill="white"/>
            <text fill="white" x="85" y="98" id="e76_texte" style="font-family: serif; font-size: 10px;">SATA POWER
            </text>
            <rect x="1" y="75" stroke="white" style="stroke-width: 1px; vector-effect: non-scaling-stroke;" width="23"
                  height="47" fill="white" rx="0" ry="0" id="power_butt"/>
            <text fill="#000000" x="-82" y="-115" id="e79_texte" style="font-family: serif; font-size: 12px;"
                  transform="matrix(0 -1 1 0 133.016 37.4208)">POWER
            </text>
            <rect x="1" y="23" stroke="white" style="stroke-width: 1px; vector-effect: non-scaling-stroke;" width="62"
                  height="46" fill="dimgray" rx="0" ry="0" id="DC5V"/>
            <text fill="#FFFFFF" x="12" y="52" id="e81_texte" style="font-family: serif; font-size: 14px;">DC 5V</text>
            <xsl:apply-templates/>            
        </svg>        
    </xsl:template>
    <xsl:template match="camelContext">     
        <xsl:apply-templates select="route"/>
    </xsl:template>
    <xsl:template match="route">
        <xsl:param name="iters"/>        
        <xsl:apply-templates select="from">
            <xsl:with-param name="iters" select="0"/>
        </xsl:apply-templates>
        <xsl:for-each select="to">
            <xsl:call-template name="to">
                <xsl:with-param name="iters" select="position()"/>
            </xsl:call-template>
        </xsl:for-each>          
    </xsl:template>
    <xsl:template match="from">
        <xsl:param name="iters"/>
        <xsl:variable name="from_uri" select="string(./@uri)"/>
        <xsl:variable name="pin" select="substring-after(substring-before($from_uri,'?'),'//')"/>
        <xsl:element name="rect" namespace="http://www.w3.org/2000/svg">
            <xsl:attribute name="x">150</xsl:attribute>
            <xsl:attribute name="y">140</xsl:attribute>
            <xsl:attribute name="stroke">white</xsl:attribute>
            <xsl:attribute name="id">
                <xsl:value-of select="$iters"/>
            </xsl:attribute>
            <xsl:attribute name="mode">
                <xsl:value-of select="concat('pin',substring-after($pin,'_'))"/>
            </xsl:attribute>
            <xsl:attribute name="style">stroke-width: 1px; vector-effect: non-scaling-stroke;</xsl:attribute>
            <xsl:attribute name="height">40</xsl:attribute>
            <xsl:attribute name="width">60</xsl:attribute>
            <xsl:attribute name="fill">white</xsl:attribute>
        </xsl:element>       
        <xsl:element name="text" namespace="http://www.w3.org/2000/svg">             
            <xsl:attribute name="x">155</xsl:attribute>
            <xsl:attribute name="y">165</xsl:attribute>  
            <xsl:attribute name="style">font-family: serif; font-size: 25px;</xsl:attribute>            
            <xsl:attribute name="fill">black</xsl:attribute>
            <xsl:value-of select="substring-before($from_uri,':')"/>             
        </xsl:element>
        <xsl:choose>
            <xsl:when test="contains($pin,'P1')">
                <xsl:variable name="pinno" select="substring-after($pin,'_')"/>
                <xsl:variable name="pinx" select="$cubieSVG//*[@id=concat('pin',$pinno)]/@cx"/>
                <xsl:variable name="piny" select="$cubieSVG//*[@id=concat('pin',$pinno)]/@cy"/>
                <xsl:element name="polyline" namespace="http://www.w3.org/2000/svg">                    
                    <xsl:attribute name="points">
                        <xsl:value-of select="$pinx"/>,<xsl:value-of select="$piny+5"/>
                        <xsl:text> </xsl:text>
                        <xsl:value-of select="$pinx"/>,<xsl:value-of select="round((140+$piny) div 2)"/>
                        <xsl:text> </xsl:text>
                        <xsl:value-of select="180"/>,<xsl:value-of select="round((140+$piny) div 2)"/>
                        <xsl:text> </xsl:text>
                        <xsl:value-of select="180"/>,<xsl:value-of select="140"/>
                    </xsl:attribute>
                    <xsl:attribute name="style">fill:none;stroke:white;stroke-width:2;marker-end:url(#end-marker);</xsl:attribute>
                    <xsl:attribute name="stroke-dasharray">10,5</xsl:attribute>
                </xsl:element>
                <xsl:element name="text" namespace="http://www.w3.org/2000/svg">             
                    <xsl:attribute name="x">
                        <xsl:value-of select="$cubieSVG//*[@id=concat('pin',$pinno)]/@cx+3"/>
                    </xsl:attribute>
                    <xsl:attribute name="y">52</xsl:attribute>  
                    <xsl:attribute name="style">font-family: serif; font-size: 13px;</xsl:attribute>            
                    <xsl:attribute name="fill">white</xsl:attribute>
                    <xsl:value-of select="$pin"/>             
                </xsl:element>
            </xsl:when>
            <xsl:when test="contains($pin,'P2')">
                <xsl:variable name="pinno" select="substring-after($pin,'_')"/>
                <xsl:variable name="pinx" select="$cubieSVG//*[@id=concat('pin1',$pinno)]/@cx"/>
                <xsl:variable name="piny" select="$cubieSVG//*[@id=concat('pin1',$pinno)]/@cy"/>
                <xsl:choose>
                    <xsl:when test="$pinx&gt;500">
                        <xsl:element name="polyline" namespace="http://www.w3.org/2000/svg">                    
                            <xsl:attribute name="points">
                                <xsl:value-of select="$pinx"/>,<xsl:value-of select="($piny)-5"/>
                                <xsl:text> </xsl:text>
                                <xsl:value-of select="$pinx"/>,<xsl:value-of select="340"/>
                                <xsl:text> </xsl:text>
                                <xsl:value-of select="(180+$pinx)div 2"/>,<xsl:value-of select="340"/>
                                <xsl:text> </xsl:text>
                                <xsl:value-of select="(180+$pinx)div 2"/>,<xsl:value-of select="round((180+$piny) div 2)"/>
                                <xsl:text> </xsl:text>
                                <xsl:value-of select="180"/>,<xsl:value-of select="round((180+$piny) div 2)"/>
                                <xsl:text> </xsl:text>
                                <xsl:value-of select="180"/>,<xsl:value-of select="180"/>
                            </xsl:attribute>
                            <xsl:attribute name="style">fill:none;stroke:white;stroke-width:2;marker-end:url(#end-marker);</xsl:attribute>
                            <xsl:attribute name="stroke-dasharray">10,5</xsl:attribute>
                        </xsl:element>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:element name="polyline" namespace="http://www.w3.org/2000/svg">                    
                            <xsl:attribute name="points">
                                <xsl:value-of select="$pinx"/>,<xsl:value-of select="($piny)-5"/>
                                <xsl:text> </xsl:text>
                                <xsl:value-of select="$pinx"/>,<xsl:value-of select="round((180+$piny) div 2)"/>
                                <xsl:text> </xsl:text>
                                <xsl:value-of select="180"/>,<xsl:value-of select="round((180+$piny) div 2)"/>
                                <xsl:text> </xsl:text>
                                <xsl:value-of select="180"/>,<xsl:value-of select="180"/>
                            </xsl:attribute>
                            <xsl:attribute name="style">fill:none;stroke:white;stroke-width:2;marker-end:url(#end-marker);</xsl:attribute>
                            <xsl:attribute name="stroke-dasharray">10,5</xsl:attribute>
                        </xsl:element>
                    </xsl:otherwise>
                </xsl:choose>           
                
                <xsl:element name="text" namespace="http://www.w3.org/2000/svg">             
                    <xsl:attribute name="x">
                        <xsl:value-of select="$cubieSVG//*[@id=concat('pin1',$pinno)]/@cx+3"/>
                    </xsl:attribute>
                    <xsl:attribute name="y">350</xsl:attribute>  
                    <xsl:attribute name="style">font-family: serif; font-size: 13px;</xsl:attribute>            
                    <xsl:attribute name="fill">white</xsl:attribute>
                    <xsl:value-of select="$pin"/>             
                </xsl:element>
            </xsl:when>           
        </xsl:choose>
    </xsl:template>
    <xsl:template match="to" name="to">
        <xsl:param name="iters"/>
        <xsl:variable name="to_uri" select="string(./@uri)"/>
        <xsl:choose>
            <xsl:when test="$iters&lt;4">
                <xsl:element name="rect" namespace="http://www.w3.org/2000/svg">
                    <xsl:attribute name="x">
                        <xsl:value-of select="$iters*80+150"/>
                    </xsl:attribute>
                    <xsl:attribute name="y">140</xsl:attribute>
                    <xsl:attribute name="stroke">white</xsl:attribute>
                    <xsl:attribute name="id">
                        <xsl:value-of select="$iters"/>
                    </xsl:attribute>
                    <xsl:attribute name="style">stroke-width: 1px; vector-effect: non-scaling-stroke;</xsl:attribute>
                    <xsl:attribute name="height">40</xsl:attribute>
                    <xsl:attribute name="width">60</xsl:attribute>
                    <xsl:attribute name="fill">white</xsl:attribute>
                </xsl:element>        
                <xsl:element name="text" namespace="http://www.w3.org/2000/svg">             
                    <xsl:attribute name="x">
                        <xsl:value-of select="$iters*80+155"/>
                    </xsl:attribute>
                    <xsl:attribute name="y">165</xsl:attribute>  
                    <xsl:attribute name="style">font-family: serif; font-size: 25px;</xsl:attribute>            
                    <xsl:attribute name="fill">black</xsl:attribute>
                    <xsl:value-of select="substring-before($to_uri,':')"/>             
                </xsl:element> 
                <xsl:element name="line" namespace="http://www.w3.org/2000/svg">
                    <xsl:attribute name="x1">
                        <xsl:value-of select="$iters*80+130"/>
                    </xsl:attribute>
                    <xsl:attribute name="x2">
                        <xsl:value-of select="$iters*80+150"/>
                    </xsl:attribute>
                    <xsl:attribute name="y1">160</xsl:attribute>
                    <xsl:attribute name="y2">160</xsl:attribute>
                    <xsl:attribute name="style">stroke:white;stroke-width:2;marker-end:url(#end-marker);</xsl:attribute>
                </xsl:element>
                <xsl:choose>
                    <xsl:when test="contains($to_uri,'localhost')">
                        <xsl:element name="polyline" namespace="http://www.w3.org/2000/svg">                    
                            <xsl:attribute name="points">
                                <xsl:value-of select="$iters*80+210"/>,<xsl:value-of select="160"/>
                                <xsl:text> </xsl:text>
                                <xsl:value-of select="(($iters*80+210)+$ethernetRect/@x)div 2"/>,<xsl:value-of select="160"/>
                                <xsl:text> </xsl:text>
                                <xsl:value-of select="(($iters*80+210)+$ethernetRect/@x)div 2"/>,<xsl:value-of select="$ethernetRect/@y+$ethernetRect/@height*0.5"/>
                                <xsl:text> </xsl:text>
                                <xsl:value-of select="$ethernetRect/@x"/>,<xsl:value-of select="$ethernetRect/@y+$ethernetRect/@height*0.5"/>
                            </xsl:attribute>
                            <xsl:attribute name="style">fill:none;stroke:white;stroke-width:2;marker-end:url(#end-marker);</xsl:attribute>
                            <xsl:attribute name="stroke-dasharray">10,5</xsl:attribute>
                        </xsl:element>
                    </xsl:when>
                    <xsl:when test="contains($to_uri,'miniUSB')">
                        <xsl:element name="polyline" namespace="http://www.w3.org/2000/svg">                    
                            <xsl:attribute name="points">
                                <xsl:value-of select="$iters*80+210"/>,<xsl:value-of select="160"/>
                                <xsl:text> </xsl:text>
                                <xsl:value-of select="(($iters*80+210)+$miniUSBRect/@x)div 2"/>,<xsl:value-of select="160"/>
                                <xsl:text> </xsl:text>
                                <xsl:value-of select="(($iters*80+210)+$miniUSBRect/@x)div 2"/>,<xsl:value-of select="$miniUSBRect/@y+$miniUSBRect/@height*0.5"/>
                                <xsl:text> </xsl:text>
                                <xsl:value-of select="$miniUSBRect/@x"/>,<xsl:value-of select="$miniUSBRect/@y+$miniUSBRect/@height*0.5"/>
                            </xsl:attribute>
                            <xsl:attribute name="style">fill:none;stroke:white;stroke-width:2;marker-end:url(#end-marker);</xsl:attribute>
                            <xsl:attribute name="stroke-dasharray">10,5</xsl:attribute>
                        </xsl:element>
                    </xsl:when>
                    <xsl:when test="contains($to_uri,'audio')">
                        <xsl:element name="polyline" namespace="http://www.w3.org/2000/svg">                    
                            <xsl:attribute name="points">
                                <xsl:value-of select="$iters*80+210"/>,<xsl:value-of select="160"/>
                                <xsl:text> </xsl:text>
                                <xsl:value-of select="(($iters*80+210)+$audioRect/@x)div 2"/>,<xsl:value-of select="160"/>
                                <xsl:text> </xsl:text>
                                <xsl:value-of select="(($iters*80+210)+$audioRect/@x)div 2"/>,<xsl:value-of select="$audioRect/@y+$audioRect/@height*0.5"/>
                                <xsl:text> </xsl:text>
                                <xsl:value-of select="$audioRect/@x"/>,<xsl:value-of select="$audioRect/@y+$audioRect/@height*0.5"/>
                            </xsl:attribute>
                            <xsl:attribute name="style">fill:none;stroke:white;stroke-width:2;marker-end:url(#end-marker);</xsl:attribute>
                            <xsl:attribute name="stroke-dasharray">10,5</xsl:attribute>
                        </xsl:element>
                    </xsl:when> 
                    <xsl:when test="contains($to_uri,'USB1')">
                        <xsl:element name="polyline" namespace="http://www.w3.org/2000/svg">                    
                            <xsl:attribute name="points">
                                <xsl:value-of select="$iters*80+210"/>,<xsl:value-of select="160"/>
                                <xsl:text> </xsl:text>
                                <xsl:value-of select="$iters*80+250"/>,<xsl:value-of select="160"/>
                                <xsl:text> </xsl:text>
                                <xsl:value-of select="$iters*80+250"/>,<xsl:value-of select="($USBRect/@y+160)div 2"/>
                                <xsl:text> </xsl:text>
                                <xsl:value-of select="$USBRect/@x+$USBRect/@width*0.5"/>,<xsl:value-of select="($USBRect/@y+160)div 2"/>
                                <xsl:text> </xsl:text>
                                <xsl:value-of select="$USBRect/@x+$USBRect/@width*0.5"/>,<xsl:value-of select="$USBRect/@y"/>
                            </xsl:attribute>
                            <xsl:attribute name="style">fill:none;stroke:white;stroke-width:2;marker-end:url(#end-marker);</xsl:attribute>
                            <xsl:attribute name="stroke-dasharray">10,5</xsl:attribute>
                        </xsl:element>
                    </xsl:when>
                    <xsl:when test="contains($to_uri,'USB2')">
                        <xsl:element name="polyline" namespace="http://www.w3.org/2000/svg">                    
                            <xsl:attribute name="points">
                                <xsl:value-of select="$iters*80+210"/>,<xsl:value-of select="160"/>
                                <xsl:text> </xsl:text>
                                <xsl:value-of select="$iters*80+250"/>,<xsl:value-of select="160"/>
                                <xsl:text> </xsl:text>
                                <xsl:value-of select="$iters*80+250"/>,<xsl:value-of select="($USBRect/@y+160)div 2"/>
                                <xsl:text> </xsl:text>
                                <xsl:value-of select="$USBRect/@x+$USBRect/@width*0.5"/>,<xsl:value-of select="($USBRect/@y+160)div 2"/>
                                <xsl:text> </xsl:text>
                                <xsl:value-of select="$USBRect/@x+$USBRect/@width*0.5"/>,<xsl:value-of select="$USBRect/@y"/>
                            </xsl:attribute>
                            <xsl:attribute name="style">fill:none;stroke:white;stroke-width:2;marker-end:url(#end-marker);</xsl:attribute>
                            <xsl:attribute name="stroke-dasharray">10,5</xsl:attribute>
                        </xsl:element>
                    </xsl:when> 
                </xsl:choose>
            </xsl:when>
            <xsl:otherwise>
                <xsl:param name="iter" select="($iters)-3"/>
                <xsl:element name="rect" namespace="http://www.w3.org/2000/svg">
                    <xsl:attribute name="x">
                        <xsl:value-of select="$iter*80+150"/>
                    </xsl:attribute>
                    <xsl:attribute name="y">200</xsl:attribute>
                    <xsl:attribute name="stroke">white</xsl:attribute>
                    <xsl:attribute name="id">
                        <xsl:value-of select="$iters"/>
                    </xsl:attribute>
                    <xsl:attribute name="style">stroke-width: 1px; vector-effect: non-scaling-stroke;</xsl:attribute>
                    <xsl:attribute name="height">40</xsl:attribute>
                    <xsl:attribute name="width">60</xsl:attribute>
                    <xsl:attribute name="fill">white</xsl:attribute>
                </xsl:element>        
                <xsl:element name="text" namespace="http://www.w3.org/2000/svg">             
                    <xsl:attribute name="x">
                        <xsl:value-of select="$iter*80+155"/>
                    </xsl:attribute>
                    <xsl:attribute name="y">225</xsl:attribute>  
                    <xsl:attribute name="style">font-family: serif; font-size: 25px;</xsl:attribute>            
                    <xsl:attribute name="fill">black</xsl:attribute>
                    <xsl:value-of select="substring-before($to_uri,':')"/>             
                </xsl:element>
                <xsl:choose>
                    <xsl:when test="$iters=4">
                        <xsl:element name="polyline" namespace="http://www.w3.org/2000/svg">                    
                            <xsl:attribute name="points">
                                <xsl:value-of select="$iters*80+130"/>,<xsl:value-of select="160"/>
                                <xsl:text> </xsl:text>
                                <xsl:value-of select="$iters*80+170"/>,<xsl:value-of select="160"/>
                                <xsl:text> </xsl:text>
                                <xsl:value-of select="$iters*80+170"/>,<xsl:value-of select="190"/>
                                <xsl:text> </xsl:text>
                                <xsl:value-of select="$iter*80+130"/>,<xsl:value-of select="190"/>
                                <xsl:text> </xsl:text>
                                <xsl:value-of select="$iter*80+130"/>,<xsl:value-of select="220"/>
                                <xsl:text> </xsl:text>
                                <xsl:value-of select="$iter*80+150"/>,<xsl:value-of select="220"/>
                            </xsl:attribute>
                            <xsl:attribute name="style">fill:none;stroke:white;stroke-width:2;marker-end:url(#end-marker);</xsl:attribute>
                        </xsl:element>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:element name="line" namespace="http://www.w3.org/2000/svg">
                            <xsl:attribute name="x1">
                                <xsl:value-of select="$iter*80+130"/>
                            </xsl:attribute>
                            <xsl:attribute name="x2">
                                <xsl:value-of select="$iter*80+150"/>
                            </xsl:attribute>
                            <xsl:attribute name="y1">220</xsl:attribute>
                            <xsl:attribute name="y2">220</xsl:attribute>
                            <xsl:attribute name="style">stroke:white;stroke-width:2;marker-end:url(#end-marker);</xsl:attribute>
                        </xsl:element>
                    </xsl:otherwise>
                </xsl:choose>                
                <xsl:choose>
                    <xsl:when test="contains($to_uri,'localhost')">
                        <xsl:element name="polyline" namespace="http://www.w3.org/2000/svg">                    
                            <xsl:attribute name="points">
                                <xsl:value-of select="$iter*80+210"/>,<xsl:value-of select="220"/>
                                <xsl:text> </xsl:text>
                                <xsl:value-of select="(($iter*80+210)+$ethernetRect/@x)div 2"/>,<xsl:value-of select="220"/>
                                <xsl:text> </xsl:text>
                                <xsl:value-of select="(($iter*80+210)+$ethernetRect/@x)div 2"/>,<xsl:value-of select="$ethernetRect/@y+$ethernetRect/@height*0.5"/>
                                <xsl:text> </xsl:text>
                                <xsl:value-of select="$ethernetRect/@x"/>,<xsl:value-of select="$ethernetRect/@y+$ethernetRect/@height*0.5"/>
                            </xsl:attribute>
                            <xsl:attribute name="style">fill:none;stroke:white;stroke-width:2;marker-end:url(#end-marker);</xsl:attribute>
                            <xsl:attribute name="stroke-dasharray">10,5</xsl:attribute>
                        </xsl:element>
                    </xsl:when>
                    <xsl:when test="contains($to_uri,'miniUSB')">
                        <xsl:element name="polyline" namespace="http://www.w3.org/2000/svg">                    
                            <xsl:attribute name="points">
                                <xsl:value-of select="$iter*80+210"/>,<xsl:value-of select="220"/>
                                <xsl:text> </xsl:text>
                                <xsl:value-of select="(($iter*80+210)+$miniUSBRect/@x)div 2"/>,<xsl:value-of select="220"/>
                                <xsl:text> </xsl:text>
                                <xsl:value-of select="(($iter*80+210)+$miniUSBRect/@x)div 2"/>,<xsl:value-of select="$miniUSBRect/@y+$miniUSBRect/@height*0.5"/>
                                <xsl:text> </xsl:text>
                                <xsl:value-of select="$miniUSBRect/@x"/>,<xsl:value-of select="$miniUSBRect/@y+$miniUSBRect/@height*0.5"/>
                            </xsl:attribute>
                            <xsl:attribute name="style">fill:none;stroke:white;stroke-width:2;marker-end:url(#end-marker);</xsl:attribute>
                            <xsl:attribute name="stroke-dasharray">10,5</xsl:attribute>
                        </xsl:element>
                    </xsl:when>
                    <xsl:when test="contains($to_uri,'audio')">
                        <xsl:element name="polyline" namespace="http://www.w3.org/2000/svg">                    
                            <xsl:attribute name="points">
                                <xsl:value-of select="$iter*80+210"/>,<xsl:value-of select="220"/>
                                <xsl:text> </xsl:text>
                                <xsl:value-of select="(($iter*80+210)+$audioRect/@x)div 2"/>,<xsl:value-of select="220"/>
                                <xsl:text> </xsl:text>
                                <xsl:value-of select="(($iter*80+210)+$audioRect/@x)div 2"/>,<xsl:value-of select="$audioRect/@y+$audioRect/@height*0.5"/>
                                <xsl:text> </xsl:text>
                                <xsl:value-of select="$audioRect/@x"/>,<xsl:value-of select="$audioRect/@y+$audioRect/@height*0.5"/>
                            </xsl:attribute>
                            <xsl:attribute name="style">fill:none;stroke:white;stroke-width:2;marker-end:url(#end-marker);</xsl:attribute>
                            <xsl:attribute name="stroke-dasharray">10,5</xsl:attribute>
                        </xsl:element>
                    </xsl:when> 
                    <xsl:when test="contains($to_uri,'USB1')">
                        <xsl:element name="polyline" namespace="http://www.w3.org/2000/svg">                    
                            <xsl:attribute name="points">
                                <xsl:value-of select="$iter*80+210"/>,<xsl:value-of select="220"/>
                                <xsl:text> </xsl:text>
                                <xsl:value-of select="$iter*80+250"/>,<xsl:value-of select="220"/>
                                <xsl:text> </xsl:text>
                                <xsl:value-of select="$iter*80+250"/>,<xsl:value-of select="($USBRect/@y+220)div 2"/>
                                <xsl:text> </xsl:text>
                                <xsl:value-of select="$USBRect/@x+$USBRect/@width*0.5"/>,<xsl:value-of select="($USBRect/@y+220)div 2"/>
                                <xsl:text> </xsl:text>
                                <xsl:value-of select="$USBRect/@x+$USBRect/@width*0.5"/>,<xsl:value-of select="$USBRect/@y"/>
                            </xsl:attribute>
                            <xsl:attribute name="style">fill:none;stroke:white;stroke-width:2;marker-end:url(#end-marker);</xsl:attribute>
                            <xsl:attribute name="stroke-dasharray">10,5</xsl:attribute>
                        </xsl:element>
                    </xsl:when>
                    <xsl:when test="contains($to_uri,'USB2')">
                        <xsl:element name="polyline" namespace="http://www.w3.org/2000/svg">                    
                            <xsl:attribute name="points">
                                <xsl:value-of select="$iter*80+210"/>,<xsl:value-of select="220"/>
                                <xsl:text> </xsl:text>
                                <xsl:value-of select="$iter*80+250"/>,<xsl:value-of select="220"/>
                                <xsl:text> </xsl:text>
                                <xsl:value-of select="$iter*80+250"/>,<xsl:value-of select="($USBRect/@y+220)div 2"/>
                                <xsl:text> </xsl:text>
                                <xsl:value-of select="$USBRect/@x+$USBRect/@width*0.5"/>,<xsl:value-of select="($USBRect/@y+220)div 2"/>
                                <xsl:text> </xsl:text>
                                <xsl:value-of select="$USBRect/@x+$USBRect/@width*0.5"/>,<xsl:value-of select="$USBRect/@y"/>
                            </xsl:attribute>
                            <xsl:attribute name="style">fill:none;stroke:white;stroke-width:2;marker-end:url(#end-marker);</xsl:attribute>
                            <xsl:attribute name="stroke-dasharray">10,5</xsl:attribute>
                        </xsl:element>
                    </xsl:when> 
                </xsl:choose>
            </xsl:otherwise> 
        </xsl:choose>
    </xsl:template>
</xsl:stylesheet>
