  
<html>
    <head>
         <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
          <meta name="layout" content="main" />
         <title>Show Brag</title>
    </head>
    <body>
        <g:render template="/globalNav"/>
        <div class="body">
           <h1>${brag.about}</h1>
           <g:if test="${flash.message}">
                 <div class="message">${flash.message}</div>
           </g:if>
		   <div class="dialog">
                 <table>

                   <tbody>

                        <tr class="prop">
                              <td valign="top" class="name">Descrition:</td>

                                    <td valign="top" class="value">${brag.additionalInfo.encodeAsHTML()}</td>
                        </tr>

                        <tr class="prop">
                              <td valign="top" class="name">Tags:
                                    <g:each var="tag" in="${brag.tags}">
                                        <g:link controller="brag" action="searchByTagForUser" params="['user':brag.byUser.id,
tagName:tag.name]">${tag.name}</br></g:link></g:each></td>
                        </tr>
						<tr class="prop">
                              <td valign="top" class="name">By User:</td>
                              
                                    <td valign="top" class="value"><g:render template="/userLink" model="[user:brag.byUser]"/></td>
                              
                        </tr>
						<tr class="prop">
                              <td valign="top" class="name">Votes:</td>
                              
                                     <td  valign="top" style="text-align:left;" class="value">
                                        <g:render template="/votingWidgetHelper" model="[brag:brag,fromBragList:0]"/>
                                     </td>
                        </tr>
					
					</tbody>
		    	</table>
				<g:render template="comments"/>
			</div>
        </div>
    </body>
</html>
