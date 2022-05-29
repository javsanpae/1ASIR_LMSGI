<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="/">
        <clasificacion>
            <xsl:apply-templates select="liga/equipo" />
        </clasificacion>
    </xsl:template>

    <xsl:template match="equipo">
        <xsl:copy>
            <denominacion> <xsl:value-of select="@nombre" /> </denominacion>
            <jugados> <xsl:value-of select="victorias + empates + derrotas" /> </jugados>
        </xsl:copy>
    </xsl:template>

</xsl:stylesheet>
