<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>tooltip dialog</title>
<link rel="stylesheet" href="/dojotoolkit/dojo-1.8.3/dijit/themes/claro/claro.css">
<link rel="stylesheet" href="/css/myCSS.css">
</head>
<body class="claro">
	<button id="thenode">Some button</button>
	<script>
	    dojoConfig = {
	    	async: true,
	        parseOnLoad: false,
	        locale: 'en'	        
	    };
	</script>
	<script src="/dojotoolkit/dojo-1.8.3/dojo/dojo.js" charset="utf-8" type="text/javascript"></script>		
	<script>	
	require(["dijit/TooltipDialog", "dijit/popup", "dojo/on", "dojo/dom", "dojo/mouse", "dojo/query", "dojo/domReady!"], 
			function(TooltipDialog, popup, on, dom, mouse) {
		        
			var myTooltipDialog = new TooltipDialog({
	            id: 'myTooltipDialog',
	            style:"width:150px;",
	            content: "<p>Hello World!</p>"
		    });
	
	        var thenode = dom.byId("thenode");
	        		        
	        on(thenode, mouse.enter, function(evt) {
	        	popup.open({
	                popup: myTooltipDialog,
	                around: thenode
	            });
	        });
	        
	        on(thenode, mouse.leave, function(evt) {
	        	popup.close(myTooltipDialog);
	        });
	});
	</script>	
</body>
</html>