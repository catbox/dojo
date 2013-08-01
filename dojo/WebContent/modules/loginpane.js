define(["dijit/form/Form", "dijit/layout/ContentPane", "dijit/form/ValidationTextBox", 
         "dijit/form/Button", "dojox/validate/web"], 
         function(Form, ContentPane, ValidationTextBox, Button) {

    return {
    	getLoginPane: function() {
    		
    		// The form
			var loginForm = new Form({
				id:"loginModule-loginForm",
				method:"post", 
				action:"../form/formResult.jsp"}, "loginForm");
			
			loginForm.on("submit", function() {			
				if(this.validate()) {
					return true;
				}
				else {
					return false;
				}			
			});
  		
    		// Login Pane
    		var loginPane = new ContentPane({
				id:"loginModule-loginPane"
			},"loginPane");
    		
    		// Login Field
    		var loginFields = new ContentPane({
				id:"loginModule-loginFields",	           
	            style:"width:430px; max-width:430px; margin:0px; padding:5px; border-style:solid; border-width:1px; border-color:#AAAAAA; float:right;"
			});
    		
			// Email Field
			var email = new ValidationTextBox({
				id:"loginModule-emailField",
				name:"email",
				type:"text", 
				required:true,
				maxLength:"50",
	        	trim:true,
	        	lowercase:true,
	        	regExp:"[a-z0-9._%+-]+@[a-z0-9-]+\.[a-z]{2,4}",
	        	placeHolder:"Email",
	        	missingMessage:"Email is required",
	        	invalidMessage:"Incorrect email format",
	        	style:"width:175px; margin-right:5px; padding:0px",
	        	tooltipPosition:['below']});
			loginFields.addChild(email);
		    
		    // Password Field
			var password = new ValidationTextBox({
				id:"loginModule-passwordField",
				name:"password",
				type:"password", 
				required:true,
				maxLength:"50",
	        	trim:true,
	        	lowercase:true,
	        	//regExp:"[a-z0-9._%+-]",
	        	placeHolder:"Password",
	        	missingMessage:"Password is required",
	        	invalidMessage:"Incorrect password format",
	        	style:"width:175px; margin-right:5px; padding:0px",
	        	tooltipPosition:['below']});
			loginFields.addChild(password);
		    
	        // Submit Button
	        var mySubmit = new Button({
	        	id:"loginModule-loginButton",
	            label:"Login",
	            type:"submit"
	        });
	        loginFields.addChild(mySubmit);
	        
	        // Add the login fields to the login pane
	        loginPane.addChild(loginFields);
        }
    };
});