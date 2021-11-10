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
                <h3> <xsl:value-of select="count(./observatoire-mondial/citoyens/citoyen/antecedents-medicaux[count(consultations)>0])"/>
                    citoyens ont eu à consulter un médécin</h3>

                <h3> <xsl:value-of select="count(./observatoire-mondial/citoyens/citoyen/antecedents-medicaux[count(hospitalisations)>0])"/>
                    citoyens ont eu à se faire hospitaliser</h3>






            </body>

        </html>

    </xsl:template>



</xsl:stylesheet>

