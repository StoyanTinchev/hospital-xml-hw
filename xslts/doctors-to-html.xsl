<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output method="html" encoding="UTF-8" indent="yes"/>

    <xsl:key name="ProceduresByID" match="Procedure" use="ProcedureID"/>

    <xsl:template match="/">
        <html>
            <head>
                <meta charset="UTF-8"/>
                <title>Списък на лекари</title>
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
                <h1>Списък на лекари и техните процедури</h1>
                <table>
                    <tr>
                        <th>DoctorID</th>
                        <th>Име на лекар</th>
                        <th>Специалност</th>
                        <th>Години опит</th>
                        <th>Процедура</th>
                    </tr>
                    <xsl:for-each select="Hospital/Procedures/Procedure">
                        <tr>
                            <td><xsl:value-of select="Doctor/DoctorID"/></td>
                            <td><xsl:value-of select="Doctor/DoctorName"/></td>
                            <td><xsl:value-of select="Doctor/Specialty"/></td>
                            <td><xsl:value-of select="Doctor/YearsOfExperience"/></td>
                            <td><xsl:value-of select="ProcedureName"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
