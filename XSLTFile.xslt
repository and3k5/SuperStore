<?xmlversion = "1.0"encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="Author">
    <xsl:value-of select = "FirstName"/>
    <xsl:value-of select = "LastName"/>
    <xsl:if test="position()!=last()">
      , </xsl:if>
      </xsl:template>
      <xsl:template match = "/">
        <html>
          <head>
            <title>Books at webshop</title>
          </head>
          <body>
            <h1>Books at webshop</h1>
            <table border="3" cellspacing = "2" cellpadding = "6">
              <thead align="center" bgcolor = "silver">
                <th>Book Id</th>
                <th>Title</th>
                <th>price</th>
                <th>Author(s)</th>
                </thead>
                <tbody>
                  <xsl:for-each select = "Books/Book">
                    <tr>
                      <td>
                        <font color ="green">
                          <xsl:value-of select="BookId"/>
                          </font>
                        </td>
                      <td>
                        <xsl:value-of select="Title"/>
                      </td>
                      <td>
                        <xsl:value-of select="Price"/>
                      </td>
                      <td>
                        <xsl:apply-templates select="Author"/>
                    </td>
                  </tr>

                  </xsl:for-each>
                </tbody>
               </table>
            </body>
      </html>
    </xsl:template>
</xsl:stylesheet>
      