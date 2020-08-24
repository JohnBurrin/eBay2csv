<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">

        <xsl:for-each select="findItemsAdvancedResponse/searchResult">
            <xsl:apply-templates/>
        </xsl:for-each>

    </xsl:template>

    <xsl:template match="item">
        <table class="tg">
            <tr>
                <td class="tg-yw4l">
                    <a>

                        <xsl:attribute name="href">
                            <xsl:value-of select="viewItemURL"/>
                        </xsl:attribute>
                        <img target="_blank">

                            <xsl:attribute name="src">
                                <xsl:value-of select="galleryURL"/>
                            </xsl:attribute>
                        </img>
                    </a>
                </td>
                <td class="tg-yw4l">
                    <a target="_blank">

                        <xsl:attribute name="href">
                            <xsl:value-of select="viewItemURL"/>
                        </xsl:attribute>

                        <xsl:value-of select="itemId"/>
                        <br/>
                    </a>

                    <xsl:value-of select="title"/>
                    <br/>
                    <b>Seller:</b>

                    <xsl:value-of select="sellerInfo/sellerUserName"/>
                    <br/>
                    <b>Price:</b>£

                    <xsl:value-of select="sellingStatus/currentPrice"/>
                    <br/>
                    <b>
                        Distance:</b>

                    <xsl:value-of select="distance"/>miles.

                    <br/>
                    <b>
                        Payment Method:</b>

                    <xsl:value-of select="paymentMethod"/>
                </td>
            </tr>
        </table>
    </xsl:template>
</xsl:stylesheet>
