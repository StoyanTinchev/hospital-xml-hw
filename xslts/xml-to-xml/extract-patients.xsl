<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output method="xml" encoding="UTF-8" indent="yes"/>

    <xsl:template match="/">
        <AllPatients>
            <xsl:for-each select="Hospital/Patients/Patient">
                <PatientData>
                    <ID><xsl:value-of select="PatientID"/></ID>
                    <FullName><xsl:value-of select="Name"/></FullName>
                    <Age><xsl:value-of select="Age"/></Age>
                    <MedicalHistory><xsl:value-of select="MedicalHistory"/></MedicalHistory>
                    <ProceduresCount>
                        <xsl:value-of select="count(Procedures)"/>
                    </ProceduresCount>
                </PatientData>
            </xsl:for-each>
        </AllPatients>
    </xsl:template>
</xsl:stylesheet>
