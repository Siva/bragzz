  
<html>
    <head>
         <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
          <meta name="layout" content="main" />
         <title>${userName}'s tags</title>
    </head>
    <body>
        <g:render template="/globalNav" model="[userId:user.id,inProfile:true]"/>
        <div class="body">
           <h1><g:link controller="siteUser" action="showProfileBrags" id="${user.id}">${user.displayName.encodeAsHTML()}</g:link> / Tags</h1>
           <g:if test="${flash.message}">
                 <div class="message">${flash.message}</div>
           </g:if>
		   <g:render template="userNav" model="[userId:userId]"/>
           <g:render template="listTags" model="[tagList:tagList,user:user]"/>
        </div>
    </body>
</html>
