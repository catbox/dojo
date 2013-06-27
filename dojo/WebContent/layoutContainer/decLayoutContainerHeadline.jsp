<!DOCTYPE html>
<html >
<head>
<meta charset="utf-8">
<title>Declarative Headline Layout Container</title>
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
	
	#layoutContainer {
	    width:100%;
	    height:100%;
	    overflow:hidden;
	}
</style>
</head>
<body class="claro">

    <div data-dojo-type="dijit/layout/LayoutContainer" data-dojo-props="liveSplitters:true" id="layoutContainer">
	    <div data-dojo-type="dijit/layout/ContentPane" data-dojo-props="region:'top'" style="background-color:#D6EBFF">Top Pane</div>
	    <div data-dojo-type="dijit/layout/ContentPane" data-dojo-props="region:'bottom'" style="background-color:#D6EBFF">Bottom Pane</div>
	    <div data-dojo-type="dijit/layout/ContentPane" data-dojo-props="region:'left', layoutPriority:1" style="width:10%; overflow:hidden; background-color:#EDF0F5; overflow:hidden;">Left Pane#1</div>  
	    <div data-dojo-type="dijit/layout/ContentPane" data-dojo-props="region:'left', layoutPriority:2" style="width:20%; overflow:hidden; background-color:#D6EBFF; overflow:hidden;">Left Pane#2</div>	
	    <div data-dojo-type="dijit/layout/ContentPane" data-dojo-props="region:'left', layoutPriority:3" style="width:30%; overflow:hidden; border:solid;">Left Pane#3</div> 	 
		<div data-dojo-type="dijit/layout/ContentPane" data-dojo-props="region:'center'" style="overflow:hidden;">Center Pane</div>
		<div data-dojo-type="dijit/layout/ContentPane" data-dojo-props="region:'right'" style="width:10%; overflow:hidden; background-color:#EDF0F5; overflow:hidden;">Right Pane#1</div>
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
		require(["dojo/parser", "dijit/layout/ContentPane", "dijit/layout/LayoutContainer", "dojo/domReady!"], function(parser, ContentPane, LayoutContainer){
			parser.parse();
		});
	</script>	
</body>
</html>