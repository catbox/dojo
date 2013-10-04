<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>show hide</title>
<link rel="stylesheet" href="/dojotoolkit/dojo-1.8.3/dijit/themes/claro/claro.css">
<link rel="stylesheet" href="/css/myCSS.css">
</head>
<body class="claro">
<div data-dojo-type="dijit/Declaration" data-dojo-props="widgetClass:'HideButton'">
    <button data-dojo-attach-event="onclick: myClickHandler" data-dojo-attach-point="containerNode"></button>
	<script type='dojo/method' data-dojo-event='myClickHandler'>
       this.domNode.style.display="none";
    </script>
</div>
<button data-dojo-type="HideButton">Click to hide</button>
<button data-dojo-type="HideButton">Click to hide #2</button>
</body>
	<script>
	    dojoConfig = {
	    	async: true,
	        parseOnLoad: false,
	        locale: 'en'	        
	    };
	</script>
	<script src="/dojotoolkit/dojo-1.8.3/dojo/dojo.js" charset="utf-8" type="text/javascript"></script>		
	<script>		
		require(["dojo/parser", "dijit/Declaration", "dojo/domReady!"], function(parser) {
			parser.parse();
		});
	</script>	
</body>
</html>