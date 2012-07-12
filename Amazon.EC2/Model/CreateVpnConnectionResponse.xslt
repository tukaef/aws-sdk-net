<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ec2="http://ec2.amazonaws.com/doc/2012-06-15/"
    exclude-result-prefixes="ec2">
    <xsl:output method="xml" omit-xml-declaration="no" indent="yes" />
    <xsl:variable name="ns"
        select="'http://ec2.amazonaws.com/doc/2012-06-15/'" />
    <xsl:template match="ec2:CreateVpnConnectionResponse">
        <xsl:element name="CreateVpnConnectionResponse" namespace="{$ns}">
            <xsl:element name="ResponseMetadata" namespace="{$ns}">
                <xsl:element name="RequestId" namespace="{$ns}">
                    <xsl:value-of select="ec2:requestId" />
                </xsl:element>
            </xsl:element>
            <xsl:element name="CreateVpnConnectionResult" namespace="{$ns}">
                <xsl:apply-templates select="ec2:vpnConnection" />
            </xsl:element>
        </xsl:element>
    </xsl:template>
    <xsl:template match="ec2:vpnConnection">
        <xsl:element name="VpnConnection" namespace="{$ns}">
            <xsl:element name="VpnConnectionId" namespace="{$ns}">
                <xsl:value-of select="ec2:vpnConnectionId" />
            </xsl:element>
            <xsl:element name="VpnConnectionState" namespace="{$ns}">
                <xsl:value-of select="ec2:state" />
            </xsl:element>
            <xsl:element name="CustomerGatewayConfiguration" namespace="{$ns}">
                <xsl:value-of select="ec2:customerGatewayConfiguration" />
            </xsl:element>
            <xsl:element name="Type" namespace="{$ns}">
                <xsl:value-of select="ec2:type" />
            </xsl:element>
            <xsl:element name="CustomerGatewayId" namespace="{$ns}">
                <xsl:value-of select="ec2:customerGatewayId" />
            </xsl:element>
            <xsl:element name="VpnGatewayId" namespace="{$ns}">
                <xsl:value-of select="ec2:vpnGatewayId" />
            </xsl:element>
            <xsl:apply-templates select="ec2:tagSet" />
            <xsl:apply-templates select="ec2:vgwTelemetry" />
        </xsl:element>
    </xsl:template>
  <xsl:template match="ec2:tagSet">
    <xsl:for-each select="ec2:item">
      <xsl:element name="Tag" namespace="{$ns}">
        <xsl:element name="Key" namespace="{$ns}">
          <xsl:value-of select="ec2:key" />
        </xsl:element>
        <xsl:element name="Value" namespace="{$ns}">
          <xsl:value-of select="ec2:value" />
        </xsl:element>
      </xsl:element>
    </xsl:for-each>
  </xsl:template>
  <xsl:template match="ec2:vgwTelemetry">
    <xsl:for-each select="ec2:item">
      <xsl:element name="VpnTunnelTelemetry" namespace="{$ns}">
        <xsl:element name="OutsideIpAddress" namespace="{$ns}">
          <xsl:value-of select="ec2:outsideIpAddress" />
        </xsl:element>
        <xsl:element name="Status" namespace="{$ns}">
          <xsl:value-of select="ec2:status" />
        </xsl:element>
        <xsl:element name="LastStatusChange" namespace="{$ns}">
          <xsl:value-of select="ec2:lastStatusChange" />
        </xsl:element>
        <xsl:element name="StatusMessage" namespace="{$ns}">
          <xsl:value-of select="ec2:statusMessage" />
        </xsl:element>
        <xsl:element name="AcceptedRouteCount" namespace="{$ns}">
          <xsl:value-of select="ec2:acceptedRouteCount" />
        </xsl:element>
      </xsl:element>
    </xsl:for-each>
  </xsl:template>
</xsl:stylesheet>
