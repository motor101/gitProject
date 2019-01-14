<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
    <xsl:template match="/">
        <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
            
            <fo:layout-master-set>
                <fo:simple-page-master master-name="default"
                    page-height="11in"  page-width="10in" margin-top="1in" 
                    margin-bottom="1in" margin-left="1in" margin-right="1in">
                    <fo:region-body margin-top="1in" margin-bottom=".5in"/>
                </fo:simple-page-master>
            </fo:layout-master-set>
            
            <fo:page-sequence master-reference="default">
                <fo:flow flow-name="xsl-region-body">
                    <fo:block font-size="40pt" text-align="center" margin-bottom="2cm" font-family="Arial">
                        Каталог на хотели в България
                    </fo:block>
                    <xsl:for-each select="catalog/hotels/hotel">
                        <fo:block-container position="relative" font-family="Arial" font-weight="bold" font-size="15pt" color="black" 
                            padding-before="5mm" margin-left="2cm" margin-bottom="1cm" text-align="left" page-break-inside="avoid">
                            <fo:block font-size="30pt" text-align="center" margin-bottom="2cm">
                               <xsl:value-of select="name"/>
                           </fo:block>
                            <fo:block text-align="center">
                               <fo:external-graphic content-height="250" content-width="350" src="url('{unparsed-entity-uri(image/@href)}')" margin-left="5cm" margin-bottom="15mm" />
                            </fo:block>
                            <fo:block>
                                Брой звезди: <xsl:value-of select="starsCategory"/>
                            </fo:block>
                            <fo:block>
                                Телефон: <xsl:value-of select="telephone"/>
                            </fo:block>
                            <fo:block>
                                Имейл: <xsl:value-of select="email"/>
                            </fo:block>
                            <fo:block>
                                <xsl:value-of select="description"/>
                            </fo:block>
                        </fo:block-container>
                    </xsl:for-each>
                </fo:flow>
            </fo:page-sequence>
            
        </fo:root>
    </xsl:template>
</xsl:stylesheet>