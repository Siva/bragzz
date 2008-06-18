<g:if test="${session.user}">
	<g:form controller="comment" action="save" id="${brag.id}" method="post" >
		<tr class='prop'><td valign='top' class='name'>Comment:</td>
			<tr>
				<td valign='top'><textarea rows='5' cols='40' name='comment'></textarea></td>
			</tr>
		</tr>
		<tr class='prop'>
			<td>
				<span class="formButton">
                	<input type="submit" value="Submit comment"></input>
             	</span>
			</td>
		</tr>
	</g:form>
</g:if>
<g:else>
	</p>
	<span><g:link controller="comment" action="auth" params="[permalink:brag.permalink]">Sign in</g:link> to leave a comment</span>
</g:else>

</p>
<hr>
<div class="body">
   <h2>Discussion:</h2>
   <table>
     <tbody>
       <g:each in="${brag.comments}" var='comment'>
            <tr>
                    <td><g:render template="/userLink" model="[user:comment.byUser]"/></td>
			</tr>
            <tr>
                    <td>${comment.body?.encodeAsHTML()}</td>
            </tr>
			<tr>
                    <td>${comment.createdOn?.encodeAsTimeAgoString().encodeAsHTML()}</td>
            </tr>
       </g:each>
     </tbody>
   </table>
</div>