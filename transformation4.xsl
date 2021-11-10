<?xml version="1.0" encoding="ISO-8859-1"?>
<!-- Le nombre des citoyens qui ont visité des établissements -->
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" indent="yes"/>

    <xsl:template match="BigVir">
        <html>
            <head>
                <title>les lieux visités par les citoyens</title>
            </head>
            <body>
                <h2>Voici le nombre des citoyens qui ont visité des établissments</h2>
                <p>
                    - <strong><xsl:value-of select="count(observatoire-mondial/citoyens/citoyen/historique-social/etablissement[@refeta=1])"/> </strong> citoyens qui ont visité le <xsl:text> "</xsl:text><xsl:value-of select="observatoire-mondial/lieux/lieu[@refeta=1]/Type" /><xsl:text>" </xsl:text> qui se trouve à <span style="color:blue;"><xsl:value-of select="observatoire-mondial/lieux/lieu[@refeta=1]/adresse"/> .</span> <br/>
                    - <strong><xsl:value-of select="count(observatoire-mondial/citoyens/citoyen/historique-social/etablissement[@refeta=2])"/> </strong> citoyens qui ont visité le <xsl:text> "</xsl:text><xsl:value-of select="observatoire-mondial/lieux/lieu[@refeta=2]/Type" /><xsl:text>" </xsl:text> qui se trouve à <span style="color:blue;"><xsl:value-of select="observatoire-mondial/lieux/lieu[@refeta=2]/adresse"/> .</span> <br/>
                    - <strong><xsl:value-of select="count(observatoire-mondial/citoyens/citoyen/historique-social/etablissement[@refeta=3])"/> </strong> citoyens qui ont visité le <xsl:text> "</xsl:text><xsl:value-of select="observatoire-mondial/lieux/lieu[@refeta=3]/Type" /><xsl:text>" </xsl:text> qui se trouve à <span style="color:blue;"><xsl:value-of select="observatoire-mondial/lieux/lieu[@refeta=3]/adresse"/> .</span> <br/>
                    - <strong><xsl:value-of select="count(observatoire-mondial/citoyens/citoyen/historique-social/etablissement[@refeta=4])"/> </strong> citoyens qui ont visité le <xsl:text> "</xsl:text><xsl:value-of select="observatoire-mondial/lieux/lieu[@refeta=4]/Type" /><xsl:text>" </xsl:text> qui se trouve à <span style="color:blue;"><xsl:value-of select="observatoire-mondial/lieux/lieu[@refeta=4]/adresse"/> .</span> <br/>
                    - <strong><xsl:value-of select="count(observatoire-mondial/citoyens/citoyen/historique-social/etablissement[@refeta=5])"/> </strong> citoyens qui ont visité le <xsl:text> "</xsl:text><xsl:value-of select="observatoire-mondial/lieux/lieu[@refeta=5]/Type" /><xsl:text>" </xsl:text> qui se trouve à <span style="color:blue;"><xsl:value-of select="observatoire-mondial/lieux/lieu[@refeta=4]/adresse"/> .</span> <br/>
                </p>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>