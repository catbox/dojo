<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Programmatic Form</title>
<link rel="stylesheet" href="/dojotoolkit/dojo-1.8.3/dijit/themes/claro/claro.css" media="screen">
<link rel="stylesheet" href="/css/myCSS.css">
</head>
<body class="claro">

	<label for="programmatic">Input any number with up to 6 fractional digits:</label>
	<input id="programmatic" type="text" />
	
	<script data-dojo-config="async: true" src="/dojotoolkit/dojo-1.8.3/dojo/dojo.js"></script>
	
	<script>require(["dijit/form/NumberTextBox", "dojo/domReady!"], function(NumberTextBox){
		
		createWidget();
		
	    function createWidget(){
	        var props = {
	            name: "programmatic",
	            constraints: {pattern: "000.##"}
	        };
	        new NumberTextBox(props, "programmatic");
	    }	    
	});
	</script>
	
</body>
</html>