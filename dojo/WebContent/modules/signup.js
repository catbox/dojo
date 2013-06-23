define(["dijit/form/ValidationTextBox", 
         "dijit/form/Button", "dojox/validate/web"], 
         function(ValidationTextBox, Button) {
		
	return {
    	getLoginPane: function() {
    		
        	var lg = getSignupPane2();
    		
        	return lg;
        	
        },
	
		getSignupPane: function() {
	
			// Email
			var email2 = new ValidationTextBox({
				id:"email2",
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
			email2.placeAt("email2");
			
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
	        	style:"margin:0"});
			password.placeAt("password");
	 	
	    }
    };
    
    function getSignupPane2() {
    	var lg = "peeker!";
    	return lg;
    }

    	
});