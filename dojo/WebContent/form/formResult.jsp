<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Form Result</title>
<link rel="stylesheet" href="/css/myCSS.css">
</head>
<body class="claro">
<h2>Form Result:</h2>

<%
String fullname = request.getParameter("fullname");
String website = request.getParameter("website");
String email = request.getParameter("email");
String birthday = request.getParameter("birthday");
String drink = request.getParameter("drink");

out.println("fullname: " + fullname);
out.println("<br>");
out.println("website: " + website);
out.println("<br>");
out.println("email: " + email);
out.println("<br>");
out.println("birthday: " + birthday);
out.println("<br>");
out.println("drink: " + drink);
%>

</body>
</html>