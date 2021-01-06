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
            <body style="font-family:Arial;font-size:12pt;background-color:#EEEEEE">
                <h1 style="text-align: center">List of Students</h1>
                <table style="font-family: Arial, Helvetica, sans-serif;width: 100%;border-collapse: collapse">
                    <thead style="background-color: #4CAF50;color: white">
                        <th>ID</th>
                        <th>Name</th>
                        <th>Age</th>
                        <th>Address</th>
                    </thead>
                    <tbody>
                        <xsl:for-each select="students/student">
                            <xsl:sort select="@id"></xsl:sort>
                            <tr>
                                <td>
                                    <xsl:choose>
                                        <xsl:when test="age &gt; 10">
                                            <span style="font-weight: bold">
                                                <xsl:value-of select="@id"/>
                                            </span>
                                        </xsl:when>
                                        <xsl:otherwise>
                                            <span style="font-weight: bold; color: red">
                                                <xsl:value-of select="@id"/>
                                            </span>
                                        </xsl:otherwise>
                                    </xsl:choose>
                                </td>
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
