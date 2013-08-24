<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Programmatic Form 4</title>
<link rel="stylesheet" href="/dojotoolkit/dojo-1.8.3/dijit/themes/claro/claro.css" media="screen">
<link rel="stylesheet" href="/css/myCSS.css">
<style type="text/css">

html, body {
	width: 100%; height: 100%; margin:0; padding:0; overflow:hidden;
}

#myform {
	width:100%;
	height:80px;
	background-color:#D6EBFF;
}

#logo {
	font:bold 40px 'lucida grande',tahoma,verdana,arial,sans-serif;
	position:absolute;
	top:15px;
	left:20px;
}

#block {
	position:absolute;
	top:25px;
	left:700px;
	width:100%;
}


.dj_gecko .claro .dijitTextBox .dijitInputInner, .dj_webkit .claro .dijitTextBox .dijitInputInner, .dj_ie .claro .dijitTextBox .dijitInputInner {
    padding: 3px;
    background-color:red;
}

.dijitPlaceHolder {
    font-style: normal;
    left: 5px;
	color: #B8B8B8;
    position: absolute;
    top: 3px;
}

.claro .dijitValidationTextBoxError .dijitValidationContainer {
  background-color: #d46464;
  background-image: url("../images/error.png");
  background-position: top center;
  border: solid #d46464 0;
  width: 9px;
  height: 27px;
}

.dj_ie .claro .dijitValidationTextBoxError .dijitValidationContainer {
  background-color: #d46464;
  background-image: url("../images/error.png");
  background-position: top center;
  border: solid #d46464 0;
  width: 9px;
  height: 26px;
}
</style>
</head>
<body class="claro">

<form id="myform">
	<div id="logo">phantom</div>
	<div id="block">	
		<input id="fullname"/>
		<input id="email"/>
	    <button id="login"></button>
    </div>
</form>
<div id="content">

</div>

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
			missingMessage:"Name is required!",
			tooltipPosition:['below']
			}, "fullname");
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
        	invalidMessage:"Incorrect email format!",
        	tooltipPosition:['below']
        	}, "email");
	    email.startup();
	    
        // Submit Button
        var mySubmit = new Button({
        	id:"login",
            label:"Login",
            type:"submit"
        }, "login");
        mySubmit.startup();   
     
});
</script>
</body>
</html>