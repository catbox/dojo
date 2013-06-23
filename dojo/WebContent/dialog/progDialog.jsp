<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Programmatic Dialog</title>
<link rel="stylesheet" href="/dojotoolkit/dojo-1.8.3/dijit/themes/claro/claro.css" media="screen">
<link rel="stylesheet" href="/css/myCSS.css">
<style>
	#myinline div {
		display: inline-block;
		width: 100px !important;
		margin-left: 25px !important;
	}
</style>
</head>
<body class="claro">
	<button id="termsAndCondition"></button>
	<div class="dijitHidden">
		<div id="myDialog">
			<div id="myDialogContent"></div>
			<div id="myinline">
				<button id="agreeButton"></button>
		   		<button id="disagreeButton"></button>
	   		</div>
		</div>		
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
		require(["dojo/dom", "dijit/registry", "dijit/Dialog", "dijit/layout/ContentPane", "dijit/form/Button", "dojo/domReady!"], function(dom, registry, Dialog, ContentPane, Button) {
	
			// Terms & Conditions button
			var termsAndCondition = new Button({
	            label: "View Terms and Conditions",
	            onClick: function() {
	            	showDialog();
	            }
	        }, "termsAndCondition");
			termsAndCondition.startup();
			
			// Dialog
			var myDialog = new Dialog({
			    title: "Terms and Conditions",
			    content: dialogContent
			}, "myDialog");		
		
			// Dialog content
			var dialogContent = new ContentPane({
		    	href: "dialogContent/dialogContent.jsp",
		    	style:"height:150px; width:590px; padding:5px;"
			},"myDialogContent");
			dialogContent.startup(); 
			
			// Agree button
			var agreeButton = new Button({
	            label: "I Agree",
	            onClick: function(){
	            	hideDialog();
	            }
	        }, "agreeButton");
			agreeButton.startup();
			
			// Disagree button
			var disagreeButton = new Button({
	            label: "I Don't Agree",
	            onClick: function(){
	            	alert('You must agree!');
	            }
	        }, "disagreeButton");
			disagreeButton.startup();
			
			// Add the components of the dialog
			myDialog.addChild(dialogContent, "myDialogContent");
			myDialog.addChild(agreeButton, "agreeButton");
			myDialog.addChild(disagreeButton, "disagreeButton");
			myDialog.startup();
			
			// Show the dialog
	        showDialog = function() {
	        	registry.byId("myDialog").show();
	        };
	        
	        // Hide the dialog
	        hideDialog = function() {
	            registry.byId("myDialog").hide();
	        };
	 
		});
	</script>
	
</body>
</html>