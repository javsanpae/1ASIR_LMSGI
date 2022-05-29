<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

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
      <caption>Las empresas marcadas con un asterisco (*) son empresas de tipo <span>general</span></caption>
      
        <tr>
          <th>Nombre</th>
          <th>Simbolo</th>
          <th>Precio</th>
        </tr>
        <xsl:apply-templates value="Empresa" >
          <xsl:sort select="Precio" order="descending" data-type="number" />
        </xsl:apply-templates>
      </table>
      <p> <xsl:value-of select="number(sum(Empresa/Precio) div count(Empresa))'#.00'" /> </p>
  </xsl:template>

  <xsl:template match="Empresa">
      <tr>

            <td> <xsl:value-of select="Nombre" /> <xsl:if test="@indice = 'general'"> * </xsl:if> </td>

        <td> <xsl:value-of select="Simbolo" /> </td>
        
        <xsl:choose>
        
          <xsl:when test="Precio &gt; 75">
            <td class="mayor75"> <xsl:value-of select="Precio" /> </td>
          </xsl:when>

          <xsl:when test="Precio &lt; 25">
            <td class="menor25"> <xsl:value-of select="Precio" /> </td>
          </xsl:when>
          
          <xsl:otherwise>
            <td> <xsl:value-of select="Precio" /> </td>
          </xsl:otherwise>

        </xsl:choose>

      </tr>
  </xsl:template>
</xsl:stylesheet>
