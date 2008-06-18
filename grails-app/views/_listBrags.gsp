<table>
     <tbody>
       <g:each in="${bragList}" var='brag'>
            <tr>
               
                    <td><g:link controller="brag" action="show" params="[permalink:brag.permalink]">${brag?.about?.encodeAsHTML()}</g:link></td>
			</tr>
            <g:if test="${allBrags}"><tr>
                    <td>By <g:render template="/userLink" model="[user:brag.byUser]"/>             
	${brag.createdOn.encodeAsTimeAgoString().encodeAsHTML()}</td>
               
            </tr></g:if>
			<g:else>
			<tr>
				<td>${brag.createdOn.encodeAsTimeAgoString().encodeAsHTML()}</td>
			</tr>
			</g:else>
			<tr>
				<td>
					<g:render template="/votingWidgetHelper" model="[brag:brag,fromBragList:1,allBrags:allBrags,fromProfile:fromProfile]"/>
					<hr>
                 </td>
			</tr>	
       </g:each>
     </tbody>
   </table>
       <div class="paginateButtons">
           <g:paginate total="${total}" />
       </div>