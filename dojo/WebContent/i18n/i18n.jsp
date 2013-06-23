<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>i18n</title>
<link rel="stylesheet" href="/dojotoolkit/dojo-1.8.3/dijit/themes/claro/claro.css" media="screen">
<link rel="stylesheet" href="/css/myCSS.css">
</head>
<body class="claro">
	<div id="morningGreeting"></div>
	<div id="eveningGreeting"></div>
	<div id="nightGreeting"></div>
	<script>
		// Set up the language
		var language = "en";
		
	    dojoConfig = {
	    	async: true,
	        parseOnLoad: false,
	        locale: language,
	        packages: [ {
	    		name: 'nls',
	    		//location: location.pathname.replace(/\/[^/]+$/, '') + '/nls'
	    		location: "../../../dojo/i18n/nls"
	    	}]
	    };
	</script>
	<script src="/dojotoolkit/dojo-1.8.3/dojo/dojo.js"></script>	
	
	<script>	
		require(["dojo/dom", "dojo/i18n!nls/translation", "dojo/domReady!"], function(dom, i18n){
			
			var morningGreeting = dom.byId("morningGreeting");
			morningGreeting.innerHTML = i18n.morningMessage;
			
			var eveningGreeting = dom.byId("eveningGreeting");
			eveningGreeting.innerHTML = i18n.eveningMessage;
			
			var nightGreeting = dom.byId("nightGreeting");
			nightGreeting.innerHTML = i18n.nightMessage;
		});
	</script>
	
</body>
</html>