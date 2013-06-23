<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Valid Password</title>
<link rel="stylesheet" href="/dojotoolkit/dojo-1.8.3/dijit/themes/claro/claro.css" media="screen">
<link rel="stylesheet" href="/css/myCSS.css">
</head>
<body class="claro">
	<h2>Congratulations! <br>Your password was successfully changed!</h2>
	
	<%
		String newpwd = request.getParameter("new password");
		out.println("New password: " + newpwd);
	%>
</body>
</html>