<?xml version="1.0"?>

<!--
    Document   : my-style.xsl
    Created on : January 4, 2021, 8:23 PM
    Author     : anhnbt
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/">
        <html>
            <head>
                <title>my-style.xsl</title>
            </head>
            <body>
                <h2>List Student</h2>
                <xsl:for-each select="ListStudent/Student">
                    <xsl:value-of select="Name"/>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
