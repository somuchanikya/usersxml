<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">

<html>
<head>
    <title>User Information</title>
</head>
<body>
    <h2>User Information Table</h2>

    <table border="1" cellpadding="5" cellspacing="0">
        <tr bgcolor="#cccccc">
            <th>ID</th>
            <th>Name</th>
            <th>Type</th>
            <th>Department</th>
            <th>Email</th>
            <th>Phone</th>
        </tr>

        <xsl:for-each select="Users/User">
            <tr>
                <td><xsl:value-of select="ID"/></td>
                <td><xsl:value-of select="Name"/></td>
                <td><xsl:value-of select="@type"/></td>
                <td><xsl:value-of select="Department"/></td>
                <td><xsl:value-of select="Email"/></td>
                <td><xsl:value-of select="Phone"/></td>
            </tr>
        </xsl:for-each>

    </table>
</body>
</html>

</xsl:template>
</xsl:stylesheet>