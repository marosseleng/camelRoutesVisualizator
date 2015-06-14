<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"
                xmlns="http://www.w3.org/1999/xhtml">
    <xsl:output method="xml"
                doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN"
                doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"
                encoding="UTF-8"
                indent="yes"
    />
    
 <xsl:template match="/">
 <!-- Board -->
 <svg xmlns="http://www.w3.org/2000/svg">
<!-- main board -->
<rect x="0" y="0" rx="70" ry="70" width="750" height="410" style="fill:black;stroke:grey;stroke-width:5;" />
<circle cx="160" cy="30" r="20" stroke="orange" stroke-width="3" fill="white" />
<circle cx="720" cy="50" r="20" stroke="orange" stroke-width="3" fill="white" />
<circle cx="160" cy="370" r="20" stroke="orange" stroke-width="3" fill="white" />
<circle cx="720" cy="360" r="20" stroke="orange" stroke-width="3" fill="white" />
<rect x="630" y="225" width="130" height="110" style="fill:rgb(25,25,25);stroke-width:3;stroke:rgb(50,50,50)" />
<rect x="-10" y="260" width="150" height="80" style="fill:rgb(25,25,25);stroke-width:3;stroke:rgb(50,50,50)" />
<rect x="-10" y="110" width="150" height="110" style="fill:rgb(25,25,25);stroke-width:3;stroke:rgb(50,50,50)" />
<rect x="750" y="160" width="20" height="50" style="fill:rgb(25,25,25);stroke-width:3;stroke:rgb(50,50,50)" />
<rect x="750" y="70" width="15" height="85" style="fill:rgb(25,25,25);stroke-width:3;stroke:rgb(50,50,50)" />
<text x="20" y="170" fill="white">10/100 Ethernet</text>

<text x="700" y="120" fill="white">uSD</text>
<text x="660" y="185" fill="white">microHDMI</text>

