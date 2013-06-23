<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Module Loader 2</title>
<link rel="stylesheet" href="/css/myCSS.css">
</head>
<body>
	<h1 id="greeting">Welcome to Module Loader 2</h1>
  
	<script data-dojo-config="async: true" src="/dojotoolkit/dojo-1.8.3/dojo/dojo.js"></script>

	<script>	
		// Load the module myModule
		require(["moduleFromServer/myModule"], function(myModule) {
			modloaderns.greetingModifier(myModule);
		});
	
		// modluleLoader2 name space
		var modloaderns = {};
		
		// Modify the greeting
		modloaderns.greetingModifier = function(myModule) {
			// Use the loaded module to change the text in the greeting
		    myModule.setText("greeting", "Hello Dojo! Wazup mofoes :)");
		 
		    // After a few seconds, restore the text to its original state
		    setTimeout(function() {
		    	myModule.restoreText("greeting");
		    }, 3000);	
		};	
	</script>
	
</body>
</html>