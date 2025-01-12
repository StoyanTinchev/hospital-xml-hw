<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output method="html" encoding="UTF-8" indent="yes"/>

    <xsl:template match="/">
        <html>
            <head>
                <meta charset="UTF-8"/>
                <title>Галерия от процедури</title>
                <style>
                    .procedure-box {
                    border: 1px solid #ccc;
                    margin: 10px;
                    padding: 10px;
                    display: inline-block;
                    vertical-align: top;
                    width: 250px;
                    }
                    .procedure-box img {
                    max-width: 100%;
                    }
                    .procedure-box h2 {
                    margin: 5px 0 10px;
                    }
                </style>
            </head>
            <body>
                <h1>Галерия с процедури</h1>
                <xsl:for-each select="Hospital/Procedures/Procedure">
                    <div class="procedure-box">
                        <h2><xsl:value-of select="ProcedureName"/></h2>
                        <p><strong>ID:</strong> <xsl:value-of select="ProcedureID"/></p>
                        <p><strong>Лекар:</strong> <xsl:value-of select="Doctor/DoctorName"/></p>
                        <xsl:if test="Results/Images">
                            <img>
                                <xsl:attribute name="src">
                                    <xsl:value-of select="Results/Images"/>
                                </xsl:attribute>
                                <xsl:attribute name="alt">
                                    <xsl:value-of select="ProcedureName"/>
                                </xsl:attribute>
                            </img>
                        </xsl:if>
                        <p>
                            <strong>Усложнения:</strong>
                            <xsl:value-of select="Results/Complications" />
                        </p>
                    </div>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
