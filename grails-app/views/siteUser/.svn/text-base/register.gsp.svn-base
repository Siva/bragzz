<html>
      <head>
           <title>Registration Page</title>
           <meta name="layout" content="main" />
      </head>    
	  <style type="text/css" media="screen">
			form {
				width: 300px;
			}
	  		input {
				position: absolute;
				left: 200px;
		    }          
			p {
				margin-left: 30px;
			} 
			.button {
				margin-top: 30px;
			}
	  </style>
	  
      <body>
			<div class="nav">
	            <span class="menuButton"><a href="${createLinkTo(dir:'')}">Home</a></span>
	        </div>
             <g:if test="${flash.user}">
				 <div class="errors"> 
	                    <g:renderErrors bean="${flash.user}" />
	             </div>
   			 </g:if>
			 <g:if test="${flash.message}">
				<div class="message">${flash.message}</div>
			 </g:if>
             <p>Enter your details below to register for bragabout.it.</p>        
             <g:form action="handleRegistration">
                     <p>
                         <label class="label" for="login">User name:</label>
                         <input type="text" name="name" />
                     </p>
                     <p>
                         <label for="password">Password:</label>
                         <input type="password" name="password" />
                     </p> 
                     <p>
                         <label for="confirm">Confirm Password:</label>
                         <input type="password" name="confirm" />
                     </p>
                     <p>
                         <label for="firstName">Display Name:</label>
                         <input type="text" name="displayName" />
                     </p>
                     <p>
                         <label for="email">Email:</label>
                         <input type="text" name="email" />
                     </p>
                    <input class="button" type="submit" value="Register" />
             </g:form>
      </body>
</html>
