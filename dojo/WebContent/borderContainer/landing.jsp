<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Lander</title>
<link rel="stylesheet" href="/dojotoolkit/dojo-1.8.3/dijit/themes/claro/claro.css" media="screen">
<link rel="stylesheet" href="/css/myCSS.css">
<style type="text/css">
	html, body {
	    width:100%;
	    height:100%;
	    margin:0px;
	    padding:0px;
	    overflow:hidden;
	}
	
	#lg {
		float:right;
	}
</style>
</head>
<body class="claro">

	<div id="borderContainer">	
    	<div id="cp1"> 
    		<form id="myform">
				<div id="logo">pkw</div>
				<div id="lg">
					
				</div>
			</form>
    	</div>   	    	
    	<div id="cp2"></div>
    	<div id="cp3"> 		
    		<div id="firstname"></div>
    		<div id="lastname"></div>
			<div id="signup-email"></div>
			<div id="signup-email-match"></div>
			<div id="signup-password"></div>	
    	</div> 	
    	<div id="cp4"></div>
	</div>
	
	<!--  
	<div id="borderContainer">	
    	<div id="cp1"> 
    		<form id="myform">
				<div id="logo">phantom</div>
				<div id="block">
					<input id="email"/>	
					<input id="password"/>					
				    <button id="login"></button>
				</div>
			</form>
    	</div>   	    	
    	<div id="cp2"></div>
    	<div id="cp3"> 		
    		<div id="firstname"></div>
    		<div id="lastname"></div>
			<div id="signup-email"></div>
			<div id="signup-email-match"></div>
			<div id="signup-password"></div>	
    	</div> 	
    	<div id="cp4"></div>
	</div>
	-->
	<script>
	    dojoConfig = {
	    	async: true,
	        parseOnLoad: false,
	        packages: [{
	                name: "modules",
	                location: "../../../dojo/modules"
	        }]
	    };
	</script>
	<script src="/dojotoolkit/dojo-1.8.3/dojo/dojo.js"></script>
	
	<script>	
		require(["dijit/layout/BorderContainer", "dijit/layout/ContentPane",  "modules/login", "dojo/domReady!"], function(BorderContainer, ContentPane, login) {
			
			var bc = new BorderContainer({
				id:"borderContainer",
				design:"headline",
				gutters:true,
				style:"width:100%; height:100%; overflow:hidden"
			}, "borderContainer");
					
			var cp1 = new ContentPane({
				id:"cp1",	           
	            splitter:false, 
	            region:"top",
	            style:"width:100%; height:10%; overflow:hidden",
	            content:login.getLoginPane()
			});
			bc.addChild(cp1);
					
			var cp2 = new ContentPane({
				id:"cp2",	           
	            splitter:true, 
	            region:"left",
	            style:"width:10%; overflow:hidden;",	         
	           	content:"Left Pane"
			});
			bc.addChild(cp2);
			
			var cp3 = new ContentPane({
	        	id:"cp3",	           
	            splitter:true, 
	            region:"center",
	            style:"width:80%; overflow:hidden;",
	            content:"Center Pane"
	        });
			bc.addChild(cp3);
			
		 	var cp4 = new ContentPane({
	        	id:"cp4",	            
	            splitter:true, 
	            region:"right", 
	            style:"width:10%; overflow:hidden",
	            content:"Right Pane"
	        });
		 	bc.addChild(cp4);
		 	
		 	var cp5 = new ContentPane({
	        	id:"cp5",	            
	            splitter:true, 
	            region:"bottom", 
	            style:"width:100%; height:5%; overflow:hidden;",
	            content:"Bottom Pane"
	        });
		 	bc.addChild(cp5);
		 	
			bc.startup();
		});
	</script>
	
</body>
</html>