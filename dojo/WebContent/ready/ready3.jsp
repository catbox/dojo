<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Ready 3</title>
<link rel="stylesheet" href="/css/myCSS.css">
</head>
<body>
	<h1 id="greeting">Ready 3</h1>
	
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
	
	<!-- dojo/dom: core dojo api for dom manipulation -->
	<script>	
		require(["dojo/dom"], function(dom){			
			var msg = dom.byId("msg");
			msg.innerHTML += " to Dojo Ready!";	
		});
	</script>
	
	<h1 id="msg">Welcome</h1>
	
	<p><b>Note: </b>The complete welcome message is not displayed because dojo manipulates a dom that is not yet available!</p>

</body>
</html>