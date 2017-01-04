<xsl:stylesheet version = '2.0' xmlns:xsl='http://www.w3.org/1999/XSL/Transform'>
	<xsl:output method='html' />

	<xsl:template match='/countries'>
		<!-- MAIN PAGE -->
		<xsl:result-document href="web/index.html">
			<html>
			<head>
				<link rel="stylesheet" href="style/css/bootstrap.min.css" />
				<link rel="stylesheet" href="style/css/bootstrap-theme.min.css" />
				<title>Index Page</title>
			</head>
			<body>
				<div class="container">
					<h1>Index Page</h1>
					<ul class="nav nav-pills nav-stacked">
						<xsl:apply-templates select="country" />
					</ul>
				</div>
			</body>
			</html>
		</xsl:result-document>
	</xsl:template>

	<xsl:template match="country">
		<li>
			<a href="{@iso-code}.html"><xsl:value-of select="government/country-name/@short-form" /></a>
		</li>
	</xsl:template>
</xsl:stylesheet>