<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Welcome</title>
<link rel="stylesheet" href="/dojotoolkit/dojo-1.8.3/dijit/themes/claro/claro.css" media="screen">
<link rel="stylesheet" href="/css/myCSS.css">
<!--  
<script type="text/javascript">
    window.history.forward();
    function noBack() { window.history.forward(); }
</script>
-->
</head>
<!--  
<body class="claro" onload="noBack();" onpageshow="if (event.persisted) noBack();" onunload="">
-->
<body class="claro" onload="noBack();" onpageshow="if (event.persisted) noBack();" onunload="">
	<%	
		String email = request.getParameter("email");	
		out.println("email: " + email);
		out.println("<br>");

		String homePage = (String)request.getRequestURI();
		session.setAttribute("referrerPage", homePage);
	%>
	<br>
	<div id="logout"></div>
		
	<script>
	    dojoConfig = {
	    	async: true,
	        parseOnLoad: false,
	        locale: 'en'	        
	    };
	</script>
	<script src="/dojotoolkit/dojo-1.8.3/dojo/dojo.js"></script>		
	<script>
		require(["dijit/form/Button", "dojo/domReady!"], function(Button){
			// Submit Button
	        var mySubmit = new Button({
	        	id:"logout",
	            label:"Logout",
	            type:"button",
	            onClick: function() {
	            	window.location.assign("logout.jsp");
	            }
	        }, "logout");
	        mySubmit.startup();  			
		});
		
	</script>
</body>
</html>