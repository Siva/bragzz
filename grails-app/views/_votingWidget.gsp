<div id="voter">

<g:if test="${session.user}">
Jealous <g:remoteLink controller="vote" action="jealous" id="${brag.id}" params="[fromBragList:fromBragList,remoteCall:1]" update="${brag.id}"><img src="${createLinkTo(dir:'images',file:'jealous.png')}" alt="Jealous" /></g:remoteLink>
/ Not Jealous <g:remoteLink controller='vote' action='notJealous' id="${brag.id}" params='[fromBragList:fromBragList,remoteCall:1]' update="${brag.id}"><img src="${createLinkTo(dir:'images',file:'notJealous.png')}" alt="Not Jealous" /></g:remoteLink>
</g:if>

<g:else>
Jealous <g:link controller="vote" action="jealous" id="${brag.id}" params="[fromBragList:fromBragList,remoteCall:0,fromProfile:fromProfile]"><img src="${createLinkTo(dir:'images',file:'jealous.png')}" alt="Jealous" /></g:link>
/ Not Jealous <g:link controller='vote' action='notJealous' id="${brag.id}" params="[fromBragList:fromBragList,remoteCall:0,fromProfile:fromProfile]"><img src="${createLinkTo(dir:'images',file:'notJealous.png')}" alt="Not Jealous" /></g:link>
</g:else>

<div id="${brag.id}">${brag.numberOfJealousVotes()} (${brag.jealousPercentageString().encodeAsHTML()}) / ${brag.numberOfNotJealousVotes()} (${brag.notJealousPercentageString().encodeAsHTML()})
</div>

<!--<g:if test="${fromBragList == '0'}">
	<g:render template="/jealousUser"/>
	<g:render template="/notJealousUser"/>
</g:if> --> 

</div>


