<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Ready</title>
<link rel="stylesheet" href="/css/myCSS.css">
</head>
<body>
	<h1 id="greeting">Ready</h1>
	
	<!--  Using Asynchronous Module Definition (AMD) mode loads the dojo module loader only. 
		  The AMD API specifies a mechanism for defining modules such that the module and its dependencies can be asynchronously loaded. 
		  This is particularly well suited for the browser environment where synchronous loading of modules incurs:		  
		  	1) performance 
		  	2) usability 
		  	3) debugging 
		  	4) cross-domain access problems		  	
		  Other modules like fx, xhr and query are discarded to increase the performance of dojo loading.
		  
		  NOTE:	When your application loads a lot of code, having the <script> blocks in the header can keep the page from rendering while they are being loaded. 
		  		This adds to the user perception of the application "being slow" and can degrade the user experience.
		  		To circumvent this, load Dojo at the end of the body of the document but before actually using any of the dojo modules or plugins.
	-->	
	<script data-dojo-config="async: true" src="/dojotoolkit/dojo-1.8.3/dojo/dojo.js"></script>	
	
	<!-- dojo/dom: core dojo api for dom manipulation.
		 One of the common things that you need to accomplish with web applications is to ensure that the browser's DOM is available before executing code. 
		 This is accomplished via a special AMD module called a "plugin". 
		 Plugins can be required like any other module, but their special functionality is only activated by adding an exclamation point to the end of the module identifier. 
		 In the case of the DOM ready event, Dojo provides the dojo/domReady plugin.
		 Simply include this plugin as a dependency in any require or define call and the callback will not be fired until the DOM is ready.
	-->
	<script>	
		require(["dojo/dom", "dojo/domReady!"], function(dom){
			// Anthing that is in this scope will not get executed until the whole DOM structure becomes available.
			var msg = dom.byId("msg");
			msg.innerHTML += " to Dojo Ready!";
		});
	</script>
	
	<h1 id="msg">Welcome</h1>
	
</body>
</html>