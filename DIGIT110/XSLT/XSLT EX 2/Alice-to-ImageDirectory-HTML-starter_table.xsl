<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    xmlns="http://www.w3.org/1999/xhtml"
    exclude-result-prefixes="xs math"
    version="3.0">
   
    
    <xsl:output method="xhtml" html-version="5" omit-xml-declaration="yes" 
        include-content-type="no" indent="yes"/>
    
    <xsl:template match="/">
        <html>
            <head> 
            <title>Image Directory for Alice's Adventures Underground</title>
            <!-- Link line for CSS would go here... -->
            </head>
            <body>
                <h1>An Image Directory for Alice's Adventures Underground</h1>
                
                <table>
                    <tr>
                        <th>Chapter Heading</th>
                        <th>Image Info</th>
                    </tr>
                    
                    <xsl:apply-templates select="descendant::chapter"/>
                    
                </table>
                
            </body>
   
        </html>
    </xsl:template>
    
    <xsl:template match="chapter">      
        <tr>
            <td><xsl:apply-templates select="heading"/></td>
            <td>
                <ul>
                    <xsl:apply-templates select=".//image"/>
                </ul>
            </td>
        </tr>
    </xsl:template>   
    
    <xsl:template match="image">
        <li>
            <xsl:value-of select="@source"/>
        </li>
    </xsl:template>
    
</xsl:stylesheet>