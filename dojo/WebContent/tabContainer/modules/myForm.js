define(["dojo/_base/declare", "dojo/dom", "dijit/form/Form", "dijit/form/ValidationTextBox", "dijit/form/RadioButton", 
        "dijit/form/Button", "dojox/validate/web"], 
        function(declare, dom, Form, ValidationTextBox, RadioButton, Button){
	
	return declare("modules.myForm", null, {
		constructor: function() {
			
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
				promptMessage:"Name", 
				missingMessage:"Name is required!"}, "fullname");
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
	        	promptMessage:"Email",
	        	missingMessage:"Email is required!",
	        	invalidMessage:"Incorrect email format!"}, "email");
		    email.startup();
		    
		    // Radio Button - Tea
	        var radioOne = new RadioButton({
	        	id:"radioOne",
	        	name:"drink",
	        	type:"radio",
	        	checked:true,     	
	            value:"tea"
	        }, "radioOne");
	        radioOne.startup();
	        
			// Radio Button Label - Tea
	        var radioOneLabel = dom.byId("radioOneLabel");
	        radioOneLabel.innerHTML = "Tea";  
			  
	        // Radio Button - Coffee
	        var radioTwo = new RadioButton({
	        	id:"radioTwo",
	        	name:"drink",
	        	type:"radio",
	            checked:false,    
	            value:"coffee"
	        }, "radioTwo");
	        radioTwo.startup();
	        
	     	// Radio Button Label - Coffee
	        var radioTwoLabel = dom.byId("radioTwoLabel");
	        radioTwoLabel.innerHTML = "Coffee";  
	 		
	        // Submit Button
	        var mySubmit = new Button({
	        	id:"progButton",
	            label:"Submit",
	            type:"submit"
	        }, "progButton");
	        mySubmit.startup();   
	    }
	  });	
	
});