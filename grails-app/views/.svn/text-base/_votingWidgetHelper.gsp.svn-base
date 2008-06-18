<g:if test="${session.user}">
	<g:if test="${session.user.id != brag.byUser.id}">
		<g:render template="/votingWidget" model="[brag:brag,fromBragList:fromBragList]"/>
	</g:if>
	<g:else>
		<g:render template="/readOnlyVotes" model="[brag:brag]"/>
	</g:else>
</g:if>
<g:else>
		<g:render template="/votingWidget" model="[brag:brag,fromBragList:fromBragList,fromProfile:fromProfile]"/>
</g:else>