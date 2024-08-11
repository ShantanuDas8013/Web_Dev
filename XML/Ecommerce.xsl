<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/Ecommerce">
        <html>
        <head>
            <title>Products Table</title>
            <style>
                body{
                    display: flex;
                    justify-content: center;
                    align-items: center;
                    flex-direction: column;
                }
                table {
                    width: 50%;
                    border-collapse: collapse;
                    text-align:center;
                }
                th, td {
                    border: 1px solid black;
                    padding: 8px;
                    text-align: left;
                }
                th {
                    background-color: lightblue;
                }
            </style>
        </head>
        <body>
            <h2>E-Commerce Customizable Products</h2>
            <table>
                <tr>
                    <th>Name</th>
                    <th>Category</th>
                    <th>Price</th>
                    <th>Customization Options</th>
                </tr>
                <xsl:for-each select="Product">
                    <tr>
                        <td><xsl:value-of select="Name"/></td>
                        <td><xsl:value-of select="Category"/></td>
                        <td><xsl:value-of select="Price"/></td>
                        <td>
                            <xsl:for-each select="Customization/Option">
                                <xsl:value-of select="."/><br/>
                            </xsl:for-each>
                        </td>
                    </tr>
                </xsl:for-each>
            </table>
        
        </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
