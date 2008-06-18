<html>
      <head>
           <title>Login Page</title>
           <meta name="layout" content="main" />
		  <style type="text/css" media="screen">
				form { width: 300px; }
		  		input {
					position: absolute;
					left: 130px;
			    }          
				p {	margin-left: 30px; } 
				.button { margin-top: 30px;	}
		  </style>
      </head>
      <body>
			<div class="nav">
	            <span class="menuButton"><a href="${createLinkTo(dir:'')}">Home</a></span>
	        </div>
             <g:if test="${flash.message}">
				<div class="message">${flash.message}</div>
			 </g:if>
             <p>
                 Welcome bragabout.it. Please login below or 
                  <g:link action="register">register here</g:link>.
             </p>        
             <g:form action="handleLogin">
                     <p>
                         <label for="login">Login name:</label>
                         <input type="text" name="name" />
                     </p>
                     <p>
                         <label for="password">Password:</label>
                         <input type="password" name="password" />
                     </p>
                    <input class="button" type="submit" value="Sign in" />
             </g:form>
      </body>
</html>
