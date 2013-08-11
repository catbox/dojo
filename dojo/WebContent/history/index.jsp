<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Login</title>
<link rel="stylesheet" href="/dojotoolkit/dojo-1.8.3/dijit/themes/claro/claro.css" media="screen">
<link rel="stylesheet" href="/css/myCSS.css">
<style type="text/css">
	html, body {
	    width:100%;
	    height:100%;
	    margin:0px;
	    padding:0px;
	    overflow:hidden;
	}
	
	table, tr, td { 
       padding:0px;
       margin:0px;
       width:100%;
    }
    
</style>
</head>
<body class="claro">
	<noscript><h1>You need to have JavaScript enabled for an optimum experience!</h1></noscript>
 	<%
		response.setHeader("Cache-Control","no-cache"); // Get a new copy of the page from server
		response.setHeader("Cache-Control","no-store"); // Prevent page storing
		response.setDateHeader("Expires", 0); 			// Tells the proxy cache to consider this page as stale
		response.setHeader("Pragma","no-cache"); 		// HTTP 1.0 backwack compatibility
		
		// Force the creation of new session
		session.invalidate();
		session = request.getSession();
		
		try {
			out.println("Session Id: " + session.getId() + "<br>");
			out.println("User: " + session.getAttribute("user"));
		}
		catch(Exception exception) {
			out.println("Error: " + exception.getMessage());
		}
	%>
	<div id="main"></div>

	<script>
	    dojoConfig = {
	    	async: true,
	        parseOnLoad: false,
	        locale: 'en',
	        packages: [{
                name: "modules",
                location: "../../../dojo/modules"
        	}]
	    };
	</script>
	<script src="/dojotoolkit/dojo-1.8.3/dojo/dojo.js"></script>		
	<script>	
		require(["dojo/dom", "dojo/dom-construct","modules/loginsessionpane", "dojo/domReady!"], 
				function(dom, domConstruct, loginsessionpane) {
			
			var mainNode = dom.byId("main");
			  
			if(mainNode!=null) {				  			
		    	var formNode = domConstruct.toDom("<table><tr><td style='width:50%; min-width:400px;'><h1 id='logoPane' style='margin-left:10px;'>IDM</h1></td><td style='width:50%; min-width:400px;'><form id='loginForm'><div id='loginPane'></div></form></td></tr></table>");	    	
		    	domConstruct.place(formNode, mainNode);
		    	loginsessionpane.getLoginPane();
			}	
			
		});
	</script>	
</body>
</html>