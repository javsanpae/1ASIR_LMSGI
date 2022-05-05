<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:output method="html" version="4.01" indent="yes" />

<xsl:template match="/">
    <html lang="en">
        <head>
            <meta charset="utf-8"/>
            <title>animales</title>
        </head>

        <body>
            <xsl:apply-templates select="animales/animal" />
        </body>
    
    </html>
</xsl:template>

<xsl:template match="animal">
    <p><strong style="font-weight:bold"><xsl:value-of select="name()" />: <xsl:value-of select="@especie"/></strong> se llama <xsl:value-of select="@nombre"/>, es de color <xsl:value-of select="datos/@color"/> , y pesa <xsl:value-of select="datos/@peso" /></p>
</xsl:template>

</xsl:stylesheet>