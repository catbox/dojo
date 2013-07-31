define(["dijit/form/Form", "dojo/dom", "dojo/dom-construct", "dijit/layout/ContentPane", "dijit/form/ValidationTextBox", 
         "dijit/form/Button", "dojox/validate/web"], 
         function(Form, dom, domConstruct, ContentPane, ValidationTextBox, Button) {
		
    return {
    	getSignupPane: function() {
    		
    		// The form
			var signupForm = new Form({
				id:"signupModule-signupForm",
				method:"post", 
				action:"../form/formResult.jsp"}, "signupForm");
			
			signupForm.on("submit", function() {			
				if(this.validate()) {
					return true;
				}
				else {
					return false;
				}			
			});
			
			// Sign up Pane
        	var signupPane = new ContentPane({
				id:"signupModule-signupPane",
				style:"margin:0px; padding:0px;"
			}, "signupPane");
        	
        	var signUpMsgPane = new ContentPane({
				id:"signupModule-signupMsgPane",	           
	            style:"width:700px; margin:0px; padding:0px 0px 10px 0px",
	            content:"<h1>IDM Sign Up</h1><p>This will keep your Dashboard and Portal account in sync</p>"
			});
        	
        	var signUpFieldsPane = new ContentPane({
				id:"signupModule-fieldsPane",	           
	            style:"width:700px; margin:0px; padding:0px"
			});
        	      	
    		// First Name
    		var firstname = new ValidationTextBox({
    			id:"signupModule-firstname",
    			name:"signupModule-firstname",
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
    			id:"signupModule-lastname",
    			name:"signupModule-lastname",
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
				id:"signupModule-signUpEmail",
				name:"signupModule-signUpEmail",
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
			
			// Sign Up Button
	        var signupButton = new Button({
	        	id:"signupModule-SignUpButton",
	            label:"Sign Up",
	            type:"submit"
	        });
	        					
    		// Add the widgets to the fields pane	
			signUpFieldsPane.addChild(firstname);
			signUpFieldsPane.addChild(lastname);
			signUpFieldsPane.addChild(signupemail);
			signUpFieldsPane.addChild(signupButton);
					
    		// Add the widgets to the main pane	
    		signupPane.addChild(signUpMsgPane);
    		signupPane.addChild(signUpFieldsPane);
    		    		
    		var lastNameNode = dom.byId("widget_signupModule-lastname");
    		var lastNameBreakNode = domConstruct.toDom("<br><br>");
			domConstruct.place(lastNameBreakNode, lastNameNode, "after");
			
			var emailNode  = dom.byId("widget_signupModule-signUpEmail");
			var emailBreakNode = domConstruct.toDom("<br><br>");
			domConstruct.place(emailBreakNode, emailNode, "after");
					       	
        }
    };
});