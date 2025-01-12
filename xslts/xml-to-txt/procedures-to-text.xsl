<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output method="text" encoding="UTF-8" indent="no"/>

    <xsl:template match="/">
        <xsl:text>--- Списък на процедури ---&#10;</xsl:text>
        <xsl:for-each select="Hospital/Procedures/Procedure">
            <xsl:text>Процедура: </xsl:text>
            <xsl:value-of select="ProcedureName"/>
            <xsl:text> (ID: </xsl:text>
            <xsl:value-of select="ProcedureID"/>
            <xsl:text>)&#10;Лекар: </xsl:text>
            <xsl:value-of select="Doctor/DoctorName"/>
            <xsl:text> (</xsl:text>
            <xsl:value-of select="Doctor/Specialty"/>
            <xsl:text>, </xsl:text>
            <xsl:value-of select="Doctor/YearsOfExperience"/>
            <xsl:text> години опит)&#10;</xsl:text>
            <xsl:text>Оценка: </xsl:text>
            <xsl:value-of select="Results/Evaluation"/>
            <xsl:text>&#10;</xsl:text>
            <xsl:if test="Results/Complications">
                <xsl:text>Усложнения: </xsl:text>
                <xsl:value-of select="Results/Complications"/>
                <xsl:text>&#10;</xsl:text>
            </xsl:if>
            <xsl:text>----------------------------------------&#10;</xsl:text>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>
