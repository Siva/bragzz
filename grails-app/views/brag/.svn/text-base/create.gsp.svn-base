  
<html>
    <head>
         <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
         <meta name="layout" content="main" />
         <title>Create Brag</title>         
    </head>
    <body>
        <g:render template="/globalNav"/>
        <div class="body">
           <h1>Create Brag</h1>
           <g:if test="${flash.message}">
                 <div class="message">${flash.message}</div>
           </g:if>
           <g:form action="save" method="post" >
               <div class="dialog">
                <table>
                    <tbody>

                       
                       
                                  <tr class='prop'><td valign='top' class='name'><label for='about'>What do you want to brag about?:</label></td><td valign='top' <textarea rows='5' cols='40' name='about'>${brag?.about?.encodeAsHTML()}</textarea></td></tr>
                       
                                  <tr class='prop'><td valign='top' class='name'><label for='additionalInfo'>Description</label></td><td valign='top' <textarea rows='5' cols='40' name='additionalInfo'>${brag?.additionalInfo?.encodeAsHTML()}</textarea></td></tr>
								<td>
			                         <label for="tags">Tags (separate tags with commas):</label>
			                         <input type="text" name="tagTokens" />
			                     </td>
                       
                    </tbody>
               </table>
               </div>
               <div class="buttons">
                     <span class="formButton">
                        <input type="submit" value="Publish brag"></input>
                     </span>
               </div>
            </g:form>
        </div>
    </body>
</html>
