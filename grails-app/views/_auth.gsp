<g:if test="${session.user}">
	<g:if test="${!inProfile}">
		<span class="menuButton"><g:link controller="siteUser" action="showProfileBrags" id="${session.user.id}">You</g:link></span>
	</g:if>
	<g:elseif test="${session.user.id.toString() != userId}">
		<span class="menuButton"><g:link controller="siteUser" action="showProfileBrags" id="${session.user.id}">You</g:link></span>
	</g:elseif>
	<span class="menuButton"><g:link controller="siteUser" action="handleLogout">Sign out</g:link></span>
</g:if>
<g:else>
	<span class="menuButton"><g:link controller="siteUser" action="login">Sign in</g:link></span>
</g:else>