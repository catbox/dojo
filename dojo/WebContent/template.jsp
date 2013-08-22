<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>index</title>
<link rel="stylesheet" href="/dojotoolkit/dojo-1.8.3/dijit/themes/claro/claro.css">
<link rel="stylesheet" href="/css/myCSS.css">
</head>
<body class="claro">
	<script>
	    dojoConfig = {
	    	async: true,
	        parseOnLoad: false,
	        locale: 'en'	        
	    };
	</script>
	<script src="/dojotoolkit/dojo-1.8.3/dojo/dojo.js"></script>		
	<script>	
		require(["dojo/dom", "dojo/domReady!"], function(dom){
			// Anthing that is in this scope will not get executed until the whole DOM structure becomes available.		
		});
	</script>	
</body>
</html>