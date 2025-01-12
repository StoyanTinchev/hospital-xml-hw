<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output method="html" encoding="UTF-8" indent="yes"/>

    <xsl:template match="/">
        <html>
            <head>
                <meta charset="UTF-8"/>
                <title>Обобщена информация</title>
                <style>
                    ul { list-style: circle; }
                </style>
            </head>
            <body>
                <h1>Обобщена информация</h1>

                <h2>Пациенти:</h2>
                <ul>
                    <xsl:for-each select="Hospital/Patients/Patient">
                        <li>
                            <xsl:value-of select="concat(Name, ' (ID=', PatientID, ')')"/>
                        </li>
                    </xsl:for-each>
                </ul>

                <h2>Лекари:</h2>
                <ul>
                    <xsl:for-each select="Hospital/Procedures/Procedure/Doctor">
                        <li>
                            <xsl:value-of select="concat(DoctorName, ' - ', Specialty, ' (ID=', DoctorID, ')')"/>
                        </li>
                    </xsl:for-each>
                </ul>

                <h2>Общ брой процедури:</h2>
                <p>
                    <xsl:value-of select="count(Hospital/Procedures/Procedure)"/>
                </p>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
