<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Create And Destroy</title>
<link rel="stylesheet" href="/css/myCSS.css">
</head>
<body>
	<button type="button" id="createNode">Create Node</button>
	<button type="button" id="destroyNode">Destroy Node</button>
	<br>
	<div id="node1" style="width: 240px; background-color: #ADD6FF;">
	  <p>Hello DOM Construct!</p>
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
		require(["dojo/dom", "dojo/dom-construct", "dojo/on", "dojo/domReady!"],
			function(dom, domConstruct, on){
			
			  // Create the node
			  on(dom.byId("createNode"), "click", function(e){
				  
				  var findNewNode = dom.byId("someNewNode");
				  
				  if(findNewNode==null) {
					  var node1 = dom.byId("node1");
					  
					  var someNewNode = domConstruct.toDom("<div id='someNewNode'><b>hello I'm the new node!</b><br><br></div>");
					  domConstruct.place(someNewNode, node1, "after");
				  }
			  });		
			  
			  // Destroy the node
			  on(dom.byId("destroyNode"), "click", function(e){				  			  
				  domConstruct.destroy("someNewNode");				
			  });
			  
			});
	</script>
	
</body>
</html>