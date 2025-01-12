<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output method="text" encoding="UTF-8" indent="no"/>

    <xsl:template match="/">
        <xsl:text>--- Списък на пациенти и процедури ---&#10;</xsl:text>
        <xsl:for-each select="Hospital/Patients/Patient">
            <xsl:text>Пациент: </xsl:text>
            <xsl:value-of select="Name"/>
            <xsl:text> (</xsl:text>
            <xsl:value-of select="PatientID"/>
            <xsl:text>), Възраст: </xsl:text>
            <xsl:value-of select="Age"/>
            <xsl:text>, История: </xsl:text>
            <xsl:value-of select="MedicalHistory"/>
            <xsl:text>&#10;  Процедури:&#10;</xsl:text>
            <xsl:for-each select="Procedures">
                <xsl:text>    - </xsl:text>
                <xsl:value-of select="ProcedureName"/>
                <xsl:text> (</xsl:text>
                <xsl:value-of select="ProcedureID"/>
                <xsl:text>, </xsl:text>
                <xsl:value-of select="ProcedureDate"/>
                <xsl:text>)&#10;</xsl:text>
            </xsl:for-each>
            <xsl:text>----------------------------------------&#10;</xsl:text>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>
