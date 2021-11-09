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
                <h3> <xsl:value-of select="count(./observatoire-mondial/citoyens/citoyen/antecedents-medicaux[count(hospitalisations) > 0])"/> CITOYENS ont déjà été hospitalisées!
                </h3>

                <xsl:for-each select="./observatoire-mondial/citoyens/citoyen">
                    <xsl:sort select="count(./antecedents-medicaux/hospitalisations)"/>
                    <p>
                        <p>
                            <span style="color:#ff0000">
                                <xsl:value-of select="./informations-personnelles/nom"/>
                                <xsl:text>  </xsl:text>
                                <xsl:value-of select="./informations-personnelles/prenom"/>
                            </span>

                           ; Son nombre d'hospitalisations est de: <xsl:value-of select="count(./antecedents-medicaux/hospitalisations)"/>
                        </p>

                        <p>
                            <xsl:if test="count(./antecedents-medicaux/hospitalisations) > 1">
                                Ses hospitalisations classées de la plus récente à la plus ancienne sont: <br/>
                                <xsl:for-each select="./antecedents-medicaux/hospitalisations">
                                    <xsl:sort select="dateEntree" data-type="number" order="ascending"/>
                                    <em>
                                        Maladie: <xsl:value-of select="maladie/nom"/> <br/></em>
                                        date d'entrée: <xsl:value-of select="dateEntree"/> <br/>
                                        date de sortie: <xsl:value-of select="dateSortie"/> <br/>

                                </xsl:for-each>
                            </xsl:if>
                        </p>

                    </p>
                </xsl:for-each>

            </body>

        </html>

    </xsl:template>



</xsl:stylesheet>

