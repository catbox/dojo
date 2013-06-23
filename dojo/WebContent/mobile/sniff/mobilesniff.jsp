<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>mobile sniff</title>
<link rel="stylesheet" href="/dojotoolkit/dojo-1.8.3/dijit/themes/claro/claro.css" media="screen">
<link rel="stylesheet" href="/css/myCSS.css">
</head>
<body class="claro">
	<div id="output"></div>
	<script>
	    dojoConfig = {
	    	async: true,
	    	cacheBust: true,
	        parseOnLoad: false,
	        locale: 'en'	        
	    };
	</script>
	<script src="/dojotoolkit/dojo-1.9.0/dojo/dojo.js"></script>	
	
	<script>	
		require(["dojo/sniff", "dojo/request", "dojo/dom-construct", "dojo/domReady!"], function(sniff, request, domConstruct) {
			// Verify for mobile phone
		  	if(sniff("iphone") || sniff("android") || sniff("bb")) {
		  		
		  		request("mobilegreeting.html").then(function(data) {
			  		domConstruct.place(data, "output");			  	
			  	}, 
			  	function(error){
			  		domConstruct.place("<b>" + error + "</b>", "output");
			 	}, 
			  	function(evt){
			    	// handle a progress event
			  	});
		  		
		  	}	
		  	// Else I will assume that the request comes from a pc, laptop or tablet
		  	else {
		   		request("browsergreeting.html").then(function(data) {
			  		domConstruct.place(data, "output");			  	
			  	}, 
			  	function(error){
			  		domConstruct.place("<b>" + error + "</b>", "output");
			 	}, 
			  	function(evt){
			    	// handle a progress event
			  	});
		  	}	
		});
	</script>
	
</body>
</html>