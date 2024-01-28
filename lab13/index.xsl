<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
    <head>
        <title>Аттестация</title>
    </head>
    <body>
        <h2>Аттестация</h2>
        <table border="2px">
            <tr>
            <th>Студент</th>
            <th>Оценка</th>
            </tr>
            <xsl:for-each select="catalog/student">
                <xsl:sort select="name"/>
                <tr>
                <td>
                <xsl:value-of select="name" />
                </td>
                <xsl:choose>
                <xsl:when test="mark&gt;'8'">
                    <td bgcolor="green">
                    <xsl:value-of select="mark"/></td>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:choose>
                        <xsl:when test="mark&lt;'4'">
                            <td bgcolor="red">
                            <xsl:value-of select="mark"/></td>
                        </xsl:when>
                        <xsl:otherwise>
                            <td><xsl:value-of select="mark"/></td>
                        </xsl:otherwise>
                        </xsl:choose>
                </xsl:otherwise>
                </xsl:choose>
                </tr>
            </xsl:for-each>
        </table>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>