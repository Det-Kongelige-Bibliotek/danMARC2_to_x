<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
	       xmlns:m="http://www.loc.gov/mods/v3" 
               version="2.0">
 
  <xsl:strip-space elements="*"/>
  <xsl:output indent="yes"/>

  <xsl:template match="node()|@*">
    <xsl:copy>
      <xsl:apply-templates select="node()|@*"/>
    </xsl:copy>
  </xsl:template>

  <xsl:template match=
		"*[not(@*|*|comment()|processing-instruction()) and normalize-space()='']"/>

</xsl:transform>