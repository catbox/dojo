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
	
	.dijitContentPane  {
		display:inline-block;
		overflow:hidden;		
	}
	
	table, tr, td { 
       /*border-style:solid;
	   border-width:1px;*/
       padding:0px;
       margin:0px;
       width:100%;
    }
    
    .dj_gecko .claro .dijitTextBox .dijitInputInner, .dj_webkit .claro .dijitTextBox .dijitInputInner, .dj_ie .claro .dijitTextBox .dijitInputInner {
	    padding: 3px;
	    background-color:white !important;
	}
	
	.dj_ie .claro .dijitTextBox .dijitInputInner {
	    padding: 3px;
	    background-color:white !important;
	}
	
	.dijitPlaceHolder {
	    font-style: normal;
	    left: 5px;
		color: #B8B8B8;
	    position: absolute;
	    top: 3px;
	}
	
	.dj_ie .dijitPlaceHolder {
	    font-style: normal;
	    left: 5px;
		color: #B8B8B8;
	    position: absolute;
	    top: 2px;
	}
	
	.claro .dijitValidationTextBoxError .dijitValidationContainer {
		background-color: #d46464;
	  	background-image: url("../images/error.png");
		background-position: top center;
		border: solid #d46464 0;
		width: 9px;
		height: 27px;
	}
	
	.dj_ie .claro .dijitValidationTextBoxError .dijitValidationContainer {
		background-color: #d46464;
	  	background-image: url("../images/error.png");
	  	background-position: top center;
	  	border: solid #d46464 0;
	  	width: 9px;
	  	height: 26px;
	}
	
	.dijitContentPane  {
		display:block;
		overflow:hidden;
	}
</style>
</head>
<body class="claro">
 

	 
	<div id="borderContainer">	
    	<div id="cp1"> 
    		<form id="myform">
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
		require(["dijit/layout/BorderContainer", "dijit/layout/ContentPane",  "modules/logopane", "modules/loginpane", "modules/signup", "dojo/domReady!"], function(BorderContainer, ContentPane, logopane, loginpane, signup) {
			
			var bc = new BorderContainer({
				id:"borderContainer",
				design:"headline",
				gutters:true,
				style:"width:100%; height:100%; overflow:hidden;"
			}, "borderContainer");
					
			var cp1 = new ContentPane({
				id:"cp1",	           
	            splitter:false, 
	            region:"top",
	            style:"width:100%; height:100px; padding:0px; margin:0px; overflow:hidden;",
	            /*content:login.getLoginPane()*/
	            content:'<table><tr"><td><div id=\"logopane\"></div><td></td><td><div id=\"loginpane\" style=\"margin-left:200px; float:right;\"></div></td></tr></table>'
			});
			bc.addChild(cp1);
					
			var cp2 = new ContentPane({
				id:"cp2",	           
	            splitter:false, 
	            region:"left",
	            style:"width:10%; overflow:hidden;",	         
	           	content:"Left Pane"
			});
			bc.addChild(cp2);
			
			var cp3 = new ContentPane({
	        	id:"cp3",	           
	            splitter:false, 
	            region:"center",
	            style:"width:80%; overflow:hidden;",
	            /*content:"Center Pane"*/
	            content:signup.getSignupPane()
	        });
			bc.addChild(cp3);
			
		 	var cp4 = new ContentPane({
	        	id:"cp4",	            
	            splitter:false, 
	            region:"right", 
	            style:"width:10%; overflow:hidden;",
	            content:"Right Pane"
	        });
		 	bc.addChild(cp4);
		 	
		 	var cp5 = new ContentPane({
	        	id:"cp5",	            
	            splitter:false, 
	            region:"bottom", 
	            style:"width:10%; height:5%; overflow:hidden;",
	            content:"Bottom Pane"
	        });
		 	bc.addChild(cp5);
		 	
			bc.startup();
			
			logopane.getLogoPane();
			
			loginpane.getLoginPane();
			/*
			var paw = new ContentPane({
				id:"paw",	                      	         
	           	content:"paws"
			},"loginpane");
			paw.startup();
			*/
		});
	</script>
	
</body>
</html>