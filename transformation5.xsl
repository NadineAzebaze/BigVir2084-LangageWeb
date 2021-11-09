<?xml version="1.0" encoding="ISO-8859-1"?>

<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" indent="yes"/>

    <xsl:template match="BigVir">
        <html>
            <head>
                <title>les lieux visités par les citoyens</title>
            </head>
            <body>
                <h2>Les établissements qui ont été visité sont:</h2>
                <p>
                    - "<xsl:value-of select="observatoire-mondial/lieux/lieu[@refeta=1]/Type"/>" a été visité par:
                    <xsl:for-each select="./observatoire-mondial/citoyens/citoyen">
                        <xsl:if test="./historique-social/etablissement[@refeta=1]">
                            <li>
                                <xsl:value-of select="./informations-personnelles/nom"/>
                                <xsl:text> </xsl:text>
                                <xsl:value-of select="./informations-personnelles/prenom"/>
                            </li>
                        </xsl:if>
                    </xsl:for-each> <br/>
                    - "<xsl:value-of select="observatoire-mondial/lieux/lieu[@refeta=5]/Type"/>" a été visité par:
                    <xsl:for-each select="./observatoire-mondial/citoyens/citoyen">
                        <xsl:if test="./historique-social/etablissement[@refeta=5]">
                            <li>
                                <xsl:value-of select="./informations-personnelles/nom"/>
                                <xsl:text> </xsl:text>
                                <xsl:value-of select="./informations-personnelles/prenom"/>
                            </li>
                        </xsl:if>
                    </xsl:for-each> <br/>
                    - "<xsl:value-of select="observatoire-mondial/lieux/lieu[@refeta=6]/Type"/>" a été visité par:
                    <xsl:for-each select="./observatoire-mondial/citoyens/citoyen">
                        <xsl:if test="./historique-social/etablissement[@refeta=6]">
                            <li>
                                <xsl:value-of select="./informations-personnelles/nom"/>
                                <xsl:text> </xsl:text>
                                <xsl:value-of select="./informations-personnelles/prenom"/>
                            </li>
                        </xsl:if>
                    </xsl:for-each> <br/>
                    - "<xsl:value-of select="observatoire-mondial/lieux/lieu[@refeta=7]/Type"/>" a été visité par:
                    <xsl:for-each select="./observatoire-mondial/citoyens/citoyen">
                        <xsl:if test="./historique-social/etablissement[@refeta=7]">
                            <li>
                                <xsl:value-of select="./informations-personnelles/nom"/>
                                <xsl:text> </xsl:text>
                                <xsl:value-of select="./informations-personnelles/prenom"/>
                            </li>
                        </xsl:if>
                    </xsl:for-each> <br/>
                </p>
                <h2>Les établissements qui n'ont pas été visité:</h2>
                - "<xsl:value-of select="observatoire-mondial/lieux/lieu[@refeta=4]/Type"/>"

            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>