<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,minimum-scale=1,user-scalable=no"/>
<meta name="apple-mobile-web-app-capable" content="yes"/>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<!-- Caching - caching is disabled for development but could be required in production -->
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="pragma" content="no-cache"> 
<title>mobile template</title>
</head>
<body>
	<script>
	    dojoConfig = {
	    	async: true,
	    	cacheBust: true,
	        parseOnLoad: false,
	        locale: 'en'	        
	    };
	</script>
	<script src="/dojotoolkit/dojo-1.9.0/dojo/dojo.js" charset="utf-8" type="text/javascript"></script>		
	<script>	
		require(["dojox/mobile/parser", "dojox/mobile/deviceTheme", "dojox/mobile", "dojox/mobile/compat", "dojo/domReady!"], function(parser) {
			parser.parse();
		});
	</script>
</body>
</html>