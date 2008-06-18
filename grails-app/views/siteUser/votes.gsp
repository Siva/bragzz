  
<html>
    <head>
         <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
          <meta name="layout" content="main" />
         <title>${userName}'s votes</title>
    </head>
    <body>
        <g:render template="/globalNav" model="[userId:userId,inProfile:true]"/>
        <div class="body">
           <h1><g:link controller="siteUser" action="showProfileBrags" id="${userId}">${userName.encodeAsHTML()}</g:link> / Votes</h1>
		   <g:render template="userNav" model="[userId:userId]"/>
           <g:render template="listVotes" model="[voteList:voteList,total:voteList.size()]"/>
		   <div class="paginateButtons">
				<g:paginate action="showProfileVotes" id="${userId}" total="${total}" />
		   </div>
        </div>
    </body>
</html>
