<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Welcome</title>
<link rel="stylesheet" href="/dojotoolkit/dojo-1.8.3/dijit/themes/claro/claro.css" media="screen">
<link rel="stylesheet" href="/css/myCSS.css">
</head>

<body class="claro">
	<%@ page import="java.util.Date" %>
	<%	
		response.setHeader("Cache-Control","no-cache"); // Get a new copy of the page from server
		response.setHeader("Cache-Control","no-store"); // Prevent page storing
		response.setDateHeader("Expires", 0); 			// Tells the proxy cache to consider this page as stale
		response.setHeader("Pragma","no-cache"); 		// HTTP 1.0 backwack compatibility
		
		String homeUser = null;
		Date date = new java.util.Date();
		// Should I kick you out?
		try {		
			homeUser = (String)session.getAttribute("user");
			
			if(homeUser == null) {
				System.out.println(date + " - home redirecting to outyougo.jsp");
				response.sendRedirect("outyougo.jsp");
			}
			else {
				out.println("User: " + homeUser + "<br>");	
			}
		}
		catch(Exception exception) {
			System.out.println(date + " - home redirecting to outyougo.jsp" + " - " + exception.getMessage());
			response.sendRedirect("outyougo.jsp");	
		}
		
		// Session
		if(session.isNew()) {
			out.println("This is a new Session Id" + "<br>");	
		}
		else {			
			out.println("Session Id: " + session.getId() + "<br>");
		}
		
	%>
	<br>
	<div id="logout"></div>
		
	<script>
	    dojoConfig = {
	    	async: true,
	        parseOnLoad: false,
	        locale: 'en'	        
	    };
	</script>
	<script src="/dojotoolkit/dojo-1.8.3/dojo/dojo.js"></script>		
	<script>
		require(["dijit/form/Button", "dojo/domReady!"], function(Button){
			// Submit Button
	        var mySubmit = new Button({
	        	id:"logout",
	            label:"Logout",
	            type:"button",
	            onClick: function() {
	            	window.location.assign("logout.jsp");
	            }
	        }, "logout");
	        mySubmit.startup();  			
		});
		
	</script>
</body>
</html>