<?xml version="1.0" encoding="ISO-8859-1"?>

<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" indent="yes"/>

    <xsl:template match="BigVir">
        <html>
            <head>
                <title> La base de donnee de BigVir </title>
            </head>

            <body>
                <h1>VOICI DES AGENTS N'AYANT AUCUNE HOSPITALISATION</h1>

                <xsl:for-each select="./observatoire-mondial/citoyens/citoyen">
                              <xsl:if test="count(./antecedents-medicaux/hospitalisations)=1">
                                  aaaaaaa
                              </xsl:if>
                </xsl:for-each>

            </body>

        </html>

    </xsl:template>



</xsl:stylesheet>

