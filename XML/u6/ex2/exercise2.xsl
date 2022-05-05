<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:template match='/'>
    <html>
        <xsl:apply-templates />
    </html>
</xsl:template>

<xsl:template match="tienda">

    <head>
        <title>
            <xsl:value-of select='nombre' />
        </title>
    </head>
<body>
    <h1>Lo mejor de <xsl:value-of select='nombre' /> Sabidilla</h1>
    <h2>Teléfono: <xsl:value-of select='telefono' /></h2>
    <h2>Nuestros mejores productos</h2>
    <table border="1">
    <tr>
    <th>Código</th>
    <th>Existencias</th>
    <th>Artículo</th>
    </tr>
        <xsl:apply-templates select='producto' />
    </table>
    </body>

</xsl:template>


<xsl:template match='producto'>
    <tr>
    <td><xsl:value-of select='codigo' /></td>
    <td><xsl:value-of select='cantidad' /></td>
    <td><xsl:value-of select='articulo' /></td>
    </tr>
</xsl:template>

</xsl:stylesheet>