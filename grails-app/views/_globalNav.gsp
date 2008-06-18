<div class="nav">
    <span class="menuButton"><g:link controller="brag" action="popular">Popular brags</g:link> | </span>
    <span class="menuButton"><g:link controller="brag" action="recent">Recent Brags</g:link> | </span>
	<span class="menuButton"><g:link controller="brag" action="create">Brag about something</g:link> | </span>
	<g:render template="/auth" model="[inProfile:inProfile,userId:userId]"/>
</div>