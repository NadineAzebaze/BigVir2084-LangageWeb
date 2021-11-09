<?xml version="1.0" encoding="ISO-8859-1"?>

<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" indent="yes"/>

    <xsl:template match="/">
        <html>
            <head>
                <title> La base de donnee de BigVir </title>
            </head>

            <body>
                <h1>VOICI DES AGENTS N'AYANT AUCUNE HOSPITALISATION</h1>

                <xsl:apply-templates/>

            </body>

        </html>

    </xsl:template>

    <xsl:template match="/agence-gouvernementale">
        <xsl:for-each select="./agents/agent">
            <xsl:if test="count(/antecedents-medicaux/hospitalisations) = 0">
                <xsl:value-of select="/informations-personnelles/nom"/>
            </xsl:if>
        </xsl:for-each>
    </xsl:template>


</xsl:stylesheet>

