<!DOCTYPE html>
<html >
<head>
<title>Declarative Border Container</title>
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
    
	<div id="borderContainer" data-dojo-type="dijit/layout/BorderContainer" data-dojo-props="design:'headline', gutters:true, liveSplitters:false">
	    
	    <div data-dojo-type="dijit/layout/ContentPane" data-dojo-props="region:'top', splitter:false" style="min-width:200px; overflow:hidden;">
	        <b>pkw</b>
	    </div>
	    
	    <div id="leftAccordion" data-dojo-type="dijit/layout/AccordionContainer" data-dojo-props="region:'left', splitter:false" style="width:200px; overflow:hidden;">
	        <div data-dojo-type="dijit/layout/AccordionPane" title="One fancy Pane"></div>
	        <div data-dojo-type="dijit/layout/AccordionPane" title="Another one"></div>
	        <div data-dojo-type="dijit/layout/AccordionPane" title="Even more fancy" selected="true"></div>
	        <div data-dojo-type="dijit/layout/AccordionPane" title="Last, but not least"></div>
	    </div>
	    
	    <div id="tabContainer" data-dojo-type="dijit/layout/TabContainer" data-dojo-props="region:'center'" style="overflow:hidden;">
	        <div data-dojo-type="dijit/layout/ContentPane" title="My first tab" selected="true">
	        	Lorem ipsum and all around...
	        </div>
	        <div data-dojo-type="dijit/layout/ContentPane" title="My second tab">
	        	Lorem ipsum and all around - second...
	        </div>
	        <div data-dojo-type="dijit/layout/ContentPane" data-dojo-props="closable:true" title="My last tab">
	        	Lorem ipsum and all around - last...
	        </div>
	    </div>
	    
	    <div data-dojo-type="dijit/layout/ContentPane" data-dojo-props="region:'bottom', splitter:false" style="min-width:200px; overflow:hidden;">
	        Bottom Pane
	    </div>
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
		require(["dojo/parser", "dijit/layout/ContentPane", "dijit/layout/BorderContainer", "dijit/layout/TabContainer", "dijit/layout/AccordionContainer", "dijit/layout/AccordionPane", "dojo/domReady!"], function(parser) {
			parser.parse();
		});
	</script>
</body>
</html>