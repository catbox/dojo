<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>fadeout on load</title>
<link rel="stylesheet" href="/dojotoolkit/dojo-1.9.0/dijit/themes/claro/claro.css" media="screen">
<link rel="stylesheet" href="/css/myCSS.css">
<style type="text/css">
#introFlash {
	width: 100%;
	height: 100%;
	margin: 0;
	border: 0 none;
	padding: 0;			    
	background: #fff url('../images/spinner.gif') no-repeat center center;
	position: absolute;
	z-index: 999;
}
</style>
</head>
<body class="claro">
	<div id="introFlash"></div>
	<button id="basicFadeButton2">Fade It</button>
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
			function(dom, fx, on, style) {
  
			   // Called upopn load
			   var fadeArgsIntro = {
			   		node: "introFlash",
			        duration: 3000,
			        onEnd: function() {
			        	style.set("introFlash", "display", "none");
			        }
			        
			   };
			   fx.fadeOut(fadeArgsIntro).play();
			
			   // Function linked to the button to trigger the fade.
			   function fadeIt(){
			      style.set("basicFadeNode2", "opacity", "1");
			      var fadeArgs = {
			        node: "basicFadeNode2",
			        duration: 1000		        
			      };
			      fx.fadeOut(fadeArgs).play();
			   }
			   on(dom.byId("basicFadeButton2"), "click", fadeIt);
			});
	</script>	
</body>
</html>