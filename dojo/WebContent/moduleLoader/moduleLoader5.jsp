<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Module Loader 5</title>
<link rel="stylesheet" href="/css/myCSS.css">
</head>
<body>
	<h1 id="greeting">Welcome to Module Loader 5</h1>
  	<p>ML5 loads a module from a directory within the same project</p>
	
	<script>
	    dojoConfig = {
	    	async: true,
	        parseOnLoad: false,
	        packages: [{
	                name: "modules",
	                location: "../../../dojo/modules"
	        }]
	    };
	</script>

	<script src="/dojotoolkit/dojo-1.8.3/dojo/dojo.js"></script>

	<script>	
		// Load the module myModule
		require(["modules/myModule"], function(myModule) {
			modloaderns.greetingModifier(myModule);
		});
	
		// modluleLoader5 name space
		var modloaderns = {};
		
		// Modify the greeting
		modloaderns.greetingModifier = function(myModule) {
			// Use the loaded module to change the text in the greeting
		    myModule.setText("greeting", "Hello Dojo! Wazup mofoes :) gotcha!");
		 
		    // After a few seconds, restore the text to its original state
		    setTimeout(function() {
		    	myModule.restoreText("greeting");
		    }, 3000);	
		};	
	</script>
	
</body>
</html>