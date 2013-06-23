<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Programmatic Tabs</title>
<link rel="stylesheet" href="/dojotoolkit/dojo-1.8.3/dijit/themes/claro/claro.css" media="screen">
<link rel="stylesheet" href="/css/myCSS.css">
</head>
<body id="appLayout" class="claro">
	<div style="width: 900px; height: 500px">
		<div id="progtabs"></div>
	</div>
	
	<script data-dojo-config="async: true" src="/dojotoolkit/dojo-1.8.3/dojo/dojo.js"></script>
	
	<script>
		require(["dijit/layout/TabContainer", "dijit/layout/ContentPane", "dojo/domReady!"], function(TabContainer, ContentPane) {
			
			var tc = new TabContainer({
				id:"tc",
	            style:"height: 100%; width: 100%;"
	        }, "progtabs");

	        var cp1 = new ContentPane({
	        	id:"cp1",
	            title:"Food",
	           	//href:"../form/progForm3.jsp"
	           	content:"Bring on the food for the hungries!"
	        });
	        tc.addChild(cp1);

	        var cp2 = new ContentPane({
	        	id:"cp2",
	            title:"Drinks",
	            content:"We are known for our $%*&!# up drinks!"
	        });
	        tc.addChild(cp2);

	        var cp3 = new ContentPane({
	        	id:"cp3",
	            title:"Fun",
	            content:"We are known for being crazies :)"
	        });
	        tc.addChild(cp3);
	        
	        tc.startup();		
		});
	</script>   
</body>
</html>