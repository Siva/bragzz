<table>
     <tbody>
       <g:each in="${voteList}" var='vote'>
            <tr>
            	<td>Is <b>${vote.toString()}</b> about <g:link controller="brag" action="show" params="[permalink:vote.forBrag.permalink]">${vote.forBrag?.about?.encodeAsHTML()}</g:link></td>
			</tr>
			<tr>
            	<td>${vote.createdOn.encodeAsTimeAgoString().encodeAsHTML()}<hr></td>
			</tr>
       </g:each>
     </tbody>
   </table>