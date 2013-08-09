
<%@ page import="java.util.List, java.util.Iterator" %>
<%
response.setHeader("Cache-Control", "no-cache"); // HTTP 1.1.
response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
response.setDateHeader("Expires", 0); // Proxies.

List<String> headerlist = (List<String>)response.getHeaderNames();

Iterator headerItr = headerlist.iterator();

while(headerItr.hasNext()) {
	String header = (String)headerItr.next();
	String headerValue = response.getHeader(header);
	out.println(header + " - " + headerValue + "<br>");	
}

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="Expires" content="Sat, 01 Dec 2001 00:00:00 GMT">
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
		
		require(["dojo/dom", "dojo/dom-construct","modules/loginsessionpane", "dojo/domReady!"], 
				function(dom, domConstruct, loginsessionpane) {
			
			var mainNode = dom.byId("main");
			  
			if(mainNode!=null) {				  			
		    	var formNode = domConstruct.toDom("<table><tr><td style='width:50%; min-width:400px;'><h1 id='logoPane' style='margin-left:10px;'>IDM</h1></td><td style='width:50%; min-width:400px;'><form id='loginForm'><div id='loginPane'></div></form></td></tr></table>");	    	
		    	domConstruct.place(formNode, mainNode);
		    	loginsessionpane.getLoginPane();
			}	
			
		});
		
		/*
		if(window.history) {
			alert("You need to login!");
		}
		*/
	</script>	
</body>
</html>