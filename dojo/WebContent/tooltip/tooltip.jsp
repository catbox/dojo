<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>tootip</title>
<link rel="stylesheet" href="/dojotoolkit/dojo-1.8.3/dijit/themes/claro/claro.css">
<link rel="stylesheet" href="/css/myCSS.css">
</head>
<body class="claro">
	<span id="node">Hello World.</span>
	<script>
	    dojoConfig = {
	    	async: true,
	        parseOnLoad: false,
	        locale: 'en'	        
	    };
	</script>
	<script src="/dojotoolkit/dojo-1.8.3/dojo/dojo.js" charset="utf-8" type="text/javascript"></script>		
	<script>	
		require(["dojo/dom", "dijit/Tooltip", "dojo/domReady!"], function(dom, Tooltip) {
			new Tooltip({
	            connectId: ["node"],
	            label: "Hello Crazy World!"
	        });	
		});
	</script>	
</body>
</html>