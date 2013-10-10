<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet exclude-result-prefixes="msxsl" xmlns:msxsl="urn:schemas-microsoft-com:xslt" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output indent="yes" method="xml" />
  <xsl:template match="/">
    <details>
      <xsl:apply-templates select="//details" />
    </details>
  </xsl:template>
  <xsl:template match="//details">
    <details>
      <xsl:attribute name="FirstName">
        <xsl:value-of select="FirstName" />
      </xsl:attribute>
      <xsl:attribute name="LastName">
        <xsl:value-of select="LastName" />
      </xsl:attribute>
      <xsl:attribute name="Location">
        <xsl:value-of select="Location" />
      </xsl:attribute>
    </details>
  </xsl:template>
</xsl:stylesheet>
