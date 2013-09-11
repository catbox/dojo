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
	<br>
	<div id="class1" class="myClass">Class Item1</div>
	<div id="class2" class="myClass">Class Item2</div>
	<div id="class3" class="myClass">Class Item3</div>
	
	<script>
	    dojoConfig = {
	    	async: true,
	        parseOnLoad: false,
	        locale: 'en'	        
	    };
	</script>
	<script src="/dojotoolkit/dojo-1.8.3/dojo/dojo.js"></script>	
	
	<script>	
		require(["dojo/on", "dojo/dom", "dojo/_base/window", "dojo/dom-style", "dojo/mouse", "dojo/query", "dojo/domReady!"],
		    function(on, dom, win, domStyle, mouse) {
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
		        
		        on(win.doc, ".myClass:click", function(evt){		            
		        	var nodeId = evt.target.id;
			     	alert("Node Id: " + nodeId);
		        });
		        
		        on(win.doc, ".myClass:mouseover", function(evt){		            
		        	var nodeId2 = evt.target.id;
		        	domStyle.set(nodeId2, "color", "blue");
		        });
		        
		        on(win.doc, ".myClass:mouseout", function(evt){		            
		        	var nodeId2 = evt.target.id;
		        	domStyle.set(nodeId2, "color", "#4D4D4D");
		        });
		});
	</script>
	
</body>
</html>