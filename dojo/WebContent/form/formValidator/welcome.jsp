<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Form Result</title>
<link rel="stylesheet" href="/css/myCSS.css">
</head>
<body class="claro">
<h2>Welcome to IDM</h2>

<%
String email = (String)session.getAttribute("user");

out.println("email: " + email);

%>

</body>
</html>