<text x="55" y="305" fill="white">5V</text>
<text x="640" y="270" fill="white" transform="rotate(90 655,255)">USB Host</text>
<polygon points="760,240 760,260 660,270 730,257 730,243 660,230" style="fill:silver;stroke:grey;stroke-width:1" />
<polygon points="760,300 760,320 660,330 730,317 730,303 660,290" style="fill:silver;stroke:grey;stroke-width:1" />
<!-- P8 pins -->
  <text x="170" y="10" fill="white">P8</text>
    <!-- P8 pins first line 2,4,6,..46-->
      <text x="200" y="10" fill="white">2</text>
      <text x="220" y="10" fill="white">4</text>
      <text x="640" y="10" fill="white">46 </text>
      <rect x="220" y="20" width="10" height="10" style="fill:black;stroke-width:4;stroke-style:outset;stroke:grey;" />
      <rect x="240" y="20" width="10" height="10" style="fill:black;stroke-width:4;stroke-style:outset;stroke:grey;" />
      <rect x="260" y="20" width="10" height="10" style="fill:black;stroke-width:4;stroke-style:outset;stroke:grey;" />
      <rect x="280" y="20" width="10" height="10" style="fill:black;stroke-width:4;stroke-style:outset;stroke:grey;" />
      <rect x="300" y="20" width="10" height="10" style="fill:black;stroke-width:4;stroke-style:outset;stroke:grey;" />
      <rect x="320" y="20" width="10" height="10" style="fill:black;stroke-width:4;stroke-style:outset;stroke:grey;" />
      <rect x="340" y="20" width="10" height="10" style="fill:black;stroke-width:4;stroke-style:outset;stroke:grey;" />
      <rect x="360" y="20" width="10" height="10" style="fill:black;stroke-width:4;stroke-style:outset;stroke:grey;" />
      <rect x="380" y="20" width="10" height="10" style="fill:black;stroke-width:4;stroke-style:outset;stroke:grey;" />
      <rect x="400" y="20" width="10" height="10" style="fill:black;stroke-width:4;stroke-style:outset;stroke:grey;" />
      <rect x="420" y="20" width="10" height="10" style="fill:black;stroke-width:4;stroke-style:outset;stroke:grey;" />
      <rect x="440" y="20" width="10" height="10" style="fill:black;stroke-width:4;stroke-style:outset;stroke:grey;" />
      <rect x="460" y="20" width="10" height="10" style="fill:black;stroke-width:4;stroke-style:outset;stroke:grey;" />
      <rect x="480" y="20" width="10" height="10" style="fill:black;stroke-width:4;stroke-style:outset;stroke:grey;" />
      <rect x="500" y="20" width="10" height="10" style="fill:black;stroke-width:4;stroke-style:outset;stroke:grey;" />
      <rect x="520" y="20" width="10" height="10" style="fill:black;stroke-width:4;stroke-style:outset;stroke:grey;" />
      <rect x="540" y="20" width="10" height="10" style="fill:black;stroke-width:4;stroke-style:outset;stroke:grey;" />
      <rect x="560" y="20" width="10" height="10" style="fill:black;stroke-width:4;stroke-style:outset;stroke:grey;" />
      <rect x="580" y="20" width="10" height="10" style="fill:black;stroke-width:4;stroke-style:outset;stroke:grey;" />
      <rect x="600" y="20" width="10" height="10" style="fill:black;stroke-width:4;stroke-style:outset;stroke:grey;" />
      <rect x="620" y="20" width="10" height="10" style="fill:black;stroke-width:4;stroke-style:outset;stroke:grey;" />
      <rect x="640" y="20" width="10" height="10" style="fill:black;stroke-width:4;stroke-style:outset;stroke:grey;" />
      <rect x="200" y="20" width="10" height="10" style="fill:black;stroke-width:4;stroke-style:outset;stroke:grey;" />
    <!-- P8 pins second line 1,3,5,..45-->
      <text x="200" y="70" fill="white">1</text>
      <text x="220" y="70" fill="white">3</text>
       <text x="640" y="70" fill="white">45 </text>
      <rect x="220" y="40" width="10" height="10" style="fill:black;stroke-width:4;stroke-style:outset;stroke:grey;" />
      <rect x="240" y="40" width="10" height="10" style="fill:black;stroke-width:4;stroke-style:outset;stroke:grey;" />
      <rect x="260" y="40" width="10" height="10" style="fill:black;stroke-width:4;stroke-style:outset;stroke:grey;" />
      <rect x="280" y="40" width="10" height="10" style="fill:black;stroke-width:4;stroke-style:outset;stroke:grey;" />
      <rect x="300" y="40" width="10" height="10" style="fill:black;stroke-width:4;stroke-style:outset;stroke:grey;" />
      <rect x="320" y="40" width="10" height="10" style="fill:black;stroke-width:4;stroke-style:outset;stroke:grey;" />
      <rect x="340" y="40" width="10" height="10" style="fill:black;stroke-width:4;stroke-style:outset;stroke:grey;" />
      <rect x="360" y="40" width="10" height="10" style="fill:black;stroke-width:4;stroke-style:outset;stroke:grey;" />
      <rect x="380" y="40" width="10" height="10" style="fill:black;stroke-width:4;stroke-style:outset;stroke:grey;" />
      <rect x="400" y="40" width="10" height="10" style="fill:black;stroke-width:4;stroke-style:outset;stroke:grey;" />
      <rect x="420" y="40" width="10" height="10" style="fill:black;stroke-width:4;stroke-style:outset;stroke:grey;" />
      <rect x="440" y="40" width="10" height="10" style="fill:black;stroke-width:4;stroke-style:outset;stroke:grey;" />
      <rect x="460" y="40" width="10" height="10" style="fill:black;stroke-width:4;stroke-style:outset;stroke:grey;" />
      <rect x="480" y="40" width="10" height="10" style="fill:black;stroke-width:4;stroke-style:outset;stroke:grey;" />
      <rect x="500" y="40" width="10" height="10" style="fill:black;stroke-width:4;stroke-style:outset;stroke:grey;" />
      <rect x="520" y="40" width="10" height="10" style="fill:black;stroke-width:4;stroke-style:outset;stroke:grey;" />
      <rect x="540" y="40" width="10" height="10" style="fill:black;stroke-width:4;stroke-style:outset;stroke:grey;" />
      <rect x="560" y="40" width="10" height="10" style="fill:black;stroke-width:4;stroke-style:outset;stroke:grey;" />
      <rect x="580" y="40" width="10" height="10" style="fill:black;stroke-width:4;stroke-style:outset;stroke:grey;" />
      <rect x="600" y="40" width="10" height="10" style="fill:black;stroke-width:4;stroke-style:outset;stroke:grey;" />
      <rect x="620" y="40" width="10" height="10" style="fill:black;stroke-width:4;stroke-style:outset;stroke:grey;" />
      <rect x="640" y="40" width="10" height="10" style="fill:black;stroke-width:4;stroke-style:outset;stroke:grey;" />
      <rect x="200" y="40" width="10" height="10" style="fill:black;stroke-width:4;stroke-style:outset;stroke:grey;" />  
