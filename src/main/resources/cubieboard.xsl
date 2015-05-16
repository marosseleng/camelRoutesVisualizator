<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"
                xmlns="http://www.w3.org/1999/xhtml">
    <xsl:output method="xml"
                doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN"
                doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"
                encoding="UTF-8"
                indent="yes"/>
    <xsl:template match="/">
        <svg xmlns="http://www.w3.org/2000/svg" width="100%" height="100%" viewBox="0 0 1200 800"
             preserveAspectRatio="xMidYMid meet" zoomAndPan="disable" transform="" id="svg2" version="1.1">
            <defs id="svgEditorDefs">
                <polygon id="svgEditorPolygonDefs" stroke="black" fill="khaki"
                         style="vector-effect: non-scaling-stroke; stroke-width: 1px;"/>
                <text id="svgEditorTextDefs" fill="black" style="font-family: Arial; font-size: 20px;"/>
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
                  width="62" height="46" fill="dimgray" id="e67_rect" rx="0" ry="0"/>
            <rect x="514" y="124" stroke="white" style="stroke-width: 1px; vector-effect: non-scaling-stroke;"
                  width="108" height="25" rx="0" ry="0" id="audio" fill="black"/>
            <text fill="white" x="543" y="141" id="e69_texte" style="font-family: serif; font-size: 14px;">Audio</text>
            <rect x="27" y="312" stroke="white" style="stroke-width: 1px; vector-effect: non-scaling-stroke;" width="82"
                  height="88" fill="dimgray" id="data_card" rx="0" ry="0"/>
            <text fill="white" x="29" y="350" id="e71_texte" style="font-family: serif; font-size: 14px;">DATA CARD
            </text>
            <rect x="1" y="142" stroke="white" style="stroke-width: 1px; vector-effect: non-scaling-stroke;" width="82"
                  height="88" fill="dimgray" rx="0" ry="0" id="e72_card"/>
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
                  height="46" fill="dimgray" rx="0" ry="0" id="e80_rect"/>
            <text fill="#FFFFFF" x="12" y="52" id="e81_texte" style="font-family: serif; font-size: 14px;">DC 5V</text>
        </svg>
    </xsl:template>
</xsl:stylesheet>
