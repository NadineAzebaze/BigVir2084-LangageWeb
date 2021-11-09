<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet 
  version="1.0" 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns="http://www.w3.org/1999/xhtml">
  <xsl:output method="html" encoding="UTF-8"/>
  <xsl:template match="/">
    <html>
      <head>
        <title>pourcentage des citoyens vaccinés</title>
      </head>
      <body>
        <h1> Voici le pourcentage des citoyens vaccinés est : <xsl:value-of select="count(observatoire-mondial/citoyens/citoyen)" /></h1>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>