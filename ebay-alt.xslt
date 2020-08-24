<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">

        <xsl:for-each select="findItemsAdvancedResponse/searchResult">
            <xsl:apply-templates/>
        </xsl:for-each>

    </xsl:template>

    <xsl:template match="item">
        <div class="col">
            <!-- w-400 = width: 40rem (400px), mw-full = max-width: 100% -->
            <div class="card">
                <strong><xsl:value-of select="title"/></strong>
                <p>
                    <a>

                        <xsl:attribute name="href">
                            <xsl:value-of select="viewItemURL"/>
                        </xsl:attribute>
                        <img target="_blank" class="img-fluid rounded-top">

                            <xsl:attribute name="src">
                                <xsl:value-of select="galleryURL"/>
                            </xsl:attribute>
                        </img>
                    </a>
                </p>
                <strong>Seller:</strong>&#xA0;

                <xsl:value-of select="sellerInfo/sellerUserName"/>
                <br/>
                <strong>Price:</strong>&#xA0; £<xsl:value-of select="sellingStatus/currentPrice"/>
                <br/>
                <strong>Shipping Type:</strong>&#xA0;

                <xsl:value-of select="shippingInfo/shippingType"/>
                <br/>
                <strong>Status:</strong>&#xA0;

                <xsl:value-of select="sellingStatus/sellingState"/>
                <div class="text-right">
                    <!-- text-right = text-align: right -->
                    <a class="btn" target="_blank">

                        <xsl:attribute name="href">
                            <xsl:value-of select="viewItemURL"/>
                        </xsl:attribute>Goto eBay
                    </a>
                </div>
            </div>
        </div>
    </xsl:template>

</xsl:stylesheet>
