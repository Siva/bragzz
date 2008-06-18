<h1><g:if test="${forTag}">
		<g:if test="${forUser}"><g:link controller="siteUser" action="showProfileBrags" id="${userId}">${forUser.encodeAsHTML()}</g:link> / <g:link controller="siteUser" action="showProfileTags" id="${userId}">Tags</g:link> / ${forTag}
		<p>See all brags tagged with <g:link controller="brag" action="searchAllByTag" params="[tagName:forTag]">${forTag}</g:link>
		</g:if>
		<g:else>
			<g:link controller="tag" action="allTags" id="${userId}">Tags</g:link> / ${forTag}
		</g:else>
	</g:if>
</h1>