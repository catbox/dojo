<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Programmatic Form 3</title>
<link rel="stylesheet" href="/dojotoolkit/dojo-1.8.3/dijit/themes/claro/claro.css" media="screen">
<link rel="stylesheet" href="/css/myCSS.css">
</head>
<body class="claro">

<form id="myform">
	<input id="fullname"/>
	<input id="email"/>
    <input id="radioOne"/><label id="radioOneLabel" for="radioOne"></label>
    <input id="radioTwo"/><label id="radioTwoLabel" for="radioTwo"></label>
    <br><br>
    <button id="progButton"></button>
</form>

<script data-dojo-config="async: true" src="/dojotoolkit/dojo-1.8.3/dojo/dojo.js"></script>

<script>
	require(["dojo/dom", "dijit/form/Form", "dijit/form/ValidationTextBox", "dijit/form/RadioButton", 
	         "dijit/form/Button", "dojox/validate/web", "dojo/domReady!"], function(dom, Form, ValidationTextBox, RadioButton, Button) {

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
     
});
</script>
</body>
</html>