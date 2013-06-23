<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Hello World 2</title>
<link rel="stylesheet" href="/dojotoolkit/dojo-1.8.3/dijit/themes/claro/claro.css" media="screen">
<link rel="stylesheet" href="/css/myCSS.css">
</head>
<body class="claro">
	<button id="progButtonNode"></button>	
	<div id="hello"></div>
	
	<script data-dojo-config="async: true" src="/dojotoolkit/dojo-1.8.3/dojo/dojo.js"></script>
	
	<script>	
		require(["dojo/dom", "dijit/form/Button", "dojo/domReady!"], function(dom, Button){
		
	        var myButton = new Button({
	            label: "Hello",
	            onClick: function(){
	                dom.byId("hello").innerHTML = "Hello world!";
	            }
	        }, "progButtonNode");
			
			myButton.startup();
		});
	</script>
</body>
</html>