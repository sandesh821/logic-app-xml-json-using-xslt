<xsl:stylesheet version="3.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns="http://www.w3.org/2005/xpath-functions">
    <xsl:output method="text" encoding="UTF-8"/>

    <xsl:template match="/Root">
        <!-- CONVERT INPUT TO XML FOR JSON -->
        <xsl:variable name="xml">
            <array>
                <xsl:for-each  select="Data_1">
                <map>
                    <string key="name">
                        <xsl:value-of select="name"/>
                    </string>
                    <string key="age">
                        <xsl:value-of select="age"/>
                    </string>
                </map>
            </xsl:for-each>
            </array>
        </xsl:variable>
        <!-- OUTPUT -->
         <xsl:value-of select="xml-to-json($xml)"/>
    </xsl:template>

</xsl:stylesheet>
