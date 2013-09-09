define(["dojo/dom", "dijit/form/Form", "dojo/request", "dojo/dom-form", "dijit/layout/ContentPane", "dijit/form/ValidationTextBox", 
         "dijit/form/Button", "dojox/validate/web"], 
         function(dom, Form, request, domForm, ContentPane, ValidationTextBox, Button) {

    return {
    	getLoginPane: function() {
    		
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
	                       
	        // The form
			var loginForm = new Form({
				id:"loginModule-loginForm",
				method:"post",
				action:""
				}, "loginForm");
			
			loginForm.on("submit", function(evt) {			
				if(loginForm.validate()) {

					evt.stopPropagation();
					evt.preventDefault();
					
					var eml = domForm.fieldToObject(dom.byId("loginModule-loginForm").email);
					var pwd = domForm.fieldToObject(dom.byId("loginModule-loginForm").password);
					var lang = "ES";					
					var validatorResponse = "ERR";
					
					// Post the data to the server
					request.post("../form/formValidator/dog.jsp", {
						// Send the user name, password and language
						data: {
				            email:eml,
				            password:pwd,
				            language:lang
				        },
				        
						// Time out after 5 seconds
						timeout: 5000
					}).then(function(response) {
						
						validatorResponse = response;
												
						if(validatorResponse == "OK") {
							// Redirect the page
							window.location.assign("../form/formValidator/welcome.jsp");						
						}
						else {	
							// Update the error message of the login action
							dom.byId('errormsg').innerHTML = "Error: " + validatorResponse;	
						}					
					});
					
					/*
					if(validatorResponse != "OK") {

						evt.stopPropagation();
						evt.preventDefault();
					}
					*/
					
					return true;
				}
				else {
					
					return false;
				}			
			});
        }
    };
});