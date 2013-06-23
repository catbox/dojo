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

#borderContainerTwo {
    width: 100%;
    min-width: 500px;
    height: 100%;
}

#borderContainerTwo2 {

}
</style>
</head>

<body class="claro">
    <div data-dojo-type="dijit/layout/BorderContainer" data-dojo-props="gutters:true, liveSplitters:false" id="borderContainerTwo">
    <div data-dojo-type="dijit/layout/ContentPane" data-dojo-props="region:'top', splitter:false" style="width: 100px">
       Logo
    </div>
    <div data-dojo-type="dijit/layout/AccordionContainer" data-dojo-props="region:'leading', splitter:true" style="width:400px;" id="leftAccordion">
        <div data-dojo-type="dijit/layout/AccordionPane" title="One fancy Pane">
        </div>
        <div data-dojo-type="dijit/layout/AccordionPane" title="Another one">
        </div>
        <div data-dojo-type="dijit/layout/AccordionPane" title="Even more fancy" selected="true">
        </div>
        <div data-dojo-type="dijit/layout/AccordionPane" title="Last, but not least">
        </div>
    </div><!-- end AccordionContainer -->
    <div data-dojo-type="dijit/layout/TabContainer" data-dojo-props="region:'center', tabStrip:true" style="width:300px; min-width:200px;">
        <div data-dojo-type="dijit/layout/ContentPane" title="My first tab" selected="true">
        Lorem ipsum and all around...
        </div>
        <div data-dojo-type="dijit/layout/ContentPane" title="My second tab">
        Lorem ipsum and all around - second...
        </div>
        <div data-dojo-type="dijit/layout/ContentPane" data-dojo-props="closable:false" title="My last tab">
        Lorem ipsum and all around - last...
        </div>
    </div>
    <div data-dojo-type="dijit/layout/ContentPane" data-dojo-props="region:'bottom', splitter:false">
    	footer
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
		require(["dojo/parser", "dijit/layout/ContentPane", "dijit/layout/BorderContainer", "dijit/layout/TabContainer", "dijit/layout/AccordionContainer", "dijit/layout/AccordionPane", "dojo/domReady!"], function(parser){
			parser.parse();	
		});
	</script>
</body>
</html>