<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
      <body>
        <h2>Evs Apparel Deigners</h2>
        <table border="1">
          <tr bgcolor="#9acd32">
            <th>Desiners Name</th>
            <th>Location</th>
            <th>Specialty</th>
          </tr>
          <xsl:for-each select="EvsApparel/Designer">
            <tr>
              <td>
                <xsl:value-of select="BioData/FirstName"/>
                <xsl:value-of select="BioData/LastName"/>
              </td>
              <td>
                <xsl:value-of select="Address/Station"/>
              </td>
              <td>
                <xsl:value-of select="BioData/Specialty"/>
              </td>
            </tr>
            </xsl:if>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>