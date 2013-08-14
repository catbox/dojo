<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Form Result</title>
<link rel="stylesheet" href="/css/myCSS.css">
</head>
<body class="claro">
<h2>Access Denied!</h2>

<%
String loginError = (String)session.getAttribute("login-error");

out.println("Error: " + loginError );

%>

</body>
</html>