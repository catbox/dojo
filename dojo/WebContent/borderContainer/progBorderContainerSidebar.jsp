<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Programmatic Border Container</title>
<link rel="stylesheet" href="/dojotoolkit/dojo-1.8.3/dijit/themes/claro/claro.css" media="screen">
<link rel="stylesheet" href="/css/myCSS.css">
<style type="text/css">
	html, body {
	    width: 100%;
	    height: 100%;
	    margin: 0;
	    overflow:hidden;
	}
</style>
</head>
<body class="claro">
	<div id="borderContainer">
    	<div id="cp1"></div>
    	<div id="cp2"></div>
    	<div id="cp3"></div>
	</div>	
	<script>
	    dojoConfig = {
	    	async: true,
	        parseOnLoad: false,
	        locale: 'en'	        
	    };
	</script>
	<script src="/dojotoolkit/dojo-1.9.0/dojo/dojo.js"></script>
	
	<script>	
		require(["dijit/layout/BorderContainer", "dijit/layout/ContentPane", "dojo/domReady!"], function(BorderContainer, ContentPane) {
			
			var bc = new BorderContainer({
				id:"borderContainer",
				design:"sidebar",
				gutters:true,
				style:"width: 100%; height: 100%;"
			}, "borderContainer");
			
			var cp1 = new ContentPane({
				id:"cp1",	           
	            splitter:true, 
	            region:"left",
	            style:"width: 100px;",
	           	//href:"../form/progForm3.jsp"
	           	content:"Leading Pane"
			});
			bc.addChild(cp1);
			
			var cp2 = new ContentPane({
	        	id:"cp2",	           
	            splitter:true, 
	            region:"center",
	            content:"Center Pane"
	        });
			bc.addChild(cp2);
			
		 	var cp3 = new ContentPane({
	        	id:"cp3",	            
	            splitter:true, 
	            region:"right", 
	            style:"width: 100px;",
	            content:"Trailing Pane"
	        });
		 	bc.addChild(cp3);
		 	
			bc.startup();
		});
	</script>
	
</body>
</html>