<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/books">
<html>
    <body>
<table border="1">
    <tr>
        <th>Писатель</th>
        <th>Год рождения</th>   
    </tr>
    <xsl:for-each select="book">
        <xsl:sort select="title" order="descending"/>
        <tr>
            <td bgcolor="yellow"><xsl:value-of select="author"/></td>
            <td bgcolor="orange"><xsl:value-of select="title"/></td>   
        </tr>
    </xsl:for-each>
</table>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>