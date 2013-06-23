<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Request</title>
<link rel="stylesheet" href="/dojotoolkit/dojo-1.8.3/dijit/themes/claro/claro.css" media="screen">
<link rel="stylesheet" href="/css/myCSS.css">
</head>
<body class="claro">
	<div id="node1" style="width: 240px; background-color: #ADD6FF;">
	  <p>Hello DOM Construct!</p>
	  <p>How are you today?</p>
	</div>
	<div id="output"></div>
	
	<script data-dojo-config="async: true" src="/dojotoolkit/dojo-1.8.3/dojo/dojo.js"></script>
	
	<script>	
		require(["dojo/request", "dojo/dom-construct"], function(request, domConstruct){
			  request("../helloWorld/helloWorld.jsp").then(function(data){
			  	domConstruct.place(data, "output");			  	
			  }, 
			  function(error){
			  	domConstruct.place("<b>" + error + "</b>", "output");
			  }, 
			  function(evt){
			    // handle a progress event
			  });
		});
	</script>
	
</body>
</html>