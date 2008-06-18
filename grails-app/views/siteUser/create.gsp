  
<html>
    <head>
         <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
         <meta name="layout" content="main" />
         <title>Create SiteUser</title>         
    </head>
    <body>
        <g:render template="/globalNav"/>
        <div class="body">
           <h1>Create user</h1>
           <g:if test="${flash.message}">
                 <div class="message">${flash.message}</div>
           </g:if>
           <g:hasErrors bean="${siteUser}">
                <div class="errors">
                    <g:renderErrors bean="${siteUser}" as="list" />
                </div>
           </g:hasErrors>
           <g:form action="save" method="post" >
               <div class="dialog">
                <table>
                    <tbody>

                       
                       
                                  <tr class='prop'><td valign='top' class='name'><label for='name'>Name:</label></td><td valign='top' class='value ${hasErrors(bean:siteUser,field:'name','errors')}'><input type="text" name='name' value="${siteUser?.name?.encodeAsHTML()}"/></td></tr>
                       
                                  <tr class='prop'><td valign='top' class='name'><label for='password'>Password:</label></td><td valign='top' class='value ${hasErrors(bean:siteUser,field:'password','errors')}'><input type="text" maxlength='8' name='password' value="${siteUser?.password?.encodeAsHTML()}"/></td></tr>
                       
                                  <tr class='prop'><td valign='top' class='name'><label for='displayName'>Display Name:</label></td><td valign='top' class='value ${hasErrors(bean:siteUser,field:'displayName','errors')}'><input type="text" maxlength='30' name='displayName' value="${siteUser?.displayName?.encodeAsHTML()}"/></td></tr>
                       
                                  <tr class='prop'><td valign='top' class='name'><label for='email'>Email:</label></td><td valign='top' class='value ${hasErrors(bean:siteUser,field:'email','errors')}'><input type="text" name='email' value="${siteUser?.email?.encodeAsHTML()}"/></td></tr>
                       
                    </tbody>
               </table>
               </div>
               <div class="buttons">
                     <span class="formButton">
                        <input type="submit" value="Create"></input>
                     </span>
               </div>
            </g:form>
        </div>
    </body>
</html>
