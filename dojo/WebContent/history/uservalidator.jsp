	<%@ page import="java.util.Date" %>
	<%	

		response.setHeader("Cache-Control","no-cache"); // Get a new copy of the page from server
		response.setHeader("Cache-Control","no-store"); // Prevent page storing
		response.setDateHeader("Expires", 0); 			// Tells the proxy cache to consider this page as stale
		response.setHeader("Pragma","no-cache"); 		// HTTP 1.0 backwack compatibility
	
		String userValidatorEmail = null;
		String userValidatorHomeUser = null;
				
		userValidatorEmail = request.getParameter("email").trim();	
		
		// Force the creation of new session
		//session.invalidate();
		//session = request.getSession();
		
		session.setAttribute("user", userValidatorEmail);

		Date date = new java.util.Date();
		
		// Verify that the user exists in the newly created session
		try {
			userValidatorHomeUser = (String)session.getAttribute("user");
			
			if(userValidatorHomeUser == null) {
				System.out.println(date + " - uservalidator redirecting to outyougo.jsp");
				response.sendRedirect("outyougo.jsp");
			}
			else {
				System.out.println(date + " - uservalidator redirecting to home.jsp");
				response.sendRedirect("home.jsp");
			}
		}
		catch(Exception exception) {
			System.out.println(date + " - uservalidator redirecting to outyougo.jsp" + " - " + exception.getMessage());
			response.sendRedirect("outyougo.jsp");
		}
			
	%>