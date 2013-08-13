<%	

	response.setHeader("Cache-Control","no-cache"); // Get a new copy of the page from server
	response.setHeader("Cache-Control","no-store"); // Prevent page storing
	response.setDateHeader("Expires", 0); 			// Tells the proxy cache to consider this page as stale
	response.setHeader("Pragma","no-cache"); 		// HTTP 1.0 backwack compatibility

	String userValidatorEmail = null;
	String userValidatorHomeUser = null;
	
	// Get the email from the request
	userValidatorEmail = request.getParameter("email").trim();	
	// Set the user
	session.setAttribute("user", userValidatorEmail);

	// Verify that the user exists in the newly created session
	try {
		userValidatorHomeUser = (String)session.getAttribute("user");
		
		if(userValidatorHomeUser == null) {
			response.sendRedirect("outyougo.jsp");
		}
		else {
			response.sendRedirect("home.jsp");
		}
	}
	catch(Exception exception) {
		response.sendRedirect("outyougo.jsp");
	}
		
%>