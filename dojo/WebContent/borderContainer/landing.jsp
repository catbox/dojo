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
	
	table, tr, td {
       padding:0px;
       margin:0px;
       width:100%;
    }
    
	.dijitContentPane  {
		display:inline-block;
		overflow:hidden;		
	}	
    
    .dj_gecko .claro .dijitTextBox .dijitInputInner, .dj_webkit .claro .dijitTextBox .dijitInputInner, .dj_ie .claro .dijitTextBox .dijitInputInner {
	    padding: 3px;
	    background-color:white !important;
	}
	
	.dj_ie .claro .dijitTextBox .dijitInputInner {
	    padding: 3px;
	    background-color:white !important;
	}
	
	.claro .dijitPlaceHolder {
	    font-style: normal;
	    left: 5px;
		color: #B8B8B8;
	    position: absolute;
	    top: 3px;
	}
	
	.dj_ie .claro .dijitPlaceHolder {
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
 	<!--  
	<div id="mainContainer">	
    	<div id="pane1"></div>   	    	
    	<div id="pane2"></div>
    	<div id="cp3"> 		
    		<div id="firstname"></div>
    		<div id="lastname"></div>
			<div id="signup-email"></div>
			<div id="signup-email-match"></div>
			<div id="signup-password"></div>	
    	</div> 	
    	<div id="pane4"></div>
    	<div id="pane5"></div>
	</div>
	-->
	<div id="mainContainer">	
    	<div id="pane1"></div>   	    	
    	<div id="pane2"></div>
    	<div id="pane3"></div> 	
    	<div id="pane4"></div>
    	<div id="pane5"></div>
	</div>
	
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
		require(["dijit/layout/BorderContainer", "dijit/layout/ContentPane", "dojo/dom", "dojo/dom-construct", "modules/logopane", "modules/loginpane", "modules/signup", "dojo/domReady!"], 
				function(BorderContainer, ContentPane, dom, domConstruct, logopane, loginpane, signup) {
			
			var bc = new BorderContainer({
				id:"borderContainer",
				design:"headline",
				gutters:true,
				style:"width:100%; height:100%; overflow:hidden;"
			}, "mainContainer");
					
			var cp1 = new ContentPane({
				id:"cp1",	           
	            splitter:false, 
	            region:"top",
	            style:"width:100%; height:100px; padding:0px; margin:0px; overflow:hidden;"
	            /*content:login.getLoginPane()*/
	            //content:'<table><tr"><td><div id=\"logopane\"></div><td></td><td><div id=\"loginpane\" style=\"margin-left:200px; float:right;\"></div></td></tr></table>'
			},"pane1");
			bc.addChild(cp1);
					
			var cp2 = new ContentPane({
				id:"cp2",	           
	            splitter:false, 
	            region:"left",
	            style:"width:10%; overflow:hidden;",	         
	           	content:"Left Pane"
			},"pane2");
			bc.addChild(cp2);
			
			var cp3 = new ContentPane({
	        	id:"cp3",	           
	            splitter:false, 
	            region:"center",
	            style:"width:80%; overflow:hidden;",
	            content:"Center Pane"
	        },"pane3");
			bc.addChild(cp3);
			
		 	var cp4 = new ContentPane({
	        	id:"cp4",	            
	            splitter:false, 
	            region:"right", 
	            style:"width:10%; overflow:hidden;",
	            content:"Right Pane"
	        },"pane4");
		 	bc.addChild(cp4);
		 	
		 	var cp5 = new ContentPane({
	        	id:"cp5",	            
	            splitter:false, 
	            region:"bottom", 
	            style:"width:10%; height:5%; overflow:hidden;",
	            content:"Bottom Pane"
	        },"pane5");
		 	bc.addChild(cp5);
		 	
		 	bc.startup();
			
		 	
		 	//signup.getSignupPane();
				
			var mainNode = dom.byId("cp1");
			  
			if(mainNode!=null) {				  			
		    	var formNode = domConstruct.toDom("<table><tr><td style='width:50%; min-width:750px;'><h1 id='logoPane' style='margin-left:10px;'>Phantom</h1></td><td style='width:50%;'><form id='loginForm'><div id='loginPane'></div></form></td></tr></table>");	    	
		    	domConstruct.place(formNode, mainNode);
				loginpane.getLoginPane();
			}	
					
		});
	</script>
	
</body>
</html>