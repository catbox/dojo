<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Declarative Sidebar Border Container</title>
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
	
	#borderContainer {
	    width:100%;
	    height:100%;
	    overflow:hidden;
	}
</style>
</head>
<body class="claro">

	<div id="borderContainer", data-dojo-type="dijit/layout/BorderContainer" data-dojo-props="design:'sidebar', gutters:true">
		<div data-dojo-type="dijit/layout/ContentPane" data-dojo-props="splitter:true, region:'top'" style="width:80%; height:10%; overflow:hidden;">Top Pane</div>
    	<div data-dojo-type="dijit/layout/ContentPane" data-dojo-props="splitter:true, region:'left'" style="width:10%; overflow:hidden;">Left Pane</div>
    	<div data-dojo-type="dijit/layout/ContentPane" data-dojo-props="splitter:true, region:'center'" style="width:80%; overflow:hidden;">Center Pane</div>
    	<div data-dojo-type="dijit/layout/ContentPane" data-dojo-props="splitter:true, region:'right'" style="width:10%; overflow:hidden;">Right Pane</div>
    	<div data-dojo-type="dijit/layout/ContentPane" data-dojo-props="splitter:true, region:'bottom'" style="width:80%; height:5%; overflow:hidden;">Bottom Pane</div>
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
		require(["dojo/parser", "dijit/layout/ContentPane", "dijit/layout/BorderContainer", "dojo/domReady!"], function(parser){
			parser.parse();	
		});
	</script>
</body>
</html>