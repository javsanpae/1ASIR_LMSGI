<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:template match="/">
    <html>
        <xsl:apply-templates />
    </html>
</xsl:template>

<xsl:template match="liga">
    <head>
        <title>La Liga</title>
    </head>

    <body>
        <h1>Clasificación General:</h1>
        <table>
            <tr>
                <th>Nombre del equipo</th>
                <th>Puntuación</th>
                <th>Nº de Victorias</th>
                <th>Nº de Empates</th>
                <th>Nº de Derrotas</th>
            </tr>       
            <xsl:apply-templates select="equipo" />
        </table>
    </body>

</xsl:template>

<xsl:template match="equipo">

    <tr>
        <td> <xsl:value-of select="@nombre" /> </td>
        <td> <xsl:value-of select="puntuacion" /> </td>
        <td> <xsl:value-of select="victorias" /> </td>
        <td> <xsl:value-of select="empates" /> </td>
        <td> <xsl:value-of select="derrotas" /> </td>
    </tr>

</xsl:template>


</xsl:stylesheet>
