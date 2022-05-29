<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0" >

  <xsl:template match="/">

  <html>
    <head>
      <title>Bolsa</title>
      <style>

        .mayor75 {
          color: blue;
        }

        .menor25 {
          color: red;
        }

        span {
          font-weight: bold;
        }

      </style>
    </head>

    <body>
      <xsl:apply-templates select="Bolsa" />
    </body>
  </html>

  </xsl:template>

  <xsl:template match="Bolsa">

      <h1> FECHA: <xsl:value-of select="@dia" /> </h1>
      <h1> HORA: <xsl:value-of select="@hora" /> </h1>

      <table>
        <tr>
          <th>Nombre</th>
          <th>Simbolo</th>
          <th>Precio</th>
        </tr>
        <xsl:apply-templates value="Empresa" />
      </table>

      <p>Las empresas marcadas con un asterisco (*) son empresas de tipo <span>general</span></p>

      

  </xsl:template>

  <xsl:template match="Empresa">
    <xsl:for-each select=".">
      <xsl:sort select="Precio" order="descending" data-type="number" />
      <tr>

        <xsl:choose>

          <xsl:when test="@indice = 'general'">
            <td> <xsl:value-of select="Nombre" /> * </td>
          </xsl:when>

          <xsl:otherwise>
            <td> <xsl:value-of select="Nombre" /> </td>
          </xsl:otherwise>

        </xsl:choose>

        <td> <xsl:value-of select="Simbolo" /> </td>
        
        <xsl:choose>
        
          <xsl:when test="Precio &gt; 75">
            <td class="mayor75"> <xsl:value-of select="Precio" /> </td>
          </xsl:when>

          <xsl:otherwise>
            <td class="menor25"> <xsl:value-of select="Precio" /> </td>
          </xsl:otherwise>

        </xsl:choose>

      </tr>
    </xsl:for-each>
  </xsl:template>


</xsl:stylesheet>
