<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output method="xml" encoding="UTF-8" indent="yes"/>

    <xsl:template match="/">
        <AllDoctors>
            <xsl:for-each select="Hospital/Procedures/Procedure">
                <DoctorData>
                    <DoctorID><xsl:value-of select="Doctor/DoctorID"/></DoctorID>
                    <DoctorName><xsl:value-of select="Doctor/DoctorName"/></DoctorName>
                    <Specialty><xsl:value-of select="Doctor/Specialty"/></Specialty>
                    <YearsOfExperience><xsl:value-of select="Doctor/YearsOfExperience"/></YearsOfExperience>
                    <ProcedureName><xsl:value-of select="ProcedureName"/></ProcedureName>
                </DoctorData>
            </xsl:for-each>
        </AllDoctors>
    </xsl:template>
</xsl:stylesheet>
