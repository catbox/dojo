define(["dojo/dom", "dojo/dom-construct", "dijit/layout/ContentPane", "dijit/form/ValidationTextBox", 
         "dijit/form/Button", "dojox/validate/web"], 
         function(dom, domConstruct, ContentPane, ValidationTextBox, Button) {
		
    return {
    	getSignupPane: function() {
    		
        	var signupPane = new ContentPane({
				id:"signupPane",
				style:"margin:10px; padding:0px;"
			}, "cp3");
        	
        	var signUpMsgPane = new ContentPane({
				id:"signupmsg",	           
	            style:"width:700px; margin:0px; padding:0px 0px 10px 0px",
	            content:"<h1>Sign Up</h1><p>It's free and always will be.</p>"
			});
        	
        	var fieldsPane = new ContentPane({
				id:"fieldspane",	           
	            style:"width:700px; margin:0px; padding:0px"
			});
        	      	
    		// First Name
    		var firstname = new ValidationTextBox({
    			id:"firstname",
    			name:"firstname",
    			type:"text", 
    			required:true,
    			maxLength:"50",
            	trim:true,
            	//lowercase:true,
            	//regExp:"[a-z0-9._%+-]+@[a-z0-9-]+\.[a-z]{2,4}",
            	placeHolder:"First Name",
            	promptMessage:"First Name",
            	missingMessage:"First Name is required",
            	style:"width:175px; margin-right:10px; padding:0px",
            	tooltipPosition:['below']});    		
    		
    		// Last Name
    		var lastname = new ValidationTextBox({
    			id:"lastname",
    			name:"lastname",
    			type:"text", 
    			required:true,
    			maxLength:"50",
            	trim:true,
            	//lowercase:true,
            	//regExp:"[a-z0-9._%+-]+@[a-z0-9-]+\.[a-z]{2,4}",
            	placeHolder:"Last Name",
            	promptMessage:"Last Name",
            	missingMessage:"Last Name is required",
            	style:"width:175px; margin:0px; padding:0px",
            	tooltipPosition:['below']});  
    		
    		// Email
			var signupemail = new ValidationTextBox({
				id:"signup-email",
				name:"signup-email",
				type:"text", 
				required:true,
				maxLength:"50",
	        	trim:true,
	        	lowercase:true,
	        	regExp:"[a-z0-9._%+-]+@[a-z0-9-]+\.[a-z]{2,4}",
	        	placeHolder:"Email",
	        	missingMessage:"Email is required",
	        	style:"width:362px; margin:0px; padding:0px",
	        	invalidMessage:"Incorrect email format",
	        	tooltipPosition:['below']});
		    
    		
    		// Add the widgets to the fields pane	
    		fieldsPane.addChild(firstname);
    		fieldsPane.addChild(lastname);
    		fieldsPane.addChild(signupemail);
    		
    		// Add the widgets to the main pane	
    		signupPane.addChild(signUpMsgPane);
    		signupPane.addChild(fieldsPane);
    						
    		var signupEmailNode  = dom.byId("widget_lastname");
    		var breakNode = domConstruct.toDom("<br><br>");
			domConstruct.place(breakNode, signupEmailNode, "after");
						
        	return signupPane;
        	
        }
    };
});