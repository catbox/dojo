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
			},"pane1");
			bc.addChild(cp1);
			
			var cp2 = new ContentPane({
				id:"cp2",   
	            splitter:false,
	            region:"left",
	            style:"width:10%; overflow:hidden;"   
			},"pane2");
			bc.addChild(cp2);
				
			var cp3 = new ContentPane({
	        	id:"cp3",          
	            splitter:false,
	            region:"center",
	            style:"width:80%; overflow:hidden;"
	        },"pane3");
			bc.addChild(cp3);
			
		 	var cp4 = new ContentPane({
	        	id:"cp4",            
	            splitter:false,
	            region:"right",
	            style:"width:10%; overflow:hidden;"
	        },"pane4");
		 	bc.addChild(cp4);
		
		 	var cp5 = new ContentPane({
	        	id:"cp5",        
	            splitter:false,
	            region:"bottom",
	            style:"width:10%; height:40px; overflow:hidden;",
	            content:"Performance Monitoring Dashboard"
	        },"pane5");
		 	bc.addChild(cp5);
		 	
		 	// Show the border layout
		 	bc.startup();
			
		 	// Create the top pane dom
			var topNode = dom.byId("cp1");
			  
			if(topNode!=null) {				  			
		    	var formNode = domConstruct.toDom("<table><tr><td style='width:50%; min-width:400px; max-width:500px;'><h1 id='logoPane' style='margin-left:10px;'>IDM</h1></td><td style='width:50%; min-width:400px; max-width:500px;'><form id='loginForm'><div id='loginPane'></div></form></td></tr></table>");	    	
		    	domConstruct.place(formNode, topNode);
				loginpane.getLoginPane();
			}	
			
			// Create the center pane dom
			var centerPane = dom.byId("cp3");
			  
			if(centerPane!=null) {				  			
		    	var centerPaneNode = domConstruct.toDom("<table><tr><td style='width:50%; min-width:400px; max-width:500px; padding:0px; margin:0px;'><h1>GM OnStar</h1><h1>GM Owner Center</h1><h1>Blue Cross Blue Shield</h1></td><td style='width:50%; min-width:400px; max-width:500px;'><form id='signupForm'><div id='signupPane'></div></form></td></tr></table>");	    	
		    	domConstruct.place(centerPaneNode, centerPane);
		    	signup.getSignupPane();
			}	
					
		});
	</script>
	
</body>
</html>