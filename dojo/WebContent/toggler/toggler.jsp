<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Toggler</title>
<link rel="stylesheet" href="/css/myCSS.css">
</head>
<body>
	<button type="button" id="showButton">Show</button>
	<button type="button" id="hideButton">Hide</button>
	<br>
	<div id="node1" style="width: 240px; background-color: #ADD6FF;">
	  <p>Hello Toggler!</p>
	  <p>How are you today?</p>
	</div>
	<div id="node2"></div>
	<ul id="thelist" class="list">
        <li id="one">One</li>
        <li id="two">Two</li>
        <li id="three">Three</li>
        <li id="four">Four</li>
        <li id="five">Five</li>
    </ul>
	
	<script data-dojo-config="async: true" src="/dojotoolkit/dojo-1.8.3/dojo/dojo.js"></script>
	
	<script>	
		require(["dojo/fx/Toggler", "dojo/dom", "dojo/dom-construct", "dojo/on", "dojo/domReady!"],
			function(Toggler, dom, domConstruct, on) {		 
			      // Toggler
				  var toggler = new Toggler({
					    node: "node2"
				  });				  
				  // Show the message
				  on(dom.byId("showButton"), "click", function(e) {				  
						var msg = dom.byId("node2");
						msg.innerHTML = "<b>I am the toggler message!<b><br>";
					    toggler.show();
					  });				  
				  // Hide the message
				  on(dom.byId("hideButton"), "click", function(e) {
					    toggler.hide();
				  });	  
			});
	</script>
	
</body>
</html>