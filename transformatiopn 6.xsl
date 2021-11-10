<?xml version="1.0" encoding="ISO-8859-1"?>

<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" indent="yes"/>

    <xsl:template match="/BigVir">
        <html>
            <head><title>pourcentage des citoyens vaccin�s</title></head>
            <body>
                <h2>Voici le pourcentage des citoyens vaccin�s et non vaccin�s : </h2>
                <p>
                    - Le pourcentage des citoyens vaccin�s est : <strong><span style="color:blue;"><xsl:value-of select="count(observatoire-mondial/citoyens/citoyen/antecedents-medicaux/statut/statut-vaccination[valeur='true']) div (count(observatoire-mondial/citoyens/citoyen))100" /> % </span> </strong> <br/>
                    - Le pourcentage des citoyens non vaccin�s est : <strong><span style="color:blue;"> <xsl:value-of select="count(observatoire-mondial/citoyens/citoyen/antecedents-medicaux/statut/statut-vaccination[valeur='false']) div (count(observatoire-mondial/citoyens/citoyen))100" /> % </span> </strong> <br/>
                </p>
            </body>
        </html>
    </xsl:template>



</xsl:stylesheet>