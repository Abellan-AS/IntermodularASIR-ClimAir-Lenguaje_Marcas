<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <link rel="stylesheet" type="text/css" href="../css/estilo.css"/>
                <title>Reporte de Intervenciones - Climair S.L.</title>
            </head>
            <body>
                <div class="main-container">
                    <h1>Climair <span>Terminal v2.0</span></h1>
                    <p class="meta-data">SYS_DATE: 2026-03-12 | SECURE_ACCESS: GRANTED</p>
                    
                    <table>
                        <thead>
                            <tr>
                                <th>ID Parte</th>
                                <th>Cliente</th>
                                <th>Equipo</th>
                                <th>Estado</th>
                                <th>Técnico Responsable</th> </tr>
                        </thead>
                        <tbody>
                            <xsl:for-each select="partes_trabajo/intervenciones/parte">
                                <tr>
                                    <td><xsl:value-of select="@id"/></td>
                                    <td><xsl:value-of select="cliente"/></td>
                                    <td><xsl:value-of select="equipo"/></td>
                                    <td class="{estado}"><xsl:value-of select="estado"/></td>
                                    <td class="tech-name">
                                        <xsl:variable name="idTec" select="@tecnico_ref"/>
                                        <xsl:value-of select="/partes_trabajo/tecnicos/tecnico[@id=$idTec]/nombre"/>
                                    </td>
                                </tr>
                            </xsl:for-each>
                        </tbody>
                    </table>
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>