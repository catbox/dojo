<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Declarative Dialog</title>
<link rel="stylesheet" href="/dojotoolkit/dojo-1.8.3/dijit/themes/claro/claro.css" media="screen">
<link rel="stylesheet" href="/css/myCSS.css">
</head>
<body class="claro">
	<button onclick="showDialog();">View Terms and Conditions</button>
	
	<div class="dijitHidden">
	    <div data-dojo-type="dijit/Dialog" style="width:600px;" data-dojo-props="title:'Terms and Conditions'" id="terms">
	        <p><strong>Statement of Rights and Responsibilities</strong></p>
	        <div style="height:140px; width:560px; overflow-y:scroll; border:1px solid #769dc4; padding:0 10px;">
		        <p>        
			        <b>1. Privacy</b>
					<br><br>
					Your privacy is very important to us. We designed our Data Use Policy to make important disclosures about how you 
					can use this site to share with others and how we collect and can use your content and information. 
					We encourage you to read the Data Use Policy, and to use it to help you make informed decisions.         
			        <br><br>
			        <b>2. Sharing Your Content and Information</b>
			        <br><br>
			        You own all of the content and information you post on this site, 
			        and you can control how it is shared through your privacy and application settings.
			        <br><br>
			        <b>3. Safety</b>
			        <br><br>
			        We do our best to keep this site safe, but we cannot guarantee it. 
			        We need your help! So please report to us any anomaly that you may observe.
		        </p>
	        </div>
	        <br>
        	<button onclick="hideDialog();">I Agree</button>
        	<button onclick="alert('You must agree!');">I Don't Agree</button>
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
	 // Require the Dialog class
    require(["dijit/registry", "dojo/parser", "dijit/Dialog", "dijit/form/Button", "dojo/domReady!"], function(registry, parser){
        // Show the dialog
        showDialog = function() {
            registry.byId("terms").show();
        };
        
        // Hide the dialog
        hideDialog = function() {
            registry.byId("terms").hide();
        };
        
        parser.parse();
       
    });
	</script>
	
</body>
</html>