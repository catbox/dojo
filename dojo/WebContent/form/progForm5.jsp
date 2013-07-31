<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Programmatic Form 5</title>
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
       border-style:solid;
	   border-width:1px;
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
		require(["dojo/dom", "dojo/dom-construct","modules/loginpane", "dojo/domReady!"], 
				function(dom, domConstruct, loginpane) {
			
			var mainNode = dom.byId("main");
			  
			if(mainNode!=null) {				  			
		    	var formNode = domConstruct.toDom("<table><tr><td style='width:50%; min-width:750px;'><h1 id='logopane'>Phantom</h1></td><td style='width:50%;'><form id='loginForm'><div id='cp1'></div></form></td></tr></table>");	    	
		    	domConstruct.place(formNode, mainNode);
				loginpane.getLoginPane();
			}	
			
		});
	</script>	
</body>
</html>