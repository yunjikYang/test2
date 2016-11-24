<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" indent="yes" omit-xml-declaration="no"/>
	<xsl:param name="height" select="'300'"/>
	<xsl:template match="/">
		<MOML>
			<UILAYOUT portrait="300,{$height}" landscape="300,{$height}">
				<WINDOW layout="0,0,300,{$height}" align="flow" >
					<xsl:for-each select="//item">
						<BUTTON layout="57,57" img="{listImageUrl}" margin="1" imageUrl="{imageUrl}" onClick="function.document.document.popupImage(caller.imageUrl)"/>
					</xsl:for-each>
				</WINDOW>
			</UILAYOUT>
		</MOML>
	</xsl:template>
</xsl:stylesheet>
