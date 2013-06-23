define(["dijit/form/Form", "dijit/form/ValidationTextBox", 
         "dijit/form/Button", "dojox/validate/web"], 
         function(Form, ValidationTextBox, Button, login) {
		
    // This returned object becomes the defined value of this module
    return {
    	getLoginPane: function() {
    		
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
			
			// Fullname	
			var fullName = new ValidationTextBox({
				id:"fullname",
				name:"fullname", 
				type:"text", 
				required:true,
				maxLength:"50",
				trim:true,
				placeHolder:"Name", 
				//promptMessage:"Name", 
				missingMessage:"Name is required",
				tooltipPosition:['below']}, "fullname");
			fullName.startup();
			
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
	        	//promptMessage:"Email",
	        	missingMessage:"Email is required",
	        	invalidMessage:"Incorrect email format",
	        	tooltipPosition:['below']}, "email");
		    email.startup();
		    
	        // Submit Button
	        var mySubmit = new Button({
	        	id:"login",
	            label:"Login",
	            type:"submit"
	        }, "login");
	        mySubmit.startup();
	        
	        return myForm;
        }
    };
});