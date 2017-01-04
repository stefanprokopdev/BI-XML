<!-- http://xmlgraphics.apache.org/fop/quickstartguide.html -->

<xsl:stylesheet version="1.0"
      xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
      xmlns:fo="http://www.w3.org/1999/XSL/Format">
  <xsl:output method="xml" indent="yes"/>
  <xsl:template match="/country">
    <fo:root>
      <fo:layout-master-set>
        <fo:simple-page-master master-name="A4-portrait"
              page-height="29.7cm" page-width="21.0cm" margin="2cm">
          <fo:region-body/>
        </fo:simple-page-master>
      </fo:layout-master-set>
      <fo:page-sequence master-reference="A4-portrait">
        <fo:flow flow-name="xsl-region-body">
          <fo:block margin-top="250pt">
          	<fo:block display-align="center" text-align="center">
          		<fo:external-graphic width="100pt" height="100pt" content-width="300pt" content-height="300pt" display-align="center" src="http://fit.cvut.cz/sites/default/files/PR/logo_FIT.jpg"/>
          	</fo:block>
          	<fo:block space-before.optimum="1.5em" font-size="21pt" font-weight="bold" text-align="center">
          		Semester Work
          	</fo:block>
          	<fo:block font-size="18pt" font-weight="bold" text-align="center">
          		BI-XML
          	</fo:block>
          	<fo:block font-size="16pt" font-weight="bold" text-align="center">
          		Stefan Prokop (prokoste)
          	</fo:block>
          </fo:block>

          <!-- IMAGES -->
          <fo:block page-break-before="always">
          	<fo:block color="#0000ff" font-size="24pt" font-weight="bold">
          		<xsl:value-of select="government/country-name/@short-form" />
          	</fo:block>
          	<fo:block font-size="16pt" font-weight="bold" color="#00ff00">
          		Images
          	</fo:block>
          	<fo:block margin-top="15pt" display-align="center" text-align="center">
      			<xsl:apply-templates select="images/image" />
      		</fo:block>
          </fo:block>
          <!-- /IMAGES -->

          <!-- BACKGROUND -->
          <fo:block page-break-before="always">
          	<fo:block font-size="16pt" font-weight="bold" color="#00ff00">
          		Background
          	</fo:block>
          	<fo:block margin-top="10pt" text-align="justify">
      			<xsl:value-of select="background" />
      		</fo:block>
          </fo:block>
          <!-- /BACKGROUND -->

          <!-- GEOGRAPHY -->
          <fo:block page-break-before="always">
          	<fo:block font-size="16pt" font-weight="bold" color="#00ff00">
          		Geography
          	</fo:block>
          	<fo:block margin-top="10pt">
			  	<fo:table>
	            	<fo:table-body>
	               		<fo:table-row>
	                		<fo:table-cell border="solid black 1px" padding="2px">
	                    		<fo:block font-weight="bold">Geographic Coordinates:</fo:block>
	                  		</fo:table-cell>
	                  		<fo:table-cell border="solid black 1px" padding="2px">
	                     		<fo:block>
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
	                     		</fo:block>
	                  		</fo:table-cell>
	               		</fo:table-row>
	               		<fo:table-row>
	               			<fo:table-cell border="solid black 1px" padding="2px">
	               				<fo:block font-weight="bold">Location:</fo:block>
	               			</fo:table-cell>
	               			<fo:table-cell border="solid black 1px" padding="2px">
	               				<fo:block>
	               					<xsl:value-of select="geography/location/@value" />
	               				</fo:block>
	               			</fo:table-cell>
	               		</fo:table-row>
	               		<fo:table-row>
	               			<fo:table-cell border="solid black 1px" padding="2px">
	               				<fo:block font-weight="bold">Map References:</fo:block>
	               			</fo:table-cell>
	               			<fo:table-cell border="solid black 1px" padding="2px">
	               				<fo:block>
	               					<xsl:value-of select="geography/map-references/@value" />
	               				</fo:block>
	               			</fo:table-cell>
	               		</fo:table-row>
	               		<fo:table-row>
	               			<fo:table-cell border="solid black 1px" padding="2px">
	               				<fo:block font-weight="bold">Area:</fo:block>
	               			</fo:table-cell>
	               			<fo:table-cell border="solid black 1px" padding="2px">
	               				<fo:block>
	               					<xsl:apply-templates select="geography/area" />
	               				</fo:block>
	               			</fo:table-cell>
	               		</fo:table-row>
	               		<fo:table-row>
	               			<fo:table-cell border="solid black 1px" padding="2px">
	               				<fo:block font-weight="bold">Area Comparative:</fo:block>
	               			</fo:table-cell>
	               			<fo:table-cell border="solid black 1px" padding="2px">
	               				<fo:block>
	               					<xsl:value-of select="geography/area-comparative/@value" />
	               				</fo:block>
	               				<fo:block text-decoration="underline">
	               					<fo:basic-link color="#0000ff" external-destination="{geography/area-comparative/@area-comparison-map}">
 										Area Comparison Map
									</fo:basic-link>
	               				</fo:block>
	               			</fo:table-cell>
	               		</fo:table-row>
	               		<fo:table-row>
	               			<fo:table-cell border="solid black 1px" padding="2px">
	               				<fo:block font-weight="bold">Land Boundaries:</fo:block>
	               			</fo:table-cell>
	               			<fo:table-cell border="solid black 1px" padding="2px">
	               				<fo:block>
	               					<xsl:apply-templates select="geography/land-boundaries/border-countries" />
	               				</fo:block>
	               			</fo:table-cell>
	               		</fo:table-row>
	               		<fo:table-row>
	               			<fo:table-cell border="solid black 1px" padding="2px">
	               				<fo:block font-weight="bold">Coastline:</fo:block>
	               			</fo:table-cell>
	               			<fo:table-cell border="solid black 1px" padding="2px">
	               				<fo:block>
	               					<xsl:value-of select="geography/land-boundaries/coastline/@value" />
	               				</fo:block>
	               			</fo:table-cell>
	               		</fo:table-row>
	               		<fo:table-row>
	               			<fo:table-cell border="solid black 1px" padding="2px">
	               				<fo:block font-weight="bold">Maritime Claims:</fo:block>
	               			</fo:table-cell>
	               			<fo:table-cell border="solid black 1px" padding="2px">
	               				<fo:block>
	               					<xsl:apply-templates select="geography/maritime-claims" />
	               				</fo:block>
	               			</fo:table-cell>
	               		</fo:table-row>
	               		<fo:table-row>
	               			<fo:table-cell border="solid black 1px" padding="2px">
	               				<fo:block font-weight="bold">Climate:</fo:block>
	               			</fo:table-cell>
	               			<fo:table-cell border="solid black 1px" padding="2px">
	               				<fo:block>
	               					<xsl:value-of select="geography/climate/@value" />
	               				</fo:block>
	               			</fo:table-cell>
	               		</fo:table-row>
	               		<fo:table-row>
	               			<fo:table-cell border="solid black 1px" padding="2px">
	               				<fo:block font-weight="bold">Terrain:</fo:block>
	               			</fo:table-cell>
	               			<fo:table-cell border="solid black 1px" padding="2px">
	               				<fo:block>
	               					<xsl:value-of select="geography/terrain/@value" />
	               				</fo:block>
	               			</fo:table-cell>
	               		</fo:table-row>
	               		<fo:table-row>
	               			<fo:table-cell border="solid black 1px" padding="2px">
	               				<fo:block font-weight="bold">Elevation:</fo:block>
	               			</fo:table-cell>
	               			<fo:table-cell border="solid black 1px" padding="2px">
	               				<fo:block>
	               					<xsl:apply-templates select="geography/elevation" />
	               				</fo:block>
	               			</fo:table-cell>
	               		</fo:table-row>
	               		<fo:table-row>
	               			<fo:table-cell border="solid black 1px" padding="2px">
	               				<fo:block font-weight="bold">Natural Resources:</fo:block>
	               			</fo:table-cell>
	               			<fo:table-cell border="solid black 1px" padding="2px">
	               				<fo:block>
	               					<xsl:value-of select="geography/natural-resources/@value" />
	               				</fo:block>
	               			</fo:table-cell>
	               		</fo:table-row>
	               		<fo:table-row>
	               			<fo:table-cell border="solid black 1px" padding="2px">
	               				<fo:block font-weight="bold">Land Use:</fo:block>
	               			</fo:table-cell>
	               			<fo:table-cell border="solid black 1px" padding="2px">
	               				<fo:block>
	               					<xsl:apply-templates select="geography/land-use" />
	               				</fo:block>
	               			</fo:table-cell>
	               		</fo:table-row>
	               		<fo:table-row>
	               			<fo:table-cell border="solid black 1px" padding="2px">
	               				<fo:block font-weight="bold">Irrigated Land:</fo:block>
	               			</fo:table-cell>
	               			<fo:table-cell border="solid black 1px" padding="2px">
	               				<fo:block>
	               					<xsl:value-of select="geography/irrigated-land/@value" />
	               				</fo:block>
	               			</fo:table-cell>
	               		</fo:table-row>
	               		<fo:table-row>
	               			<fo:table-cell border="solid black 1px" padding="2px">
	               				<fo:block font-weight="bold">Population:</fo:block>
	               			</fo:table-cell>
	               			<fo:table-cell border="solid black 1px" padding="2px">
	               				<fo:block>
	               					<xsl:value-of select="geography/population" />
	               				</fo:block>
	               			</fo:table-cell>
	               		</fo:table-row>
	               		<fo:table-row>
	               			<fo:table-cell border="solid black 1px" padding="2px">
	               				<fo:block font-weight="bold">Natural Hazards:</fo:block>
	               			</fo:table-cell>
	               			<fo:table-cell border="solid black 1px" padding="2px">
	               				<fo:block>
	               					<xsl:value-of select="geography/natural-hazards/@value" />
								<xsl:choose>
									<xsl:when test="geography/natural-hazards/volcanism">
										<fo:block color="#ff0000" font-size="14pt">
											Volcanism:
										</fo:block>
										<fo:block>
											<xsl:value-of select="geography/natural-hazards/volcanism" />
										</fo:block>
									</xsl:when>
								</xsl:choose>
	               				</fo:block>
	               			</fo:table-cell>
	               		</fo:table-row>
	               		<fo:table-row>
	               			<fo:table-cell border="solid black 1px" padding="2px">
	               				<fo:block font-weight="bold">Environment:</fo:block>
	               			</fo:table-cell>
	               			<fo:table-cell border="solid black 1px" padding="2px">
	               				<fo:block>
	               					<xsl:apply-templates select="geography/environment" />
	               				</fo:block>
	               			</fo:table-cell>
	               		</fo:table-row>
	               		<fo:table-row>
	               			<fo:table-cell border="solid black 1px" padding="2px">
	               				<fo:block font-weight="bold">Note:</fo:block>
	               			</fo:table-cell>
	               			<fo:table-cell border="solid black 1px" padding="2px">
	               				<fo:block>
	               					<xsl:value-of select="geography/note" />
	               				</fo:block>
	               			</fo:table-cell>
	               		</fo:table-row>
	            	</fo:table-body>
	         	</fo:table>
      		</fo:block>
          </fo:block>
          <!-- /GEOGRAPHY -->

          <!-- PEOPLE SOCIETY -->
          <fo:block page-break-before="always">
          	<fo:block font-size="16pt" font-weight="bold" color="#00ff00">
          		People and Society
          	</fo:block>
          	<fo:block margin-top="10pt">
          		<fo:table>
          			<fo:table-body>
          				<fo:table-row>
          					<fo:table-cell border="solid black 1px" padding="2px">
          						<fo:block font-weight="bold">Population:</fo:block>
      						</fo:table-cell>
      						<fo:table-cell border="solid black 1px" padding="2px">
          						<fo:block>
          							<xsl:value-of select="people-society/people" />
          						</fo:block>
      						</fo:table-cell>
	               		</fo:table-row>
	               		<fo:table-row>
          					<fo:table-cell border="solid black 1px" padding="2px">
          						<fo:block font-weight="bold">Nationality:</fo:block>
      						</fo:table-cell>
      						<fo:table-cell border="solid black 1px" padding="2px">
          						<fo:block>
          							<xsl:apply-templates select="people-society/nationality" />
          						</fo:block>
      						</fo:table-cell>
	               		</fo:table-row>
	               		<fo:table-row>
          					<fo:table-cell border="solid black 1px" padding="2px">
          						<fo:block font-weight="bold">Languages:</fo:block>
      						</fo:table-cell>
      						<fo:table-cell border="solid black 1px" padding="2px">
          						<fo:block>
          							<xsl:apply-templates select="people-society/languages" />
          						</fo:block>
          						<fo:block>
          							<xsl:value-of select="people-society/languages/@note" />
          						</fo:block>
      						</fo:table-cell>
	               		</fo:table-row>
	               		<fo:table-row>
          					<fo:table-cell border="solid black 1px" padding="2px">
          						<fo:block font-weight="bold">Dependency Ratios:</fo:block>
      						</fo:table-cell>
      						<fo:table-cell border="solid black 1px" padding="2px">
          						<fo:block>
          							<xsl:apply-templates select="people-society/dependency-ratios" />
          						</fo:block>
      						</fo:table-cell>
	               		</fo:table-row>
	               		<fo:table-row>
          					<fo:table-cell border="solid black 1px" padding="2px">
          						<fo:block font-weight="bold">Population Growth Rate:</fo:block>
      						</fo:table-cell>
      						<fo:table-cell border="solid black 1px" padding="2px">
          						<fo:block>
          							<xsl:value-of select="people-society/population-growth-rate" />
          						</fo:block>
      						</fo:table-cell>
	               		</fo:table-row>
	               		<fo:table-row>
          					<fo:table-cell border="solid black 1px" padding="2px">
          						<fo:block font-weight="bold">Birth Rate:</fo:block>
      						</fo:table-cell>
      						<fo:table-cell border="solid black 1px" padding="2px">
          						<fo:block>
          							<xsl:value-of select="people-society/birth-rate" />
          						</fo:block>
      						</fo:table-cell>
	               		</fo:table-row>
	               		<fo:table-row>
          					<fo:table-cell border="solid black 1px" padding="2px">
          						<fo:block font-weight="bold">Death Rate:</fo:block>
      						</fo:table-cell>
      						<fo:table-cell border="solid black 1px" padding="2px">
          						<fo:block>
          							<xsl:value-of select="people-society/death-rate" />
          						</fo:block>
      						</fo:table-cell>
	               		</fo:table-row>
	               		<fo:table-row>
          					<fo:table-cell border="solid black 1px" padding="2px">
          						<fo:block font-weight="bold">Net Migration Rate:</fo:block>
      						</fo:table-cell>
      						<fo:table-cell border="solid black 1px" padding="2px">
          						<fo:block>
          							<xsl:value-of select="people-society/net-migration-rate" />
          						</fo:block>
      						</fo:table-cell>
	               		</fo:table-row>
	               		<fo:table-row>
          					<fo:table-cell border="solid black 1px" padding="2px">
          						<fo:block font-weight="bold">Sex Ration:</fo:block>
      						</fo:table-cell>
      						<fo:table-cell border="solid black 1px" padding="2px">
          						<fo:block>
          							<xsl:apply-templates select="people-society/sex-ratio" />
          						</fo:block>
      						</fo:table-cell>
	               		</fo:table-row>
	               		<fo:table-row>
          					<fo:table-cell border="solid black 1px" padding="2px">
          						<fo:block font-weight="bold">Mothers Age Birth:</fo:block>
      						</fo:table-cell>
      						<fo:table-cell border="solid black 1px" padding="2px">
      							<fo:block>
      								<xsl:value-of select="people-society/mothers-age-birth/@age" /> years
      							</fo:block>
          						<fo:block font-style="italic">
          							Note: <xsl:value-of select="people-society/mothers-age-birth/@note" />
          						</fo:block>
      						</fo:table-cell>
	               		</fo:table-row>
	               		<fo:table-row>
          					<fo:table-cell border="solid black 1px" padding="2px">
          						<fo:block font-weight="bold">Maternal Mortality Rate:</fo:block>
      						</fo:table-cell>
      						<fo:table-cell border="solid black 1px" padding="2px">
      							<fo:block>
      								<xsl:value-of select="people-society/maternal-mortality-rate/@value" />
      							</fo:block>
      						</fo:table-cell>
	               		</fo:table-row>
	               		<fo:table-row>
          					<fo:table-cell border="solid black 1px" padding="2px">
          						<fo:block font-weight="bold">Infant Mortality Rate:</fo:block>
      						</fo:table-cell>
      						<fo:table-cell border="solid black 1px" padding="2px">
      							<fo:block>
      								<xsl:apply-templates select="people-society/infant-mortality-rate" />
      							</fo:block>
      						</fo:table-cell>
	               		</fo:table-row>
	               		<fo:table-row>
          					<fo:table-cell border="solid black 1px" padding="2px">
          						<fo:block font-weight="bold">Life Expectancy at Birth:</fo:block>
      						</fo:table-cell>
      						<fo:table-cell border="solid black 1px" padding="2px">
      							<fo:block>
      								<xsl:apply-templates select="people-society/life-expectancy-at-birth" />
      							</fo:block>
      						</fo:table-cell>
	               		</fo:table-row>
	               		<fo:table-row>
          					<fo:table-cell border="solid black 1px" padding="2px">
          						<fo:block font-weight="bold">Total Fertility Rate:</fo:block>
      						</fo:table-cell>
      						<fo:table-cell border="solid black 1px" padding="2px">
      							<fo:block>
      								<xsl:value-of select="people-society/total-fertility-rate/@value" />
      							</fo:block>
      						</fo:table-cell>
	               		</fo:table-row>
	               		<fo:table-row>
          					<fo:table-cell border="solid black 1px" padding="2px">
          						<fo:block font-weight="bold">Contraceptive Rate:</fo:block>
      						</fo:table-cell>
      						<fo:table-cell border="solid black 1px" padding="2px">
      							<fo:block>
      								<xsl:value-of select="people-society/contraceptive-rate/@value" />
      							</fo:block>
      						</fo:table-cell>
	               		</fo:table-row>
	               		<fo:table-row>
          					<fo:table-cell border="solid black 1px" padding="2px">
          						<fo:block font-weight="bold">Health Expenditures:</fo:block>
      						</fo:table-cell>
      						<fo:table-cell border="solid black 1px" padding="2px">
      							<fo:block>
      								<xsl:value-of select="people-society/health-expenditures/@value" />
      							</fo:block>
      						</fo:table-cell>
	               		</fo:table-row>
	               		<fo:table-row>
          					<fo:table-cell border="solid black 1px" padding="2px">
          						<fo:block font-weight="bold">Physicians Density:</fo:block>
      						</fo:table-cell>
      						<fo:table-cell border="solid black 1px" padding="2px">
      							<fo:block>
      								<xsl:value-of select="people-society/physicians-density/@value" />
      							</fo:block>
      						</fo:table-cell>
	               		</fo:table-row>
	               		<fo:table-row>
          					<fo:table-cell border="solid black 1px" padding="2px">
          						<fo:block font-weight="bold">Hospital Bed Density:</fo:block>
      						</fo:table-cell>
      						<fo:table-cell border="solid black 1px" padding="2px">
      							<fo:block>
      								<xsl:value-of select="people-society/hospital-bed-density/@value" />
      							</fo:block>
      						</fo:table-cell>
	               		</fo:table-row>
	               		<fo:table-row>
          					<fo:table-cell border="solid black 1px" padding="2px">
          						<fo:block font-weight="bold">Drinking Water Source - Improved:</fo:block>
      						</fo:table-cell>
      						<fo:table-cell border="solid black 1px" padding="2px">
      							<fo:block>
      								<xsl:apply-templates select="people-society/drinking-water-source/improved" />
      							</fo:block>
      						</fo:table-cell>
	               		</fo:table-row>
	               		<fo:table-row>
          					<fo:table-cell border="solid black 1px" padding="2px">
          						<fo:block font-weight="bold">Drinking Water Source - Unimproved:</fo:block>
      						</fo:table-cell>
      						<fo:table-cell border="solid black 1px" padding="2px">
      							<fo:block>
      								<xsl:apply-templates select="people-society/drinking-water-source/unimproved" />
      							</fo:block>
      						</fo:table-cell>
	               		</fo:table-row>
	               		<fo:table-row>
          					<fo:table-cell border="solid black 1px" padding="2px">
          						<fo:block font-weight="bold">Sanitation Facility Access - Improved:</fo:block>
      						</fo:table-cell>
      						<fo:table-cell border="solid black 1px" padding="2px">
      							<fo:block>
      								<xsl:apply-templates select="people-society/sanitation-facility-access/improve" />
      							</fo:block>
      						</fo:table-cell>
	               		</fo:table-row>
	               		<fo:table-row>
          					<fo:table-cell border="solid black 1px" padding="2px">
          						<fo:block font-weight="bold">Sanitation Facility Access - Unimproved:</fo:block>
      						</fo:table-cell>
      						<fo:table-cell border="solid black 1px" padding="2px">
      							<fo:block>
      								<xsl:apply-templates select="people-society/sanitation-facility-access/unimprove" />
      							</fo:block>
      						</fo:table-cell>
	               		</fo:table-row>
	               		<fo:table-row>
          					<fo:table-cell border="solid black 1px" padding="2px">
          						<fo:block font-weight="bold">HIV / AIDS:</fo:block>
      						</fo:table-cell>
      						<fo:table-cell border="solid black 1px" padding="2px">
      							<fo:block>
      								<fo:block>
      									- Rate: <xsl:value-of select="people-society/hiv-aids/rate/@value" />
      								</fo:block>
      								<fo:block>
										- Living with: <xsl:value-of select="people-society/hiv-aids/living-with/@value" />
      								</fo:block>
      								<fo:block>
										- Deaths: <xsl:value-of select="people-society/hiv-aids/deaths/@value" />
      								</fo:block>
      							</fo:block>
      						</fo:table-cell>
	               		</fo:table-row>
	               		<fo:table-row>
          					<fo:table-cell border="solid black 1px" padding="2px">
          						<fo:block font-weight="bold">Major Infections Deseases (<xsl:value-of select="people-society/major-infections-deseases/@degree-of-risk" />):</fo:block>
      						</fo:table-cell>
      						<fo:table-cell border="solid black 1px" padding="2px">
      							<fo:block>
      								<xsl:apply-templates select="people-society/major-infections-deseases" />
      							</fo:block>
      							<fo:block font-style="italic">
      								Note: <xsl:value-of select="people-society/major-infections-deseases/@note" />
      							</fo:block>
      						</fo:table-cell>
	               		</fo:table-row>
	               		<fo:table-row>
          					<fo:table-cell border="solid black 1px" padding="2px">
          						<fo:block font-weight="bold">Obesity:</fo:block>
      						</fo:table-cell>
      						<fo:table-cell border="solid black 1px" padding="2px">
      							<fo:block>
      								<xsl:value-of select="people-society/obesity/@percentage" />%
      							</fo:block>
      						</fo:table-cell>
	               		</fo:table-row>
	               		<fo:table-row>
          					<fo:table-cell border="solid black 1px" padding="2px">
          						<fo:block font-weight="bold">Children Underweight:</fo:block>
      						</fo:table-cell>
      						<fo:table-cell border="solid black 1px" padding="2px">
      							<fo:block>
      								<xsl:value-of select="people-society/children-underweight/@percentage" />%
      							</fo:block>
      							<fo:block font-style="italic">
      								Description: <xsl:value-of select="people-society/children-underweight/@description" />
      							</fo:block>
      						</fo:table-cell>
	               		</fo:table-row>
	               		<fo:table-row>
          					<fo:table-cell border="solid black 1px" padding="2px">
          						<fo:block font-weight="bold">Education Expanditures:</fo:block>
      						</fo:table-cell>
      						<fo:table-cell border="solid black 1px" padding="2px">
      							<fo:block>
      								<xsl:value-of select="people-society/education-expanditures/@value" />
      							</fo:block>
      						</fo:table-cell>
	               		</fo:table-row>
	               		<fo:table-row>
          					<fo:table-cell border="solid black 1px" padding="2px">
          						<fo:block font-weight="bold">Literacy:</fo:block>
      						</fo:table-cell>
      						<fo:table-cell border="solid black 1px" padding="2px">
      							<fo:block font-style="italic">
      								Definition: <xsl:value-of select="people-society/literacy/@definition" />
      							</fo:block>
      							<fo:block>
      								<xsl:apply-templates select="people-society/literacy" />
      							</fo:block>
      						</fo:table-cell>
	               		</fo:table-row>
	               		<fo:table-row>
          					<fo:table-cell border="solid black 1px" padding="2px">
          						<fo:block font-weight="bold">School Life:</fo:block>
      						</fo:table-cell>
      						<fo:table-cell border="solid black 1px" padding="2px">
      							<fo:block font-style="italic">
      								Description: <xsl:value-of select="people-society/school-life/@description" />
      							</fo:block>
      							<fo:block>
      								<xsl:apply-templates select="people-society/school-life" />
      							</fo:block>
      						</fo:table-cell>
	               		</fo:table-row>
	               		<fo:table-row>
          					<fo:table-cell border="solid black 1px" padding="2px">
          						<fo:block font-weight="bold">Child Labor:</fo:block>
      						</fo:table-cell>
      						<fo:table-cell border="solid black 1px" padding="2px">
      							<fo:block>
      								<xsl:apply-templates select="people-society/child-labor" />
      							</fo:block>
      						</fo:table-cell>
	               		</fo:table-row>
	               		<fo:table-row>
          					<fo:table-cell border="solid black 1px" padding="2px">
          						<fo:block font-weight="bold">Unemploynment:</fo:block>
      						</fo:table-cell>
      						<fo:table-cell border="solid black 1px" padding="2px">
      							<fo:block font-style="italic">
      								Description: <xsl:value-of select="people-society/unemployment/@description" />
      							</fo:block>
      							<fo:block>
      								<xsl:apply-templates select="people-society/unemployment" />
      							</fo:block>
      						</fo:table-cell>
	               		</fo:table-row>
	               		<xsl:choose>
							<xsl:when test="people-society/demographic">
			               		<fo:table-row>
		          					<fo:table-cell border="solid black 1px" padding="2px">
		          						<fo:block font-weight="bold">Demographic:</fo:block>
		      						</fo:table-cell>
		      						<fo:table-cell border="solid black 1px" padding="2px">
		      							<fo:block>
		      								<xsl:value-of select="people-society/demographic" />
		      							</fo:block>
		      						</fo:table-cell>
			               		</fo:table-row>
			               	</xsl:when>
			            </xsl:choose>
	            	</fo:table-body>
	         	</fo:table>

	         	<fo:block>
		         	<fo:block font-size="14pt" font-weight="bold" color="#ff0000">
		         		Ethnic Groups
		         	</fo:block>
		         	<fo:block>
		         		<xsl:apply-templates select="people-society/ethnic-groups" />
		         	</fo:block>
	         	</fo:block>
	         	<fo:block>
		         	<fo:block font-size="14pt" font-weight="bold" color="#ff0000">
		         		Religions
		         	</fo:block>
		         	<fo:block>
		         		<xsl:apply-templates select="people-society/religions" />
		         	</fo:block>
	         	</fo:block>
	         	<fo:block>
		         	<fo:block font-size="14pt" font-weight="bold" color="#ff0000">
		         		Age Structure
		         	</fo:block>
		         	<fo:block>
		         		<fo:block font-weight="bold">
		         			Percentage:
		         		</fo:block>
		         		<fo:block>
		         			<xsl:apply-templates mode="percentage" select="people-society/age-structure" />
		         		</fo:block>
		         		<fo:block font-weight="bold">
		         			Male:
		         		</fo:block>
		         		<fo:block>
		         			<xsl:apply-templates mode="male" select="people-society/age-structure" />
		         		</fo:block>
		         		<fo:block font-weight="bold">
		         			Female:
		         		</fo:block>
		         		<fo:block>
		         			<xsl:apply-templates mode="female" select="people-society/age-structure" />
		         		</fo:block>
		         	</fo:block>
	         	</fo:block>
	         	<fo:block>
		         	<fo:block font-size="14pt" font-weight="bold" color="#ff0000">
		         		Urbanization
		         	</fo:block>
		         	<fo:block>
		         		<fo:block font-weight="bold">
		         			Major Urban Areas
		         		</fo:block>
		         		<fo:block>
		         			<xsl:apply-templates select="people-society/major-urban-areas" />
		         		</fo:block>
		         		<fo:table>
		         			<fo:table-body>
		         				<fo:table-row>
		         					<fo:table-cell border="solid black 1px" padding="2px">
		         						<fo:block font-weight="bold">Urban Population</fo:block>
		         					</fo:table-cell>
		         					<fo:table-cell border="solid black 1px" padding="2px">
		         						<fo:block>
		         							<xsl:value-of select="people-society/urbanization/urban-population" />
		         						</fo:block>
		         					</fo:table-cell>
	               				</fo:table-row>
	               				<fo:table-row>
		         					<fo:table-cell border="solid black 1px" padding="2px">
		         						<fo:block font-weight="bold">Rate of Urbanization</fo:block>
		         					</fo:table-cell>
		         					<fo:table-cell border="solid black 1px" padding="2px">
		         						<fo:block>
		         							<xsl:value-of select="people-society/urbanization/rate-of-urbanization" />
		         						</fo:block>
		         					</fo:table-cell>
	               				</fo:table-row>
		         			</fo:table-body>
		         		</fo:table>
		         	</fo:block>
	         	</fo:block>
      		</fo:block>
          </fo:block>
          <!-- /PEOPLE SOCIETY -->

          <!-- GOVERNMENT -->
          <fo:block page-break-before="always">
          	<fo:block font-size="16pt" font-weight="bold" color="#00ff00">
          		Government
          	</fo:block>
          	<fo:block margin-top="10pt">
      			<fo:block>
      				<fo:table>
      					<fo:table-body>
      						<fo:table-row>
      							<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block font-weight="bold">Etymology:</fo:block>
	         					</fo:table-cell>
	         					<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block>
      									<xsl:value-of select="government/country-name/@etymology" />
      								</fo:block>
	         					</fo:table-cell>
               				</fo:table-row>
               				<fo:table-row>
      							<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block font-weight="bold">Capital:</fo:block>
	         					</fo:table-cell>
	         					<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block>
      									<xsl:value-of select="government/capital" />
      								</fo:block>
      								<fo:block>
      									<xsl:choose>
											<xsl:when test="government/capital/@coordinate-e">
												<xsl:value-of select="government/capital/@coordinate-e" /> E,
												<xsl:value-of select="government/capital/@coordinate-s" /> S
											</xsl:when>
											<xsl:otherwise>
												<xsl:value-of select="government/capital/@coordinate-n" /> N,
												<xsl:value-of select="government/capital/@coordinate-w" /> W
											</xsl:otherwise>
										</xsl:choose>
      								</fo:block>
      								<fo:block>
      									<xsl:value-of select="government/capital/@time" />,
										<xsl:value-of select="government/capital/@note" />
      								</fo:block>
	         					</fo:table-cell>
               				</fo:table-row>
               				<fo:table-row>
      							<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block font-weight="bold">Administrative Divisions:</fo:block>
	         					</fo:table-cell>
	         					<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block>
      									<xsl:value-of select="government/administrative-divisions" />
      								</fo:block>
      								<fo:block font-style="italic">
      									Note: <xsl:value-of select="government/administrative-divisions/@note" />
      								</fo:block>
	         					</fo:table-cell>
               				</fo:table-row>
               				<fo:table-row>
      							<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block font-weight="bold">Independence:</fo:block>
	         					</fo:table-cell>
	         					<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block>
      									<xsl:value-of select="government/independence/@date" />
      								</fo:block>
	         					</fo:table-cell>
               				</fo:table-row>
               				<fo:table-row>
      							<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block font-weight="bold">National Holidays:</fo:block>
	         					</fo:table-cell>
	         					<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block>
      									<xsl:apply-templates select="government/national-holiday" />
      								</fo:block>
	         					</fo:table-cell>
               				</fo:table-row>
               				<fo:table-row>
      							<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block font-weight="bold">Constitution:</fo:block>
	         					</fo:table-cell>
	         					<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block>
      									<xsl:value-of select="government/constitution" />
      								</fo:block>
	         					</fo:table-cell>
               				</fo:table-row>
               				<fo:table-row>
      							<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block font-weight="bold">Legal System:</fo:block>
	         					</fo:table-cell>
	         					<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block>
      									<xsl:value-of select="government/legal-system" />
      								</fo:block>
	         					</fo:table-cell>
               				</fo:table-row>
               				<fo:table-row>
      							<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block font-weight="bold">International Law:</fo:block>
	         					</fo:table-cell>
	         					<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block>
      									<xsl:value-of select="government/international-law" />
      								</fo:block>
	         					</fo:table-cell>
               				</fo:table-row>
               				<fo:table-row>
      							<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block font-weight="bold">Citizenship:</fo:block>
	         					</fo:table-cell>
	         					<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block>
      									<xsl:apply-templates select="government/citizenship" />
      								</fo:block>
	         					</fo:table-cell>
               				</fo:table-row>
               				<fo:table-row>
      							<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block font-weight="bold">Suffrage:</fo:block>
	         					</fo:table-cell>
	         					<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block>
      									<xsl:value-of select="government/suffrage" />
      								</fo:block>
	         					</fo:table-cell>
               				</fo:table-row>
               				<fo:table-row>
      							<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block font-weight="bold">Executive Branch:</fo:block>
	         					</fo:table-cell>
	         					<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block>
      									<xsl:apply-templates select="government/executive-branch" />
      								</fo:block>
	         					</fo:table-cell>
               				</fo:table-row>
               				<fo:table-row>
      							<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block font-weight="bold">Legislative Branch:</fo:block>
	         					</fo:table-cell>
	         					<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block>
      									<xsl:apply-templates select="government/legislative-branch" />
      								</fo:block>
	         					</fo:table-cell>
               				</fo:table-row>
               				<fo:table-row>
      							<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block font-weight="bold">Judicial Branch:</fo:block>
	         					</fo:table-cell>
	         					<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block>
      									<xsl:apply-templates select="government/judicial-branch" />
      								</fo:block>
	         					</fo:table-cell>
               				</fo:table-row>
               				<fo:table-row>
      							<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block font-weight="bold">Political Parties:</fo:block>
	         					</fo:table-cell>
	         					<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block>
      									<xsl:apply-templates select="government/political-parties" />
      								</fo:block>
	         					</fo:table-cell>
               				</fo:table-row>
               				<fo:table-row>
      							<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block font-weight="bold">Political Pressure:</fo:block>
	         					</fo:table-cell>
	         					<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block>
      									<xsl:value-of select="government/political-pressure" />
      								</fo:block>
	         					</fo:table-cell>
               				</fo:table-row>
               				<fo:table-row>
      							<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block font-weight="bold">International Participation Organization:</fo:block>
	         					</fo:table-cell>
	         					<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block>
      									<xsl:value-of select="government/international-participation-organization" />
      								</fo:block>
	         					</fo:table-cell>
               				</fo:table-row>
               				<fo:table-row>
      							<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block font-weight="bold">Diplomatic Representation - in US:</fo:block>
	         					</fo:table-cell>
	         					<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block>
      									<xsl:apply-templates select="government/diplomatic-representation/in-us" />
      								</fo:block>
	         					</fo:table-cell>
               				</fo:table-row>
               				<fo:table-row>
      							<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block font-weight="bold">Diplomatic Representation - from US:</fo:block>
	         					</fo:table-cell>
	         					<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block>
      									<xsl:apply-templates select="government/diplomatic-representation/from-us" />
      								</fo:block>
	         					</fo:table-cell>
               				</fo:table-row>
               				<fo:table-row>
      							<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block font-weight="bold">Flag:</fo:block>
	         					</fo:table-cell>
	         					<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block>
      									<xsl:value-of select="government/flag/@description" />
      								</fo:block>
      								<fo:block font-style="italic">
      									Note: <xsl:value-of select="government/flag/@note" />
      								</fo:block>
	         					</fo:table-cell>
               				</fo:table-row>
               				<fo:table-row>
      							<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block font-weight="bold">National Symbols:</fo:block>
	         					</fo:table-cell>
	         					<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block>
      									Symbol: <xsl:value-of select="government/national-symbols/@symbol" />
      								</fo:block>
      								<fo:block>
      									National Colors: <xsl:value-of select="government/national-symbols/@national-colors" />
      								</fo:block>
	         					</fo:table-cell>
               				</fo:table-row>
               				<fo:table-row>
      							<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block font-weight="bold">National Anthem:</fo:block>
	         					</fo:table-cell>
	         					<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block>
      									<xsl:apply-templates select="government/national-anthem" />
      								</fo:block>
      								<fo:block text-decoration="underline">
      									<fo:basic-link color="#0000ff" external-destination="{government/national-anthem/@source}">
	 										National Anthem
										</fo:basic-link>
      								</fo:block>
	         					</fo:table-cell>
               				</fo:table-row>
	         			</fo:table-body>
	         		</fo:table>
      			</fo:block>
      		</fo:block>
          </fo:block>
          <!-- /GOVERNMENT -->

          <!-- ECONOMY -->
          <fo:block page-break-before="always">
          	<fo:block font-size="16pt" font-weight="bold" color="#00ff00">
          		Economy
          	</fo:block>
          	<fo:block margin-top="10pt" text-align="justify">
      			<fo:block>
      				<fo:block font-weight="bold" color="#ff0000" font-size="14pt">Overview</fo:block>
					<fo:block>
						<xsl:value-of select="economy/overview" />
					</fo:block>
      				<fo:table>
      					<fo:table-body>
               				<fo:table-row>
      							<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block font-weight="bold">GDP:</fo:block>
      							</fo:table-cell>
      							<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block font-style="italic">
      									Note: <xsl:value-of select="economy/gdps/@note" />
      								</fo:block>
      								<fo:block>
      									Exchange Rate: <xsl:value-of select="economy/gdps/@exchange-rate" />
      								</fo:block>
      								<fo:block>
      									<xsl:apply-templates select="economy/gdps/gdp" />
      								</fo:block>
      							</fo:table-cell>
               				</fo:table-row>
               				<fo:table-row>
      							<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block font-weight="bold">Real Growth Rate:</fo:block>
      							</fo:table-cell>
      							<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block>
      									<xsl:apply-templates select="economy/gdps/real-growth-rate" />
      								</fo:block>
      							</fo:table-cell>
               				</fo:table-row>
               				<fo:table-row>
      							<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block font-weight="bold">Per Capita:</fo:block>
      							</fo:table-cell>
      							<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block font-style="italic">
      									<xsl:value-of select="economy/gdps/per-capita/@note" />
      								</fo:block>
      								<fo:block>
      									<xsl:apply-templates select="economy/gdps/per-capita" />
      								</fo:block>
      							</fo:table-cell>
               				</fo:table-row>
               				<fo:table-row>
      							<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block font-weight="bold">Gross National:</fo:block>
      							</fo:table-cell>
      							<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block>
      									<xsl:apply-templates select="economy/gdps/gross-national" />
      								</fo:block>
      							</fo:table-cell>
               				</fo:table-row>
               				<fo:table-row>
      							<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block font-weight="bold">Agriculture:</fo:block>
      							</fo:table-cell>
      							<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block>
      									<xsl:value-of select="economy/agriculture/@products" />
      								</fo:block>
      							</fo:table-cell>
               				</fo:table-row>
               				<fo:table-row>
      							<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block font-weight="bold">Industries:</fo:block>
      							</fo:table-cell>
      							<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block>
      									<xsl:value-of select="economy/industries/@value" />
      								</fo:block>
      							</fo:table-cell>
               				</fo:table-row>
               				<fo:table-row>
      							<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block font-weight="bold">Industrial Production:</fo:block>
      							</fo:table-cell>
      							<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block>
      									<xsl:value-of select="economy/industrial-production/@rate" />
      								</fo:block>
      							</fo:table-cell>
               				</fo:table-row>
               				<fo:table-row>
      							<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block font-weight="bold">Real Growth Rate:</fo:block>
      							</fo:table-cell>
      							<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block>
      									<xsl:apply-templates select="economy/unemploy" />
      								</fo:block>
      							</fo:table-cell>
               				</fo:table-row>
               				<fo:table-row>
      							<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block font-weight="bold">Poverty Line:</fo:block>
      							</fo:table-cell>
      							<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block>
      									<xsl:value-of select="economy/poverty-line/@percentage" />%
      								</fo:block>
      								<fo:block font-style="italic">
      									Note: <xsl:value-of select="economy/poverty-line/@note" />
      								</fo:block>
      							</fo:table-cell>
               				</fo:table-row>
               				<fo:table-row>
      							<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block font-weight="bold">Household:</fo:block>
      							</fo:table-cell>
      							<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block>
      									<xsl:apply-templates select="economy/household" />
      								</fo:block>
      							</fo:table-cell>
               				</fo:table-row>
               				<fo:table-row>
      							<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block font-weight="bold">Distribution of Family:</fo:block>
      							</fo:table-cell>
      							<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block>
      									<xsl:apply-templates select="economy/distribution-of-family" />
      								</fo:block>
      							</fo:table-cell>
               				</fo:table-row>
               				<fo:table-row>
      							<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block font-weight="bold">Budget:</fo:block>
      							</fo:table-cell>
      							<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block>
      									<xsl:apply-templates select="economy/budget" />
      								</fo:block>
      							</fo:table-cell>
               				</fo:table-row>
               				<fo:table-row>
      							<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block font-weight="bold">Taxes:</fo:block>
      							</fo:table-cell>
      							<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block>
      									<xsl:value-of select="economy/taxes/@value" />
      								</fo:block>
      							</fo:table-cell>
               				</fo:table-row>
               				<fo:table-row>
      							<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block font-weight="bold">Public Debt:</fo:block>
      							</fo:table-cell>
      							<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block>
      									<xsl:apply-templates select="economy/public-debt" />
      								</fo:block>
      							</fo:table-cell>
               				</fo:table-row>
               				<fo:table-row>
      							<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block font-weight="bold">Fiscal Year:</fo:block>
      							</fo:table-cell>
      							<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block>
      									<xsl:value-of select="economy/fiscal-year/@value" />
      								</fo:block>
      							</fo:table-cell>
               				</fo:table-row>
               				<fo:table-row>
      							<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block font-weight="bold">Inflation Rate:</fo:block>
      							</fo:table-cell>
      							<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block>
      									<xsl:apply-templates select="economy/inflation-rate" />
      								</fo:block>
      							</fo:table-cell>
               				</fo:table-row>
               				<fo:table-row>
      							<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block font-weight="bold">Bank Discount Rate:</fo:block>
      							</fo:table-cell>
      							<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block>
      									<xsl:apply-templates select="economy/bank-discount-rate" />
      								</fo:block>
      							</fo:table-cell>
               				</fo:table-row>
               				<fo:table-row>
      							<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block font-weight="bold">Stock of Narrow Money:</fo:block>
      							</fo:table-cell>
      							<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block>
      									<xsl:apply-templates select="economy/stock-of-narrow-money" />
      								</fo:block>
      							</fo:table-cell>
               				</fo:table-row>
               				<fo:table-row>
      							<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block font-weight="bold">Stock of Broad Money:</fo:block>
      							</fo:table-cell>
      							<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block>
      									<xsl:apply-templates select="economy/stock-of-broad-money" />
      								</fo:block>
      							</fo:table-cell>
               				</fo:table-row>
               				<fo:table-row>
      							<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block font-weight="bold">Stock of Domestic Credit:</fo:block>
      							</fo:table-cell>
      							<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block>
      									<xsl:apply-templates select="economy/stock-of-domestic-credit" />
      								</fo:block>
      							</fo:table-cell>
               				</fo:table-row>
               				<fo:table-row>
      							<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block font-weight="bold">Market Value:</fo:block>
      							</fo:table-cell>
      							<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block>
      									<xsl:apply-templates select="economy/market-value" />
      								</fo:block>
      							</fo:table-cell>
               				</fo:table-row>
               				<fo:table-row>
      							<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block font-weight="bold">Current Account:</fo:block>
      							</fo:table-cell>
      							<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block>
      									<xsl:apply-templates select="economy/current-account" />
      								</fo:block>
      							</fo:table-cell>
               				</fo:table-row>
               				<fo:table-row>
      							<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block font-weight="bold">Exports:</fo:block>
      							</fo:table-cell>
      							<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block>
      									<xsl:value-of select="economy/exports/@commodities" />
      								</fo:block>
      							</fo:table-cell>
               				</fo:table-row>
               				<fo:table-row>
      							<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block font-weight="bold">Imports:</fo:block>
      							</fo:table-cell>
      							<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block>
      									<xsl:value-of select="economy/imports/@commodities" />
      								</fo:block>
      							</fo:table-cell>
               				</fo:table-row>
               				<fo:table-row>
      							<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block font-weight="bold">Reserves:</fo:block>
      							</fo:table-cell>
      							<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block>
      									<xsl:apply-templates select="economy/reserves" />
      								</fo:block>
      							</fo:table-cell>
               				</fo:table-row>
               				<fo:table-row>
      							<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block font-weight="bold">External Debt:</fo:block>
      							</fo:table-cell>
      							<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block>
      									<xsl:apply-templates select="economy/debt-external" />
      								</fo:block>
      							</fo:table-cell>
               				</fo:table-row>
               				<fo:table-row>
      							<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block font-weight="bold">Stock of Investment:</fo:block>
      							</fo:table-cell>
      							<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block>
      									<fo:block font-weight="bold">
      										at Home
      									</fo:block>
      									<fo:block>
      										<xsl:apply-templates select="economy/stock-of-investment/at-home" />
      									</fo:block>
      									<fo:block font-weight="bold">
      										Abroad
      									</fo:block>
      									<fo:block>
      										<xsl:apply-templates select="economy/stock-of-investment/abroad" />
      									</fo:block>
      								</fo:block>
      							</fo:table-cell>
               				</fo:table-row>
               				<fo:table-row>
      							<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block font-weight="bold">Exchange Rates:</fo:block>
      							</fo:table-cell>
      							<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block>
      									<xsl:value-of select="economy/exchange-rates/@description" />
      								</fo:block>
      								<fo:block>
      									<xsl:apply-templates select="economy/exchange-rates" />
      								</fo:block>
      							</fo:table-cell>
               				</fo:table-row>
	         			</fo:table-body>
	         		</fo:table>
      			</fo:block>
      		</fo:block>
          </fo:block>
          <!-- /ECONOMY -->

          <!-- ENERGY -->
          <fo:block page-break-before="always">
          	<fo:block font-size="16pt" font-weight="bold" color="#00ff00">
          		Energy
          	</fo:block>
          	<fo:block margin-top="10pt" text-align="justify">
      			<fo:block>
      				<fo:block font-weight="bold" color="#ff0000" font-size="14pt">
      					Electricity
      				</fo:block>
      				<fo:table>
      					<fo:table-body>
      						<fo:table-row>
      							<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block font-weight="bold">Access:</fo:block>
      							</fo:table-cell>
      							<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block>
      									<xsl:apply-templates select="energy/electricity/e-access" />
      								</fo:block>
      							</fo:table-cell>
               				</fo:table-row>
               				<fo:table-row>
      							<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block font-weight="bold">Production:</fo:block>
      							</fo:table-cell>
      							<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block>
      									<xsl:value-of select="energy/electricity/e-production/@value" />
      								</fo:block>
      							</fo:table-cell>
               				</fo:table-row>
               				<fo:table-row>
      							<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block font-weight="bold">Consuption:</fo:block>
      							</fo:table-cell>
      							<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block>
      									<xsl:value-of select="energy/electricity/e-consuption/@value" />
      								</fo:block>
      							</fo:table-cell>
               				</fo:table-row>
               				<fo:table-row>
      							<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block font-weight="bold">Exports:</fo:block>
      							</fo:table-cell>
      							<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block>
      									<xsl:value-of select="energy/electricity/e-exports/@value" />
      								</fo:block>
      							</fo:table-cell>
               				</fo:table-row>
               				<fo:table-row>
      							<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block font-weight="bold">Imports:</fo:block>
      							</fo:table-cell>
      							<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block>
      									<xsl:value-of select="energy/electricity/e-imports/@value" />
      								</fo:block>
      							</fo:table-cell>
               				</fo:table-row>
               				<fo:table-row>
      							<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block font-weight="bold">Generating Capacity:</fo:block>
      							</fo:table-cell>
      							<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block>
      									<xsl:value-of select="energy/electricity/e-generating-capacity/@value" />
      								</fo:block>
      							</fo:table-cell>
               				</fo:table-row>
               				<fo:table-row>
      							<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block font-weight="bold">Fossil Fuels:</fo:block>
      							</fo:table-cell>
      							<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block>
      									<xsl:value-of select="energy/electricity/e-fossil-fuel/@percentage" />%
      								</fo:block>
      								<fo:block font-style="italic">
      									Note: <xsl:value-of select="energy/electricity/e-fossil-fuel/@note" />
      								</fo:block>
      							</fo:table-cell>
               				</fo:table-row>
               				<fo:table-row>
      							<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block font-weight="bold">Source:</fo:block>
      							</fo:table-cell>
      							<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block>
      									<xsl:value-of select="energy/electricity/e-source/@percentage" />%
      								</fo:block>
      								<fo:block font-style="italic">
      									Note: <xsl:value-of select="energy/electricity/e-source/@note" />
      								</fo:block>
      							</fo:table-cell>
               				</fo:table-row>
               				<fo:table-row>
      							<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block font-weight="bold">Nuclear Fuels:</fo:block>
      							</fo:table-cell>
      							<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block>
      									<xsl:value-of select="energy/electricity/e-nuclear-fuels/@value" /><xsl:value-of select="energy/electricity/e-nuclear-fuels/@unit" />
      								</fo:block>
      								<fo:block font-style="italic">
      									Note: <xsl:value-of select="energy/electricity/e-nuclear-fuels/@note" />
      								</fo:block>
      							</fo:table-cell>
               				</fo:table-row>
               				<fo:table-row>
      							<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block font-weight="bold">Hydroelectric Plants:</fo:block>
      							</fo:table-cell>
      							<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block>
      									<xsl:value-of select="energy/electricity/e-hydroelectric-plants/@percentage" />%
      								</fo:block>
      								<fo:block font-style="italic">
      									Note: <xsl:value-of select="energy/electricity/e-hydroelectric-plants/@note" />
      								</fo:block>
      							</fo:table-cell>
               				</fo:table-row>
	         			</fo:table-body>
	         		</fo:table>
	         		<fo:block font-weight="bold" color="#ff0000" font-size="14pt">
	         			Crude Oil
	         		</fo:block>
	         		<fo:table>
	         			<fo:table-body>
	         				<fo:table-row>
	         					<fo:table-cell border="solid black 1px" padding="2px">
	         						<fo:block font-weight="bold">Crude Oil</fo:block>
	         					</fo:table-cell>
	         					<fo:table-cell border="solid black 1px" padding="2px">
	         						<fo:block>
	         							<xsl:apply-templates select="energy/crude-oil/child::node()" />
	         						</fo:block>
	         					</fo:table-cell>
	         				</fo:table-row>
	         			</fo:table-body>
	         		</fo:table>
	         		<fo:block font-weight="bold" color="#ff0000" font-size="14pt">
	         			Petroleum Products
	         		</fo:block>
	         		<fo:table>
	         			<fo:table-body>
	         				<fo:table-row>
	         					<fo:table-cell border="solid black 1px" padding="2px">
	         						<fo:block font-weight="bold">Petroleum Products</fo:block>
	         					</fo:table-cell>
	         					<fo:table-cell border="solid black 1px" padding="2px">
	         						<fo:block>
	         							<xsl:apply-templates select="energy/petroleum-products/child::node()" />
	         						</fo:block>
	         					</fo:table-cell>
	         				</fo:table-row>
	         			</fo:table-body>
	         		</fo:table>
	         		<fo:block font-weight="bold" color="#ff0000" font-size="14pt">
	         			Natural Gas
	         		</fo:block>
	         		<fo:table>
	         			<fo:table-body>
	         				<fo:table-row>
	         					<fo:table-cell border="solid black 1px" padding="2px">
	         						<fo:block font-weight="bold">Natural Gas</fo:block>
	         					</fo:table-cell>
	         					<fo:table-cell border="solid black 1px" padding="2px">
	         						<fo:block>
	         							<xsl:apply-templates select="energy/natural-gas/child::node()" />
	         						</fo:block>
	         					</fo:table-cell>
	         				</fo:table-row>
	         			</fo:table-body>
	         		</fo:table>
	         		<fo:block font-weight="bold" color="#ff0000" font-size="14pt">
	         			Carbon Dioxide
	         		</fo:block>
	         		<fo:table>
	         			<fo:table-body>
	         				<fo:table-row>
	         					<fo:table-cell border="solid black 1px" padding="2px">
	         						<fo:block font-weight="bold">Carbon Dioxide</fo:block>
	         					</fo:table-cell>
	         					<fo:table-cell border="solid black 1px" padding="2px">
	         						<fo:block>
	         							<xsl:value-of select="energy/carbon-dioxide/@value" />
	         						</fo:block>
	         					</fo:table-cell>
	         				</fo:table-row>
	         			</fo:table-body>
	         		</fo:table>
      			</fo:block>
      		</fo:block>
          </fo:block>
          <!-- /ENERGY -->

          <!-- COMMUNICATIONS -->
          <fo:block page-break-before="always">
          	<fo:block font-size="16pt" font-weight="bold" color="#00ff00">
          		Communications
          	</fo:block>
          	<fo:block margin-top="10pt" text-align="justify">
      			<fo:block>
      				<fo:block color="#ff0000" font-weight="bold" font-size="14pt">
      					Telephones
      				</fo:block>
      				<fo:table>
	         			<fo:table-body>
	         				<fo:table-row>
	         					<fo:table-cell border="solid black 1px" padding="2px">
	         						<fo:block font-weight="bold">Fixed:</fo:block>
	         					</fo:table-cell>
	         					<fo:table-cell border="solid black 1px" padding="2px">
	         						<fo:block>
	         							<xsl:value-of select="communications/telephones/fixed/@total" />
	         						</fo:block>
	         					</fo:table-cell>
	         				</fo:table-row>
	         				<fo:table-row>
	         					<fo:table-cell border="solid black 1px" padding="2px">
	         						<fo:block font-weight="bold">Mobile:</fo:block>
	         					</fo:table-cell>
	         					<fo:table-cell border="solid black 1px" padding="2px">
	         						<fo:block>
	         							<xsl:value-of select="communications/telephones/mobile/@total" />
	         						</fo:block>
	         					</fo:table-cell>
	         				</fo:table-row>
	         				<fo:table-row>
	         					<fo:table-cell border="solid black 1px" padding="2px">
	         						<fo:block font-weight="bold">General Assessment:</fo:block>
	         					</fo:table-cell>
	         					<fo:table-cell border="solid black 1px" padding="2px">
	         						<fo:block>
	         							<xsl:value-of select="communications/telephones/system/general-assessment" />
	         						</fo:block>
	         					</fo:table-cell>
	         				</fo:table-row>
	         				<fo:table-row>
	         					<fo:table-cell border="solid black 1px" padding="2px">
	         						<fo:block font-weight="bold">Domestic:</fo:block>
	         					</fo:table-cell>
	         					<fo:table-cell border="solid black 1px" padding="2px">
	         						<fo:block>
	         							<xsl:value-of select="communications/telephones/system/domestic" />
	         						</fo:block>
	         					</fo:table-cell>
	         				</fo:table-row>
	         				<fo:table-row>
	         					<fo:table-cell border="solid black 1px" padding="2px">
	         						<fo:block font-weight="bold">International:</fo:block>
	         					</fo:table-cell>
	         					<fo:table-cell border="solid black 1px" padding="2px">
	         						<fo:block>
	         							<xsl:value-of select="communications/telephones/system/international" />
	         						</fo:block>
	         					</fo:table-cell>
	         				</fo:table-row>
	         			</fo:table-body>
	         		</fo:table>
	         		<fo:block color="#ff0000" font-weight="bold" font-size="14pt">
      					Broadcast Media
      				</fo:block>
      				<fo:table>
	         			<fo:table-body>
	         				<fo:table-row>
	         					<fo:table-cell border="solid black 1px" padding="2px">
	         						<fo:block font-weight="bold">Broadcast Media:</fo:block>
	         					</fo:table-cell>
	         					<fo:table-cell border="solid black 1px" padding="2px">
	         						<fo:block>
	         							<xsl:value-of select="communications/broadcast-media" />
	         						</fo:block>
	         					</fo:table-cell>
	         				</fo:table-row>
	         			</fo:table-body>
	         		</fo:table>
	         		<fo:block color="#ff0000" font-weight="bold" font-size="14pt">
      					Internet
      				</fo:block>
      				<fo:table>
	         			<fo:table-body>
	         				<fo:table-row>
	         					<fo:table-cell border="solid black 1px" padding="2px">
	         						<fo:block font-weight="bold">Country Code:</fo:block>
	         					</fo:table-cell>
	         					<fo:table-cell border="solid black 1px" padding="2px">
	         						<fo:block>
	         							<xsl:value-of select="communications/internet/@country-code" />
	         						</fo:block>
	         					</fo:table-cell>
	         				</fo:table-row>
	         				<fo:table-row>
	         					<fo:table-cell border="solid black 1px" padding="2px">
	         						<fo:block font-weight="bold">Users:</fo:block>
	         					</fo:table-cell>
	         					<fo:table-cell border="solid black 1px" padding="2px">
	         						<fo:block>
	         							Total:&#160;<xsl:value-of select="communications/internet/users/@total" />
	         						</fo:block>
	         						<fo:block>
	         							<xsl:value-of select="communications/internet/users/@percentage" />%
	         						</fo:block>
	         					</fo:table-cell>
	         				</fo:table-row>
	         			</fo:table-body>
	         		</fo:table>
      			</fo:block>
      		</fo:block>
          </fo:block>
          <!-- /COMMUNICATIONS -->

          <!-- TRANSPORTATION -->
          <fo:block page-break-before="always">
          	<fo:block font-size="16pt" font-weight="bold" color="#00ff00">
          		Transportation
          	</fo:block>
          	<fo:block margin-top="10pt" text-align="justify">
      			<fo:table>
      				<fo:table-body>
      					<fo:table-row>
      						<fo:table-cell border="solid black 1px" padding="2px">
      							<fo:block font-weight="bold">National Air:</fo:block>
      						</fo:table-cell>
      						<fo:table-cell border="solid black 1px" padding="2px">
      							<fo:block>
      								<xsl:apply-templates select="transportation/national-air" />
      							</fo:block>
      						</fo:table-cell>
      					</fo:table-row>
      					<fo:table-row>
      						<fo:table-cell border="solid black 1px" padding="2px">
      							<fo:block font-weight="bold">Civil Aircraft:</fo:block>
      						</fo:table-cell>
      						<fo:table-cell border="solid black 1px" padding="2px">
      							<fo:block>
      								<xsl:value-of select="transportation/civil-aircraft/@country-code-prefix" />
      							</fo:block>
      						</fo:table-cell>
      					</fo:table-row>
      					<fo:table-row>
      						<fo:table-cell border="solid black 1px" padding="2px">
      							<fo:block font-weight="bold">Airports - Paved Runways:</fo:block>
      						</fo:table-cell>
      						<fo:table-cell border="solid black 1px" padding="2px">
      							<fo:block>
      								<xsl:apply-templates select="transportation/airports/paved-runways" />
      							</fo:block>
      						</fo:table-cell>
      					</fo:table-row>
      					<fo:table-row>
      						<fo:table-cell border="solid black 1px" padding="2px">
      							<fo:block font-weight="bold">Airports - Unpaved Runways:</fo:block>
      						</fo:table-cell>
      						<fo:table-cell border="solid black 1px" padding="2px">
      							<fo:block>
      								<xsl:apply-templates select="transportation/airports/unpaved-runways" />
      							</fo:block>
      						</fo:table-cell>
      					</fo:table-row>
      					<fo:table-row>
      						<fo:table-cell border="solid black 1px" padding="2px">
      							<fo:block font-weight="bold">Heliports:</fo:block>
      						</fo:table-cell>
      						<fo:table-cell border="solid black 1px" padding="2px">
      							<fo:block>
      								<xsl:value-of select="transportation/heliports/@value" />
      							</fo:block>
      						</fo:table-cell>
      					</fo:table-row>
      					<fo:table-row>
      						<fo:table-cell border="solid black 1px" padding="2px">
      							<fo:block font-weight="bold">Railways:</fo:block>
      						</fo:table-cell>
      						<fo:table-cell border="solid black 1px" padding="2px">
      							<fo:block>
      								<xsl:apply-templates select="transportation/railways" />
      							</fo:block>
      						</fo:table-cell>
      					</fo:table-row>
      					<fo:table-row>
      						<fo:table-cell border="solid black 1px" padding="2px">
      							<fo:block font-weight="bold">Roadways:</fo:block>
      						</fo:table-cell>
      						<fo:table-cell border="solid black 1px" padding="2px">
      							<fo:block>
      								<xsl:apply-templates select="transportation/roadways" />
      							</fo:block>
      						</fo:table-cell>
      					</fo:table-row>
      					<fo:table-row>
      						<fo:table-cell border="solid black 1px" padding="2px">
      							<fo:block font-weight="bold">Waterways:</fo:block>
      						</fo:table-cell>
      						<fo:table-cell border="solid black 1px" padding="2px">
      							<fo:block>
      								<xsl:value-of select="transportation/waterways/@value" />
      							</fo:block>
      						</fo:table-cell>
      					</fo:table-row>
      					<fo:table-row>
      						<fo:table-cell border="solid black 1px" padding="2px">
      							<fo:block font-weight="bold">Merchant Marine:</fo:block>
      						</fo:table-cell>
      						<fo:table-cell border="solid black 1px" padding="2px">
      							<fo:block font-weight="bold">by Type:</fo:block>
      							<fo:block>
      								<xsl:value-of select="transportation/merchant-marine/by-type" />
      							</fo:block>
      							<fo:block font-weight="bold">Foreign Owned:</fo:block>
      							<fo:block>
      								<xsl:value-of select="transportation/merchant-marine/foreign-owned" />
      							</fo:block>
      							<fo:block font-weight="bold">Registered in other Countries:</fo:block>
      							<fo:block>
      								<xsl:value-of select="transportation/merchant-marine/registered-in-other-countries" />
      							</fo:block>
      						</fo:table-cell>
      					</fo:table-row>
      					<fo:table-row>
      						<fo:table-cell border="solid black 1px" padding="2px">
      							<fo:block font-weight="bold">Major Seaports:</fo:block>
      						</fo:table-cell>
      						<fo:table-cell border="solid black 1px" padding="2px">
      							<fo:block>
      								<xsl:apply-templates select="transportation/ports-terminals/major-seaports" />
      							</fo:block>
      						</fo:table-cell>
      					</fo:table-row>
      					<fo:table-row>
      						<fo:table-cell border="solid black 1px" padding="2px">
      							<fo:block font-weight="bold">Container Ports:</fo:block>
      						</fo:table-cell>
      						<fo:table-cell border="solid black 1px" padding="2px">
      							<fo:block>
      								<xsl:apply-templates select="transportation/ports-terminals/container-ports" />
      							</fo:block>
      						</fo:table-cell>
      					</fo:table-row>
      					<fo:table-row>
      						<fo:table-cell border="solid black 1px" padding="2px">
      							<fo:block font-weight="bold">Oil Terminals:</fo:block>
      						</fo:table-cell>
      						<fo:table-cell border="solid black 1px" padding="2px">
      							<fo:block>
      								<xsl:apply-templates select="transportation/ports-terminals/oil-terminals" />
      							</fo:block>
      						</fo:table-cell>
      					</fo:table-row>
      					<fo:table-row>
      						<fo:table-cell border="solid black 1px" padding="2px">
      							<fo:block font-weight="bold">LNG Terminals Export:</fo:block>
      						</fo:table-cell>
      						<fo:table-cell border="solid black 1px" padding="2px">
      							<fo:block>
      								<xsl:apply-templates select="transportation/ports-terminals/lng-terminals-export" />
      							</fo:block>
      						</fo:table-cell>
      					</fo:table-row>
      					<fo:table-row>
      						<fo:table-cell border="solid black 1px" padding="2px">
      							<fo:block font-weight="bold">LNG Terminals Import:</fo:block>
      						</fo:table-cell>
      						<fo:table-cell border="solid black 1px" padding="2px">
      							<fo:block>
      								<xsl:apply-templates select="transportation/ports-terminals/lng-terminals-import" />
      							</fo:block>
      						</fo:table-cell>
      					</fo:table-row>
      					<fo:table-row>
      						<fo:table-cell border="solid black 1px" padding="2px">
      							<fo:block font-weight="bold">Cruise Ports:</fo:block>
      						</fo:table-cell>
      						<fo:table-cell border="solid black 1px" padding="2px">
      							<fo:block>
      								<xsl:apply-templates select="transportation/ports-terminals/cruise-ports" />
      							</fo:block>
      						</fo:table-cell>
      					</fo:table-row>
      					<fo:table-row>
      						<fo:table-cell border="solid black 1px" padding="2px">
      							<fo:block font-weight="bold">Note:</fo:block>
      						</fo:table-cell>
      						<fo:table-cell border="solid black 1px" padding="2px">
      							<fo:block>
      								<xsl:value-of select="transportation/note" />
      							</fo:block>
      						</fo:table-cell>
      					</fo:table-row>
      				</fo:table-body>
      			</fo:table>
      		</fo:block>
          </fo:block>
          <!-- /TRANSPORTATION -->

          <!-- MILITARY SECURITY -->
          <fo:block page-break-before="always">
          	<fo:block font-size="16pt" font-weight="bold" color="#00ff00">
          		Military and Security
          	</fo:block>
          	<fo:block margin-top="10pt" text-align="justify">
      			<fo:block>
      				<fo:table>
      					<fo:table-body>
      						<fo:table-row>
      							<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block font-weight="bold">Branches:</fo:block>
      							</fo:table-cell>
      							<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block>
      									<xsl:value-of select="military-security/branches" />
      								</fo:block>
      							</fo:table-cell>
      						</fo:table-row>
      						<fo:table-row>
      							<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block font-weight="bold">Service Age:</fo:block>
      							</fo:table-cell>
      							<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block>
      									<xsl:value-of select="military-security/service-age" />
      								</fo:block>
      							</fo:table-cell>
      						</fo:table-row>
      						<fo:table-row>
      							<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block font-weight="bold">Expenditures:</fo:block>
      							</fo:table-cell>
      							<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block>
      									<xsl:apply-templates select="military-security/expenditures" />
      								</fo:block>
      							</fo:table-cell>
      						</fo:table-row>
      					</fo:table-body>
      				</fo:table>
      			</fo:block>
      		</fo:block>
          </fo:block>
          <!-- /MILITARY SECURITY -->

          <!-- TRANSNATIONAL ISSUES -->
          <fo:block page-break-before="always">
          	<fo:block font-size="16pt" font-weight="bold" color="#00ff00">
          		Transnational Issues
          	</fo:block>
          	<fo:block margin-top="10pt" text-align="justify">
      			<fo:block>
      				<fo:table>
      					<fo:table-body>
      						<fo:table-row>
      							<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block font-weight="bold">Disputes:</fo:block>
      							</fo:table-cell>
      							<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block>
      									<xsl:value-of select="transnational-issues/disputes" />
      								</fo:block>
      							</fo:table-cell>
      						</fo:table-row>
      						<fo:table-row>
      							<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block font-weight="bold">Refugees:</fo:block>
      							</fo:table-cell>
      							<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block>
      									<xsl:apply-templates select="transnational-issues/refugees" />
      								</fo:block>
      							</fo:table-cell>
      						</fo:table-row>
      						<fo:table-row>
      							<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block font-weight="bold">Illict Drugs:</fo:block>
      							</fo:table-cell>
      							<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block>
      									<xsl:value-of select="transnational-issues/illict-drugs" />
      								</fo:block>
      							</fo:table-cell>
      						</fo:table-row>
      						<fo:table-row>
      							<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block font-weight="bold">Trafficking - Current Situation:</fo:block>
      							</fo:table-cell>
      							<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block>
      									<xsl:value-of select="transnational-issues/trafficking/current-situation" />
      								</fo:block>
      							</fo:table-cell>
      						</fo:table-row>
      						<fo:table-row>
      							<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block font-weight="bold">Trafficking - Tier Rating:</fo:block>
      							</fo:table-cell>
      							<fo:table-cell border="solid black 1px" padding="2px">
      								<fo:block>
      									<xsl:value-of select="transnational-issues/trafficking/tier-rating" />
      								</fo:block>
      							</fo:table-cell>
      						</fo:table-row>
      					</fo:table-body>
      				</fo:table>
      			</fo:block>
      		</fo:block>
          </fo:block>
          <!-- /TRANSNATIONAL ISSUES -->
        </fo:flow>
      </fo:page-sequence>
    </fo:root>
  </xsl:template>

  <!-- APPLY TEMPLATES -->
  <xsl:template match="images/image">
  	<fo:block display-align="center" text-align="center" margin-top="10pt">
	  	<fo:external-graphic content-width="200pt" content-height="200pt" display-align="center" src="{@source}"/>
  	</fo:block>
  	<fo:block font-size="7.5pt" font-style="italic" margin-top="5pt" margin-bottom="5pt">
  		<xsl:value-of select="@caption" />
  	</fo:block>
  </xsl:template>

  <xsl:template match="geography/area">
		<xsl:for-each select="@*">
			<xsl:choose>
				<xsl:when test="not(name() = 'unit')">
					<fo:block>
						<xsl:value-of select="name()" />: <xsl:value-of select="." />&#160;<xsl:value-of select="//area/@unit" />
					</fo:block>
				</xsl:when>
			</xsl:choose>
		</xsl:for-each>
	</xsl:template>

	<xsl:template match="geography/land-boundaries/border-countries/state">
		<fo:block>
			<xsl:value-of select="@name" /> - <xsl:value-of select="@total" />&#160;<xsl:value-of select="//border-countries/@unit" />
		</fo:block>
	</xsl:template>

	<xsl:template match="geography/maritime-claims">
		<xsl:for-each select="@*">
			<xsl:choose>
				<xsl:when test="not(name() = 'unit')">
					<fo:block>
						<xsl:value-of select="name()" /> - <xsl:value-of select="." />&#160;
          					<xsl:choose>
	          					<xsl:when test="not(name() = 'value')">
	          						<xsl:value-of select="//border-countries/@unit" />
	          					</xsl:when>
          					</xsl:choose>
					</fo:block>
				</xsl:when>
			</xsl:choose>
		</xsl:for-each>
	</xsl:template>

	<xsl:template match="geography/elevation">
		<xsl:for-each select="@*">
			<xsl:choose>
				<xsl:when test="not(name() = 'unit')">
					<fo:block>
						<xsl:value-of select="name()" /> - <xsl:value-of select="." />&#160;<xsl:value-of select="//elevation/@unit" />
					</fo:block>
				</xsl:when>
			</xsl:choose>
		</xsl:for-each>
	</xsl:template>

	<xsl:template match="geography/land-use">
		<xsl:for-each select="@*">
			<xsl:choose>
				<xsl:when test="not(name() = 'unit')">
					<fo:block>
						<xsl:value-of select="name()" /> - <xsl:value-of select="." /><xsl:value-of select="//land-use/@unit" />
					</fo:block>
				</xsl:when>
			</xsl:choose>
		</xsl:for-each>
	</xsl:template>

	<xsl:template match="geography/environment">
		<xsl:for-each select="@*">
			<fo:block>
				<xsl:value-of select="name()" /> - <xsl:value-of select="." />
			</fo:block>
		</xsl:for-each>
	</xsl:template>

	<xsl:template match="people-society/nationality">
		<xsl:for-each select="@*">
			<fo:block>
				- <xsl:value-of select="name()" /> - <xsl:value-of select="." />
			</fo:block>
		</xsl:for-each>
	</xsl:template>

	<xsl:template match="people-society/languages/language">
		<fo:block>
			- <xsl:value-of select="." />
		</fo:block>
	</xsl:template>

	<xsl:template match="people-society/dependency-ratios">
		<xsl:for-each select="@*">
			<xsl:choose>
				<xsl:when test="not(name() = 'unit')">
					<fo:block>
						<xsl:value-of select="name()" /> - <xsl:value-of select="." />&#160;<xsl:value-of select="//dependency-ratios/@unit" />
					</fo:block>
				</xsl:when>
			</xsl:choose>
		</xsl:for-each>
	</xsl:template>

	<xsl:template match="people-society/sex-ratio/ratio">
		<fo:block>
			<xsl:value-of select="." /> - <xsl:value-of select="@value" />
		</fo:block>
	</xsl:template>

	<xsl:template match="people-society/infant-mortality-rate">
		<xsl:for-each select="@*">
			<xsl:choose>
				<xsl:when test="not(name() = 'unit')">
					<fo:block>
						<xsl:value-of select="name()" /> - <xsl:value-of select="." />&#160;<xsl:value-of select="//infant-mortality-rate/@unit" />
					</fo:block>
				</xsl:when>
			</xsl:choose>
		</xsl:for-each>
	</xsl:template>

	<xsl:template match="people-society/life-expectancy-at-birth">
		<xsl:for-each select="@*">
			<xsl:choose>
				<xsl:when test="not(name() = 'unit')">
					<fo:block>
						<xsl:value-of select="name()" /> - <xsl:value-of select="." />&#160;<xsl:value-of select="//infant-mortality-rate/@unit" />
					</fo:block>
				</xsl:when>
			</xsl:choose>
		</xsl:for-each>
	</xsl:template>

	<xsl:template match="people-society/drinking-water-source/improved">
		<xsl:for-each select="@*">
			<fo:block>
				<xsl:value-of select="name()" /> - <xsl:value-of select="." />&#160;<xsl:value-of select="//drinking-water-source/@unit" />
			</fo:block>
		</xsl:for-each>
	</xsl:template>

	<xsl:template match="people-society/drinking-water-source/unimproved">
		<xsl:for-each select="@*">
			<fo:block>
				<xsl:value-of select="name()" /> - <xsl:value-of select="." />&#160;<xsl:value-of select="//drinking-water-source/@unit" />
			</fo:block>
		</xsl:for-each>
	</xsl:template>

	<xsl:template match="people-society/sanitation-facility-access/improve">
		<xsl:for-each select="@*">
			<fo:block>
				<xsl:value-of select="name()" /> - <xsl:value-of select="." />&#160;<xsl:value-of select="//sanitation-facility-access/@unit" />
			</fo:block>
		</xsl:for-each>
	</xsl:template>

	<xsl:template match="people-society/sanitation-facility-access/unimprove">
		<xsl:for-each select="@*">
			<fo:block>
				<xsl:value-of select="name()" /> - <xsl:value-of select="." />&#160;<xsl:value-of select="//sanitation-facility-access/@unit" />
			</fo:block>
		</xsl:for-each>
	</xsl:template>

	<xsl:template match="people-society/major-infections-deseases/desease">
		<fo:block>
			<xsl:value-of select="." />
		</fo:block>
	</xsl:template>

	<xsl:template match="people-society/literacy">
		<xsl:for-each select="@*">
			<xsl:choose>
				<xsl:when test="not(name() = 'unit') and not(name() = 'definition')">
					<fo:block>
						<xsl:value-of select="name()" /> - <xsl:value-of select="." />&#160;<xsl:value-of select="//literacy/@unit" />
					</fo:block>
				</xsl:when>
			</xsl:choose>
		</xsl:for-each>
	</xsl:template>

	<xsl:template match="people-society/school-life">
		<xsl:for-each select="@*">
			<xsl:choose>
				<xsl:when test="not(name() = 'unit') and not(name() = 'description')">
					<fo:block>
						<xsl:value-of select="name()" /> - <xsl:value-of select="." />&#160;<xsl:value-of select="//school-life/@unit" />
					</fo:block>
				</xsl:when>
			</xsl:choose>
		</xsl:for-each>
	</xsl:template>

	<xsl:template match="people-society/child-labor">
		<xsl:for-each select="@*">
			<fo:block>
				<xsl:value-of select="name()" /> - <xsl:value-of select="." />
			</fo:block>
		</xsl:for-each>
	</xsl:template>

	<xsl:template match="people-society/unemployment">
		<xsl:for-each select="@*">
			<xsl:choose>
				<xsl:when test="not(name() = 'unit') and not(name() = 'description')">
					<fo:block>
						<xsl:value-of select="name()" /> - <xsl:value-of select="." />&#160;<xsl:value-of select="/people-society/unemployment/@unit" />
					</fo:block>
				</xsl:when>
			</xsl:choose>
		</xsl:for-each>
	</xsl:template>

	<xsl:template match="people-society/ethnic-groups/ethnic-group">
		<fo:block>
			<xsl:value-of select="." />: <xsl:value-of select="@percentage" />%
        </fo:block>
	</xsl:template>

	<xsl:template match="people-society/religions/religion">
		<fo:block>
			<xsl:value-of select="." />: <xsl:value-of select="@percentage" />%
        </fo:block>
	</xsl:template>

	<xsl:template match="people-society/age-structure/structure" mode="percentage">
		<fo:block>
			<xsl:value-of select="@structure" />: <xsl:value-of select="@percentage" />%
        </fo:block>
	</xsl:template>

	<xsl:template match="people-society/age-structure/structure" mode="male">
		<fo:block>
			<xsl:value-of select="@structure" />: <xsl:value-of select="@male" />%
        </fo:block>
	</xsl:template>

	<xsl:template match="people-society/age-structure/structure" mode="female">
		<fo:block>
			<xsl:value-of select="@structure" />: <xsl:value-of select="@female" />%
        </fo:block>
	</xsl:template>

	<xsl:template match="people-society/major-urban-areas/areas">
		<fo:block>
			<xsl:value-of select="." />: <xsl:value-of select="@population" />%
        </fo:block>
	</xsl:template>

	<xsl:template match="government/national-holiday/holiday">
		<fo:block>
			- <xsl:value-of select="@name" /> - <xsl:value-of select="@date" />
		</fo:block>
	</xsl:template>

	<xsl:template match="government/citizenship">
		<xsl:for-each select="@*">
			<fo:block>
				<xsl:value-of select="name()" /> - <xsl:value-of select="." />
			</fo:block>
		</xsl:for-each>
	</xsl:template>

	<xsl:template match="government/executive-branch/*">
    	<fo:block>
			<fo:block font-weight="bold"><xsl:value-of select="name()" />:</fo:block>
			<fo:block><xsl:value-of select="@value" /></fo:block>
		</fo:block>
	</xsl:template>

	<xsl:template match="government/legislative-branch/*">
    	<fo:block>
			<fo:block font-weight="bold"><xsl:value-of select="name()" />:</fo:block>
			<fo:block><xsl:value-of select="." /></fo:block>
		</fo:block>
	</xsl:template>

	<xsl:template match="government/judicial-branch/*">
    	<fo:block>
			<fo:block font-weight="bold"><xsl:value-of select="name()" />:</fo:block>
			<fo:block><xsl:value-of select="." /></fo:block>
		</fo:block>
	</xsl:template>

	<xsl:template match="government/political-parties/party">
    	<fo:block>
			<fo:block font-weight="bold"><xsl:value-of select="@name" /> (<xsl:value-of select="@short" />)</fo:block>
			<fo:block><xsl:value-of select="@leader" /></fo:block>
		</fo:block>
	</xsl:template>

	<xsl:template match="government/diplomatic-representation/in-us">
		<xsl:for-each select="@*">
	    	<fo:block>
				<xsl:value-of select="name()" /> - <xsl:value-of select="." />
			</fo:block>
		</xsl:for-each>
	</xsl:template>

	<xsl:template match="government/diplomatic-representation/from-us">
		<xsl:for-each select="@*">
	    	<fo:block>
				<xsl:value-of select="name()" /> - <xsl:value-of select="." />
			</fo:block>
		</xsl:for-each>
	</xsl:template>

	<xsl:template match="government/national-anthem">
		<xsl:for-each select="@*">
			<xsl:choose>
				<xsl:when test="not(name() = 'source')">
					<fo:block>
						<xsl:value-of select="name()" /> - <xsl:value-of select="." />&#160;<xsl:value-of select="//national-anthem/@unit" />
					</fo:block>
				</xsl:when>
			</xsl:choose>
		</xsl:for-each>
	</xsl:template>

	<xsl:template match="economy/gdps/gdp">
		<fo:block>
			To:&#160;<xsl:value-of select="@to" />
		</fo:block>
		<fo:block>
			Value:&#160;<xsl:value-of select="@unit" /><xsl:value-of select="." />&#160;<xsl:value-of select="@value" />
		</fo:block>
	</xsl:template>

	<xsl:template match="economy/gdps/real-growth-rate/growth-rate">
		<fo:block>
			To:&#160;<xsl:value-of select="@to" />
		</fo:block>
		<fo:block>
			Value:&#160;<xsl:value-of select="." /><xsl:value-of select="//real-growth-rate/@unit" />
		</fo:block>
	</xsl:template>

	<xsl:template match="economy/gdps/per-capita/capita">
		<fo:block>
			To:&#160;<xsl:value-of select="@to" />
		</fo:block>
		<fo:block>
			Value:&#160;<xsl:value-of select="//per-capita/@unit" /><xsl:value-of select="." />
		</fo:block>
	</xsl:template>

	<xsl:template match="economy/gdps/gross-national/gross">
		<fo:block>
			To:&#160;<xsl:value-of select="@to" />
		</fo:block>
		<fo:block>
			Value:&#160;<xsl:value-of select="." /><xsl:value-of select="//gross-national/@unit" />
		</fo:block>
	</xsl:template>

	<xsl:template match="economy/unemploy/u-rate">
		<fo:block>
			To:&#160;<xsl:value-of select="@to" />
		</fo:block>
		<fo:block>
			Value:&#160;<xsl:value-of select="." /><xsl:value-of select="/economy/unemploy/@unit" />
		</fo:block>
	</xsl:template>

	<xsl:template match="economy/household">
		<xsl:for-each select="@*">
			<xsl:choose>
				<xsl:when test="not(name() = 'unit')">
					<fo:block>
						<xsl:value-of select="name()" />: <xsl:value-of select="." /><xsl:value-of select="//household/@unit" />
					</fo:block>
				</xsl:when>
			</xsl:choose>
		</xsl:for-each>
	</xsl:template>

	<xsl:template match="economy/distribution-of-family/distribution">
		<fo:block>
			To:&#160;<xsl:value-of select="@to" />
		</fo:block>
		<fo:block>
			Value:&#160;<xsl:value-of select="." />
		</fo:block>
	</xsl:template>

	<xsl:template match="economy/budget">
		<xsl:for-each select="@*">
			<fo:block>
				<xsl:value-of select="name()" />: <xsl:value-of select="." />
			</fo:block>
		</xsl:for-each>
	</xsl:template>

	<xsl:template match="economy/public-debt/debt">
		<fo:block>
			To:&#160;<xsl:value-of select="@to" />
		</fo:block>
		<fo:block>
			Value:&#160;<xsl:value-of select="." />
		</fo:block>
	</xsl:template>

	<xsl:template match="economy/inflation-rate/i-rate">
		<fo:block>
			To:&#160;<xsl:value-of select="@to" />
		</fo:block>
		<fo:block>
			Value:&#160;<xsl:value-of select="." /><xsl:value-of select="/economy/inflation-rate/@unit" />
		</fo:block>
	</xsl:template>

	<xsl:template match="economy/bank-discount-rate/b-rate">
		<fo:block>
			To:&#160;<xsl:value-of select="@to" />
		</fo:block>
		<fo:block>
			Value:&#160;<xsl:value-of select="." /><xsl:value-of select="/economy/bank-discount-rate/@unit" />
		</fo:block>
	</xsl:template>

	<xsl:template match="economy/stock-of-narrow-money/money">
		<fo:block>
			To:&#160;<xsl:value-of select="@to" />
		</fo:block>
		<fo:block>
			Value:&#160;<xsl:value-of select="/economy/stock-of-narrow-money/@unit" /><xsl:value-of select="." />&#160;<xsl:value-of select="/economy/stock-of-narrow-money/@value" />
		</fo:block>
	</xsl:template>

	<xsl:template match="economy/stock-of-broad-money/money">
		<fo:block>
			To:&#160;<xsl:value-of select="@to" />
		</fo:block>
		<fo:block>
			Value:&#160;<xsl:value-of select="/economy/stock-of-broad-money/@unit" /><xsl:value-of select="." />&#160;<xsl:value-of select="/economy/stock-of-broad-money/@value" />
		</fo:block>
	</xsl:template>

	<xsl:template match="economy/stock-of-domestic-credit/money">
		<fo:block>
			To:&#160;<xsl:value-of select="@to" />
		</fo:block>
		<fo:block>
			Value:&#160;<xsl:value-of select="/economy/stock-of-domestic-credit/@unit" /><xsl:value-of select="." />&#160;<xsl:value-of select="/economy/stock-of-domestic-credit/@value" />
		</fo:block>
	</xsl:template>

	<xsl:template match="economy/market-value/money">
		<fo:block>
			To:&#160;<xsl:value-of select="@to" />
		</fo:block>
		<fo:block>
			Value:&#160;<xsl:value-of select="/economy/market-value/@unit" /><xsl:value-of select="." />&#160;<xsl:value-of select="/economy/market-value/@value" />
		</fo:block>
	</xsl:template>

	<xsl:template match="economy/current-account/money">
		<fo:block>
			To:&#160;<xsl:value-of select="@to" />
		</fo:block>
		<fo:block>
			Value:&#160;<xsl:value-of select="/economy/current-account/@unit" /><xsl:value-of select="." />&#160;<xsl:value-of select="/economy/current-account/@value" />
		</fo:block>
	</xsl:template>

	<xsl:template match="economy/reserves/money">
		<fo:block>
			To:&#160;<xsl:value-of select="@to" />
		</fo:block>
		<fo:block>
			Value:&#160;<xsl:value-of select="/economy/reserves/@unit" /><xsl:value-of select="." />&#160;<xsl:value-of select="/economy/reserves/@value" />
		</fo:block>
	</xsl:template>

	<xsl:template match="economy/debt-external/money">
		<fo:block>
			To:&#160;<xsl:value-of select="@to" />
		</fo:block>
		<fo:block>
			Value:&#160;<xsl:value-of select="/economy/debt-external/@unit" /><xsl:value-of select="." />&#160;<xsl:value-of select="/economy/debt-external/@value" />
		</fo:block>
	</xsl:template>

	<xsl:template match="economy/stock-of-investment/at-home/money">
		<fo:block>
			To:&#160;<xsl:value-of select="@to" />
		</fo:block>
		<fo:block>
			Value:&#160;<xsl:value-of select="/economy/stock-of-investment/@unit" /><xsl:value-of select="." />&#160;<xsl:value-of select="/economy/stock-of-investment/@value" />
		</fo:block>
	</xsl:template>

	<xsl:template match="economy/stock-of-investment/abroad/money">
		<fo:block>
			To:&#160;<xsl:value-of select="@to" />
		</fo:block>
		<fo:block>
			Value:&#160;<xsl:value-of select="/economy/stock-of-investment/@unit" /><xsl:value-of select="." />&#160;<xsl:value-of select="/economy/stock-of-investment/@value" />
		</fo:block>
	</xsl:template>

	<xsl:template match="economy/exchange-rates/money">
		<fo:block>
			To:&#160;<xsl:value-of select="@to" />
		</fo:block>
		<fo:block>
			Value:&#160;<xsl:value-of select="." />
		</fo:block>
	</xsl:template>

	<xsl:template match="energy/electricity/e-access">
		<xsl:for-each select="@*">
			<fo:block>
				<xsl:value-of select="name()" /> - <xsl:value-of select="." />
			</fo:block>
		</xsl:for-each>
	</xsl:template>

	<xsl:template match="energy/crude-oil/*">
		<fo:block>
			<xsl:value-of select="name()" />:&#160;<xsl:value-of select="@value" />
		</fo:block>
	</xsl:template>

	<xsl:template match="energy/petroleum-products/*">
		<fo:block>
			<xsl:value-of select="name()" />:&#160;<xsl:value-of select="@value" />
		</fo:block>
	</xsl:template>

	<xsl:template match="energy/natural-gas/*">
		<fo:block>
			<xsl:value-of select="name()" />:&#160;<xsl:value-of select="@value" />
		</fo:block>
	</xsl:template>

	<xsl:template match="transportation/national-air">
		<xsl:for-each select="@*">
			<fo:block>
				<xsl:value-of select="name()" />:&#160;<xsl:value-of select="." /></fo:block>
		</xsl:for-each>
	</xsl:template>

	<xsl:template match="transportation/airports/paved-runways/runway">
		<fo:block>
			<xsl:value-of select="@description" /> - <xsl:value-of select="@value" />
		</fo:block>
	</xsl:template>

	<xsl:template match="transportation/airports/unpaved-runways/runway">
		<fo:block>
			<xsl:value-of select="@description" /> - <xsl:value-of select="@value" />
		</fo:block>
	</xsl:template>

	<xsl:template match="transportation/railways">
		<xsl:for-each select="@*">
			<fo:block>
				<xsl:value-of select="name()" /> - <xsl:value-of select="." />
			</fo:block>
		</xsl:for-each>
	</xsl:template>

	<xsl:template match="transportation/roadways">
		<xsl:for-each select="@*">
			<xsl:choose>
				<xsl:when test="not(name() = 'unit')">
					<fo:block><xsl:value-of select="name()" /> - <xsl:value-of select="." /><xsl:value-of select="/transportation/roadways/@unit" />
					</fo:block>
				</xsl:when>
			</xsl:choose>
		</xsl:for-each>
	</xsl:template>

	<xsl:template match="transportation/ports-terminals/major-seaports/seaport">
		<fo:block><xsl:value-of select="." /></fo:block>
	</xsl:template>

	<xsl:template match="transportation/ports-terminals/container-ports/port">
		<fo:block><xsl:value-of select="." />,&#160;<xsl:value-of select="@value" /></fo:block>
	</xsl:template>

	<xsl:template match="transportation/ports-terminals/oil-terminals/terminal">
		<fo:block><xsl:value-of select="." /></fo:block>
	</xsl:template>

	<xsl:template match="transportation/ports-terminals/lng-terminals-export/terminal">
		<fo:block><xsl:value-of select="." /></fo:block>
	</xsl:template>

	<xsl:template match="transportation/ports-terminals/lng-terminals-import/terminal">
		<fo:block><xsl:value-of select="." /></fo:block>
	</xsl:template>

	<xsl:template match="transportation/ports-terminals/cruise-ports/port">
		<fo:block><xsl:value-of select="." /></fo:block>
	</xsl:template>

	<xsl:template match="military-security/expenditures/expenditure">
		<fo:block>
			<xsl:value-of select="@to" /> - <xsl:value-of select="@value" /><xsl:value-of select="/military-security/expenditures/@unit" />
		</fo:block>
	</xsl:template>

	<xsl:template match="transnational-issues/refugees">
		<xsl:for-each select="@*">
			<fo:block>
				<xsl:value-of select="name()" /> - <xsl:value-of select="." />
			</fo:block>
		</xsl:for-each>
	</xsl:template>

	<!-- /APPLY TEMPLATES -->
</xsl:stylesheet>
