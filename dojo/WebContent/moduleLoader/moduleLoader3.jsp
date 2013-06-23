<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Module Loader 3</title>
<link rel="stylesheet" href="/css/myCSS.css">
</head>
<body>
	<h2 id="greeting">Welcome to Module Loader 3</h2>
	<p id="helloServer"></p>
	<p id="sum"></p>
	<p id="byeServer"></p>
	
	<script data-dojo-config="async: true" src="/dojotoolkit/dojo-1.8.3/dojo/dojo.js"></script>
	
	<script>
		// Load the module calculator from the server
		require(["dojo/dom", "dojo/domReady!", "moduleFromServer/calculator"], function(dom, ready, calculator) {
			
			var helloServer = dom.byId("helloServer");
			helloServer.innerHTML = calculator.sayHello();
	
			var sum = dom.byId("sum");				
			sum.innerHTML = "sum of 2+3 = " + calculator.sum(2,3);
						
			var bye = dom.byId("byeServer");
			bye.innerHTML =	calculator.sayBye();	

		});				
	</script>
	
</body>
</html>