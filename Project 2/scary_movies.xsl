<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/scary_movies">
	<html>
		<head>
			<link href="movie_style.css" rel="stylesheet" type="text/css" />
		</head>
		<body>
			<h1><img src="header2.png" alt="Scary Movies" align="center"/></h1>
			<table border="1">
				<tr>
					<th>Title</th>
					<th>Details</th>
					<th>Release Information</th>
					<th>Ratings</th>
					<th>Cast</th>
					<th>Box Office</th>
				</tr>
			<xsl:for-each select="movie_name">
				<tr>
				<xsl:for-each select="details">
					<td>
						<xsl:value-of select="title"/>
					</td>
				
					<td>
						<p><b>Summary: </b><xsl:value-of select="summary"/></p>	
						<p><b>Tagline: </b><xsl:value-of select="tagline"/></p>
						<p><b>MPAA Rating: </b><xsl:value-of select="mpaa_rating"/></p>
						<p><b>Runtime: </b><xsl:value-of select="runtime"/></p>
						<xsl:for-each select="genre_type">
							<p><b>Genre: </b><xsl:value-of select="."/></p>
						</xsl:for-each>
					</td>
				</xsl:for-each>
				
				<xsl:for-each select="release_info">
					<td>
						<p><b>Region: </b><xsl:value-of select="region"/></p>
						<p><b>Date: </b><xsl:value-of select="date"/></p>
					</td>
				</xsl:for-each>

				<xsl:for-each select="ratings">
					<td>
						<p><b>IMDB Rating: </b><xsl:value-of select="imdb_rating"/></p>
						<p><b>Metascore: </b><xsl:value-of select="metascore"/></p>
					</td>
				</xsl:for-each>
				
				<xsl:for-each select="cast">
					<td>
					<p><b>Director: </b><xsl:value-of select="director"/></p>					
					<xsl:for-each select="starring">
						<p><b>Starring: </b><xsl:value-of select="."/></p>

					</xsl:for-each>
					</td>
				</xsl:for-each>
				
				<xsl:for-each select="box_office">	
					<td>
						<p><b>Estimated Budget: </b><xsl:value-of select="estimated_budget"/></p>
						<p><b>Opening Weekend Gross Revenue: </b><xsl:value-of select="gross_revenue"/></p>		
					</td>
				</xsl:for-each>
				</tr>
				</xsl:for-each>

			</table>
		</body>
	</html>
</xsl:template>

</xsl:stylesheet>