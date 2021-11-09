<?xml version="1.0" encoding="ISO-8859-1"?>

<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" indent="yes"/>

    <xsl:template match="BigVir">
        <html>
            <head>
                <title> La base de donnee de BigVir </title>
            </head>

            <body>
                <h1>VOICI DES <xsl:value-of select="count(./observatoire-mondial/citoyens/citoyen/antecedents-medicaux[count(hospitalisations) = 0])"/> CITOYENS N'AYANT AUCUNE HOSPITALISATION</h1>

                <xsl:for-each select="./observatoire-mondial/citoyens/citoyen">
                    <xsl:sort select="count(./antecedents-medicaux/hospitalisations)"/>
                    <p>
                        <xsl:value-of select="./informations-personnelles/nom"/>
                        <xsl:text>  </xsl:text>
                        <xsl:value-of select="./informations-personnelles/prenom"/>
                        son nombre d'hospitalisations est de: <xsl:value-of select="count(./antecedents-medicaux/hospitalisations)"/>
                    </p>
                </xsl:for-each>

            </body>

        </html>

    </xsl:template>



</xsl:stylesheet>

