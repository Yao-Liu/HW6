<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">
		<html>
			<head>
			</head>
			<body>
				<ol>
					<xsl:for-each select="siteList/site">
						<li>
							<xsl:value-of select="@name" />
							<xsl:text> </xsl:text>
<!-- 							<xsl:value-of select="@latitude" /> -->
							<ul>
								<xsl:for-each select="tower">
									<li>
										<xsl:value-of select="@name" />
										<xsl:text> </xsl:text>
<!-- 										<xsl:value-of select="@height" /> -->
									</li>
								</xsl:for-each>
							</ul>
						</li>
					</xsl:for-each>
				</ol>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>