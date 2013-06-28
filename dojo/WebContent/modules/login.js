define(["dijit/form/Form", "dijit/layout/LayoutContainer", "dijit/layout/ContentPane", "dijit/form/ValidationTextBox", 
         "dijit/form/Button", "dojox/validate/web"], 
         function(Form, LayoutContainer, ContentPane, ValidationTextBox, Button) {

    return {
    	getLoginPane: function() {
    		
    		
    		   		
    		var loginPane = new ContentPane({
				id:"loginPane",
				region:"right",
				style: "width:550px; margin:0px; padding:0px; border-style:solid; border-width:1px; float:right;"
			});
			//loginPane.startup();
    		
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
	        	tooltipPosition:['below']});
		    //email.startup();
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
	        	tooltipPosition:['below']});
			//password.startup();
		    loginPane.addChild(password);
		    
	        // Submit Button
	        var mySubmit = new Button({
	        	id:"login",
	            label:"Login",
	            type:"submit"
	        });
	        //mySubmit.startup();
	        loginPane.addChild(mySubmit);
	        
	       
	        var loginPane = new ContentPane({
				id:"loginPane",
				region:"right",
				style: "width:550px; margin:0px; padding:0px; border-style:solid; border-width:1px; float:right;"
			});
	        
	        
	        var logoPane = new LayoutContainer({
				id:"logoPane",
				style: "width:100%; height:80%; margin:0px; padding:0px;"
			});
	        layoutPane.addChild(loginPane);
	        
	        return myForm;
	        
	        /*
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
	        	tooltipPosition:['below']}, "email");
		    email.startup();
		    
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
	        	tooltipPosition:['below']}, "password");
			password.startup();
		    
	        // Submit Button
	        var mySubmit = new Button({
	        	id:"login",
	            label:"Login",
	            type:"submit"
	        }, "login");
	        mySubmit.startup();
	        
	        return myForm;
	        */
	        
        }
    };
});