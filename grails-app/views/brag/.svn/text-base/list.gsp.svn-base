<html>
    <head>
         <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
         <meta name="layout" content="main" />
         <title>Brag List</title>
    </head>
    <body>
        <g:render template="/globalNav"/>
        <div class="body">
            <g:if test="${searchTerm}"><h1>All brags containing words: <i>${searchTerm}</i></h1></g:if>
			<g:render template="/tagTitleHelper" model="[forBrag:forBrag,forUser:forUser,userId:userId]"/>
            <g:render template="/listBrags" model="[bragList:bragList,allBrags:true]"/>
        </div>
    </body>
</html>
