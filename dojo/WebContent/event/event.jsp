<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Event</title>
<link rel="stylesheet" href="/dojotoolkit/dojo-1.8.3/dijit/themes/claro/claro.css" media="screen">
<link rel="stylesheet" href="/css/myCSS.css">
</head>
<body class="claro">
	<button id="myButton">Hello</button>
	<br><br>
	<div id="myDiv">Hover over me!</div>
	<script>
	    dojoConfig = {
	    	async: true,
	        parseOnLoad: false,
	        locale: 'en'	        
	    };
	</script>
	<script src="/dojotoolkit/dojo-1.8.3/dojo/dojo.js"></script>	
	
	<script>	
		require(["dojo/on", "dojo/dom", "dojo/dom-style", "dojo/mouse", "dojo/domReady!"],
		    function(on, dom, domStyle, mouse) {
		        var myButton = dom.byId("myButton"),
		            myDiv = dom.byId("myDiv");
		 
		        on(myButton, "click", function(evt){
		            domStyle.set(myDiv, "backgroundColor", "blue");
		            alert("Hello world!");
		        });
		        
		        on(myDiv, mouse.enter, function(evt){
		            domStyle.set(myDiv, "backgroundColor", "red");
		        });
		        
		        on(myDiv, mouse.leave, function(evt){
		            domStyle.set(myDiv, "backgroundColor", "");
		        });
		});
	</script>
	
</body>
</html>