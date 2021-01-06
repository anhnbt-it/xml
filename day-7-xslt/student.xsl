<?xml version="1.0"?>

<!--
    Document   : student.xsl
    Created on : January 6, 2021, 8:38 PM
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
                <title>student.xsl</title>
            </head>
            <body>
                <h1>List of Students</h1>
                <table>
                    <thead>
                        <th>Name</th>
                        <th>Age</th>
                        <th>Address</th>
                    </thead>
                    <tbody>
                        <xsl:for-each select="students/student">
                        <tr>
                            <td>
                                <xsl:value-of select="name"/>
                            </td>
                            <td>
                                <xsl:value-of select="age"/>
                            </td>
                            <td>
                                <xsl:value-of select="address"/>
                            </td>
                        </tr>
                        </xsl:for-each>
                    </tbody>
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
