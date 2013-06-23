<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>index</title>
<link rel="stylesheet" href="/dojotoolkit/dojo-1.8.3/dijit/themes/claro/claro.css" media="screen">
<link rel="stylesheet" href="/css/myCSS.css">
</head>
<body class="claro">
	<div id="cp">
		<div id="email"></div>
		<div id="password"></div>
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
		require(["dojo/dom", "dojo/dom-construct", "dijit/layout/ContentPane", "dijit/form/ValidationTextBox", 
		         "dijit/form/Button", "dojox/validate/web", "dojo/domReady!"], 
		         function(dom, domConstruct, ContentPane, ValidationTextBox, Button) {
			
			var loginPane = new ContentPane({
				id:"loginPane",	           
	            //splitter:false, 
	            style:"width:750px; border-style:solid;}",
	            content:"<div>hello world!</div>"
			}, "cp");
			
			// Email
    		var email = new ValidationTextBox({
    			id:"email",
    			name:"email",
    			type:"text", 
    			required:true,
    			maxLength:"50",
            	trim:true,
            	lowercase:true,
            	regExp:"[a-z0-9._%+-]+@[a-z0-9-]+\.[a-z]{2,4}",
            	placeHolder:"Email",
            	promptMessage:"Email",
            	missingMessage:"Email is required!",
            	invalidMessage:"Incorrect email format!",
            	style:"margin:0"});  
			
    		// Password
    		var password = new ValidationTextBox({
    			id:"password2",
    			name:"password",
    			type:"password", 
    			required:true,
    			maxLength:"50",
            	trim:true,
            	lowercase:true,
            	//regExp:"[a-z0-9._%+-]",
            	placeHolder:"Password",
            	promptMessage:"Password",
            	missingMessage:"Password is required! Really :)",
            	invalidMessage:"Incorrect password format!",
            	style:"margin:0"});
		
			// Add the input fields to the content pane
    		loginPane.addChild(email);
			loginPane.addChild(password);			
			
			

			
			var e  = dom.byId("widget_email");
			//alert("email: " + email);
			
			var someNewNode = domConstruct.toDom("<br><br>");
			domConstruct.place(someNewNode, e, "after");
			
			loginPane.startup();
			
		});
	</script>	
</body>
</html>