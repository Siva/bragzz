  
<html>
    <head>
         <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
          <meta name="layout" content="main" />
         <title>${userName}'s comments</title>
    </head>
    <body>
		<g:render template="/globalNav" model="[userId:userId,inProfile:true]"/>
        <div class="body">
           <h1><g:link controller="siteUser" action="showProfileBrags" id="${userId}">${userName.encodeAsHTML()}</g:link> / Comments</h1>
           <g:if test="${flash.message}">
                 <div class="message">${flash.message}</div>
           </g:if>
		   <g:render template="userNav" model="[userId:userId]"/>
           <g:render template="listComments" model="[commentList:commentList,total:commentList.size()]"/>
		   <div class="paginateButtons">
				<g:paginate action="showProfileComments" total="${total}" />
		   </div>
        </div>
    </body>
</html>
