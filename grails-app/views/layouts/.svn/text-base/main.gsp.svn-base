<html>
	<head>
		<title><g:layoutTitle default="Grails" /></title>
		<link rel="stylesheet" href="${createLinkTo(dir:'css',file:'main.css')}"></link>
		<g:layoutHead />
		<g:javascript library="application" />
		<g:javascript library="prototype" />
		<style type="text/css">
			.searchbar { 
				margin-top:10px;
				background-color: lightgrey;
				border:1px solid darkgrey;
				width:97%;
				height:30px;
				padding:5px;
			}
			.total { 
				padding-top:5px;
				float:left;
				color:white;
			}
			.search {
				float:right;
				color:white;
			}
			.userDetails {
				position:absolute;
				right:10px;
				top: 180px;
				border:1px solid darkgrey;
				background-color:lightgrey;
				padding:10px;
				width:150px;
			}
			.pageContent {
				width:80%;
			}
			.logo h1 {
				float:right;
				margin:30px;
			}
			.spinner {
				position: absolute;
				right:0px;
				padding:5px;
			}
		</style>		
	</head>
	<body onload="<g:pageProperty name='body.onload'/>">
		<div id="spinner" class="spinner" style="display:none;">
			<img src="${createLinkTo(dir:'images',file:'spinner.gif')}" alt="Spinner" />
		</div>
        <div class="logo">
        <g:if test="${session.user}">
			<h1 id="header">Signed as ${session.user.displayName}</h1>
		</g:if>
        <a href="${createLinkTo(dir:'')}">
        	<img src="${createLinkTo(dir:'images',file:'bragzz.png')}" alt="Bragzz" />
        </a>
        </div>	
		<div class="search">
			<g:form id="searchForm" url="[action:'search', controller:'brag']">
				<input type="text" name="q" /> <input type="submit" value="search" />
			</g:form>
		</div>
		<div id="pageContent" class="pageContent">
			<g:layoutBody />
		</div>		
	</body>	
</html>