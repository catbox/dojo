<%
String username = request.getParameter("username");
String password = request.getParameter("password");

StringBuffer userNameBuffer = new StringBuffer(username);
StringBuffer usernameInvBuffer = userNameBuffer.reverse();

if(usernameInvBuffer.toString().equals(password)) {
	out.print("Congratulations! Your password is correct");
}
else {
	out.print("Wrong password!");
}

%>