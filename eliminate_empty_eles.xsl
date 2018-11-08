<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
	       xmlns:m="http://www.loc.gov/mods/v3" 
               version="2.0">


 <xsl:template match="node()">
   <xsl:if test="node()|@*">
     <xsl:copy>
      <xsl:apply-templates select="node()|@*"/>
     </xsl:copy>
   </xsl:if>
 </xsl:template>

 <xsl:template match="@*">
    <xsl:copy>
      <xsl:apply-templates select="."/>
    </xsl:copy>
 </xsl:template>

</xsl:transform>