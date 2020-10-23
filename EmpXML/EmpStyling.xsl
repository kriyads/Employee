<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html> 
            <head>
                <style>
            div
            {
                text-align:center; 
                width:48%;
                border:2px solid black;
            }
            td,th
            {
                font-size:larger;
                padding:20px;
                text-align:center !important;
            }
                </style>
            </head>
            <body>
                <h1 style="text-align:center;">Employee Management System</h1>
                    <table border="2" align="center">
                        <tr bgcolor="grey">
                            <th style="text-align:left">ID</th>
                            <th style="text-align:left">Name</th>
                            <th style="text-align:left">Age</th>
                            <th style="text-align:left">Salary</th>
                            <th style="text-align:left">Email</th>
                            <th style="text-align:left">MobNum</th>
                            <th style="text-align:left">Designation</th>
                            <th style="text-align:left">Promotion</th>
                        </tr>
                        <xsl:for-each select="Company/Employee">
                            <tr>
                                <td>
                                    <xsl:value-of select="ID"/>
                                </td>
                                <td>
                                    <xsl:value-of select="Name"/>
                                </td>
                                <td>
                                    <xsl:value-of select="Age"/>
                                </td>
                                <td>
                                    <xsl:value-of select="Salary"/>
                                </td>
                                <td>
                                    <xsl:value-of select="Email"/>
                                </td>
                                <td>
                                    <xsl:value-of select="MobNum"/>
                                </td>
                                <td>
                                    <xsl:value-of select="Designation"/>
                                </td>
                                <td>
                                    <xsl:if test="Age &gt;= 50">
                                        <span>Associate Project Manager</span>
                                    </xsl:if>
                                    <xsl:if test="(Age &gt;= 40) and (Age &lt;= 49)">
                                        <span>Team Leader</span>
                                    </xsl:if>
                                    <xsl:if test="Age &lt; 40">
                                        <span>Developer</span>
                                    </xsl:if>
                                </td>
                            </tr>
                        </xsl:for-each>
                    </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
