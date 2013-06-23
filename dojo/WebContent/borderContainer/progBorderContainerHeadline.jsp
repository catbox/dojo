<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Programmatic Border Container - Headline</title>
<link rel="stylesheet" href="/dojotoolkit/dojo-1.8.3/dijit/themes/claro/claro.css" media="screen">
<link rel="stylesheet" href="/css/myCSS.css">
<style type="text/css">
	html, body {
		width:100%; height:100%; margin:0px; padding:0px; overflow:hidden;
	}
</style>
</head>
<body class="claro">
	
	<div id="borderContainer">
    	<div id="cp1"></div>
    	<div id="cp2"></div>
    	<div id="cp3"></div>
    	<div id="cp4"></div>
    	<div id="cp5"></div>
	</div>
	
	<script>
	    dojoConfig = {
	    	async: true,
	        parseOnLoad: false,
	        locale: 'en'	        
	    };
	</script>
	<script src="/dojotoolkit/dojo-1.8.3/dojo/dojo.js"></script>
	
	<script>	
		require(["dijit/layout/BorderContainer", "dijit/layout/ContentPane", "dojo/domReady!"], function(BorderContainer, ContentPane) {
			
			var bc = new BorderContainer({
				id:"borderContainer",
				design:"headline",
				gutters:true,
				style:"width:100%; height:100%; overflow:hidden"
			}, "borderContainer");
			
			var cp1 = new ContentPane({
				id:"cp1",	           
	            splitter:false, 
	            region:"top",
	            style:"height:100px; overflow:hidden",
	           	content:"Top Pane"
			});
			bc.addChild(cp1);
					
			var cp2 = new ContentPane({
				id:"cp2",	           
	            splitter:false, 
	            region:"left",
	            style:"width:100px; overflow:hidden",         
	           	content:"Left Pane"
			});
			bc.addChild(cp2);
			
			var cp3 = new ContentPane({
	        	id:"cp3",	           
	            splitter:false, 
	            region:"center",
	            style:"width:500px; overflow:hidden",
	            content:"Center Pane"
	        });
			bc.addChild(cp3);
			
		 	var cp4 = new ContentPane({
	        	id:"cp4",	            
	            splitter:false, 
	            region:"right", 
	            style:"width:100px; overflow:hidden",
	            content:"Right Pane"
	        });
		 	bc.addChild(cp4);
		 	
		 	var cp5 = new ContentPane({
	        	id:"cp5",	            
	            splitter:false, 
	            region:"bottom", 
	            style:"height:50px; overflow:hidden",
	            content:"Bottom Pane"
	        });
		 	bc.addChild(cp5);
		 	
			bc.startup();
		});
	</script>
	
</body>
</html>