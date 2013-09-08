<%
String username = request.getParameter("username");
String password = request.getParameter("password");
String language = request.getParameter("language");

StringBuffer userNameBuffer = new StringBuffer(username);
StringBuffer usernameInvBuffer = userNameBuffer.reverse();

if(usernameInvBuffer.toString().equals(password)) {
	out.println("Congratulations! Your password is correct");
	
	out.println("<br><br>" + "Username: " + username);
	out.println("<br>" + "Password: " + password);
	out.println("<br>" + "Language: " + language);
}
else {
	out.print("Wrong password!");
}

%>