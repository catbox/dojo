<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Profile</title>
<link rel="stylesheet" href="/dojotoolkit/dojo-1.8.3/dijit/themes/claro/claro.css" media="screen">
<link rel="stylesheet" href="/css/myCSS.css">
</head>

<body class="claro">
	<%	
		response.setHeader("Cache-Control","no-cache"); // Get a new copy of the page from server
		response.setHeader("Cache-Control","no-store"); // Prevent page storing
		response.setDateHeader("Expires", 0); 			// Tells the proxy cache to consider this page as stale
		response.setHeader("Pragma","no-cache"); 		// HTTP 1.0 backwack compatibility
		
		String homeUser = null;
		
		// Should I kick you out?
		try {		
			homeUser = (String)session.getAttribute("user");
			
			if(homeUser == null) {
				response.sendRedirect("outyougo.jsp");
			}
			else {
				out.println("Session Id: " + session.getId() + "<br>");
				out.println("User: " + homeUser + "<br>");
			}
		}
		catch(Exception exception) {
			response.sendRedirect("outyougo.jsp");	
		}		
	%>
	<p>This is your profile page</p>
	<div id="profile-backtohome-placeholder"></div>
	<div id="profile-logout-placeholder"></div>
			
	<script>
	    dojoConfig = {
	    	async: true,
	        parseOnLoad: false,
	        locale: 'en'	        
	    };
	</script>
	<script src="/dojotoolkit/dojo-1.8.3/dojo/dojo.js"></script>		
	<script>
		require(["dijit/form/Button", "dojo/domReady!"], function(Button) {
			
			var profileSpace = {};			
			
			// Logout
	        profileSpace.profileBtn = new Button({
	        	id:"profile-backtohome-btn",
	            label:"Home",
	            type:"button",
	            onClick: function() {
	            	window.location.assign("home.jsp");
	            }
	        }, "profile-backtohome-placeholder");
	        profileSpace.profileBtn.startup();
	        
			// Logout
	        profileSpace.profileBtn = new Button({
	        	id:"profile-logout-btn",
	            label:"Logout",
	            type:"button",
	            onClick: function() {
	            	window.location.assign("logout.jsp");
	            }
	        }, "profile-logout-placeholder");
	        profileSpace.profileBtn.startup();
	        		 			
		});
		
	</script>
</body>
</html>