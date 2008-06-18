<div id="notJealousPeople">
   <h3>People who are not jealous:</h3>

<g:each in="${brag?.usersWhoAreNotJealous()}" var="user">
	<g:render template="/userLink" model="[user:user]"/></br>
</g:each>
</hr>
</div>