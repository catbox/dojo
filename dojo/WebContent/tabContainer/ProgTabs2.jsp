<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Programmatic Tabs 2</title>
<link rel="stylesheet" href="/dojotoolkit/dojo-1.8.3/dijit/themes/claro/claro.css" media="screen">
<link rel="stylesheet" href="/css/myCSS.css">
</head>
<body class="claro">
	<div style="width: 900px; height: 500px">
		<div id="progtabs">
			<div id="cp1">
				<form id="myform">
					<input id="fullname"/>
					<input id="email"/>
				    <input id="radioOne"/><label id="radioOneLabel" for="radioOne"></label>
				    <input id="radioTwo"/><label id="radioTwoLabel" for="radioTwo"></label>
				    <br><br>
				    <button id="progButton"></button>
				</form>		
			</div>
			<div id="cp2">
				<button id="progButtonNode"></button>	
				<div id="hello"></div>	
			</div>
			<div id="cp3"></div>
		</div>
	</div>
	
	<script>
	    dojoConfig = {
	        parseOnLoad: false,
	        packages: [{
	                name: "modules",
	                location: "../../../dojo/tabContainer/modules"
	        }]
	    };
	</script>
	
	<script data-dojo-config="async: true" src="/dojotoolkit/dojo-1.8.3/dojo/dojo.js"></script>
	
	<script>
		require(["dijit/layout/TabContainer", "dijit/layout/ContentPane", "modules/myButton", "modules/myForm", "dojo/domReady!"], function(TabContainer, ContentPane, myButton, myForm) {
			
			var tc = new TabContainer({
				id:"tc",
	            style:"height: 100%; width: 100%;"
	        }, "progtabs");
			
	        var cp1 = new ContentPane({
	        	 id:"cp1",
	             title:"Food",	          
	        }, "cp1");
	        cp1.startup();
	        
	        var cp2 = new ContentPane({
	        	 id:"cp2",
	             title:"Drinks",
	             //content:"We are known for our $%*&!# up drinks!"
	        }, "cp2");
	        cp2.startup();

	        var cp3 = new ContentPane({
	        	 id:"cp3",
	             title:"Fun",
	             content: "We are known for being crazies :)"
	        }, "cp3");
			cp3.startup();
      	       		
			tc.startup();

			var btn = myButton.getButton();
			btn.startup();
			
			new myForm();
		});
	</script>   
</body>
</html>