<?xml version="1.0"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">	
		<html>
		<head>
		<title>Pokedex</title>
		<link rel="stylesheet" href="projekt.css"/>
		</head>
		<body>
		<xsl:for-each select="//pokemon">
			<div class="pokemon">
				<table class="solid" align="center" border="2" width="400px" >
				<table align="center" border="1" class="title">
				<tr>
					<td>
						<xsl:for-each select="name">
							<xsl:value-of select="."/>
						</xsl:for-each>
					</td>
					<td>
						<img>
							<xsl:attribute name="src"><xsl:value-of select="img/@url"/></xsl:attribute>
						</img>
					</td>
				</tr>
				</table>
				<h3 style="text-align: center">Stats</h3>
				<table border="1" align="center">
				<tr>
					<th bgcolor="#DC143C">HP</th>
					<th bgcolor="#FF7F50">ATK</th>
					<th bgcolor="#B8860B">DEF</th>
					<th bgcolor="#FF4500">SPD</th>
					<th bgcolor="#87CEEB">SAT</th>
					<th bgcolor="#6A5ACD">SDF</th>
				</tr>
				<xsl:for-each select="stats">
				<tr class="bold">
				<td ><xsl:value-of select="HP"/></td>
				<td><xsl:value-of select="ATK"/></td>
				<td><xsl:value-of select="DEF"/></td>
				<td><xsl:value-of select="SPD"/></td>
				<td><xsl:value-of select="SAT"/></td>
				<td><xsl:value-of select="SDF"/></td>
				</tr>
				</xsl:for-each>
				</table>
				<h3 style="text-align: center">Avaliable evolutions</h3>
				<table border="1" align="center">
				<tr>
				<xsl:for-each select="evolutions">
				<td><xsl:value-of select="evolution[@id='1']"/></td>
				<td><xsl:value-of select="evolution[@id='2']"/></td>
				<td><xsl:value-of select="evolution[@id='3']"/></td>
				</xsl:for-each>
				</tr>
				</table>
				<h3 style="text-align: center" >Description</h3>
				<table border="1" width="250px" align="center">
				<tr>
				<xsl:for-each select="description">
				<xsl:value-of select="description"/>
					<xsl:value-of select="."/>
				</xsl:for-each>
				</tr>
				</table>
				</table>
			</div>
		</xsl:for-each>
		</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
