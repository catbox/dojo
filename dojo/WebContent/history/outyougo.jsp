<%	
	response.setHeader("Cache-Control","no-cache"); // Get a new copy of the page from server
	response.setHeader("Cache-Control","no-store"); // Prevent page storing
	response.setDateHeader("Expires", 0); 			// Tells the proxy cache to consider this page as stale
	response.setHeader("Pragma","no-cache"); 		// HTTP 1.0 backwack compatibility

	try {
		// Remove the user from the session
		session.removeAttribute("user");
		// Kill the session
	    session.invalidate();	
	}
	catch(Exception exception) {
		out.println("Error - Session has expired!" + "<br>");
	}
	
		
%>
<h1>Your session has expired</h1>

<a href="/dojo/history"><b>Click here to start a new session</b></a> 