<!-- P9 pins -->
  <text x="170" y="350" fill="white">P9</text>
    <!-- P9 pins first line 2,4,6,..46-->
      <text x="200" y="350" fill="white">2</text>
      <text x="220" y="350" fill="white">4</text>
      <text x="640" y="350" fill="white">46 </text>
      <rect x="220" y="360" width="10" height="10" style="fill:black;stroke-width:4;stroke-style:outset;stroke:grey;" />
      <rect x="240" y="360" width="10" height="10" style="fill:black;stroke-width:4;stroke-style:outset;stroke:grey;" />
      <rect x="260" y="360" width="10" height="10" style="fill:black;stroke-width:4;stroke-style:outset;stroke:grey;" />
      <rect x="280" y="360" width="10" height="10" style="fill:black;stroke-width:4;stroke-style:outset;stroke:grey;" />
      <rect x="300" y="360" width="10" height="10" style="fill:black;stroke-width:4;stroke-style:outset;stroke:grey;" />
      <rect x="320" y="360" width="10" height="10" style="fill:black;stroke-width:4;stroke-style:outset;stroke:grey;" />
      <rect x="340" y="360" width="10" height="10" style="fill:black;stroke-width:4;stroke-style:outset;stroke:grey;" />
      <rect x="360" y="360" width="10" height="10" style="fill:black;stroke-width:4;stroke-style:outset;stroke:grey;" />
      <rect x="380" y="360" width="10" height="10" style="fill:black;stroke-width:4;stroke-style:outset;stroke:grey;" />
      <rect x="400" y="360" width="10" height="10" style="fill:black;stroke-width:4;stroke-style:outset;stroke:grey;" />
      <rect x="420" y="360" width="10" height="10" style="fill:black;stroke-width:4;stroke-style:outset;stroke:grey;" />
      <rect x="440" y="360" width="10" height="10" style="fill:black;stroke-width:4;stroke-style:outset;stroke:grey;" />
      <rect x="460" y="360" width="10" height="10" style="fill:black;stroke-width:4;stroke-style:outset;stroke:grey;" />
      <rect x="480" y="360" width="10" height="10" style="fill:black;stroke-width:4;stroke-style:outset;stroke:grey;" />
      <rect x="500" y="360" width="10" height="10" style="fill:black;stroke-width:4;stroke-style:outset;stroke:grey;" />
      <rect x="520" y="360" width="10" height="10" style="fill:black;stroke-width:4;stroke-style:outset;stroke:grey;" />
      <rect x="540" y="360" width="10" height="10" style="fill:black;stroke-width:4;stroke-style:outset;stroke:grey;" />
      <rect x="560" y="360" width="10" height="10" style="fill:black;stroke-width:4;stroke-style:outset;stroke:grey;" />
      <rect x="580" y="360" width="10" height="10" style="fill:black;stroke-width:4;stroke-style:outset;stroke:grey;" />
      <rect x="600" y="360" width="10" height="10" style="fill:black;stroke-width:4;stroke-style:outset;stroke:grey;" />
      <rect x="620" y="360" width="10" height="10" style="fill:black;stroke-width:4;stroke-style:outset;stroke:grey;" />
      <rect x="640" y="360" width="10" height="10" style="fill:black;stroke-width:4;stroke-style:outset;stroke:grey;" />
      <rect x="200" y="360" width="10" height="10" style="fill:black;stroke-width:4;stroke-style:outset;stroke:grey;" />
    <!-- P9 pins second line 1,3,5,..45-->
      <text x="200" y="410" fill="white">1</text>
      <text x="220" y="410" fill="white">3</text>
      <text x="640" y="410" fill="white">45 </text>
      <rect x="220" y="380" width="10" height="10" style="fill:black;stroke-width:4;stroke-style:outset;stroke:grey;" />
      <rect x="240" y="380" width="10" height="10" style="fill:black;stroke-width:4;stroke-style:outset;stroke:grey;" />
      <rect x="260" y="380" width="10" height="10" style="fill:black;stroke-width:4;stroke-style:outset;stroke:grey;" />
      <rect x="280" y="380" width="10" height="10" style="fill:black;stroke-width:4;stroke-style:outset;stroke:grey;" />
      <rect x="300" y="380" width="10" height="10" style="fill:black;stroke-width:4;stroke-style:outset;stroke:grey;" />
      <rect x="320" y="380" width="10" height="10" style="fill:black;stroke-width:4;stroke-style:outset;stroke:grey;" />
      <rect x="340" y="380" width="10" height="10" style="fill:black;stroke-width:4;stroke-style:outset;stroke:grey;" />
      <rect x="360" y="380" width="10" height="10" style="fill:black;stroke-width:4;stroke-style:outset;stroke:grey;" />
      <rect x="380" y="380" width="10" height="10" style="fill:black;stroke-width:4;stroke-style:outset;stroke:grey;" />
      <rect x="400" y="380" width="10" height="10" style="fill:black;stroke-width:4;stroke-style:outset;stroke:grey;" />
      <rect x="420" y="380" width="10" height="10" style="fill:black;stroke-width:4;stroke-style:outset;stroke:grey;" />
      <rect x="440" y="380" width="10" height="10" style="fill:black;stroke-width:4;stroke-style:outset;stroke:grey;" />
      <rect x="460" y="380" width="10" height="10" style="fill:black;stroke-width:4;stroke-style:outset;stroke:grey;" />
      <rect x="480" y="380" width="10" height="10" style="fill:black;stroke-width:4;stroke-style:outset;stroke:grey;" />
      <rect x="500" y="380" width="10" height="10" style="fill:black;stroke-width:4;stroke-style:outset;stroke:grey;" />
      <rect x="520" y="380" width="10" height="10" style="fill:black;stroke-width:4;stroke-style:outset;stroke:grey;" />
      <rect x="540" y="380" width="10" height="10" style="fill:black;stroke-width:4;stroke-style:outset;stroke:grey;" />
      <rect x="560" y="380" width="10" height="10" style="fill:black;stroke-width:4;stroke-style:outset;stroke:grey;" />
      <rect x="580" y="380" width="10" height="10" style="fill:black;stroke-width:4;stroke-style:outset;stroke:grey;" />
      <rect x="600" y="380" width="10" height="10" style="fill:black;stroke-width:4;stroke-style:outset;stroke:grey;" />
      <rect x="620" y="380" width="10" height="10" style="fill:black;stroke-width:4;stroke-style:outset;stroke:grey;" />
      <rect x="640" y="380" width="10" height="10" style="fill:black;stroke-width:4;stroke-style:outset;stroke:grey;" />
      <rect x="200" y="380" width="10" height="10" style="fill:black;stroke-width:4;stroke-style:outset;stroke:grey;" />     
 <!-- /Board  -->
 <!-- xslt -->
            <xsl:variable name="pinNumber" select="substring-after(substring-before(string(beans/camelContext/route/from/@uri),'?'),'_')"/>
            <xsl:text><xsl:value-of select="$pinNumber"/></xsl:text>
            <!--Lines-->
            <xsl:choose>               
                    <xsl:when test="contains(beans/camelContext/route/from/@uri, 'P8')"><!-- gpio --> 
                        <xsl:choose>
                            <xsl:when test="($pinNumber mod 2) = 0">
                                <polyline points="" style="fill:none;stroke:white;stroke-width:3">
                                    <xsl:attribute name="points">
                                        <xsl:value-of select="concat($pinNumber*10+195-10,',25',' ',$pinNumber*10+195-10,',100',' ','160,100',' ','160,200',' ','200,200')" />
                                    </xsl:attribute> 
                                </polyline>        
                            </xsl:when>
                            <xsl:when test="($pinNumber mod 2) = 1">  
                                <polyline points="" style="fill:none;stroke:white;stroke-width:3">
                                    <xsl:attribute name="points">
                                        <xsl:value-of select="concat($pinNumber*10+195,',45',' ',$pinNumber*10+195,',100',' ','160,100',' ','160,200',' ','200,200')" />
                                    </xsl:attribute> 
                                </polyline>    
                            </xsl:when>
                            <xsl:otherwise>Error 0</xsl:otherwise>
                        </xsl:choose>  
                    </xsl:when>
                    <xsl:when test="contains(beans/camelContext/route/from/@uri, 'P9')"><!-- bean -->
                        <xsl:choose>
                            <xsl:when test="($pinNumber mod 2) = 0">
                                <polyline points="" style="fill:none;stroke:white;stroke-width:3">
                                    <xsl:attribute name="points">
                                        <xsl:value-of select="concat($pinNumber*10+195-10,',365',' ',$pinNumber*10+195-10,',280',' ','160,280',' ','160,200',' ','200,200')" />
                                    </xsl:attribute> 
                                </polyline>         
                            </xsl:when>
                            <xsl:when test="($pinNumber mod 2) = 1">
                                <polyline points="" style="fill:none;stroke:white;stroke-width:3">
                                    <xsl:attribute name="points">
                                        <xsl:value-of select="concat($pinNumber*10+195,',385',' ',$pinNumber*10+195,',280',' ','160,280',' ','160,200',' ','200,200')" />
                                    </xsl:attribute> 
                                </polyline>          
                            </xsl:when>
                            <xsl:otherwise>Error 1</xsl:otherwise>
                        </xsl:choose>  
                    </xsl:when>                
                    <xsl:otherwise>Error 2</xsl:otherwise>
            </xsl:choose>
            <!--output line-->
            <xsl:choose>
                <xsl:when test="contains(beans/camelContext/route/to[last()]/@uri, 'localhost')">
                    <polyline points="" style="fill:none;stroke:white;stroke-width:3">
                        <xsl:attribute name="points">
                            <xsl:value-of select="concat('200,200',' ','600,200',' ','600,250',' ','50,250',' ','50,220')" />
                        </xsl:attribute> 
                    </polyline>   
                    <polyline points="" style="fill:white;stroke:grey;stroke-width:2">
                        <xsl:attribute name="points">
                            <xsl:value-of select="concat('50,220',' ','60,240',' ','40,240',' ','50,220')" />
                        </xsl:attribute> 
                    </polyline>  
                </xsl:when>
                <xsl:when test="contains(beans/camelContext/route/to[last()]/@uri, 'USB')">
                    <polyline points="" style="fill:none;stroke:white;stroke-width:3">
                        <xsl:attribute name="points">
                            <xsl:value-of select="concat('200,200',' ','600,200',' ','600,280',' ','630,280')" />
                        </xsl:attribute> 
                    </polyline>  
                    <polyline points="" style="fill:white;stroke:grey;stroke-width:2">
                        <xsl:attribute name="points">
                            <xsl:value-of select="concat('630,280',' ','610,290',' ','610,270',' ','630,280')" />
                        </xsl:attribute> 
                    </polyline>  
                </xsl:when>
                <xsl:otherwise>Error</xsl:otherwise>
            </xsl:choose> 
            <!--Components-->
            <xsl:for-each select="beans/camelContext/route/to">
                <xsl:choose>
                    <xsl:when test="contains(@uri, 'gpio')"><!-- gpio -->
                        <rect x="0" y="160" rx="5" ry="5" width="100" height="75"
                            style="fill:white;stroke:gray;stroke-width:5;" >
                            <xsl:attribute name="x">
                                <xsl:value-of select="position()*140+60" />
                            </xsl:attribute>
                        </rect>
                        <line x1="0" y1="200" x2="200" y2="200" style="stroke:white;stroke-width:2">
                            <xsl:attribute name="x1">
                                <xsl:value-of select="position()*140+60" />
                            </xsl:attribute>
                            <xsl:attribute name="x2">
                                <xsl:value-of select="position()*140+20" />
                            </xsl:attribute>
                        </line>  
                        <polyline points="" style="fill:white;stroke:grey;stroke-width:2">
                            <xsl:attribute name="points">
                                <xsl:value-of select="concat(position()*140+60,',200',' ',position()*140+40,',210',' ',position()*140+40,',190',' ',position()*140+60,',200')" />
                            </xsl:attribute> 
                        </polyline>   
                        <text x="0" y="200" fill="black">
                            <xsl:attribute name="x">
                                <xsl:value-of select="position()*140+90" />
                            </xsl:attribute>
                            gpio
                        </text>
                    </xsl:when>
                    <xsl:when test="contains(@uri, 'bean')"><!-- bean -->
                        <rect x="0" y="160" rx="5" ry="5" width="100" height="75"
                            style="fill:white;stroke:gray;stroke-width:5;" >
                            <xsl:attribute name="x">
                                <xsl:value-of select="position()*140+60" />
                            </xsl:attribute>
                        </rect>
                        <line x1="0" y1="200" x2="200" y2="200" style="stroke:white;stroke-width:2">
                            <xsl:attribute name="x1">
                                <xsl:value-of select="position()*140+60" />
                            </xsl:attribute>
                            <xsl:attribute name="x2">
                                <xsl:value-of select="position()*140+20" />
                            </xsl:attribute>
                        </line>   
                        <polyline points="" style="fill:white;stroke:grey;stroke-width:2">
                            <xsl:attribute name="points">
                                <xsl:value-of select="concat(position()*140+60,',200',' ',position()*140+40,',210',' ',position()*140+40,',190',' ',position()*140+60,',200')" />
                            </xsl:attribute> 
                        </polyline> 
                        <text x="0" y="200" fill="black">
                            <xsl:attribute name="x">
                                <xsl:value-of select="position()*140+90" />
                            </xsl:attribute>
                            bean
                        </text>
                    </xsl:when>
                    <xsl:when test="contains(@uri, 'mqtt')"><!-- mqtt -->
                        <rect x="0" y="160" rx="5" ry="5" width="100" height="75"
                            style="fill:white;stroke:gray;stroke-width:5;" >
                            <xsl:attribute name="x">
                                <xsl:value-of select="position()*140+60" />
                            </xsl:attribute>
                        </rect>
                        <line x1="0" y1="200" x2="200" y2="200" style="stroke:white;stroke-width:2">
                            <xsl:attribute name="x1">
                                <xsl:value-of select="position()*140+60" />
                            </xsl:attribute>
                            <xsl:attribute name="x2">
                                <xsl:value-of select="position()*140+20" />
                            </xsl:attribute>
                        </line>  
                        <polyline points="" style="fill:white;stroke:grey;stroke-width:2">
                            <xsl:attribute name="points">
                                <xsl:value-of select="concat(position()*140+60,',200',' ',position()*140+40,',210',' ',position()*140+40,',190',' ',position()*140+60,',200')" />
                            </xsl:attribute> 
                        </polyline>  
                        <text x="0" y="200" fill="black">
                            <xsl:attribute name="x">
                                <xsl:value-of select="position()*140+90" />
                            </xsl:attribute>
                            mqtt
                        </text>
                    </xsl:when>
                    <xsl:otherwise>Error</xsl:otherwise>
                </xsl:choose>
            </xsl:for-each>      
   </svg>                
 </xsl:template>
</xsl:stylesheet>
 <!-- /xslt -->  
