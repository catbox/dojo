<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Declarative Tabs</title>
<link rel="stylesheet" href="/dojotoolkit/dojo-1.8.3/dijit/themes/claro/claro.css" media="screen">
<link rel="stylesheet" href="/css/myCSS.css">
</head>
<body class="claro">
	<div style="width: 900px; height: 500px">
	    <div data-dojo-type="dijit/layout/TabContainer" style="width: 100%; height: 100%;">
	        <div data-dojo-type="dijit/layout/ContentPane" title="Food" data-dojo-props="selected:true" href="../form/decForm.jsp">.
	        </div>
	        <div data-dojo-type="dijit/layout/ContentPane" title="Drinks">
	        	We are known for our $%*&!# up drinks!
	        </div>
	        <div data-dojo-type="dijit/layout/ContentPane" title="Fun" data-dojo-props="closable:true">
	            We are known for being crazies :)
	        </div>
	    </div>
	</div>
	
	<script data-dojo-config="async: true" src="/dojotoolkit/dojo-1.8.3/dojo/dojo.js"></script>
		
	<script>	
		require(["dojo/parser", "dijit/layout/TabContainer", "dijit/layout/ContentPane",  "dojox/validate/us", "dojox/validate/web", "dojox/form/BusyButton",  
		         "dijit/form/TextBox", "dijit/form/ValidationTextBox", "dijit/form/DateTextBox", "dijit/form/Button", 
		         "dijit/form/Form", "dijit/Tooltip","dojo/domReady!"], function(parser){
			parser.parse();	
		});
	</script>
	
</body>
</html>