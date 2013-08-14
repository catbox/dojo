<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>XHR Form</title>
<link rel="stylesheet" href="/dojotoolkit/dojo-1.8.3/dijit/themes/claro/claro.css" media="screen">
<link rel="stylesheet" href="/css/myCSS.css">
<style>
	label{
		display: inline-block;
		width: 115px;
	}
	#resultDiv div, #formNode div{
		margin-bottom: 5px;
	}
</style>
</head>
<body class="claro">
	<h1>XHR Form Validator</h1>
	
	<form id="formNode">
		<div><label>Username: </label><input type="text" name="username" /></div>
		<div><label>Password: </label><input type="password" name="password" /></div>
		<button type="submit">Login</button>
	</form>
	<br>
	<i>A valid password is the reverse of the username.</i>
	<br><br>
	<div id="resultDiv">
		<b>Server Message: </b><span id="svrMessage"></span>
	</div>
	<script>
	    dojoConfig = {
	    	async: true,
	        parseOnLoad: false,
	        locale: 'en'	        
	    };
	</script>
	<script src="/dojotoolkit/dojo-1.8.3/dojo/dojo.js"></script>	
	<script>
		require(["dojo/dom", "dojo/on", "dojo/request", "dojo/dom-form"],
			function(dom, on, request, domForm) {

				var form = dom.byId('formNode');

				// Attach the onsubmit event handler of the form
				on(form, "submit", function(evt) {

					// prevent the page from navigating after submit
					evt.stopPropagation();
					evt.preventDefault();

					// Post the data to the server
					request.post("authenticator.jsp", {
						// Send the username and password
						//data: domForm.toObject("formNode"),
						data: domForm.toObject(form),
						/*
						data: {
				            username: "blue",
				            password: "eulb"
				        },
				        */
						// Time out after 5 seconds
						timeout: 5000
					}).then(function(response){
						dom.byId('svrMessage').innerHTML = response;
					});
				});
			}
		);
	</script>
</body>
</html>
