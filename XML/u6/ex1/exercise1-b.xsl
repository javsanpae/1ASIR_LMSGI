<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="negrita">
        <p style="font-weight:bold">
            <xsl:value-of select="."/>
        </p>
    </xsl:template>

    <xsl:template match="rojo">
        <p style="color:red">
            <xsl:value-of select="."/>
        </p>
    </xsl:template>

    <xsl:template match="azul">
        <p style="color:blue">
            <xsl:value-of select="." />
        </p>
    </xsl:template>

</xsl:stylesheet>