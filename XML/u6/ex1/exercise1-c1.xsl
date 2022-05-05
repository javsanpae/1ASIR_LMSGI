<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:template match="/">
    <html>
        <head>
            <title>Ejercicio1C</title>
        </head>
        <body>
            <xsl:apply-templates/> <!-- aplicar reglas a los hijos del raiz -->
        </body>
    </html>
</xsl:template>

</xsl:stylesheet>