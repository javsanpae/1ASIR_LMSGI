<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="/">
    <liga>
      <xsl:apply-templates match="liga/equipo"/>    
    </liga>
    </xsl:template>

    <xsl:template match="equipo">
        <xsl:copy>
            <xsl:attribute name="puntos">
                <xsl:value-of select="puntuacion" />
            </xsl:attribute>
            <xsl:copy-of select="nombre" />
        </xsl:copy>
    </xsl:template>

</xsl:stylesheet>