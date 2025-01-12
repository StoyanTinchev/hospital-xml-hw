<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output method="html" encoding="UTF-8" indent="yes"/>

    <xsl:template match="/">
        <html>
            <head>
                <meta charset="UTF-8"/>
                <title>Списък на пациенти</title>
                <style>
                    table, th, td {
                    border: 1px solid #000;
                    border-collapse: collapse;
                    padding: 5px;
                    }
                    th { background-color: #ddd; }
                </style>
            </head>
            <body>
                <h1>Списък на пациенти</h1>
                <table>
                    <tr>
                        <th>PatientID</th>
                        <th>Име</th>
                        <th>Години</th>
                        <th>Мед. история</th>
                        <th>Извършени процедури</th>
                    </tr>
                    <xsl:for-each select="Hospital/Patients/Patient">
                        <tr>
                            <td><xsl:value-of select="PatientID"/></td>
                            <td><xsl:value-of select="Name"/></td>
                            <td><xsl:value-of select="Age"/></td>
                            <td><xsl:value-of select="MedicalHistory"/></td>
                            <td>
                                <xsl:for-each select="Procedures">
                                    <p>
                                        <b><xsl:value-of select="ProcedureName"/> (</b>
                                        <xsl:value-of select="ProcedureID"/> –
                                        <xsl:value-of select="ProcedureDate"/>
                                        <b>)</b>
                                    </p>
                                </xsl:for-each>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
