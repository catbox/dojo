<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Module Loader</title>
<link rel="stylesheet" href="/css/myCSS.css">
</head>
<body>
	<h1 id="greeting">Welcome to Module Loader</h1>
	
	<script data-dojo-config="async: true" src="/dojotoolkit/dojo-1.8.3/dojo/dojo.js"></script>
	
	<script>	
		// Require the module we just created
		require(["moduleFromServer/myModule"], function(myModule){
	    // Use our module to change the text in the greeting
	    myModule.setText("greeting", "Hello Dojo! Wazup :)");
	 
	    // After a few seconds, restore the text to its original state
	    setTimeout(function(){
	        myModule.restoreText("greeting");
	    }, 3000);
	});
	</script>
	
</body>
</html>