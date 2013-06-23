<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Validate Number</title>
<link rel="stylesheet" href="/dojotoolkit/dojo-1.8.3/dijit/themes/claro/claro.css" media="screen">
<link rel="stylesheet" href="/css/myCSS.css">
</head>
<body class="claro">

	<div id="validNumber"></div>
	
	<script data-dojo-config="async: true" src="/dojotoolkit/dojo-1.8.3/dojo/dojo.js"></script>	
	
	<script>	
		require(["dojo/dom", "dojox/validate", "dojo/domReady!"], function(dom, validate){
			var someNum1 = "123";
			var test1 = validate.isNumberFormat(someNum1, {format: "(###) ###-####"});
			var result1 = "Is " + someNum1 + " valid? " + test1;
			
			var someNum2 = "(514) 788-6013";
			var test2 = validate.isNumberFormat(someNum2, {format: "(###) ###-####"});
			var result2 = "Is " + someNum2 + " valid? " + test2;
			
			var validNumber = dom.byId("validNumber");
			validNumber.innerHTML = result1 + "<br>" + result2;
		});
	</script>
	
</body>
</html>