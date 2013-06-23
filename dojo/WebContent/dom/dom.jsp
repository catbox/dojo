<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>DOM</title>
<link rel="stylesheet" href="/dojotoolkit/dojo-1.8.3/dijit/themes/claro/claro.css" media="screen">
<link rel="stylesheet" href="/css/myCSS.css">
</head>
<body class="claro">
	<ul class="list">
            <li id="one" class="listElem">One</li>
            <li id="two" class="listElem">Two</li>
            <li id="three" class="listElem">Three</li>
            <li id="four" class="listElem">Four</li>
            <li id="five" class="listElem">Five</li>
        </ul>
	<script>
	    dojoConfig = {
	    	async: true,
	        parseOnLoad: false,
	        locale: 'en'	        
	    };
	</script>
	<script src="/dojotoolkit/dojo-1.8.3/dojo/dojo.js"></script>	
	
	<script>	
		require(["dojo/dom", "dojo/on", "dojo/mouse", "dojo/_base/window", "dojo/query", "dojo/domReady!"], function(dom, on, mouse, win){
			 
			 on(win.doc, ".listElem:click", function(evt) {
				var nodeId = evt.target.id;
		     	alert("Node Id: " + nodeId);
		     });
		});
	</script>
	
</body>
</html>