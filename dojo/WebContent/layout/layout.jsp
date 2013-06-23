<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>layout</title>
<link rel="stylesheet" href="/dojotoolkit/dojo-1.8.3/dijit/themes/claro/claro.css" media="screen">
<link rel="stylesheet" href="/css/myCSS.css">
<style type="text/css">
	html, body {
		width: 100%; height: 100%; margin:0; padding:0; overflow:hidden;
	}
	#layout {	
		position:absolute;
		top:10px;
		left:550px;
		width:100%;
		overflow:hidden;
	}
</style>
</head>
<body class="claro">
	<div id="layout">
	    <p>Breathe, breathe in the air.</p>
		<p>Don't be afraid to care.</p>
		<p>Leave but don't leave me.</p>
		<p>Look around and choose your own ground.</p>
		<p>Long you live and high you fly.</p>
		
		<p>And smiles you'll give and tears you'll cry.</p>
		<p>And all you touch and all you see Is all your life will ever be.
		Run, rabbit run.</p>
		<p>Dig that hole, forget the sun,
		And when at last the work is done.</p>
		<p>Don't sit down it's time to dig another one.</p>
		
		<p>For long you live and high you fly.</p>
		<p>But only if you ride the tide.</p>
		<p>And balanced on the biggest wave.</p>
		<p>You race towards an early grave.</p>
	</div>
	<script>
	    dojoConfig = {
	    	async: true,
	        parseOnLoad: false,
	        locale: 'en'	        
	    };
	</script>
	<script src="/dojotoolkit/dojo-1.8.3/dojo/dojo.js"></script>		
	<script>	
		require(["dojo/dom", "dojo/domReady!"], function(dom){
			// Anthing that is in this scope will not get executed until the whole DOM structure becomes available.		
		});
	</script>	
</body>
</html>