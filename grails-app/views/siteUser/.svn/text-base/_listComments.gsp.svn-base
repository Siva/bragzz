<table>
     <tbody>
       <g:each in="${commentList}" var='comment'>
            <tr>
            	<td>Commented with <b>${comment.body}</b> on <g:link controller="brag" action="show" params="[permalink:comment.forBrag.permalink]">${comment.forBrag?.about?.encodeAsHTML()}</g:link></td>
			</tr>
			<tr>
            	<td>${comment.createdOn.encodeAsTimeAgoString().encodeAsHTML()}<hr></td>
			</tr>
       </g:each>
     </tbody>
   </table>
