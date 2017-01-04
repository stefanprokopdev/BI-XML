<xsl:stylesheet version = '2.0' xmlns:xsl='http://www.w3.org/1999/XSL/Transform'>
	<xsl:output method='html' />

	<xsl:template match='/countries/country'>
		<!-- MAIN PAGE -->
		<xsl:result-document href="web/{@iso-code}.html">
			<html>
			<head>
				<title><xsl:value-of select="government/country-name/@short-form" /></title>
				<link rel="stylesheet" href="style/css/bootstrap.min.css" />
				<link rel="stylesheet" href="style/css/bootstrap-theme.min.css" />
			</head>
			<body>
				<div class="container">
					<nav class="navbar navbar-inverse navbar-fixed-top" style="background: #4caf50; color: white;">
				      <div class="container-fluid">
				        <div class="navbar-header">
				          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
				            <span class="sr-only">Toggle navigation</span>
				            <span class="icon-bar"></span>
				            <span class="icon-bar"></span>
				            <span class="icon-bar"></span>
				          </button>
				          <a style="color: white;" class="navbar-brand" href="{@iso-code}.html">
			              	<b><xsl:value-of select="government/country-name/@short-form" /></b>
			              </a>
				        </div>
				        <div id="navbar" class="navbar-collapse collapse">
				          <ul class="nav navbar-nav navbar-left">
				            <li><a style="color: white;" href="index.html">index</a></li>
			                <xsl:apply-templates select="child::node()" />
				          </ul>
				        </div>
				      </div>
				    </nav>
			        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel" style="margin-top: 60px;">
					  	<div class="carousel-inner" role="listbox">
							<xsl:apply-templates mode="index-page" select="images/image" />
					  	</div>

					  	<a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
					    	<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
					    	<span class="sr-only">Previous</span>
					  	</a>
					  	<a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
					    	<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
					    	<span class="sr-only">Next</span>
					  	</a>
					</div>

					<xsl:message>
						
					</xsl:message>
				</div>

			<script type="text/javascript" src="style/js/jquery-1.12.4.min.js"></script>
			<script type="text/javascript" src="style/js/bootstrap.min.js"></script>
			</body>
			</html>
			<xsl:text>&#xA;</xsl:text>
		</xsl:result-document>
		<!-- /MAIN PAGE -->

		<!-- IMAGES PAGE -->
		<xsl:result-document href="web/{@iso-code}-images.html">
			<html>
			<head>
				<title><xsl:value-of select="government/country-name/@short-form" /> | Images</title>
				<link rel="stylesheet" href="style/css/bootstrap.min.css" />
				<link rel="stylesheet" href="style/css/bootstrap-theme.min.css" />
			</head>
			<body>
				<div class="container">
					<nav class="navbar navbar-inverse navbar-fixed-top" style="background: #4caf50; color: white;">
				      <div class="container-fluid">
				        <div class="navbar-header">
				          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
				            <span class="sr-only">Toggle navigation</span>
				            <span class="icon-bar"></span>
				            <span class="icon-bar"></span>
				            <span class="icon-bar"></span>
				          </button>
				          <a style="color: white;" class="navbar-brand" href="{@iso-code}.html">
			              	<b><xsl:value-of select="government/country-name/@short-form" /></b>
			              </a>
				        </div>
				        <div id="navbar" class="navbar-collapse collapse">
				          <ul class="nav navbar-nav navbar-left">
				            <li><a style="color: white;" href="index.html">index</a></li>
			                <xsl:apply-templates select="child::node()" />
				          </ul>
				        </div>
				      </div>
				    </nav>
					<h1 style="margin-top: 65px;">
						Images
					</h1>
					<div class="row" style="margin-top: 10px;">
						<xsl:apply-templates mode="single-page" select="images/image" />
					</div>
				</div>
			</body>
			</html>
		</xsl:result-document>
		<!-- /IMAGES PAGE -->

		<!-- BACKGROUND PAGE -->
		<xsl:result-document href="web/{@iso-code}-background.html">
			<html>
			<head>
				<title><xsl:value-of select="government/country-name/@short-form" /> | Background</title>
				<link rel="stylesheet" href="style/css/bootstrap.min.css" />
				<link rel="stylesheet" href="style/css/bootstrap-theme.min.css" />
			</head>
			<body>
				<div class="container">
					<nav class="navbar navbar-inverse navbar-fixed-top" style="background: #4caf50; color: white;">
				      <div class="container-fluid">
				        <div class="navbar-header">
				          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
				            <span class="sr-only">Toggle navigation</span>
				            <span class="icon-bar"></span>
				            <span class="icon-bar"></span>
				            <span class="icon-bar"></span>
				          </button>
				          <a style="color: white;" class="navbar-brand" href="{@iso-code}.html">
			              	<b><xsl:value-of select="government/country-name/@short-form" /></b>
			              </a>
				        </div>
				        <div id="navbar" class="navbar-collapse collapse">
				          <ul class="nav navbar-nav navbar-left">
				            <li><a style="color: white;" href="index.html">index</a></li>
			                <xsl:apply-templates select="child::node()" />
				          </ul>
				        </div>
				      </div>
				    </nav>
					<h1 style="margin-top: 65px;">
						Background
					</h1>
					<div class="jumbotron" style="margin-top: 10px;">
						  <p><xsl:value-of select="background" /></p>
					</div>
				</div>
			</body>
			</html>
		</xsl:result-document>
		<!-- /BACKGROUND PAGE -->

		<!-- GEOGRAPHY PAGE -->
		<xsl:result-document href="web/{@iso-code}-geography.html">
			<html>
			<head>
				<title><xsl:value-of select="government/country-name/@short-form" /> | Geography</title>
				<link rel="stylesheet" href="style/css/bootstrap.min.css" />
				<link rel="stylesheet" href="style/css/bootstrap-theme.min.css" />
			</head>
			<body>
				<div class="container">
					<nav class="navbar navbar-inverse navbar-fixed-top" style="background: #4caf50; color: white;">
				      <div class="container-fluid">
				        <div class="navbar-header">
				          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
				            <span class="sr-only">Toggle navigation</span>
				            <span class="icon-bar"></span>
				            <span class="icon-bar"></span>
				            <span class="icon-bar"></span>
				          </button>
				          <a style="color: white;" class="navbar-brand" href="{@iso-code}.html">
			              	<b><xsl:value-of select="government/country-name/@short-form" /></b>
			              </a>
				        </div>
				        <div id="navbar" class="navbar-collapse collapse">
				          <ul class="nav navbar-nav navbar-left">
				            <li><a style="color: white;" href="index.html">index</a></li>
			                <xsl:apply-templates select="child::node()" />
				          </ul>
				        </div>
				      </div>
				    </nav>
					<h1 style="margin-top: 65px;">
						Geography
					</h1>
					<table class="table table-hover" style="margin-top: 10px;">
						<tr>
							<td>
								<b>Geographic Coordinates:</b>
							</td>
							<td>
								<xsl:choose>
									<xsl:when test="geography/@coordinate-s">
										<xsl:value-of select="geography/@coordinate-s" /> S, 
										<xsl:value-of select="geography/@coordinate-e" /> E
									</xsl:when>
									<xsl:otherwise>
										<xsl:value-of select="geography/@coordinate-n" /> N, 
										<xsl:value-of select="geography/@coordinate-w" /> W
									</xsl:otherwise>
								</xsl:choose>
							</td>
						</tr>
						<tr>
							<td>
								<b>Location:</b>
							</td>
							<td>
								<xsl:value-of select="geography/location/@value" />
							</td>
						</tr>
						<tr>
							<td>
								<b>Map References:</b>
							</td>
							<td>
								<xsl:value-of select="geography/map-references/@value" />
							</td>
						</tr>
						<tr>
							<td>
								<b>Area:</b>
							</td>
							<td>
								<ul>
									<xsl:apply-templates select="geography/area" />
								</ul>
							</td>
						</tr>
						<tr>
							<td>
								<b>Area Comparative:</b>
							</td>
							<td>
								<xsl:value-of select="geography/area-comparative/@value" />
								<br />
								<a href="{geography/area-comparative/@area-comparison-map}"><img width="200" height="200" src="{geography/area-comparative/@area-comparison-map}" alt="Area Comparative Map" /></a>
							</td>
						</tr>
						<tr>
							<td>
								<b>Land Boundaries:</b>
							</td>
							<td>
								<ul>
									<xsl:apply-templates select="geography/land-boundaries/border-countries" />
								</ul>
							</td>
						</tr>
						<tr>
							<td>
								<b>Coastline:</b>
							</td>
							<td>
								<ul>
									<xsl:value-of select="geography/land-boundaries/coastline/@value" />
								</ul>
							</td>
						</tr>
						<tr>
							<td>
								<b>Maritime Claims:</b>
							</td>
							<td>
								<ul>
									<xsl:apply-templates select="geography/maritime-claims" />
								</ul>
							</td>
						</tr>
						<tr>
							<td>
								<b>Climate:</b>
							</td>
							<td>
								<xsl:value-of select="geography/climate/@value" />
							</td>
						</tr>
						<tr>
							<td>
								<b>Terrain:</b>
							</td>
							<td>
								<xsl:value-of select="geography/terrain/@value" />
							</td>
						</tr>
						<tr>
							<td>
								<b>Elevation:</b>
							</td>
							<td>
								<ul>
									<xsl:apply-templates select="geography/elevation" />
								</ul>
							</td>
						</tr>
						<tr>
							<td>
								<b>Natural Resources:</b>
							</td>
							<td>
								<xsl:value-of select="geography/natural-resources/@value" />
							</td>
						</tr>
						<tr>
							<td>
								<b>Land Use:</b>
							</td>
							<td>
								<ul>
									<xsl:apply-templates select="geography/land-use" />
								</ul>
							</td>
						</tr>
						<tr>
							<td>
								<b>Irrigated Land:</b>
							</td>
							<td>
								<xsl:value-of select="geography/irrigated-land/@value" />
							</td>
						</tr>
						<tr>
							<td>
								<b>Population:</b>
							</td>
							<td>
								<xsl:value-of select="geography/population" />
							</td>
						</tr>
						<tr>
							<td>
								<b>Natural Hazards:</b>
							</td>
							<td>
								<xsl:value-of select="geography/natural-hazards/@value" />
								<xsl:choose>
									<xsl:when test="geography/natural-hazards/volcanism">
										<br /><br />
										<i style="text-decoration: underline;">Volcanism:</i>
										<p>
											<xsl:value-of select="geography/natural-hazards/volcanism" />
										</p>
									</xsl:when>
								</xsl:choose>
							</td>
						</tr>
						<tr>
							<td>
								<b>Environment:</b>
							</td>
							<td>
								<ul>
									<xsl:apply-templates select="geography/environment" />
								</ul>
							</td>
						</tr>
						<tr>
							<td>
								<b>Note:</b>
							</td>
							<td>
								<xsl:value-of select="geography/note" />
							</td>
						</tr>
					</table>
				</div>
			</body>
			</html>
		</xsl:result-document>
		<!-- /GEOGRAPHY PAGE -->

		<!-- PEOPLE SOCIETY PAGE -->
		<xsl:result-document href="web/{@iso-code}-people-society.html">
			<html>
			<head>
				<title><xsl:value-of select="government/country-name/@short-form" /> | People Society</title>
				<link rel="stylesheet" href="style/css/bootstrap.min.css" />
				<link rel="stylesheet" href="style/css/bootstrap-theme.min.css" />
			</head>
			<body>
				<div class="container">
					<nav class="navbar navbar-inverse navbar-fixed-top" style="background: #4caf50; color: white;">
				      <div class="container-fluid">
				        <div class="navbar-header">
				          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
				            <span class="sr-only">Toggle navigation</span>
				            <span class="icon-bar"></span>
				            <span class="icon-bar"></span>
				            <span class="icon-bar"></span>
				          </button>
				          <a style="color: white;" class="navbar-brand" href="{@iso-code}.html">
			              	<b><xsl:value-of select="government/country-name/@short-form" /></b>
			              </a>
				        </div>
				        <div id="navbar" class="navbar-collapse collapse">
				          <ul class="nav navbar-nav navbar-left">
				            <li><a style="color: white;" href="index.html">index</a></li>
			                <xsl:apply-templates select="child::node()" />
				          </ul>
				        </div>
				      </div>
				    </nav>
					<h1 style="margin-top: 65px;">
						People Society
					</h1>
					<ul class="nav nav-pills">
						<li><a href='{@iso-code}-ethnic-groups.html'>Ethnic Groups</a></li>
						<li><a href='{@iso-code}-religions.html'>Religions</a></li>
						<li><a href='{@iso-code}-age-structure.html'>Age Structure</a></li>
						<li><a href='{@iso-code}-urbanization.html'>Urbanization</a></li>
					</ul>
					<h2>Basic Info</h2>
					<table class="table table-hover">
						<tr>
							<td><b>Population:</b></td>
							<td>
								<xsl:value-of select="people-society/people" />
							</td>
						</tr>
						<tr>
							<td><b>Nationality:</b></td>
							<td>
								<xsl:apply-templates select="people-society/nationality" />
							</td>
						</tr>
						<tr>
							<td><b>Languages:</b></td>
							<td>
								<ul>
									<xsl:apply-templates select="people-society/languages" />
								</ul>
								<xsl:value-of select="people-society/languages/@note" />
							</td>
						</tr>
						<tr>
							<td><b>Dependency Ratios:</b></td>
							<td>
								<ul>
									<xsl:apply-templates select="people-society/dependency-ratios" />
								</ul>
							</td>
						</tr>
						<tr>
							<td><b>Population Growth Rate:</b></td>
							<td>
								<xsl:value-of select="people-society/population-growth-rate" />
							</td>
						</tr>
						<tr>
							<td><b>Birth Rate:</b></td>
							<td>
								<xsl:value-of select="people-society/birth-rate" />
							</td>
						</tr>
						<tr>
							<td><b>Death Rate:</b></td>
							<td>
								<xsl:value-of select="people-society/death-rate" />
							</td>
						</tr>
						<tr>
							<td><b>Net Migration Rate:</b></td>
							<td>
								<xsl:value-of select="people-society/net-migration-rate" />
							</td>
						</tr>
						<tr>
							<td><b>Sex Ration:</b></td>
							<td>
								<ul>
									<xsl:apply-templates select="people-society/sex-ratio" />
								</ul>
							</td>
						</tr>
						<tr>
							<td><b>Mothers Age Birth:</b></td>
							<td>
								<xsl:value-of select="people-society/mothers-age-birth/@age" /> years
								<br />
								<i>Note: <xsl:value-of select="people-society/mothers-age-birth/@note" /></i>
							</td>
						</tr>
						<tr>
							<td><b>Maternal Mortality Rate:</b></td>
							<td>
								<xsl:value-of select="people-society/maternal-mortality-rate/@value" />
							</td>
						</tr>
						<tr>
							<td><b>Infant Mortality Rate:</b></td>
							<td>
								<ul>
									<xsl:apply-templates select="people-society/infant-mortality-rate" />
								</ul>
							</td>
						</tr>
						<tr>
							<td><b>Life Expectancy at Birth:</b></td>
							<td>
								<ul>
									<xsl:apply-templates select="people-society/life-expectancy-at-birth" />
								</ul>
							</td>
						</tr>
						<tr>
							<td><b>Total Fertility Rate:</b></td>
							<td>
								<xsl:value-of select="people-society/total-fertility-rate/@value" />
							</td>
						</tr>
						<tr>
							<td><b>Contraceptive Rate:</b></td>
							<td>
								<xsl:value-of select="people-society/contraceptive-rate/@value" />
							</td>
						</tr>
						<tr>
							<td><b>Health Expenditures:</b></td>
							<td>
								<xsl:value-of select="people-society/health-expenditures/@value" />
							</td>
						</tr>
						<tr>
							<td><b>Physicians Density:</b></td>
							<td>
								<xsl:value-of select="people-society/physicians-density/@value" />
							</td>
						</tr>
						<tr>
							<td><b>Hospital Bed Density:</b></td>
							<td>
								<xsl:value-of select="people-society/hospital-bed-density/@value" />
							</td>
						</tr>
						<tr>
							<td><b>Drinking Water Source - Improved:</b></td>
							<td>
								<xsl:apply-templates select="people-society/drinking-water-source/improved" />
							</td>
						</tr>
						<tr>
							<td><b>Drinking Water Source - Unimproved:</b></td>
							<td>
								<xsl:apply-templates select="people-society/drinking-water-source/unimproved" />
							</td>
						</tr>
						<tr>
							<td><b>Sanitation Facility Access - Improved:</b></td>
							<td>
								<xsl:apply-templates select="people-society/sanitation-facility-access/improve" />
							</td>
						</tr>
						<tr>
							<td><b>Sanitation Facility Access - Unimproved:</b></td>
							<td>
								<xsl:apply-templates select="people-society/sanitation-facility-access/unimprove" />
							</td>
						</tr>
						<tr>
							<td><b>HIV / AIDS:</b></td>
							<td>
								<ul>
									<li>Rate: <xsl:value-of select="people-society/hiv-aids/rate/@value" /></li>
									<li>Living with: <xsl:value-of select="people-society/hiv-aids/living-with/@value" /></li>
									<li>Deaths: <xsl:value-of select="people-society/hiv-aids/deaths/@value" /></li>
								</ul>
							</td>
						</tr>
						<tr>
							<td>
								<xsl:choose>
									<xsl:when test="people-society/major-infections-deseases/@degree-of-risk = 'very high'">
										<span class="label label-danger">Degree of risk: Very High</span>
									</xsl:when>
									<xsl:when test="people-society/major-infections-deseases/@degree-of-risk = 'intermediate'">
										<span class="label label-warning">Degree of risk: Intermediate</span>
									</xsl:when>
								</xsl:choose>
								<br /><br />
								<b>Major Infections Deseases:</b>
							</td>
							<td>
								<ul>
									<xsl:apply-templates select="people-society/major-infections-deseases" />
								</ul>
								<i>Note: <xsl:value-of select="people-society/major-infections-deseases/@note" /></i>
							</td>
						</tr>
						<tr>
							<td><b>Obesity:</b></td>
							<td>
								<xsl:value-of select="people-society/obesity/@percentage" />%
							</td>
						</tr>
						<tr>
							<td><b>Children Underweight:</b></td>
							<td>
								<xsl:value-of select="people-society/children-underweight/@percentage" />%
								<br />
								<i>Description: <xsl:value-of select="people-society/children-underweight/@description" /></i>
							</td>
						</tr>
						<tr>
							<td><b>Education Expanditures:</b></td>
							<td>
								<xsl:value-of select="people-society/education-expanditures/@value" />
							</td>
						</tr>
						<tr>
							<td><b>Literacy:</b></td>
							<td>
								<i>Definition: <xsl:value-of select="people-society/literacy/@definition" /></i>
								<ul>
									<xsl:apply-templates select="people-society/literacy" />
								</ul>
							</td>
						</tr>
						<tr>
							<td><b>School life:</b></td>
							<td>
								<i>Description: <xsl:value-of select="people-society/school-life/@description" /></i>
								<ul>
									<xsl:apply-templates select="people-society/school-life" />
								</ul>
							</td>
						</tr>
						<tr>
							<td><b>Child labor:</b></td>
							<td>
								<ul>
									<xsl:apply-templates select="people-society/child-labor" />
								</ul>
							</td>
						</tr>
						<tr>
							<td><b>Unemploynment:</b></td>
							<td>
								<i>Description: <xsl:value-of select="people-society/unemployment/@description" /></i>
								<ul>
									<xsl:apply-templates select="people-society/unemployment" />
								</ul>
							</td>
						</tr>
					</table>
					<xsl:choose>
						<xsl:when test="people-society/demographic">
							<div class="jumbotron" style="margin-top: 10px;">
								<h3></h3>
								  <p><xsl:value-of select="people-society/demographic" /></p>
							</div>
						</xsl:when>
					</xsl:choose>
				</div>
			</body>
			</html>
		</xsl:result-document>
		<!-- /PEOPLE SOCIETY PAGE -->

		<!-- ETHNIC GROUPS -->
		<xsl:result-document href="web/{@iso-code}-ethnic-groups.html">
			<html>
			<head>
				<title><xsl:value-of select="government/country-name/@short-form" /> | Ethnic Groups</title>
				<link rel="stylesheet" href="style/css/bootstrap.min.css" />
				<link rel="stylesheet" href="style/css/bootstrap-theme.min.css" />

				<script type="text/javascript" src="style/js/jquery-1.12.4.min.js"></script>
				<script type="text/javascript" src="style/js/bootstrap.min.js"></script>
				<script src="https://code.highcharts.com/highcharts.js"></script>
				<script src="https://code.highcharts.com/modules/data.js"></script>
				<script src="https://code.highcharts.com/modules/drilldown.js"></script>
				<script>
					$(function () {
					    Highcharts.chart('container', {
					        chart: {
					            type: 'pie'
					        },
					        title: {
					            text: 'Ethnic Groups'
					        },
					        subtitle: {
					            text: 'Ethnic Groups'
					        },
					        plotOptions: {
					            series: {
					                dataLabels: {
					                    enabled: true,
					                    format: '{point.name}: {point.y:.1f}%'
					                }
					            }
					        },

					        tooltip: {
					            headerFormat: '<span style="font-size:11px">{series.name}</span><br />',
					            pointFormat: '<span style="color:{point.color}">{point.name}</span>: <b>{point.y:.2f}%</b> of total<br />'
					        },
					        series: [{
					            name: 'Brands',
					            colorByPoint: true,
					            data: [
					            <xsl:apply-templates select="people-society/ethnic-groups" />
					            ]
					        }]
					    });
					});
				</script>
			</head>
			<body>
				<div class="container">
					<nav class="navbar navbar-inverse navbar-fixed-top" style="background: #4caf50; color: white;">
				      <div class="container-fluid">
				        <div class="navbar-header">
				          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
				            <span class="sr-only">Toggle navigation</span>
				            <span class="icon-bar"></span>
				            <span class="icon-bar"></span>
				            <span class="icon-bar"></span>
				          </button>
				          <a style="color: white;" class="navbar-brand" href="{@iso-code}.html">
			              	<b><xsl:value-of select="government/country-name/@short-form" /></b>
			              </a>
				        </div>
				        <div id="navbar" class="navbar-collapse collapse">
				          <ul class="nav navbar-nav navbar-left">
				            <li><a style="color: white;" href="index.html">index</a></li>
			                <xsl:apply-templates select="child::node()" />
				          </ul>
				        </div>
				      </div>
				    </nav>
					<h1 style="margin-top: 65px;">Ethnic Groups - Chart</h1>
					<a href="{@iso-code}-people-society.html"><span class="glyphicon glyphicon-chevron-left"></span> Go Back</a>
					<br /><br />
					<div id="container" style="min-width: 310px; height: 400px; max-width: 600px; margin: 0 auto"></div>
				</div>
			</body>
			</html>
		</xsl:result-document>
		<!-- /ETHNIC GROUPS -->

		<!-- RELIGIONS -->
		<xsl:result-document href="web/{@iso-code}-religions.html">
			<html>
			<head>
				<title><xsl:value-of select="government/country-name/@short-form" /> | Religions</title>
				<link rel="stylesheet" href="style/css/bootstrap.min.css" />
				<link rel="stylesheet" href="style/css/bootstrap-theme.min.css" />

				<script type="text/javascript" src="style/js/jquery-1.12.4.min.js"></script>
				<script type="text/javascript" src="style/js/bootstrap.min.js"></script>
				<script src="https://code.highcharts.com/highcharts.js"></script>
				<script src="https://code.highcharts.com/modules/data.js"></script>
				<script src="https://code.highcharts.com/modules/drilldown.js"></script>
				<script>
					$(function () {
					    Highcharts.chart('container', {
					        chart: {
					            type: 'pie'
					        },
					        title: {
					            text: 'Religions'
					        },
					        subtitle: {
					            text: 'Religions'
					        },
					        plotOptions: {
					            series: {
					                dataLabels: {
					                    enabled: true,
					                    format: '{point.name}: {point.y:.1f}%'
					                }
					            }
					        },

					        tooltip: {
					            headerFormat: '<span style="font-size:11px">{series.name}</span><br />',
					            pointFormat: '<span style="color:{point.color}">{point.name}</span>: <b>{point.y:.2f}%</b> of total<br />'
					        },
					        series: [{
					            name: 'Religions',
					            colorByPoint: true,
					            data: [
					            <xsl:apply-templates select="people-society/religions" />
					            ]
					        }]
					    });
					});
				</script>
			</head>
			<body>
				<div class="container">
					<nav class="navbar navbar-inverse navbar-fixed-top" style="background: #4caf50; color: white;">
				      <div class="container-fluid">
				        <div class="navbar-header">
				          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
				            <span class="sr-only">Toggle navigation</span>
				            <span class="icon-bar"></span>
				            <span class="icon-bar"></span>
				            <span class="icon-bar"></span>
				          </button>
				          <a style="color: white;" class="navbar-brand" href="{@iso-code}.html">
			              	<b><xsl:value-of select="government/country-name/@short-form" /></b>
			              </a>
				        </div>
				        <div id="navbar" class="navbar-collapse collapse">
				          <ul class="nav navbar-nav navbar-left">
				            <li><a style="color: white;" href="index.html">index</a></li>
			                <xsl:apply-templates select="child::node()" />
				          </ul>
				        </div>
				      </div>
				    </nav>
					<h1 style="margin-top: 65px;">Religions - Chart</h1>
					<a href="{@iso-code}-people-society.html"><span class="glyphicon glyphicon-chevron-left"></span> Go Back</a>
					<br /><br />
					<div id="container" style="min-width: 310px; height: 400px; max-width: 600px; margin: 0 auto"></div>
				</div>
			</body>
			</html>
		</xsl:result-document>
		<!-- /RELIGIONS -->

		<!-- AGE STRUCTURE -->
		<xsl:result-document href="web/{@iso-code}-age-structure.html">
			<html>
			<head>
				<title><xsl:value-of select="government/country-name/@short-form" /> | Age Structure</title>
				<link rel="stylesheet" href="style/css/bootstrap.min.css" />
				<link rel="stylesheet" href="style/css/bootstrap-theme.min.css" />

				<script type="text/javascript" src="style/js/jquery-1.12.4.min.js"></script>
				<script type="text/javascript" src="style/js/bootstrap.min.js"></script>
				<script src="https://code.highcharts.com/highcharts.js"></script>
				<script src="https://code.highcharts.com/modules/data.js"></script>
				<script src="https://code.highcharts.com/modules/drilldown.js"></script>
				<script>
					$(function () {
					    Highcharts.chart('container', {
					        chart: {
					            type: 'pie'
					        },
					        title: {
					            text: 'Age Structure'
					        },
					        subtitle: {
					            text: 'Vekove skupiny - v procentech'
					        },
					        plotOptions: {
					            series: {
					                dataLabels: {
					                    enabled: true,
					                    format: '{point.name}: {point.y:.1f}'
					                }
					            }
					        },

					        tooltip: {
					            headerFormat: '<span style="font-size:11px">{series.name}</span><br />',
					            pointFormat: '<span style="color:{point.color}">{point.name}</span>: <b>{point.y:.2f}</b> of total<br />'
					        },
					        series: [{
					            name: 'Age Structure',
					            colorByPoint: true,
					            data: [
					            <xsl:apply-templates mode="percentage" select="people-society/age-structure" />
					            ]
					        }]
					    });

					    Highcharts.chart('female', {
					        chart: {
					            type: 'column'
					        },
					        title: {
					            text: 'Age Structure - Female'
					        },
					        subtitle: {
					            text: 'Vekove skupiny - zeny - pocet zen ve vekove skupine'
					        },
					        xAxis: {
					            type: 'category'
					        },
					        yAxis: {
					            title: {
					                text: 'Pocet zen ve vekove kategorii'
					            }

					        },
					        legend: {
					            enabled: false
					        },
					        plotOptions: {
					            series: {
					                borderWidth: 0,
					                dataLabels: {
					                    enabled: true,
					                    format: '{point.y:.1f}'
					                }
					            }
					        },

					        tooltip: {
					            headerFormat: '<span style="font-size:11px">{series.name}</span><br/>',
					            pointFormat: '<span style="color:{point.color}">{point.name}</span>: <b>{point.y:.2f}</b> of total<br/>'
					        },

					        series: [{
					            name: 'Age Structure - Female',
					            colorByPoint: true,
					            data: [
					            <xsl:apply-templates mode="female" select="people-society/age-structure" />
					            ]
					        }],
					    });

						Highcharts.chart('male', {
					        chart: {
					            type: 'column'
					        },
					        title: {
					            text: 'Age Structure - Male'
					        },
					        subtitle: {
					            text: 'Vekove skupiny - muzi - pocet muzu ve vekove skupine'
					        },
					        xAxis: {
					            type: 'category'
					        },
					        yAxis: {
					            title: {
					                text: 'Pocet muzu ve vekove kategorii'
					            }

					        },
					        legend: {
					            enabled: false
					        },
					        plotOptions: {
					            series: {
					                borderWidth: 0,
					                dataLabels: {
					                    enabled: true,
					                    format: '{point.y:.1f}'
					                }
					            }
					        },

					        tooltip: {
					            headerFormat: '<span style="font-size:11px">{series.name}</span><br/>',
					            pointFormat: '<span style="color:{point.color}">{point.name}</span>: <b>{point.y:.2f}</b> of total<br/>'
					        },

					        series: [{
					            name: 'Age Structure - Male',
					            colorByPoint: true,
					            data: [
					            <xsl:apply-templates mode="male" select="people-society/age-structure" />
					            ]
					        }],
			    		});
					});
				</script>
			</head>
			<body>
				<div class="container">
					<nav class="navbar navbar-inverse navbar-fixed-top" style="background: #4caf50; color: white;">
				      <div class="container-fluid">
				        <div class="navbar-header">
				          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
				            <span class="sr-only">Toggle navigation</span>
				            <span class="icon-bar"></span>
				            <span class="icon-bar"></span>
				            <span class="icon-bar"></span>
				          </button>
				          <a style="color: white;" class="navbar-brand" href="{@iso-code}.html">
			              	<b><xsl:value-of select="government/country-name/@short-form" /></b>
			              </a>
				        </div>
				        <div id="navbar" class="navbar-collapse collapse">
				          <ul class="nav navbar-nav navbar-left">
				            <li><a style="color: white;" href="index.html">index</a></li>
			                <xsl:apply-templates select="child::node()" />
				          </ul>
				        </div>
				      </div>
				    </nav>
					<h1 style="margin-top: 65px;">Age Structure - Chart</h1>
					<a href="{@iso-code}-people-society.html"><span class="glyphicon glyphicon-chevron-left"></span> Go Back</a>
					<br /><br />
					<div id="container" style="min-width: 310px; height: 400px; max-width: 600px; margin: 0 auto"></div>
					<br /><br />
					<div id="male" style="min-width: 310px; height: 400px; max-width: 600px; margin: 0 auto"></div>
					<br /><br />
					<div id="female" style="min-width: 310px; height: 400px; max-width: 600px; margin: 0 auto"></div>
					<h1>Median Age</h1>
					<ul>
						<xsl:apply-templates select="people-society/median-age" />
					</ul>
				</div>
			</body>
			</html>
		</xsl:result-document>
		<!-- /AGE STRUCTURE -->

		<!-- URBANIZATION -->
		<xsl:result-document href="web/{@iso-code}-urbanization.html">
			<html>
			<head>
				<title><xsl:value-of select="government/country-name/@short-form" /> | Urbanization</title>
				<link rel="stylesheet" href="style/css/bootstrap.min.css" />
				<link rel="stylesheet" href="style/css/bootstrap-theme.min.css" />

				<script type="text/javascript" src="style/js/jquery-1.12.4.min.js"></script>
				<script type="text/javascript" src="style/js/bootstrap.min.js"></script>
				<script src="https://code.highcharts.com/highcharts.js"></script>
				<script src="https://code.highcharts.com/modules/data.js"></script>
				<script src="https://code.highcharts.com/modules/drilldown.js"></script>
				<script>
					$(function () {
					    Highcharts.chart('container', {
					        chart: {
					            type: 'column'
					        },
					        title: {
					            text: 'Major Urban Areas'
					        },
					        subtitle: {
					            text: 'Major Urban Areas'
					        },
					        xAxis: {
					            type: 'category'
					        },
					        yAxis: {
					            title: {
					                text: 'Major Urban Areas'
					            }

					        },
					        legend: {
					            enabled: false
					        },
					        plotOptions: {
					            series: {
					                borderWidth: 0,
					                dataLabels: {
					                    enabled: true,
					                    format: '{point.y:.1f} <xsl:value-of select="people-society/major-urban-areas/@unit" />'
					                }
					            }
					        },

					        tooltip: {
					            headerFormat: '<span style="font-size:11px">{series.name}</span><br/>',
					            pointFormat: '<span style="color:{point.color}">{point.name} <xsl:value-of select="people-society/major-urban-areas/@unit" /></span>: <b>{point.y:.2f}</b> of total<br/>'
					        },

					        series: [{
					            name: 'Major Urban Areas',
					            colorByPoint: true,
					            data: [
					            <xsl:apply-templates select="people-society/major-urban-areas" />
					            ]
					        }],
					    });
					});
				</script>
			</head>
			<body>
				<div class="container">
					<nav class="navbar navbar-inverse navbar-fixed-top" style="background: #4caf50; color: white;">
				      <div class="container-fluid">
				        <div class="navbar-header">
				          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
				            <span class="sr-only">Toggle navigation</span>
				            <span class="icon-bar"></span>
				            <span class="icon-bar"></span>
				            <span class="icon-bar"></span>
				          </button>
				          <a style="color: white;" class="navbar-brand" href="{@iso-code}.html">
			              	<b><xsl:value-of select="government/country-name/@short-form" /></b>
			              </a>
				        </div>
				        <div id="navbar" class="navbar-collapse collapse">
				          <ul class="nav navbar-nav navbar-left">
				            <li><a style="color: white;" href="index.html">index</a></li>
			                <xsl:apply-templates select="child::node()" />
				          </ul>
				        </div>
				      </div>
				    </nav>
					<h1 style="margin-top: 65px;">Urbanization</h1>
					<a href="{@iso-code}-people-society.html"><span class="glyphicon glyphicon-chevron-left"></span> Go Back</a>
					<br /><br />
					<table class="table table-hover">
						<tr>
							<td><b>Urbanization:</b></td>
							<td>
								<ul>
									<li>
										<u>Urban Population: </u><xsl:value-of select="people-society/urbanization/urban-population" />
									</li>
									<li>
										<u>Rate of Urbanization: </u><xsl:value-of select="people-society/urbanization/rate-of-urbanization" />
									</li>
								</ul>
							</td>

						</tr>
					</table>
					<h1>Urbanization - Chart</h1>
					<div id="container" style="min-width: 310px; height: 400px; max-width: 600px; margin: 0 auto"></div>
				</div>
			</body>
			</html>
		</xsl:result-document>
		<!-- /URBANIZATION -->

		<!-- GOVERNMENT -->
		<xsl:result-document href="web/{@iso-code}-government.html">
			<html>
			<head>
				<title><xsl:value-of select="government/country-name/@short-form" /> | Government</title>
				<link rel="stylesheet" href="style/css/bootstrap.min.css" />
				<link rel="stylesheet" href="style/css/bootstrap-theme.min.css" />
			</head>
			<body>
				<div class="container">
					<nav class="navbar navbar-inverse navbar-fixed-top" style="background: #4caf50; color: white;">
				      <div class="container-fluid">
				        <div class="navbar-header">
				          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
				            <span class="sr-only">Toggle navigation</span>
				            <span class="icon-bar"></span>
				            <span class="icon-bar"></span>
				            <span class="icon-bar"></span>
				          </button>
				          <a style="color: white;" class="navbar-brand" href="{@iso-code}.html">
			              	<b><xsl:value-of select="government/country-name/@short-form" /></b>
			              </a>
				        </div>
				        <div id="navbar" class="navbar-collapse collapse">
				          <ul class="nav navbar-nav navbar-left">
				            <li><a style="color: white;" href="index.html">index</a></li>
			                <xsl:apply-templates select="child::node()" />
				          </ul>
				        </div>
				      </div>
				    </nav>
					<h1 style="margin-top: 65px;">
						Government (<xsl:value-of select="government/@type" />)
					</h1>
					<table class="table table-hover">
						<tr>
							<td><b>Etymology:</b></td>
							<td>
								<xsl:value-of select="government/country-name/@etymology" />
							</td>
						</tr>
					</table>
					<div class="panel panel-info">
						<div class="panel-heading">
							Capital - <xsl:value-of select="government/capital" />
						</div>
						<div class="panel-body">
							<ul>
								<xsl:choose>
									<xsl:when test="government/capital/@coordinate-e">
										<li><xsl:value-of select="government/capital/@coordinate-e" /> E</li>
										<li><xsl:value-of select="government/capital/@coordinate-s" /> S</li>
									</xsl:when>
									<xsl:otherwise>
										<li><xsl:value-of select="government/capital/@coordinate-n" /> N</li>
										<li><xsl:value-of select="government/capital/@coordinate-w" /> W</li>
									</xsl:otherwise>
								</xsl:choose>
								<li><xsl:value-of select="government/capital/@time" /></li>
								<li><xsl:value-of select="government/capital/@note" /></li>
							</ul>
						</div>
					</div>
					<div class="panel panel-success">
						<div class="panel-heading">
							Administrative Divisions
						</div>
						<div class="panel-body">
							<p>
								<xsl:value-of select="government/administrative-divisions" />
								<br />
								<i>Note: <xsl:value-of select="government/administrative-divisions/@note" /></i>
							</p>
						</div>
					</div>
					<table class="table table-hover">
						<tr>
							<td><b>Independence:</b></td>
							<td>
								<xsl:value-of select="government/independence/@date" />
							</td>
						</tr>
						<tr>
							<td><b>National Holidays:</b></td>
							<td>
								<ul>
									<xsl:apply-templates select="government/national-holiday" />
								</ul>
							</td>
						</tr>
					</table>
					<div class="panel panel-info">
						<div class="panel-heading">
							Constitution
						</div>
						<div class="panel-body">
							<p>
								<xsl:value-of select="government/constitution" />
							</p>
						</div>
					</div>
					<div class="panel panel-success">
						<div class="panel-heading">
							Legal System
						</div>
						<div class="panel-body">
							<p>
								<xsl:value-of select="government/legal-system" />
							</p>
						</div>
					</div>
					<div class="panel panel-info">
						<div class="panel-heading">
							International Law
						</div>
						<div class="panel-body">
							<p>
								<xsl:value-of select="government/international-law" />
							</p>
						</div>
					</div>
					<table class="table table-hover">
						<tr>
							<td><b>Citizenship</b></td>
							<td>
								<ul>
									<xsl:apply-templates select="government/citizenship" />
								</ul>
							</td>
						</tr>
						<tr>
							<td><b>Suffrage</b></td>
							<td>
								<ul>
									<xsl:value-of select="government/suffrage" />
								</ul>
							</td>
						</tr>
					</table>
					<div class="panel panel-success">
						<div class="panel-heading">
							Executive Branch
						</div>
						<div class="panel-body">
							<table class="table table-bordered">
								<xsl:apply-templates select="government/executive-branch" />
							</table>
						</div>
					</div>
					<div class="panel panel-info">
						<div class="panel-heading">
							Legislative Branch
						</div>
						<div class="panel-body">
							<table class="table table-bordered">
								<xsl:apply-templates select="government/legislative-branch" />
							</table>
						</div>
					</div>
					<div class="panel panel-success">
						<div class="panel-heading">
							Judicial Branch
						</div>
						<div class="panel-body">
							<table class="table table-bordered">
								<xsl:apply-templates select="government/judicial-branch" />
							</table>
						</div>
					</div>
					<h3>Political Parties</h3>
					<table class="table table-hover">
						<xsl:apply-templates select="government/political-parties" />
					</table>
					<div class="panel panel-info">
						<div class="panel-heading">
							Political Pressure
						</div>
						<div class="panel-body">
							<table class="table table-bordered">
								<xsl:value-of select="government/political-pressure" />
							</table>
						</div>
					</div>
					<div class="panel panel-success">
						<div class="panel-heading">
							International Participation Organization
						</div>
						<div class="panel-body">
							<table class="table table-bordered">
								<xsl:value-of select="government/international-participation-organization" />
							</table>
						</div>
					</div>
					<table class="table table-hover">
						<tr>
							<td><b>Diplomatic Representation - in US</b></td>
							<td>
								<ul>
									<xsl:apply-templates select="government/diplomatic-representation/in-us" />
								</ul>
							</td>
						</tr>
						<tr>
							<td><b>Diplomatic Representation - from US</b></td>
							<td>
								<ul>
									<xsl:apply-templates select="government/diplomatic-representation/from-us" />
								</ul>
							</td>
						</tr>
						<tr>
							<td><b>Flag</b></td>
							<td>
								<xsl:value-of select="government/flag/@description" />
								<br />
								<i>Note: <xsl:value-of select="government/flag/@note" /></i>
							</td>
						</tr>
						<tr>
							<td><b>National Symbols</b></td>
							<td>
								Symbol: <xsl:value-of select="government/national-symbols/@symbol" />
								<br />
								National Colors: <xsl:value-of select="government/national-symbols/@national-colors" />
							</td>
						</tr>
						<tr>
							<td><b>National Anthem</b></td>
							<td>
								<ul>
									<xsl:apply-templates select="government/national-anthem" />
									<br />
									<audio controls="">
										<source src="{government/national-anthem/@source}" type="audio/mpeg" />
									</audio>
								</ul>
							</td>
						</tr>
					</table>
				</div>
			</body>
			</html>
		</xsl:result-document>
		<!-- /GOVERNMENT -->

		<!-- ECONOMY -->
		<xsl:result-document href="web/{@iso-code}-economy.html">
			<html>
			<head>
				<title><xsl:value-of select="government/country-name/@short-form" /> | Economy</title>
				<link rel="stylesheet" href="style/css/bootstrap.min.css" />
				<link rel="stylesheet" href="style/css/bootstrap-theme.min.css" />

				<script type="text/javascript" src="style/js/jquery-1.12.4.min.js"></script>
				<script type="text/javascript" src="style/js/bootstrap.min.js"></script>
				<script src="https://code.highcharts.com/highcharts.js"></script>
				<script src="https://code.highcharts.com/modules/data.js"></script>
				<script src="https://code.highcharts.com/modules/drilldown.js"></script>
				<script>
					$(function () {
					    Highcharts.chart('container', {
					        chart: {
					            type: 'column'
					        },
					        title: {
					            text: 'Composition End Use'
					        },
					        subtitle: {
					            text: 'Composition End Use'
					        },
					        xAxis: {
					            type: 'category'
					        },
					        yAxis: {
					            title: {
					                text: 'Composition End Use'
					            }

					        },
					        legend: {
					            enabled: false
					        },
					        plotOptions: {
					            series: {
					                borderWidth: 0,
					                dataLabels: {
					                    enabled: true,
					                    format: '{point.y:.1f}<xsl:value-of select="economy/gdps/composition-end-use/@unit" />'
					                }
					            }
					        },

					        tooltip: {
					            headerFormat: '<span style="font-size:11px">{series.name}</span><br/>',
					            pointFormat: '<span style="color:{point.color}">{point.name} <xsl:value-of select="economy/gdps/composition-end-use/@unit" /></span>: <b>{point.y:.2f}</b> of total<br/>'
					        },

					        series: [{
					            name: 'Composition End Use',
					            colorByPoint: true,
					            data: [
					            <xsl:apply-templates select="economy/gdps/composition-end-use" />
					            ]
					        }],
					    });

					    Highcharts.chart('composition', {
					        chart: {
					            type: 'pie'
					        },
					        title: {
					            text: 'Composition End Sector'
					        },
					        subtitle: {
					            text: 'Composition End Sector'
					        },
					        xAxis: {
					            type: 'category'
					        },
					        yAxis: {
					            title: {
					                text: 'Composition End Sector'
					            }

					        },
					        legend: {
					            enabled: false
					        },
					        plotOptions: {
					            series: {
					                borderWidth: 0,
					                dataLabels: {
					                    enabled: true,
					                    format: '{point.y:.1f}<xsl:value-of select="economy/gdps/composition-end-sector/@unit" />'
					                }
					            }
					        },

					        tooltip: {
					            headerFormat: '<span style="font-size:11px">{series.name}</span><br/>',
					            pointFormat: '<span style="color:{point.color}">{point.name} <xsl:value-of select="economy/gdps/composition-end-sector/@unit" /></span>: <b>{point.y:.2f}</b> of total<br/>'
					        },

					        series: [{
					            name: 'Composition End Use',
					            colorByPoint: true,
					            data: [
					            <xsl:apply-templates select="economy/gdps/composition-end-sector" />
					            ]
					        }],
					    });

					    Highcharts.chart('labor', {
					        chart: {
					            type: 'pie'
					        },
					        title: {
					            text: 'Labor Force - <xsl:value-of select="economy/labor-force" />'
					        },
					        subtitle: {
					            text: 'Labor Force'
					        },
					        xAxis: {
					            type: 'category'
					        },
					        yAxis: {
					            title: {
					                text: 'Labor Force'
					            }

					        },
					        legend: {
					            enabled: false
					        },
					        plotOptions: {
					            series: {
					                borderWidth: 0,
					                dataLabels: {
					                    enabled: true,
					                    format: '{point.y:.1f}<xsl:value-of select="economy/labor-force/@unit" />'
					                }
					            }
					        },

					        tooltip: {
					            headerFormat: '<span style="font-size:11px">{series.name}</span><br/>',
					            pointFormat: '<span style="color:{point.color}">{point.name} <xsl:value-of select="economy/labor-force/@unit" /></span>: <b>{point.y:.2f}</b> of total<br/>'
					        },

					        series: [{
					            name: 'Composition End Use',
					            colorByPoint: true,
					            data: [
					            <xsl:apply-templates select="economy/labor-force" />
					            ]
					        }],
					    });

					    Highcharts.chart('partners', {
					        chart: {
					            type: 'pie'
					        },
					        title: {
					            text: 'Partners'
					        },
					        subtitle: {
					            text: 'Partners'
					        },
					        xAxis: {
					            type: 'category'
					        },
					        yAxis: {
					            title: {
					                text: 'Partners'
					            }

					        },
					        legend: {
					            enabled: false
					        },
					        plotOptions: {
					            series: {
					                borderWidth: 0,
					                dataLabels: {
					                    enabled: true,
					                    format: '{point.y:.1f}%'
					                }
					            }
					        },

					        tooltip: {
					            headerFormat: '<span style="font-size:11px">{series.name}</span><br/>',
					            pointFormat: '<span style="color:{point.color}">{point.name}%</span>: <b>{point.y:.2f}</b> of total<br/>'
					        },

					        series: [{
					            name: 'Partners',
					            colorByPoint: true,
					            data: [
					            <xsl:apply-templates select="economy/exports/partners/partner" />
					            ]
					        }],
					    });

					    Highcharts.chart('imports', {
					        chart: {
					            type: 'pie'
					        },
					        title: {
					            text: 'Partners'
					        },
					        subtitle: {
					            text: 'Partners'
					        },
					        xAxis: {
					            type: 'category'
					        },
					        yAxis: {
					            title: {
					                text: 'Partners'
					            }

					        },
					        legend: {
					            enabled: false
					        },
					        plotOptions: {
					            series: {
					                borderWidth: 0,
					                dataLabels: {
					                    enabled: true,
					                    format: '{point.y:.1f}%'
					                }
					            }
					        },

					        tooltip: {
					            headerFormat: '<span style="font-size:11px">{series.name}</span><br/>',
					            pointFormat: '<span style="color:{point.color}">{point.name}%</span>: <b>{point.y:.2f}</b> of total<br/>'
					        },

					        series: [{
					            name: 'Partners',
					            colorByPoint: true,
					            data: [
					            <xsl:apply-templates select="economy/imports/partners/partner" />
					            ]
					        }],
					    });
					});
				</script>
			</head>
			<body>
				<div class="container">
					<nav class="navbar navbar-inverse navbar-fixed-top" style="background: #4caf50; color: white;">
				      <div class="container-fluid">
				        <div class="navbar-header">
				          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
				            <span class="sr-only">Toggle navigation</span>
				            <span class="icon-bar"></span>
				            <span class="icon-bar"></span>
				            <span class="icon-bar"></span>
				          </button>
				          <a style="color: white;" class="navbar-brand" href="{@iso-code}.html">
			              	<b><xsl:value-of select="government/country-name/@short-form" /></b>
			              </a>
				        </div>
				        <div id="navbar" class="navbar-collapse collapse">
				          <ul class="nav navbar-nav navbar-left">
				            <li><a style="color: white;" href="index.html">index</a></li>
			                <xsl:apply-templates select="child::node()" />
				          </ul>
				        </div>
				      </div>
				    </nav>
				    <h1 style="margin-top: 65px;">Economy</h1>
				    <div class="panel panel-info">
						<div class="panel-heading">
							Overview
						</div>
						<div class="panel-body">
							<p>
								<xsl:value-of select="economy/overview" />
							</p>
						</div>
					</div>
					<div class="panel panel-success">
						<div class="panel-heading">
							GDP
						</div>
						<div class="panel-body">
							<i>Note: <xsl:value-of select="economy/gdps/@note" /></i>
							<p>Exchange Rate: <xsl:value-of select="economy/gdps/@exchange-rate" /></p>
							<table class="table table-hover table-bordered">
								<tr>
									<th style="text-align: center;">To</th>
									<th style="text-align: center;">Value</th>
								</tr>
								<xsl:apply-templates select="economy/gdps/gdp" />
							</table>
							<p>Real Growth Rate</p>
							<table class="table table-hover table-bordered">
								<tr>
									<th style="text-align: center;">To</th>
									<th style="text-align: center;">Value</th>
								</tr>
								<xsl:apply-templates select="economy/gdps/real-growth-rate" />
							</table>
							<p>Per Capita: <xsl:value-of select="economy/gdps/per-capita/@note" /></p>
							<table class="table table-hover table-bordered">
								<tr>
									<th style="text-align: center;">To</th>
									<th style="text-align: center;">Value</th>
								</tr>
								<xsl:apply-templates select="economy/gdps/per-capita" />
							</table>
							<p>Gross National</p>
							<table class="table table-hover table-bordered">
								<tr>
									<th style="text-align: center;">To</th>
									<th style="text-align: center;">Value</th>
								</tr>
								<xsl:apply-templates select="economy/gdps/gross-national" />
							</table>
							<div id="container" style="min-width: 310px; height: 400px; max-width: 600px; margin: 0 auto"></div>
							<div id="composition" style="min-width: 310px; height: 400px; max-width: 600px; margin: 0 auto"></div>
						</div>
					</div>
					<table class="table table-hover">
						<tr>
							<td><b>Agriculture</b></td>
							<td><xsl:value-of select="economy/agriculture/@products" /></td>
						</tr>
						<tr>
							<td><b>Industries</b></td>
							<td><xsl:value-of select="economy/industries/@value" /></td>
						</tr>
						<tr>
							<td><b>Industrial Production</b></td>
							<td><xsl:value-of select="economy/industrial-production/@rate" /></td>
						</tr>
					</table>
					<div id="labor" style="min-width: 310px; height: 400px; max-width: 600px; margin: 0 auto"></div>
					<p>Real Growth Rate</p>
					<table class="table table-hover table-bordered">
						<tr>
							<th style="text-align: center;">To</th>
							<th style="text-align: center;">Value</th>
						</tr>
						<xsl:apply-templates select="economy/unemploy" />
					</table>
					<div class="panel panel-info">
						<div class="panel-heading">
							Poverty Line - <xsl:value-of select="economy/poverty-line/@percentage" />%
						</div>
						<div class="panel-body">
							<p>
								<xsl:value-of select="economy/poverty-line/@note" />
							</p>
						</div>
					</div>
					<p>Household:</p>
					<ul>
						<xsl:apply-templates select="economy/household" />
					</ul>
					<p>Distribution of Family</p>
					<table class="table table-hover table-bordered">
						<tr>
							<th style="text-align: center;">To</th>
							<th style="text-align: center;">Value</th>
						</tr>
						<xsl:apply-templates select="economy/distribution-of-family" />
					</table>
					<p>Budget:</p>
					<ul>
						<xsl:apply-templates select="economy/budget" />
					</ul>
					<p><b>Taxes:</b>&#160;<xsl:value-of select="economy/taxes/@value" /></p>
					<p>Public Debt</p>
					<table class="table table-hover">
						<tr>
							<th style="text-align: center;">To</th>
							<th style="text-align: center;">Value</th>
						</tr>
						<xsl:apply-templates select="economy/public-debt" />
					</table>
					<p><b>Fiscal Year:</b>&#160;<xsl:value-of select="economy/fiscal-year/@value" /></p>
					<p>Inflation Rate</p>
					<table class="table table-hover">
						<tr>
							<th style="text-align: center;">To</th>
							<th style="text-align: center;">Value</th>
						</tr>
						<xsl:apply-templates select="economy/inflation-rate" />
					</table>
					<p>Bank Discount Rate</p>
					<table class="table table-hover">
						<tr>
							<th style="text-align: center;">To</th>
							<th style="text-align: center;">Value</th>
						</tr>
						<xsl:apply-templates select="economy/bank-discount-rate" />
					</table>
					<p>Stock of Narrow Money</p>
					<table class="table table-hover">
						<tr>
							<th style="text-align: center;">To</th>
							<th style="text-align: center;">Value</th>
						</tr>
						<xsl:apply-templates select="economy/stock-of-narrow-money" />
					</table>
					<p>Stock of Broad Money</p>
					<table class="table table-hover">
						<tr>
							<th style="text-align: center;">To</th>
							<th style="text-align: center;">Value</th>
						</tr>
						<xsl:apply-templates select="economy/stock-of-broad-money" />
					</table>
					<p>Stock of Domestic Credit</p>
					<table class="table table-hover">
						<tr>
							<th style="text-align: center;">To</th>
							<th style="text-align: center;">Value</th>
						</tr>
						<xsl:apply-templates select="economy/stock-of-domestic-credit" />
					</table>
					<p>Market Value</p>
					<table class="table table-hover">
						<tr>
							<th style="text-align: center;">To</th>
							<th style="text-align: center;">Value</th>
						</tr>
						<xsl:apply-templates select="economy/market-value" />
					</table>
					<p>Current Account</p>
					<table class="table table-hover">
						<tr>
							<th style="text-align: center;">To</th>
							<th style="text-align: center;">Value</th>
						</tr>
						<xsl:apply-templates select="economy/current-account" />
					</table>
					<div class="panel panel-info">
						<div class="panel-heading">
							Exports - <xsl:value-of select="economy/exports/@commodities" />
						</div>
						<div class="panel-body">
							<ul>
								<xsl:apply-templates select="economy/exports/export" />
							</ul>
							<div id="partners" style="min-width: 310px; height: 400px; max-width: 600px; margin: 0 auto"></div>
						</div>
					</div>
					<div class="panel panel-success">
						<div class="panel-heading">
							Imports - <xsl:value-of select="economy/imports/@commodities" />
						</div>
						<div class="panel-body">
							<ul>
								<xsl:apply-templates select="economy/imports/import" />
							</ul>
							<div id="imports" style="min-width: 310px; height: 400px; max-width: 600px; margin: 0 auto"></div>
						</div>
					</div>
					<p>Reserves</p>
					<table class="table table-hover table-bordered">
						<tr>
							<th style="text-align: center;">To</th>
							<th style="text-align: center;">Value</th>
						</tr>
						<xsl:apply-templates select="economy/reserves" />
					</table>
					<p>External Debt</p>
					<table class="table table-hover table-bordered">
						<tr>
							<th style="text-align: center;">To</th>
							<th style="text-align: center;">Value</th>
						</tr>
						<xsl:apply-templates select="economy/debt-external" />
					</table>
					<div class="panel panel-success">
						<div class="panel-heading">
							Stock of Investment
						</div>
						<div class="panel-body">
							<p>at Home</p>
							<table class="table table-hover table-bordered">
								<tr>
									<th style="text-align: center;">To</th>
									<th style="text-align: center;">Value</th>
								</tr>
								<xsl:apply-templates select="economy/stock-of-investment/at-home" />
							</table>
							<p>Abrad</p>
							<table class="table table-hover table-bordered">
								<tr>
									<th style="text-align: center;">To</th>
									<th style="text-align: center;">Value</th>
								</tr>
								<xsl:apply-templates select="economy/stock-of-investment/abroad" />
							</table>
						</div>
					</div>
					<div class="panel panel-info">
						<div class="panel-heading">
							Exchange Rates - <xsl:value-of select="economy/exchange-rates/@description" />
						</div>
						<div class="panel-body">
							<table class="table table-hover table-bordered">
								<tr>
									<th style="text-align: center;">To</th>
									<th style="text-align: center;">Value</th>
								</tr>
								<xsl:apply-templates select="economy/exchange-rates" />
							</table>
						</div>
					</div>
				</div>
			</body>
			</html>
		</xsl:result-document>
		<!-- /ECONOMY -->

		<!-- ENERGY -->
		<xsl:result-document href="web/{@iso-code}-energy.html">
			<html>
			<head>
				<title><xsl:value-of select="government/country-name/@short-form" /> | Energy</title>
				<link rel="stylesheet" href="style/css/bootstrap.min.css" />
				<link rel="stylesheet" href="style/css/bootstrap-theme.min.css" />
			</head>
			<body>
				<div class="container">
					<nav class="navbar navbar-inverse navbar-fixed-top" style="background: #4caf50; color: white;">
				      <div class="container-fluid">
				        <div class="navbar-header">
				          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
				            <span class="sr-only">Toggle navigation</span>
				            <span class="icon-bar"></span>
				            <span class="icon-bar"></span>
				            <span class="icon-bar"></span>
				          </button>
				          <a style="color: white;" class="navbar-brand" href="{@iso-code}.html">
			              	<b><xsl:value-of select="government/country-name/@short-form" /></b>
			              </a>
				        </div>
				        <div id="navbar" class="navbar-collapse collapse">
				          <ul class="nav navbar-nav navbar-left">
				            <li><a style="color: white;" href="index.html">index</a></li>
			                <xsl:apply-templates select="child::node()" />
				          </ul>
				        </div>
				      </div>
				    </nav>
					<h1 style="margin-top: 65px;">Energy</h1>
					<ul class="nav nav-pills">
						<xsl:apply-templates select="energy/child::node()" />
					</ul>
				</div>
			</body>
			</html>
		</xsl:result-document>
		<!-- /ENERGY -->

		<!-- ELECTRICITY -->
		<xsl:result-document href="web/{@iso-code}-electricity.html">
			<html>
			<head>
				<title><xsl:value-of select="government/country-name/@short-form" /> | Electricity</title>
				<link rel="stylesheet" href="style/css/bootstrap.min.css" />
				<link rel="stylesheet" href="style/css/bootstrap-theme.min.css" />
			</head>
			<body>
				<div class="container">
					<nav class="navbar navbar-inverse navbar-fixed-top" style="background: #4caf50; color: white;">
				      <div class="container-fluid">
				        <div class="navbar-header">
				          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
				            <span class="sr-only">Toggle navigation</span>
				            <span class="icon-bar"></span>
				            <span class="icon-bar"></span>
				            <span class="icon-bar"></span>
				          </button>
				          <a style="color: white;" class="navbar-brand" href="{@iso-code}.html">
			              	<b><xsl:value-of select="government/country-name/@short-form" /></b>
			              </a>
				        </div>
				        <div id="navbar" class="navbar-collapse collapse">
				          <ul class="nav navbar-nav navbar-left">
				            <li><a style="color: white;" href="index.html">index</a></li>
			                <xsl:apply-templates select="child::node()" />
				          </ul>
				        </div>
				      </div>
				    </nav>
					<h1 style="margin-top: 65px;">Electricity</h1>
					<a href="{@iso-code}-energy.html"><span class="glyphicon glyphicon-chevron-left"></span> Go Back</a>
					<table class="table table-hover">
						<tr>
							<td><b>Access:</b></td>
							<td>
								<ul>
									<xsl:apply-templates select="energy/electricity/e-access" />
								</ul>
							</td>
						</tr>
						<tr>
							<td><b>Production:</b></td>
							<td>
								<xsl:value-of select="energy/electricity/e-production/@value" />
							</td>
						</tr>
						<tr>
							<td><b>Consuption:</b></td>
							<td>
								<xsl:value-of select="energy/electricity/e-consuption/@value" />
							</td>
						</tr>
						<tr>
							<td><b>Exports:</b></td>
							<td>
								<xsl:value-of select="energy/electricity/e-exports/@value" />
							</td>
						</tr>
						<tr>
							<td><b>Imports:</b></td>
							<td>
								<xsl:value-of select="energy/electricity/e-imports/@value" />
							</td>
						</tr>
						<tr>
							<td><b>Generating Capacity:</b></td>
							<td>
								<xsl:value-of select="energy/electricity/e-generating-capacity/@value" />
							</td>
						</tr>
						<tr>
							<td><b>Fossil Fuels:</b></td>
							<td>
								Percentage: <xsl:value-of select="energy/electricity/e-fossil-fuel/@percentage" />
								<br />
								<i>Note: <xsl:value-of select="energy/electricity/e-fossil-fuel/@note" /></i>
							</td>
						</tr>
						<tr>
							<td><b>Source:</b></td>
							<td>
								Percentage: <xsl:value-of select="energy/electricity/e-source/@percentage" />
								<br />
								<i>Note: <xsl:value-of select="energy/electricity/e-source/@note" /></i>
							</td>
						</tr>
						<tr>
							<td><b>Nuclear Fuels:</b></td>
							<td>
								<xsl:value-of select="energy/electricity/e-nuclear-fuels/@value" /><xsl:value-of select="energy/electricity/e-nuclear-fuels/@unit" />
								<br />
								<i>Note: <xsl:value-of select="energy/electricity/e-nuclear-fuels/@note" /></i>
							</td>
						</tr>
						<tr>
							<td><b>Hydroelectric Plants:</b></td>
							<td>
								Percentage: <xsl:value-of select="energy/electricity/e-hydroelectric-plants/@percentage" />
								<br />
								<i>Note: <xsl:value-of select="energy/electricity/e-hydroelectric-plants/@note" /></i>
							</td>
						</tr>
					</table>
				</div>
			</body>
			</html>
		</xsl:result-document>
		<!-- /ELECTRICITY -->

		<!-- CRUDE OIL -->
		<xsl:result-document href="web/{@iso-code}-crude-oil.html">
			<html>
			<head>
				<title><xsl:value-of select="government/country-name/@short-form" /> | Crude Oil</title>
				<link rel="stylesheet" href="style/css/bootstrap.min.css" />
				<link rel="stylesheet" href="style/css/bootstrap-theme.min.css" />
			</head>
			<body>
				<div class="container">
					<nav class="navbar navbar-inverse navbar-fixed-top" style="background: #4caf50; color: white;">
				      <div class="container-fluid">
				        <div class="navbar-header">
				          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
				            <span class="sr-only">Toggle navigation</span>
				            <span class="icon-bar"></span>
				            <span class="icon-bar"></span>
				            <span class="icon-bar"></span>
				          </button>
				          <a style="color: white;" class="navbar-brand" href="{@iso-code}.html">
			              	<b><xsl:value-of select="government/country-name/@short-form" /></b>
			              </a>
				        </div>
				        <div id="navbar" class="navbar-collapse collapse">
				          <ul class="nav navbar-nav navbar-left">
				            <li><a style="color: white;" href="index.html">index</a></li>
			                <xsl:apply-templates select="child::node()" />
				          </ul>
				        </div>
				      </div>
				    </nav>
					<h1 style="margin-top: 65px;">Crude Oil</h1>
					<a href="{@iso-code}-energy.html"><span class="glyphicon glyphicon-chevron-left"></span> Go Back</a>
					<table class="table table-hover">
						<xsl:apply-templates select="energy/crude-oil/child::node()" />
					</table>
				</div>
			</body>
			</html>
		</xsl:result-document>
		<!-- /CRUDE OIL -->

		<!-- PETROLEUM PRODUCTS -->
		<xsl:result-document href="web/{@iso-code}-petroleum-products.html">
			<html>
			<head>
				<title><xsl:value-of select="government/country-name/@short-form" /> | Petroleum Products</title>
				<link rel="stylesheet" href="style/css/bootstrap.min.css" />
				<link rel="stylesheet" href="style/css/bootstrap-theme.min.css" />
			</head>
			<body>
				<div class="container">
					<nav class="navbar navbar-inverse navbar-fixed-top" style="background: #4caf50; color: white;">
				      <div class="container-fluid">
				        <div class="navbar-header">
				          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
				            <span class="sr-only">Toggle navigation</span>
				            <span class="icon-bar"></span>
				            <span class="icon-bar"></span>
				            <span class="icon-bar"></span>
				          </button>
				          <a style="color: white;" class="navbar-brand" href="{@iso-code}.html">
			              	<b><xsl:value-of select="government/country-name/@short-form" /></b>
			              </a>
				        </div>
				        <div id="navbar" class="navbar-collapse collapse">
				          <ul class="nav navbar-nav navbar-left">
				            <li><a style="color: white;" href="index.html">index</a></li>
			                <xsl:apply-templates select="child::node()" />
				          </ul>
				        </div>
				      </div>
				    </nav>
					<h1 style="margin-top: 65px;">Petroleum Products</h1>
					<a href="{@iso-code}-energy.html"><span class="glyphicon glyphicon-chevron-left"></span> Go Back</a>
					<table class="table table-hover">
						<xsl:apply-templates select="energy/petroleum-products/child::node()" />
					</table>
				</div>
			</body>
			</html>
		</xsl:result-document>
		<!-- /PETROLEUM PRODUCTS -->

		<!-- NATURAL GAS -->
		<xsl:result-document href="web/{@iso-code}-natural-gas.html">
			<html>
			<head>
				<title><xsl:value-of select="government/country-name/@short-form" /> | Natural Gas</title>
				<link rel="stylesheet" href="style/css/bootstrap.min.css" />
				<link rel="stylesheet" href="style/css/bootstrap-theme.min.css" />
			</head>
			<body>
				<div class="container">
					<nav class="navbar navbar-inverse navbar-fixed-top" style="background: #4caf50; color: white;">
				      <div class="container-fluid">
				        <div class="navbar-header">
				          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
				            <span class="sr-only">Toggle navigation</span>
				            <span class="icon-bar"></span>
				            <span class="icon-bar"></span>
				            <span class="icon-bar"></span>
				          </button>
				          <a style="color: white;" class="navbar-brand" href="{@iso-code}.html">
			              	<b><xsl:value-of select="government/country-name/@short-form" /></b>
			              </a>
				        </div>
				        <div id="navbar" class="navbar-collapse collapse">
				          <ul class="nav navbar-nav navbar-left">
				            <li><a style="color: white;" href="index.html">index</a></li>
			                <xsl:apply-templates select="child::node()" />
				          </ul>
				        </div>
				      </div>
				    </nav>
					<h1 style="margin-top: 65px;">Natural Gas</h1>
					<a href="{@iso-code}-energy.html"><span class="glyphicon glyphicon-chevron-left"></span> Go Back</a>
					<table class="table table-hover">
						<xsl:apply-templates select="energy/natural-gas/child::node()" />
					</table>
				</div>
			</body>
			</html>
		</xsl:result-document>
		<!-- /NATURAL GAS -->

		<!-- CARBON DIOXIDE -->
		<xsl:result-document href="web/{@iso-code}-carbon-dioxide.html">
			<html>
			<head>
				<title><xsl:value-of select="government/country-name/@short-form" /> | Carbon Dioxide</title>
				<link rel="stylesheet" href="style/css/bootstrap.min.css" />
				<link rel="stylesheet" href="style/css/bootstrap-theme.min.css" />
			</head>
			<body>
				<div class="container">
					<nav class="navbar navbar-inverse navbar-fixed-top" style="background: #4caf50; color: white;">
				      <div class="container-fluid">
				        <div class="navbar-header">
				          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
				            <span class="sr-only">Toggle navigation</span>
				            <span class="icon-bar"></span>
				            <span class="icon-bar"></span>
				            <span class="icon-bar"></span>
				          </button>
				          <a style="color: white;" class="navbar-brand" href="{@iso-code}.html">
			              	<b><xsl:value-of select="government/country-name/@short-form" /></b>
			              </a>
				        </div>
				        <div id="navbar" class="navbar-collapse collapse">
				          <ul class="nav navbar-nav navbar-left">
				            <li><a style="color: white;" href="index.html">index</a></li>
			                <xsl:apply-templates select="child::node()" />
				          </ul>
				        </div>
				      </div>
				    </nav>
					<h1 style="margin-top: 65px;">Carbon Dioxide</h1>
					<a href="{@iso-code}-energy.html"><span class="glyphicon glyphicon-chevron-left"></span> Go Back</a>
					<p><xsl:value-of select="energy/carbon-dioxide/@value" /></p>
				</div>
			</body>
			</html>
		</xsl:result-document>
		<!-- /CARBON DIOXIDE -->

		<!-- COMMUNICATIONS -->
		<xsl:result-document href="web/{@iso-code}-communications.html">
			<html>
			<head>
				<title><xsl:value-of select="government/country-name/@short-form" /> | Communications</title>
				<link rel="stylesheet" href="style/css/bootstrap.min.css" />
				<link rel="stylesheet" href="style/css/bootstrap-theme.min.css" />
			</head>
			<body>
				<div class="container">
					<nav class="navbar navbar-inverse navbar-fixed-top" style="background: #4caf50; color: white;">
				      <div class="container-fluid">
				        <div class="navbar-header">
				          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
				            <span class="sr-only">Toggle navigation</span>
				            <span class="icon-bar"></span>
				            <span class="icon-bar"></span>
				            <span class="icon-bar"></span>
				          </button>
				          <a style="color: white;" class="navbar-brand" href="{@iso-code}.html">
			              	<b><xsl:value-of select="government/country-name/@short-form" /></b>
			              </a>
				        </div>
				        <div id="navbar" class="navbar-collapse collapse">
				          <ul class="nav navbar-nav navbar-left">
				            <li><a style="color: white;" href="index.html">index</a></li>
			                <xsl:apply-templates select="child::node()" />
				          </ul>
				        </div>
				      </div>
				    </nav>
					<h1 style="margin-top: 65px;">Communications</h1>
					<div class="panel panel-info">
						<div class="panel-heading">
							Telephones
						</div>
						<div class="panel-body">
							<table class="table table-bordered">
								<tr>
									<td><b>Fixed</b></td>
									<td><xsl:value-of select="communications/telephones/fixed/@total" /></td>
								</tr>
								<tr>
									<td><b>Mobile</b></td>
									<td><xsl:value-of select="communications/telephones/mobile/@total" /></td>
								</tr>
							</table>
							<h3>General Assessment</h3>
							<p><xsl:value-of select="communications/telephones/system/general-assessment" /></p>
							<h3>Domestic</h3>
							<p><xsl:value-of select="communications/telephones/system/domestic" /></p>
							<h3>International</h3>
							<p><xsl:value-of select="communications/telephones/system/international" /></p>
						</div>
					</div>
					<div class="panel panel-success">
						<div class="panel-heading">
							Broadcast Media
						</div>
						<div class="panel-body">
							<p><xsl:value-of select="communications/broadcast-media" /></p>
						</div>
					</div>
					<div class="panel panel-info">
						<div class="panel-heading">
							Internet
						</div>
						<div class="panel-body">
							<table class="table table-bordered">
								<tr>
									<td><b>Country Code</b></td>
									<td><xsl:value-of select="communications/internet/@country-code" /></td>
								</tr>
								<tr>
									<td><b>Users</b></td>
									<td>
										<ul>
											<li><u>Total</u> - <xsl:value-of select="communications/internet/users/@total" /></li>
											<li><u>Percentage</u> - <xsl:value-of select="communications/internet/users/@percentage" />%</li>
										</ul>
									</td>
								</tr>
							</table>
						</div>
					</div>
				</div>
			</body>
			</html>
		</xsl:result-document>
		<!-- /COMMUNICATIONS -->

		<!-- TRANSPORTATION -->
		<xsl:result-document href="web/{@iso-code}-transportation.html">
			<html>
			<head>
				<title><xsl:value-of select="government/country-name/@short-form" /> | Transportation</title>
				<link rel="stylesheet" href="style/css/bootstrap.min.css" />
				<link rel="stylesheet" href="style/css/bootstrap-theme.min.css" />
			</head>
			<body>
				<div class="container">
					<nav class="navbar navbar-inverse navbar-fixed-top" style="background: #4caf50; color: white;">
				      <div class="container-fluid">
				        <div class="navbar-header">
				          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
				            <span class="sr-only">Toggle navigation</span>
				            <span class="icon-bar"></span>
				            <span class="icon-bar"></span>
				            <span class="icon-bar"></span>
				          </button>
				          <a style="color: white;" class="navbar-brand" href="{@iso-code}.html">
			              	<b><xsl:value-of select="government/country-name/@short-form" /></b>
			              </a>
				        </div>
				        <div id="navbar" class="navbar-collapse collapse">
				          <ul class="nav navbar-nav navbar-left">
				            <li><a style="color: white;" href="index.html">index</a></li>
			                <xsl:apply-templates select="child::node()" />
				          </ul>
				        </div>
				      </div>
				    </nav>
					<h1 style="margin-top: 65px;">Transportation</h1>
					<h2>National Air</h2>
					<table class="table-hover table">
						<xsl:apply-templates select="transportation/national-air" />
					</table>
					<h2>Civil Aircraft</h2>
					<p><xsl:value-of select="transportation/civil-aircraft/@country-code-prefix" /></p>
					<div class="panel panel-info">
						<div class="panel-heading">
							Airports
						</div>
						<div class="panel-body">
							<h3>Paved Runways</h3>
							<ul><xsl:apply-templates select="transportation/airports/paved-runways" /></ul>
							<h3>Unpaved Runways</h3>
							<ul><xsl:apply-templates select="transportation/airports/unpaved-runways" /></ul>
						</div>
					</div>
					<h2>Heliports</h2>
					<p><xsl:value-of select="transportation/heliports/@value" /></p>
					<div class="panel panel-success">
						<div class="panel-heading">
							Pipelines
						</div>
						<div class="panel-body">
							<xsl:apply-templates select="transportation/pipelines" />
						</div>
					</div>
					<div class="panel panel-info">
						<div class="panel-heading">
							Railways
						</div>
						<div class="panel-body">
							<ul>
								<xsl:apply-templates select="transportation/railways" />
							</ul>
						</div>
					</div>
					<div class="panel panel-success">
						<div class="panel-heading">
							Roadways
						</div>
						<div class="panel-body">
							<ul>
								<xsl:apply-templates select="transportation/roadways" />
							</ul>
						</div>
					</div>
					<h2>Waterways</h2>
					<p><xsl:value-of select="transportation/waterways/@value" /></p>
					<div class="panel panel-info">
						<div class="panel-heading">
							Merchant Marine
						</div>
						<div class="panel-body">
							<h3>by Type</h3>
							<xsl:value-of select="transportation/merchant-marine/by-type" />
							<h3>Foreign Owned</h3>
							<xsl:value-of select="transportation/merchant-marine/foreign-owned" />
							<h3>Registered in other Countries</h3>
							<xsl:value-of select="transportation/merchant-marine/registered-in-other-countries" />
						</div>
					</div>
					<div class="panel panel-success">
						<div class="panel-heading">
							Ports Terminals
						</div>
						<div class="panel-body">
							<h3>Major Seaports</h3>
							<ul>
								<xsl:apply-templates select="transportation/ports-terminals/major-seaports" />
							</ul>
							<h3>Container Ports</h3>
							<ul>
								<xsl:apply-templates select="transportation/ports-terminals/container-ports" />
							</ul>
							<h3>Oil Terminals</h3>
							<ul>
								<xsl:apply-templates select="transportation/ports-terminals/oil-terminals" />
							</ul>
							<h3>LNG Terminals Export</h3>
							<ul>
								<xsl:apply-templates select="transportation/ports-terminals/lng-terminals-export" />
							</ul>
							<h3>LNG Terminals Import</h3>
							<ul>
								<xsl:apply-templates select="transportation/ports-terminals/lng-terminals-import" />
							</ul>
							<h3>Cruise Ports</h3>
							<ul>
								<xsl:apply-templates select="transportation/ports-terminals/cruise-ports" />
							</ul>
						</div>
					</div>
					<div class="panel panel-info">
						<div class="panel-heading">
							Note
						</div>
						<div class="panel-body">
							<xsl:value-of select="transportation/note" />
						</div>
					</div>
				</div>
			</body>
			</html>
		</xsl:result-document>
		<!-- /TRANSPORTATION -->

		<!-- MILITARY SECURITY -->
		<xsl:result-document href="web/{@iso-code}-military-security.html">
			<html>
			<head>
				<title><xsl:value-of select="government/country-name/@short-form" /> | Military Security</title>
				<link rel="stylesheet" href="style/css/bootstrap.min.css" />
				<link rel="stylesheet" href="style/css/bootstrap-theme.min.css" />
			</head>
			<body>
				<div class="container">
					<nav class="navbar navbar-inverse navbar-fixed-top" style="background: #4caf50; color: white;">
				      <div class="container-fluid">
				        <div class="navbar-header">
				          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
				            <span class="sr-only">Toggle navigation</span>
				            <span class="icon-bar"></span>
				            <span class="icon-bar"></span>
				            <span class="icon-bar"></span>
				          </button>
				          <a style="color: white;" class="navbar-brand" href="{@iso-code}.html">
			              	<b><xsl:value-of select="government/country-name/@short-form" /></b>
			              </a>
				        </div>
				        <div id="navbar" class="navbar-collapse collapse">
				          <ul class="nav navbar-nav navbar-left">
				            <li><a style="color: white;" href="index.html">index</a></li>
			                <xsl:apply-templates select="child::node()" />
				          </ul>
				        </div>
				      </div>
				    </nav>
					<h1 style="margin-top: 65px;">Military Security</h1>
					<div class="panel panel-info">
						<div class="panel-heading">
							Branches
						</div>
						<div class="panel-body">
							<xsl:value-of select="military-security/branches" />
						</div>
					</div>
					<div class="panel panel-success">
						<div class="panel-heading">
							Service Age
						</div>
						<div class="panel-body">
							<xsl:value-of select="military-security/service-age" />
						</div>
					</div>
					<h2>Expenditures</h2>
					<ul>
						<xsl:apply-templates select="military-security/expenditures" />
					</ul>
				</div>
			</body>
			</html>
		</xsl:result-document>
		<!-- /MILITARY SECURITY -->

		<!-- TRANSNATIONAL ISSUES -->
		<xsl:result-document href="web/{@iso-code}-transnational-issues.html">
			<html>
			<head>
				<title><xsl:value-of select="government/country-name/@short-form" /> | Transnational Issues</title>
				<link rel="stylesheet" href="style/css/bootstrap.min.css" />
				<link rel="stylesheet" href="style/css/bootstrap-theme.min.css" />
			</head>
			<body>
				<div class="container">
					<nav class="navbar navbar-inverse navbar-fixed-top" style="background: #4caf50; color: white;">
				      <div class="container-fluid">
				        <div class="navbar-header">
				          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
				            <span class="sr-only">Toggle navigation</span>
				            <span class="icon-bar"></span>
				            <span class="icon-bar"></span>
				            <span class="icon-bar"></span>
				          </button>
				          <a style="color: white;" class="navbar-brand" href="{@iso-code}.html">
			              	<b><xsl:value-of select="government/country-name/@short-form" /></b>
			              </a>
				        </div>
				        <div id="navbar" class="navbar-collapse collapse">
				          <ul class="nav navbar-nav navbar-left">
				            <li><a style="color: white;" href="index.html">index</a></li>
			                <xsl:apply-templates select="child::node()" />
				          </ul>
				        </div>
				      </div>
				    </nav>
					<h1 style="margin-top: 65px;">Transnational Issues</h1>
					<div class="panel panel-info">
						<div class="panel-heading">
							Disputes
						</div>
						<div class="panel-body">
							<xsl:value-of select="transnational-issues/disputes" />
						</div>
					</div>
					<div class="panel panel-success">
						<div class="panel-heading">
							Refugees
						</div>
						<div class="panel-body">
							<ul>
								<xsl:apply-templates select="transnational-issues/refugees" />
							</ul>
						</div>
					</div>
					<div class="panel panel-info">
						<div class="panel-heading">
							Illict Drugs
						</div>
						<div class="panel-body">
							<xsl:value-of select="transnational-issues/illict-drugs" />
						</div>
					</div>
					<div class="panel panel-success">
						<div class="panel-heading">
							Trafficking
						</div>
						<div class="panel-body">
							<h3>Current Situation</h3>
							<xsl:value-of select="transnational-issues/trafficking/current-situation" />
							<h3>Tier Rating</h3>
							<xsl:value-of select="transnational-issues/trafficking/tier-rating" />
						</div>
					</div>
				</div>
			</body>
			</html>
		</xsl:result-document>
		<!-- /TRANSNATIONAL ISSUES -->

	</xsl:template>

	<!-- APPLY TEMPLATES -->

	<xsl:template match="images/image[1]" mode="index-page">
		<div class="item active">
			<center>
	    		<img src="{@source}" alt="Intro images" />
	    	</center>
	      	<div class="carousel-caption" style="background: rgba(0,0,0,0.8)">
	        	<xsl:value-of select="@caption" />
	      	</div>
	    </div>
	</xsl:template>

	<xsl:template match="images/image[position()>1]" mode="index-page">
		<div class="item">
			<center>
	    		<img src="{@source}" alt="Intro images" />
	    	</center>
	      	<div class="carousel-caption" style="background: rgba(0,0,0,0.8)">
	        	<xsl:value-of select="@caption" />
	      	</div>
	    </div>
	</xsl:template>

	<xsl:template match="images/image" mode="single-page">
		<div class="col-xs-6 col-md-3">
			<a href="{@source}" target="_blank" class="thumbnail">
			  	<img src="{@source}" alt="Image {position()}" />
			</a>
		</div>
	</xsl:template>

	<xsl:template match="country/child::*">
		<li>
			<a style="color: white;" href="{../@iso-code}-{name()}.html">
				<xsl:value-of select="name()" />
			</a>
		</li>
	</xsl:template>

	<xsl:param name="uppercase" select="'ABCDEFGHIJKLMNOPQRSTUVWXYZ'"/>
	<xsl:param name="lowercase" select="'abcdefghijklmnopqrstuvwxyz'"/>

	<xsl:template match="geography/area">
		<xsl:for-each select="@*">
			<xsl:choose>
				<xsl:when test="not(name() = 'unit')">
					<li>
						<xsl:value-of select="concat(upper-case(substring(name(),1,1)),
          					substring(name(), 2),' '[not(last())])" />: <xsl:value-of select="." />&#160;<xsl:value-of select="//area/@unit" />
					</li>
				</xsl:when>
			</xsl:choose>
		</xsl:for-each>
	</xsl:template>

	<xsl:template match="geography/land-boundaries/border-countries/state">
		<li>
			<xsl:value-of select="@name" /> - <xsl:value-of select="@total" />&#160;<xsl:value-of select="//border-countries/@unit" />
		</li>
	</xsl:template>

	<xsl:template match="geography/maritime-claims">
		<xsl:for-each select="@*">
			<xsl:choose>
				<xsl:when test="not(name() = 'unit')">
					<li>
						<xsl:value-of select="concat(upper-case(substring(name(),1,1)),
          					substring(name(), 2),' '[not(last())])" /> - <xsl:value-of select="." />&#160;
          					<xsl:choose>
	          					<xsl:when test="not(name() = 'value')">
	          						<xsl:value-of select="//border-countries/@unit" />
	          					</xsl:when>
          					</xsl:choose>
					</li>
				</xsl:when>
			</xsl:choose>
		</xsl:for-each>
	</xsl:template>

	<xsl:template match="geography/elevation">
		<xsl:for-each select="@*">
			<xsl:choose>
				<xsl:when test="not(name() = 'unit')">
					<li>
						<xsl:value-of select="concat(upper-case(substring(name(),1,1)),
          					substring(name(), 2),' '[not(last())])" /> - <xsl:value-of select="." />&#160;<xsl:value-of select="//elevation/@unit" />
					</li>
				</xsl:when>
			</xsl:choose>
		</xsl:for-each>
	</xsl:template>

	<xsl:template match="geography/land-use">
		<xsl:for-each select="@*">
			<xsl:choose>
				<xsl:when test="not(name() = 'unit')">
					<li>
						<xsl:value-of select="concat(upper-case(substring(name(),1,1)),
          					substring(name(), 2),' '[not(last())])" /> - <xsl:value-of select="." /><xsl:value-of select="//land-use/@unit" />
					</li>
				</xsl:when>
			</xsl:choose>
		</xsl:for-each>
	</xsl:template>

	<xsl:template match="geography/environment">
		<xsl:for-each select="@*">
			<li>
				<u>
					<xsl:value-of select="concat(upper-case(substring(name(),1,1)),
  					substring(name(), 2),' '[not(last())])" />
  				</u> - <xsl:value-of select="." />
			</li>
		</xsl:for-each>
	</xsl:template>

	<xsl:template match="people-society/nationality">
		<xsl:for-each select="@*">
			<li>
				<u>
					<xsl:value-of select="concat(upper-case(substring(name(),1,1)),
  					substring(name(), 2),' '[not(last())])" />
  				</u> - <xsl:value-of select="." />
			</li>
		</xsl:for-each>
	</xsl:template>

	<xsl:template match="people-society/ethnic-groups/ethnic-group">
		{
            name: '<xsl:value-of select="." />',
            y: <xsl:value-of select="@percentage" />
        },
	</xsl:template>

	<xsl:template match="people-society/languages/language">
		<li>
			<xsl:value-of select="." />
		</li>
	</xsl:template>

	<xsl:template match="people-society/religions/religion">
		{
            name: '<xsl:value-of select="." />',
            y: <xsl:value-of select="@percentage" />
        },
	</xsl:template>

	<xsl:template match="people-society/age-structure/structure" mode="percentage">
		{
            name: '<xsl:value-of select="@structure" />',
            y: <xsl:value-of select="@percentage" />
        },
	</xsl:template>

	<xsl:template match="people-society/age-structure/structure" mode="male">
		{
            name: '<xsl:value-of select="@structure" />',
            y: <xsl:value-of select="@male" />
        },
	</xsl:template>

	<xsl:template match="people-society/age-structure/structure" mode="female">
		{
            name: '<xsl:value-of select="@structure" />',
            y: <xsl:value-of select="@female" />
        },
	</xsl:template>

	<xsl:template match="people-society/median-age">
		<xsl:for-each select="@*">
			<xsl:choose>
				<xsl:when test="not(name() = 'unit')">
					<li>
						<xsl:value-of select="concat(upper-case(substring(name(),1,1)),
          					substring(name(), 2),' '[not(last())])" /> - <xsl:value-of select="." />&#160;<xsl:value-of select="//median-age/@unit" />
					</li>
				</xsl:when>
			</xsl:choose>
		</xsl:for-each>
	</xsl:template>

	<xsl:template match="people-society/dependency-ratios">
		<xsl:for-each select="@*">
			<xsl:choose>
				<xsl:when test="not(name() = 'unit')">
					<li>
						<xsl:value-of select="concat(upper-case(substring(name(),1,1)),
          					substring(name(), 2),' '[not(last())])" /> - <xsl:value-of select="." />&#160;<xsl:value-of select="//dependency-ratios/@unit" />
					</li>
				</xsl:when>
			</xsl:choose>
		</xsl:for-each>
	</xsl:template>

	<xsl:template match="people-society/major-urban-areas/areas">
		{
            name: '<xsl:value-of select="." />',
            y: <xsl:value-of select="@population" />
        },
	</xsl:template>

	<xsl:template match="people-society/sex-ratio/ratio">
		<li>
			<u><xsl:value-of select="." /></u> - <xsl:value-of select="@value" />
		</li>
	</xsl:template>

	<xsl:template match="people-society/infant-mortality-rate">
		<xsl:for-each select="@*">
			<xsl:choose>
				<xsl:when test="not(name() = 'unit')">
					<li>
						<xsl:value-of select="concat(upper-case(substring(name(),1,1)),
          					substring(name(), 2),' '[not(last())])" /> - <xsl:value-of select="." />&#160;<xsl:value-of select="//infant-mortality-rate/@unit" />
					</li>
				</xsl:when>
			</xsl:choose>
		</xsl:for-each>
	</xsl:template>

	<xsl:template match="people-society/life-expectancy-at-birth">
		<xsl:for-each select="@*">
			<xsl:choose>
				<xsl:when test="not(name() = 'unit')">
					<li>
						<xsl:value-of select="concat(upper-case(substring(name(),1,1)),
          					substring(name(), 2),' '[not(last())])" /> - <xsl:value-of select="." />&#160;<xsl:value-of select="//infant-mortality-rate/@unit" />
					</li>
				</xsl:when>
			</xsl:choose>
		</xsl:for-each>
	</xsl:template>

	<xsl:template match="people-society/drinking-water-source/improved">
		<xsl:for-each select="@*">
			<li>
				<xsl:value-of select="concat(upper-case(substring(name(),1,1)),
					substring(name(), 2),' '[not(last())])" /> - <xsl:value-of select="." />&#160;<xsl:value-of select="//drinking-water-source/@unit" />
			</li>
		</xsl:for-each>
	</xsl:template>

	<xsl:template match="people-society/drinking-water-source/unimproved">
		<xsl:for-each select="@*">
			<li>
				<xsl:value-of select="concat(upper-case(substring(name(),1,1)),
					substring(name(), 2),' '[not(last())])" /> - <xsl:value-of select="." />&#160;<xsl:value-of select="//drinking-water-source/@unit" />
			</li>
		</xsl:for-each>
	</xsl:template>

	<xsl:template match="people-society/sanitation-facility-access/improve">
		<xsl:for-each select="@*">
			<li>
				<xsl:value-of select="concat(upper-case(substring(name(),1,1)),
					substring(name(), 2),' '[not(last())])" /> - <xsl:value-of select="." />&#160;<xsl:value-of select="//sanitation-facility-access/@unit" />
			</li>
		</xsl:for-each>
	</xsl:template>

	<xsl:template match="people-society/sanitation-facility-access/unimprove">
		<xsl:for-each select="@*">
			<li>
				<xsl:value-of select="concat(upper-case(substring(name(),1,1)),
					substring(name(), 2),' '[not(last())])" /> - <xsl:value-of select="." />&#160;<xsl:value-of select="//sanitation-facility-access/@unit" />
			</li>
		</xsl:for-each>
	</xsl:template>

	<xsl:template match="people-society/major-infections-deseases/desease">
		<li>
			<xsl:value-of select="." />
		</li>
	</xsl:template>

	<xsl:template match="people-society/literacy">
		<xsl:for-each select="@*">
			<xsl:choose>
				<xsl:when test="not(name() = 'unit') and not(name() = 'definition')">
					<li>
						<xsl:value-of select="concat(upper-case(substring(name(),1,1)),
          					substring(name(), 2),' '[not(last())])" /> - <xsl:value-of select="." />&#160;<xsl:value-of select="//literacy/@unit" />
					</li>
				</xsl:when>
			</xsl:choose>
		</xsl:for-each>
	</xsl:template>

	<xsl:template match="people-society/school-life">
		<xsl:for-each select="@*">
			<xsl:choose>
				<xsl:when test="not(name() = 'unit') and not(name() = 'description')">
					<li>
						<xsl:value-of select="concat(upper-case(substring(name(),1,1)),
          					substring(name(), 2),' '[not(last())])" /> - <xsl:value-of select="." />&#160;<xsl:value-of select="//school-life/@unit" />
					</li>
				</xsl:when>
			</xsl:choose>
		</xsl:for-each>
	</xsl:template>

	<xsl:template match="people-society/child-labor">
		<xsl:for-each select="@*">
			<li>
				<xsl:value-of select="concat(upper-case(substring(name(),1,1)),
  					substring(name(), 2),' '[not(last())])" /> - <xsl:value-of select="." />
			</li>
		</xsl:for-each>
	</xsl:template>

	<xsl:template match="people-society/unemployment">
		<xsl:for-each select="@*">
			<xsl:choose>
				<xsl:when test="not(name() = 'unit') and not(name() = 'description')">
					<li>
						<xsl:value-of select="concat(upper-case(substring(name(),1,1)),
          					substring(name(), 2),' '[not(last())])" /> - <xsl:value-of select="." />&#160;<xsl:value-of select="/people-society/unemployment/@unit" />
					</li>
				</xsl:when>
			</xsl:choose>
		</xsl:for-each>
	</xsl:template>

	<xsl:template match="government/national-holiday/holiday">
		<li>
			<u><xsl:value-of select="@name" /></u> - <xsl:value-of select="@date" />
		</li>
	</xsl:template>

	<xsl:template match="government/citizenship">
		<xsl:for-each select="@*">
			<li>
				<xsl:value-of select="concat(upper-case(substring(name(),1,1)),
  					substring(name(), 2),' '[not(last())])" /> - <xsl:value-of select="." />
			</li>
		</xsl:for-each>
	</xsl:template>

	<xsl:template match="government/executive-branch/*">
    	<tr>
			<td>
				<b><xsl:value-of select="name()" /></b>
			</td>
			<td><xsl:value-of select="@value" /></td>
		</tr>
	</xsl:template>

	<xsl:template match="government/legislative-branch/*">
    	<tr>
			<td>
				<b><xsl:value-of select="name()" /></b>
			</td>
			<td><xsl:value-of select="." /></td>
		</tr>
	</xsl:template>

	<xsl:template match="government/judicial-branch/*">
    	<tr>
			<td>
				<b><xsl:value-of select="name()" /></b>
			</td>
			<td><xsl:value-of select="." /></td>
		</tr>
	</xsl:template>

	<xsl:template match="government/political-parties/party">
    	<tr>
			<td>
				<b><xsl:value-of select="@name" /> (<xsl:value-of select="@short" />)</b>
			</td>
			<td><xsl:value-of select="@leader" /></td>
		</tr>
	</xsl:template>

	<xsl:template match="government/diplomatic-representation/in-us">
		<xsl:for-each select="@*">
	    	<li>
				<u><xsl:value-of select="name()" /></u> - <xsl:value-of select="." />
			</li>
		</xsl:for-each>
	</xsl:template>

	<xsl:template match="government/diplomatic-representation/from-us">
		<xsl:for-each select="@*">
	    	<li>
				<u><xsl:value-of select="name()" /></u> - <xsl:value-of select="." />
			</li>
		</xsl:for-each>
	</xsl:template>

	<xsl:template match="government/national-anthem">
		<xsl:for-each select="@*">
			<xsl:choose>
				<xsl:when test="not(name() = 'source')">
					<li>
						<xsl:value-of select="concat(upper-case(substring(name(),1,1)),
          					substring(name(), 2),' '[not(last())])" /> - <xsl:value-of select="." />&#160;<xsl:value-of select="//national-anthem/@unit" />
					</li>
				</xsl:when>
			</xsl:choose>
		</xsl:for-each>
	</xsl:template>

	<xsl:template match="economy/gdps/gdp">
		<tr>
			<td><xsl:value-of select="@to" /></td>
			<td><xsl:value-of select="@unit" /><xsl:value-of select="." />&#160;<xsl:value-of select="@value" /></td>
		</tr>
	</xsl:template>

	<xsl:template match="economy/gdps/real-growth-rate/growth-rate">
		<tr>
			<td><xsl:value-of select="@to" /></td>
			<td><xsl:value-of select="." /><xsl:value-of select="//real-growth-rate/@unit" /></td>
		</tr>
	</xsl:template>

	<xsl:template match="economy/gdps/per-capita/capita">
		<tr>
			<td><xsl:value-of select="@to" /></td>
			<td><xsl:value-of select="//per-capita/@unit" /><xsl:value-of select="." /></td>
		</tr>
	</xsl:template>

	<xsl:template match="economy/gdps/gross-national/gross">
		<tr>
			<td><xsl:value-of select="@to" /></td>
			<td><xsl:value-of select="." /><xsl:value-of select="//gross-national/@unit" /></td>
		</tr>
	</xsl:template>

	<xsl:template match="economy/gdps/composition-end-use">
		<xsl:for-each select="@*">
			<xsl:choose>
				<xsl:when test="not(name() = 'unit')">
					{
			            name: '<xsl:value-of select="name()" />',
			            y: <xsl:value-of select="." />
			        },
				</xsl:when>
			</xsl:choose>
		</xsl:for-each>
	</xsl:template>

	<xsl:template match="economy/gdps/composition-end-sector">
		<xsl:for-each select="@*">
			<xsl:choose>
				<xsl:when test="not(name() = 'unit')">
					{
			            name: '<xsl:value-of select="name()" />',
			            y: <xsl:value-of select="." />
			        },
				</xsl:when>
			</xsl:choose>
		</xsl:for-each>
	</xsl:template>

	<xsl:template match="economy/labor-force">
		<xsl:for-each select="@*">
			<xsl:choose>
				<xsl:when test="not(name() = 'unit')">
					{
			            name: '<xsl:value-of select="name()" />',
			            y: <xsl:value-of select="." />
			        },
				</xsl:when>
			</xsl:choose>
		</xsl:for-each>
	</xsl:template>

	<xsl:template match="economy/unemploy/u-rate">
		<tr>
			<td><xsl:value-of select="@to" /></td>
			<td><xsl:value-of select="." /><xsl:value-of select="/economy/unemploy/@unit" /></td>
		</tr>
	</xsl:template>

	<xsl:template match="economy/household">
		<xsl:for-each select="@*">
			<xsl:choose>
				<xsl:when test="not(name() = 'unit')">
					<li>
						<b><xsl:value-of select="name()" />: </b><xsl:value-of select="." /><xsl:value-of select="//household/@unit" />
					</li>
				</xsl:when>
			</xsl:choose>
		</xsl:for-each>
	</xsl:template>

	<xsl:template match="economy/distribution-of-family/distribution">
		<tr>
			<td><xsl:value-of select="@to" /></td>
			<td><xsl:value-of select="." /></td>
		</tr>
	</xsl:template>

	<xsl:template match="economy/budget">
		<xsl:for-each select="@*">
			<li>
				<b><xsl:value-of select="name()" />: </b><xsl:value-of select="." />
			</li>
		</xsl:for-each>
	</xsl:template>

	<xsl:template match="economy/public-debt/debt">
		<tr>
			<td><xsl:value-of select="@to" /></td>
			<td><xsl:value-of select="." /></td>
		</tr>
	</xsl:template>

	<xsl:template match="economy/inflation-rate/i-rate">
		<tr>
			<td><xsl:value-of select="@to" /></td>
			<td><xsl:value-of select="." /><xsl:value-of select="/economy/inflation-rate/@unit" /></td>
		</tr>
	</xsl:template>

	<xsl:template match="economy/bank-discount-rate/b-rate">
		<tr>
			<td><xsl:value-of select="@to" /></td>
			<td><xsl:value-of select="." /><xsl:value-of select="/economy/bank-discount-rate/@unit" /></td>
		</tr>
	</xsl:template>

	<xsl:template match="economy/bank-lending-rate/b-rate">
		<tr>
			<td><xsl:value-of select="@to" /></td>
			<td><xsl:value-of select="." /><xsl:value-of select="/economy/bank-lending-rate/@unit" /></td>
		</tr>
	</xsl:template>

	<xsl:template match="economy/stock-of-narrow-money/money">
		<tr>
			<td><xsl:value-of select="@to" /></td>
			<td><xsl:value-of select="/economy/stock-of-narrow-money/@unit" /><xsl:value-of select="." />&#160;<xsl:value-of select="/economy/stock-of-narrow-money/@value" /></td>
		</tr>
	</xsl:template>

	<xsl:template match="economy/stock-of-broad-money/money">
		<tr>
			<td><xsl:value-of select="@to" /></td>
			<td><xsl:value-of select="/economy/stock-of-broad-money/@unit" /><xsl:value-of select="." />&#160;<xsl:value-of select="/economy/stock-of-broad-money/@value" /></td>
		</tr>
	</xsl:template>

	<xsl:template match="economy/stock-of-domestic-credit/money">
		<tr>
			<td><xsl:value-of select="@to" /></td>
			<td><xsl:value-of select="/economy/stock-of-domestic-credit/@unit" /><xsl:value-of select="." />&#160;<xsl:value-of select="/economy/stock-of-domestic-credit/@value" /></td>
		</tr>
	</xsl:template>

	<xsl:template match="economy/market-value/money">
		<tr>
			<td><xsl:value-of select="@to" /></td>
			<td><xsl:value-of select="/economy/market-value/@unit" /><xsl:value-of select="." />&#160;<xsl:value-of select="/economy/market-value/@value" /></td>
		</tr>
	</xsl:template>

	<xsl:template match="economy/current-account/money">
		<tr>
			<td><xsl:value-of select="@to" /></td>
			<td><xsl:value-of select="/economy/current-account/@unit" /><xsl:value-of select="." />&#160;<xsl:value-of select="/economy/current-account/@value" /></td>
		</tr>
	</xsl:template>

	<xsl:template match="economy/exports/money">
		<li>
			<xsl:value-of select="/economy/exports/@unit" /><xsl:value-of select="." />&#160;<xsl:value-of select="/economy/exports/@value" />
		</li>
	</xsl:template>

	<xsl:template match="economy/exports/partners/partner">
		{
            name: '<xsl:value-of select="." />',
            y: <xsl:value-of select="@percentage" />
        },
	</xsl:template>

	<xsl:template match="economy/imports/money">
		<li>
			<xsl:value-of select="/economy/imports/@unit" /><xsl:value-of select="." />&#160;<xsl:value-of select="/economy/imports/@value" />
		</li>
	</xsl:template>

	<xsl:template match="economy/imports/partners/partner">
		{
            name: '<xsl:value-of select="." />',
            y: <xsl:value-of select="@percentage" />
        },
	</xsl:template>

	<xsl:template match="economy/reserves/money">
		<tr>
			<td><xsl:value-of select="@to" /></td>
			<td><xsl:value-of select="/economy/reserves/@unit" /><xsl:value-of select="." />&#160;<xsl:value-of select="/economy/reserves/@value" /></td>
		</tr>
	</xsl:template>

	<xsl:template match="economy/debt-external/money">
		<tr>
			<td><xsl:value-of select="@to" /></td>
			<td><xsl:value-of select="/economy/debt-external/@unit" /><xsl:value-of select="." />&#160;<xsl:value-of select="/economy/debt-external/@value" /></td>
		</tr>
	</xsl:template>

	<xsl:template match="economy/stock-of-investment/at-home/money">
		<tr>
			<td><xsl:value-of select="@to" /></td>
			<td><xsl:value-of select="/economy/stock-of-investment/@unit" /><xsl:value-of select="." />&#160;<xsl:value-of select="/economy/stock-of-investment/@value" /></td>
		</tr>
	</xsl:template>

	<xsl:template match="economy/stock-of-investment/abroad/money">
		<tr>
			<td><xsl:value-of select="@to" /></td>
			<td><xsl:value-of select="/economy/stock-of-investment/@unit" /><xsl:value-of select="." />&#160;<xsl:value-of select="/economy/stock-of-investment/@value" /></td>
		</tr>
	</xsl:template>

	<xsl:template match="economy/exchange-rates/money">
		<tr>
			<td><xsl:value-of select="@to" /></td>
			<td><xsl:value-of select="." /></td>
		</tr>
	</xsl:template>

	<xsl:template match="energy/*">
		<li>
			<a href='{../../@iso-code}-{name()}.html'><xsl:value-of select="name()" /></a>
		</li>
	</xsl:template>

	<xsl:template match="energy/electricity/e-access">
		<xsl:for-each select="@*">
			<li>
				<u><xsl:value-of select="name()" /></u> - <xsl:value-of select="." />
			</li>
		</xsl:for-each>
	</xsl:template>

	<xsl:template match="energy/crude-oil/*">
		<tr>
			<td><b><xsl:value-of select="name()" />:</b></td>
			<td><xsl:value-of select="@value" /></td>
		</tr>
	</xsl:template>

	<xsl:template match="energy/petroleum-products/*">
		<tr>
			<td><b><xsl:value-of select="name()" />:</b></td>
			<td><xsl:value-of select="@value" /></td>
		</tr>
	</xsl:template>

	<xsl:template match="energy/natural-gas/*">
		<tr>
			<td><b><xsl:value-of select="name()" />:</b></td>
			<td><xsl:value-of select="@value" /></td>
		</tr>
	</xsl:template>

	<xsl:template match="transportation/national-air">
		<xsl:for-each select="@*">
			<tr>
				<td><b><xsl:value-of select="name()" /></b></td>
				<td><xsl:value-of select="." /></td>
			</tr>
		</xsl:for-each>
	</xsl:template>

	<xsl:template match="transportation/airports/paved-runways/runway">
		<li>
			<u><xsl:value-of select="@description" /></u> - <xsl:value-of select="@value" />
		</li>
	</xsl:template>

	<xsl:template match="transportation/airports/unpaved-runways/runway">
		<li>
			<u><xsl:value-of select="@description" /></u> - <xsl:value-of select="@value" />
		</li>
	</xsl:template>

	<xsl:template match="transportation/railways">
		<xsl:for-each select="@*">
			<li><u><xsl:value-of select="name()" /></u> - <xsl:value-of select="." />
			</li>
		</xsl:for-each>
	</xsl:template>

	<xsl:template match="transportation/roadways">
		<xsl:for-each select="@*">
			<xsl:choose>
				<xsl:when test="not(name() = 'unit')">
					<li><u><xsl:value-of select="name()" /></u> - <xsl:value-of select="." /><xsl:value-of select="/transportation/roadways/@unit" />
					</li>
				</xsl:when>
			</xsl:choose>
		</xsl:for-each>
	</xsl:template>

	<xsl:template match="transportation/ports-terminals/major-seaports/seaport">
		<li><xsl:value-of select="." /></li>
	</xsl:template>

	<xsl:template match="transportation/ports-terminals/container-ports/port">
		<li><xsl:value-of select="." />,&#160;<xsl:value-of select="@value" /></li>
	</xsl:template>

	<xsl:template match="transportation/ports-terminals/oil-terminals/terminal">
		<li><xsl:value-of select="." /></li>
	</xsl:template>

	<xsl:template match="transportation/ports-terminals/lng-terminals-export/terminal">
		<li><xsl:value-of select="." /></li>
	</xsl:template>

	<xsl:template match="transportation/ports-terminals/lng-terminals-import/terminal">
		<li><xsl:value-of select="." /></li>
	</xsl:template>

	<xsl:template match="transportation/ports-terminals/cruise-ports/port">
		<li><xsl:value-of select="." /></li>
	</xsl:template>

	<xsl:template match="military-security/expenditures/expenditure">
		<li>
			<u><xsl:value-of select="@to" /></u> - <xsl:value-of select="@value" /><xsl:value-of select="/military-security/expenditures/@unit" />
		</li>
	</xsl:template>

	<xsl:template match="transnational-issues/refugees">
		<xsl:for-each select="@*">
			<li><u><xsl:value-of select="name()" /></u> - <xsl:value-of select="." /></li>
		</xsl:for-each>
	</xsl:template>

	<!-- /APPLY TEMPLATES -->

</xsl:stylesheet>