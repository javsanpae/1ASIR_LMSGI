<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">
    <html>
        <head>
            <title>Ejercicio1C</title>
            <style>
                #neg {font-weight:bold}
                #roj {color:red}
                #az {color:blue}
            </style>
        </head>
        <body>
            <xsl:apply-templates/>
        </body>
    </html>
</xsl:template>

<xsl:template match="negrita">
    <p id="neg">
        <xsl:value-of select="."/>
    </p>
</xsl:template>

<xsl:template match="rojo">
    <p id="roj">
        <xsl:value-of select="."/>
    </p>
</xsl:template>

<xsl:template match="azul">
    <p id="az">
        <xsl:value-of select="."/>
    </p>
</xsl:template>

</xsl:stylesheet>