<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Module Loader 4</title>
<link rel="stylesheet" href="/css/myCSS.css">
<script type="text/javascript" src="../modules/uimanager.js"></script>
</head>
<body>
	<h1 id="greeting">Welcome to Module Loader 4</h1>
	<div id="targetID1"></div>
	<div id="targetID2"></div>
	
	<script data-dojo-config="async: true" src="/dojotoolkit/dojo-1.8.3/dojo/dojo.js"></script>
	
	<script>	
		// Require the module we just created
		require(["dijit/layout/ContentPane", "dojo/domReady!"], function(){
	   		createUI();
	});
	</script>
	
</body>
</html>