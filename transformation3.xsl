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
                <h3>Voici un recensement des citoyens ayant le même médécin</h3>
                <ul>

                    <xsl:for-each select="./agence-gouvernementale/agents/medecin">
                        <xsl:if test="count(./p)"
                    </xsl:for-each>

                </ul>



            </body>

        </html>

    </xsl:template>



</xsl:stylesheet>

