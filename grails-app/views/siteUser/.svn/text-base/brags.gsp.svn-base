  
<html>
    <head>
         <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
          <meta name="layout" content="main" />
         <title>${userName}'s brags</title>
    </head>
    <body>
        <g:render template="/globalNav" model="[userId:userId,inProfile:true]"/>
        <div class="body">
           <h1>${userName}'s brags</h1>
           <g:if test="${flash.message}">
                 <div class="message">${flash.message}</div>
           </g:if>
		   <g:render template="userNav" model="[userId:userId]"/>
           <g:render template="/listBrags" model="[bragList:bragList,total:total,allBrags:false,fromProfile:true]"/>
        </div>
    </body>
</html>
