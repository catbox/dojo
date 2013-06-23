<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Password Validator</title>
<link rel="stylesheet" href="/dojotoolkit/dojo-1.8.3/dijit/themes/claro/claro.css" media="screen">
<link rel="stylesheet" href="/css/myCSS.css">
</head>
<body class="claro">

<form id="myform">
	<input id="newpassword"/>
	<input id="verifypassword"/>
	<br><br>
    <button id="progButton"></button>
</form>
	<script>
	    dojoConfig = {
	    	async: true,
	        parseOnLoad: false,
	        locale: 'en'	        
	    };
	</script>
	<script src="/dojotoolkit/dojo-1.8.3/dojo/dojo.js"></script>	
	
	<script>	
	require(["dojo/dom", "dijit/form/Form", "dijit/form/ValidationTextBox",
	         "dijit/form/Button", "dojo/domReady!"], function(dom, Form, ValidationTextBox, Button) {
		
			// The form
			var myForm = new Form({method: "post", action: "formResult/validpwd.jsp"}, "myform");
			myForm.startup();
			myForm.on("submit", function() {
				if(this.validate()) {					
					var formValues = this.getValues();			
					var newpwd = formValues["new password"];
					var vrfpwd = formValues["verify password"];
					
					if(newpwd != vrfpwd) {
						alert("Your password does not match!")
						return false;
					}
					else
						return true;
				}
				else {
					return false;
				}			
			});
			
			// New password	
			var newPassword = new ValidationTextBox({
				id:"newpassword",
				name:"new password", 
				type:"password", 
				required:true,
				maxLength:"50",
				trim:true,
				placeHolder:"Password", 
				promptMessage:"Password", 
				missingMessage:"Password is required!"}, "newpassword");
			newPassword.startup();
			
			// Verify password	
			var verifyPassword = new ValidationTextBox({
				id:"verifypassword",
				name:"verify password", 
				type:"password", 
				required:true,
				maxLength:"50",
				trim:true,
				placeHolder:"Retype your password", 
				promptMessage:"Password", 
				missingMessage:"Password is required!"}, "verifypassword");
			verifyPassword.startup();
			
			 // Submit Button
	        var mySubmit = new Button({
	        	id:"progButton",
	            label:"Submit",
	            type:"submit"
	        }, "progButton");
	        mySubmit.startup();
		
		});
	</script>
</body>
</html>