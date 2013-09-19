define(["dojo/on", "dojo/dom", "dojo/mouse", "dijit/form/Form", "dojo/request", "dojo/dom-form", "dijit/layout/ContentPane", "dijit/form/ValidationTextBox", 
        "dijit/form/Button", "dijit/TooltipDialog", "dijit/popup", "dojox/validate/web", "dojo/query"], 
        function(on, dom, mouse, Form, request, domForm, ContentPane, ValidationTextBox, Button, TooltipDialog, popup) {

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
	        	//missingMessage:"Email is required",
	        	//invalidMessage:"Incorrect email format",
	        	missingMessage:"",
	        	invalidMessage:"",
	        	style:"width:175px; margin-right:5px; padding:0px"
			});
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
	        	missingMessage:"",
	        	invalidMessage:"",
	        	style:"width:175px; margin-right:5px; padding:0px"
			});
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
	                                
	        // The form - Definition
			var loginForm = new Form({
				id:"loginModule-loginForm",
				method:"post",
				action:""
				}, "loginForm");
			
			// The form - Submit
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

					return true;
				}
				else {
					// Give focus the submit button			
					mySubmit.focus();
					
					return false;
				}			
			});
			
			// Tool tip Dialog
			var myTooltipDialog = new TooltipDialog({
	            id:'myTooltipDialog'
		    });
	
			// The email node
	        var thenode = dom.byId("widget_loginModule-emailField");
	        
	        // Mouse in - open the tool tip dialog
	        on(thenode, mouse.enter, function(evt) {
	        	
	        	var emailState = email.get("state");
	        	  		
	        	if(emailState == "Error" || emailState == "Incomplete") {	
	        		
	        		var emailValue = email.get("value");
	        		
	        		if(isBlank(emailValue)) {	        			
	        			myTooltipDialog.setContent("Email is required");
			        	popup.open({
			                popup: myTooltipDialog,
			                around: thenode
			            });	        			
	        		}
	        		else {		
	        			myTooltipDialog.setContent("Incorrect email format");
			        	popup.open({
			                popup: myTooltipDialog,
			                around: thenode
			            });		        			        			
	        		}	        		
	        	}
	        });
	        
	        // Mouse out - close the tool tip dialog
	        on(thenode, mouse.leave, function(evt) {
	        	popup.close(myTooltipDialog);
	        });
	                
	        // The password node
	        var pwdnode = dom.byId("widget_loginModule-passwordField");
	        
	        // Mouse in - open the tool tip dialog
	        on(pwdnode, mouse.enter, function(evt) {
	        	
	        	var pwdState = password.get("state");
	        	  		
	        	if(pwdState == "Error") {	
	        		
	        		var pwdValue = password.get("value");
	        		
	        		if(isBlank(pwdValue)) {	        			
	        			myTooltipDialog.setContent("Password is required");
			        	popup.open({
			                popup: myTooltipDialog,
			                around: pwdnode
			            });	        			
	        		}
	        		else {		
	        			myTooltipDialog.setContent("Incorrect password format");
			        	popup.open({
			                popup: myTooltipDialog,
			                around: pwdnode
			            });		        			        			
	        		}	        		
	        	}
	        });
	        
	        // Mouse out - close the tool tip dialog
	        on(pwdnode, mouse.leave, function(evt) {
	        	popup.close(myTooltipDialog);
	        });
	        
	        // Check if a string is null, empty or is only white spaces
	        function isBlank(pString) {
	            if (!pString || pString.length == 0) {
	                return true;
	            }
	            return !/[^\s]+/.test(pString);
	        }
        }
    };
});