define(["dijit/form/Form", "dijit/layout/ContentPane", "dijit/form/ValidationTextBox", 
         "dijit/form/Button", "dojox/validate/web"], 
         function(Form, ContentPane, ValidationTextBox, Button) {

    return {
    	getLoginPane: function() {

    		// Login Pane
    		var loginPane = new ContentPane({
				id:"loginPane",
				style:"width:430px; margin-left:300px; padding:0px;"
			},"loginpane");
    		
    		// The form
			var myForm = new Form({method: "post", action: "../form/formResult.jsp"}, "myform");
			myForm.startup();
			myForm.on("submit", function() {
				if(this.validate()) {
					return true;
				}
				else {
					return false;
				}			
			});
			
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
	        	missingMessage:"Email is required",
	        	invalidMessage:"Incorrect email format",
	        	style:"width:175px; margin-right:5px; padding:0px",
	        	tooltipPosition:['below']});
		    loginPane.addChild(email);
		    
		    // Password
			var password = new ValidationTextBox({
				id:"password",
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
	        	style:"width:175px; margin-right:5px; padding:0px",
	        	tooltipPosition:['below']});
		    loginPane.addChild(password);
		    
	        // Submit Button
	        var mySubmit = new Button({
	        	id:"login",
	            label:"Login",
	            type:"submit"
	        });
	        loginPane.addChild(mySubmit);
	        	        
	        return myForm; 
        }
    };
});