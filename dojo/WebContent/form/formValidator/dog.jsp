<%
String email = request.getParameter("email").trim();
String password = request.getParameter("password").trim();

if(email.equals("ged@go.com") && password.equals("123")) {
	// Set the user
	session.setAttribute("user", email);
	out.print("OK");
}
if(!email.equals("ged@go.com")) {
	session.setAttribute("login-error", "err-401");
	out.print("err-401");
}
else if(!password.equals("123")) {
	session.setAttribute("login-error", "err-402");
	out.print("err-402");
}
%>