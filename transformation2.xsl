<?xml version="1.0" encoding="ISO-8859-1"?>
<!-- Afficher le nombre de citoyens qui ont déjà atteints du Cancer du sein et de l'hémocromatose, ainsi que leurs noms-->
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" indent="yes"/>

    <xsl:template match="BigVir">
        <html>
            <head>
                <title> La base de donnee de BigVir </title>
            </head>

            <body>
                <h3> <xsl:value-of select="round((count(./observatoire-mondial/citoyens/citoyen/antecedents-medicaux[count(hospitalisations/maladie[nom='Hémocromatose']) > 0])*100) div
                    (count(./observatoire-mondial/citoyens/citoyen/antecedents-medicaux/hospitalisations/maladie)))"/> est le pourcentage de citoyens ayant déjà été atteints de l'hémocromatose!
                </h3>
                <em> Voici leurs noms</em>
                <ul>

                        <xsl:for-each select="./observatoire-mondial/citoyens/citoyen">
                            <xsl:if test="./antecedents-medicaux/hospitalisations/maladie[nom = 'Hémocromatose']">
                                <li>
                                <xsl:value-of select="./informations-personnelles/nom"/>
                                    <xsl:text> </xsl:text>
                                <xsl:value-of select="./informations-personnelles/prenom"/>
                                </li>
                            </xsl:if>
                        </xsl:for-each>

                </ul>


                <h3> <xsl:value-of select="round((count(./observatoire-mondial/citoyens/citoyen/antecedents-medicaux[count(hospitalisations/maladie[nom='Cancer du sein']) > 0])*100) div
                    (count(./observatoire-mondial/citoyens/citoyen/antecedents-medicaux/hospitalisations/maladie)))"/> est le pourcentage de citoyens ayant déjà été atteints du Cancer du sein!
                </h3>
                <em> Voici leurs noms</em>
                <ul>

                    <xsl:for-each select="./observatoire-mondial/citoyens/citoyen">
                        <xsl:if test="./antecedents-medicaux/hospitalisations/maladie[nom = 'Cancer du sein']">
                            <li>
                                <xsl:value-of select="./informations-personnelles/nom"/>
                                <xsl:text> </xsl:text>
                                <xsl:value-of select="./informations-personnelles/prenom"/>
                            </li>
                        </xsl:if>
                    </xsl:for-each>

                </ul>
            </body>

        </html>

    </xsl:template>



</xsl:stylesheet>

