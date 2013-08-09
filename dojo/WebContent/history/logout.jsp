<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Logout</title>
<link rel="stylesheet" href="/dojotoolkit/dojo-1.8.3/dijit/themes/claro/claro.css" media="screen">
<link rel="stylesheet" href="/css/myCSS.css">
<style type="text/css">
	html, body {
	    width:100%;
	    height:100%;
	    margin:0px;
	    padding:0px;
	    overflow:hidden;
	}
	
	table, tr, td { 
       padding:0px;
       margin:0px;
       width:100%;
    }
    
</style>
</head>
<body class="claro">
	<%
		// Kill the session
	    //session.invalidate();
	
		String previousPage = "";
		// Try to access the
		try {
			previousPage = "http://localhost:8080" + (String)session.getAttribute("referrerPage");
			
			out.println("previousPage: " + previousPage);
		}
		catch(Exception exception) {
			out.println("Exception: " + exception.getMessage());	
		}
	
		String closedSession = "true";
		//String currentPage = (String)request.getRequestURI();
		//out.println("Current Page: " + currentPage + "<br>");
		
		


	%>
	<div id="main"></div>

	<script>
	    dojoConfig = {
	    	async: true,
	        parseOnLoad: false,
	        locale: 'en',
	        packages: [{
                name: "modules",
                location: "../../../dojo/modules"
        	}]
	    };
	</script>
	<script src="/dojotoolkit/dojo-1.8.3/dojo/dojo.js"></script>		
	<script>

		require(["dojo/dom", "dojo/dom-construct", "modules/loginsessionpane", "dojo/domReady!"], 
				function(dom, domConstruct, loginsessionpane) {
						
			var mainNode = dom.byId("main");
			  
			if(mainNode!=null) {				  			
		    	var formNode = domConstruct.toDom("<table><tr><td style='width:50%; min-width:400px;'><h1 id='logoPane' style='margin-left:10px;'>IDM</h1></td><td style='width:50%; min-width:400px;'><form id='loginForm'><div id='loginPane'></div></form></td></tr></table>");	    	
		    	domConstruct.place(formNode, mainNode);
		    	loginsessionpane.getLoginPane();
			}
			
		});
		
		document.write("document.baseURI: " + document.baseURI + "<br>");
		
		var closedSession = "<%=closedSession%>";
		
		var prevPage = "<%=previousPage%>";
		document.write("prevPage JS variable: " + prevPage + "<br>");
		
		document.write("document.referrer: " + document.referrer + "<br>");
		
		window.onbeforeunload = function() {
			if(document.referrer == prevPage) {
				alert("Back Button Pressed");
				// Do Whatever here
			}
		};
		/*
		window.onsubmit = function() {
			
			alert("Submit button has been clicked!");

		};
		*/
	</script>	
</body>
</html>