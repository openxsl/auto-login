<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:oxm="https://www.openxsl.com">
    <xsl:template match="/root" name="openxsl.auto-login">
        <!-- className 'J_OXMod' required  -->
        <div class="J_OXMod oxmod-auto-login" ox-mod="auto-login">
            <xsl:if test="login/uid = '' or not(login/uid)">
            	<xsl:choose>
            		<xsl:when test="env/domain = online">
            			<script>
		            		location.href='http://login.openxsl.com/p/oauth2/authorize?autocomplete=1'
		            	</script>
            		</xsl:when>
            		<xsl:otherwise>
            			<a href="http://login.openxsl.com/p/oauth2/authorize?autocomplete=1">登录</a>
            		</xsl:otherwise>
            	</xsl:choose>
            </xsl:if>
        </div>
    </xsl:template>
</xsl:stylesheet>
