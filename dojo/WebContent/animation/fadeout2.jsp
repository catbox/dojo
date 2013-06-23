<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>fadeout2</title>
<link rel="stylesheet" href="/dojotoolkit/dojo-1.9.0/dijit/themes/claro/claro.css" media="screen">
<link rel="stylesheet" href="/css/myCSS.css">
</head>
<body class="claro">
	<button id="basicFadeButton2">Fade It Out Slow!</button>
	<br><br>
	<div id="basicFadeNode2" style="width: 100px; height: 100px; background-color: #CCE0FF;"></div>
	<script>
	    dojoConfig = {
	    	async: true,
	        parseOnLoad: false,
	        locale: 'en'	        
	    };
	</script>
	<script src="/dojotoolkit/dojo-1.9.0/dojo/dojo.js"></script>		
	<script>	
		require(["dojo/dom", "dojo/_base/fx", "dojo/on", "dojo/dom-style", "dojo/domReady!"],
			function(dom, fx, on, style){
			   // Function linked to the button to trigger the fade.
			   function fadeIt(){
			      style.set("basicFadeNode2", "opacity", "1");
			      var fadeArgs = {
			        node: "basicFadeNode2",
			        duration: 5000
			      };
			      fx.fadeOut(fadeArgs).play();
			   }
			   on(dom.byId("basicFadeButton2"), "click", fadeIt);
			});
	</script>	
</body>
</html>