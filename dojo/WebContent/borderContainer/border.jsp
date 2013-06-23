<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>index</title>
<link rel="stylesheet" href="/dojotoolkit/dojo-1.8.3/dijit/themes/claro/claro.css" media="screen">
<link rel="stylesheet" href="/css/myCSS.css">
<style type="text/css">
	html, body {
	    width: 100%;
	    height: 100%;
	    margin: 0;
	    padding: 0;
	    overflow:hidden;
	}
</style>
</head>
<body class="claro">
	<div id="borderContainer">
    	<div id="cptop"></div>
    	<div id="cpleft"></div>
    	<div id="cpcenter"></div>
    	<div id="cpright"></div>
    	<div id="cpbottom"></div>
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
	require([
	         "dijit/layout/BorderContainer", "dijit/layout/ContentPane","dojo/domReady!"], 
	         function(BorderContainer, ContentPane){

			var bc = new BorderContainer({
	        	id:"borderContainer",
	        	design:"headline",
	        	gutters:true,
	            style:"height:100%; width:100%; overflow:hidden"
	        }, "borderContainer");

	         
	        var cptop = new ContentPane({
	        	id:"cptop",
	            region:"top",
	            style:"height:10%; overflow:hidden;",
	           	content:"Top"
			});
			bc.addChild(cptop);
				

	        var cpleft = new ContentPane({
	        	id:"cpleft",
	            region:"left",
	            style:"display:inline-block; width:10%; overflow:hidden;",
	            content:"The big brow dog the lazy fox"
	        });
	        bc.addChild(cpleft);


	        var cpcenter= new ContentPane({
	       		id:"cpcenter",
	            region:"center",
	            style:"width:80%; overflow:hidden;",
	            content:"center"
	        });
	        bc.addChild(cpcenter);
	         	    
	        var cpright = new ContentPane({
	        	id:"cpright",
	            region:"right",
	            style:"width:10%; overflow:hidden;",
	            content:"right"
	        });
	        bc.addChild(cpright);
	        
	        var cpbottom = new ContentPane({
	        	id:"cpbottom",
	            region:"bottom",
	            style:"height:5%; overflow:hidden;",
	            content:"bottom pane"
	        });
	        bc.addChild(cpbottom);

	        bc.startup();
	     });
	</script>
</body>
</html>