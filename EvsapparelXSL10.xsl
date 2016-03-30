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
            <th>ID Number</th>
            <th>Stations</th>
            <th>Number of Fashion Shows</th>
            <th>Specialty</th>
          </tr>
          <xsl:for-each select="EvsApparel/Designer">
            <xsl:sort select="BioData/LastName"/>
            <xsl:if test="Other/NumberofModels&gt;10">
              <tr>
                <td>
                  <xsl:value-of select="BioData/FirstName"/>
                  <xsl:value-of select="BioData/LastName"/>
                </td>
                <td>
                  <xsl:value-of select="BioData/DesignerSSN"/>
                </td>
                <td>
                  <xsl:value-of select="Address/Station"/>
                  <xsl:value-of select="Address/City"/>
                </td>
                <td>
                  <xsl:value-of select="Other/NumberofModels"/>
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