<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Programmatic Border Container 3</title>
<link rel="stylesheet" href="/dojotoolkit/dojo-1.8.3/dijit/themes/claro/claro.css" media="screen">
<link rel="stylesheet" href="/css/myCSS.css">
<style type="text/css">
	html, body {
		width: 100%; height: 100%; margin: 0; padding: 0; overflow: hidden;
	}
	
	#myform {
		display:inline-block;
		width:100%;
		height:80px;
		background-color:#D6EBFF;		
	}
	
	#logo {
		font:bold 40px 'lucida grande',tahoma,verdana,arial,sans-serif;
		position:absolute;
		top:15px;
		left:20px;
	}
	
	#block {
		position:absolute;
		top:25px;
		left:700px;
		width:100%;	
	}
	
	#borderContainer {
		display:inline-block;
		min-width:100%;
	}
		
	.dj_gecko .claro .dijitTextBox .dijitInputInner, .dj_webkit .claro .dijitTextBox .dijitInputInner, .dj_ie .claro .dijitTextBox .dijitInputInner {
	    padding: 3px;
	    background-color:white !important;
	}
	
	.dj_ie .claro .dijitTextBox .dijitInputInner {
	    padding: 2px;
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
				<div id="logo">phantom</div>
				<div id="block">	
					<input id="fullname"/>
					<input id="email"/>
				    <button id="login"></button>
				</div>
			</form>
    	</div>    	
    	<div id="cp2"></div>
    	<div id="cp3">
    		<div id="email2"></div>
    		<br><br>
			<div id="password"></div>
    	</div> 	
    	<div id="cp4"></div>
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
		require(["dijit/layout/BorderContainer", "dijit/layout/ContentPane", "modules/login", "modules/loginPane", "modules/signup", "dojo/domReady!"], 
		         function(BorderContainer, ContentPane, login, loginPane, signup) {	
					
			var bc = new BorderContainer({
				id:"borderContainer",
				design:"headline",
				gutters:false,
				style:"width: 100%; height: 100%; overflow:hidden"
			}, "borderContainer");
			
			var cp1 = new ContentPane({
				id:"cp1",	           
	            splitter:false, 
	            region:"top",
	            style:"height:80px; padding:0; margin:0",
	           	content:loginPane.getLoginPane()
			});
			bc.addChild(cp1);
			
			var cp2 = new ContentPane({
				id:"cp2",	           
	            splitter:false, 
	            region:"left",
	            style:"width:500px; overflow:hidden",	         
	           	content:"Left Pane"
			});
			bc.addChild(cp2);
			
		 	var cp3 = new ContentPane({
	        	id:"cp3",	            
	            splitter:false, 
	            region:"center", 
	            //style:"width:850px; overflow:hidden",
	            style:"background-color:#A6EBFF; border:solid; padding:0px; margin:0px",
	            content:login.getLoginPane()
	            //content:"<p>what the fuck?</p>" //login.getLoginPane()
	        });
		 	bc.addChild(cp3);	 	
		 	
		 	var cp4 = new ContentPane({
	        	id:"cp4",	            
	            splitter:false, 
	            region:"bottom",
	            style:"background-color:#D6EBFF; overflow:hidden",
	            content:"<p>phantom</p>"
	        });
		 	bc.addChild(cp4);
		 	
			bc.startup();
			
			//signup.getSignupPane();
		});
	</script>
	
</body>
</html>