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
                <!-- compte Le nombre des citoyens qui ont consult� un m�decin -->
                <!--  compteLe nombre des citoyens qui ont �t� hospitalis� -->
                <h3> <xsl:value-of select="count(./observatoire-mondial/citoyens/citoyen/antecedents-medicaux[count(consultations)>0])"/>
                    citoyens ont eu � consulter un m�d�cin</h3>

                <h3> <xsl:value-of select="count(./observatoire-mondial/citoyens/citoyen/antecedents-medicaux[count(hospitalisations)>0])"/>
                    citoyens ont eu � se faire hospitaliser</h3>


            </body>

        </html>

    </xsl:template>



</xsl:stylesheet>

