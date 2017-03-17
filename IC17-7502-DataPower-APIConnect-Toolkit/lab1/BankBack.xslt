<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet extension-element-prefixes="dp" version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dp="http://www.datapower.com/extensions" xmlns:bank="http://somebank.com">
	<xsl:template match="/">
	<?xml-stylesheet href=SomeBankCheckService.xsd?>
	<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/">
	<soapenv:Body>
		<bank:CheckResponseElement xmlns:bank="http://somebank.com">
		<bank:TransactionNum><xsl:value-of select="dp:variable('var://service/transaction-id')"/></bank:TransactionNum>
		<bank:CheckNum>23423</bank:CheckNum>
		<xsl:copy-of select="/*[local-name()='Envelope']/*[local-name()='Body']/*[local-name()='CheckRequestElement']/*[local-name()='CheckType']"/>
		<xsl:copy-of select="/*[local-name()='Envelope']/*[local-name()='Body']/*[local-name()='CheckRequestElement']/*[local-name()='PayorAccountID']"/>
		<xsl:copy-of select="/*[local-name()='Envelope']/*[local-name()='Body']/*[local-name()='CheckRequestElement']/*[local-name()='Payee']"/>
		<xsl:copy-of select="/*[local-name()='Envelope']/*[local-name()='Body']/*[local-name()='CheckRequestElement']/*[local-name()='Amount']"/>
		</bank:CheckResponseElement>
		</soapenv:Body>
		</soapenv:Envelope>
	</xsl:template>
</xsl:stylesheet>
