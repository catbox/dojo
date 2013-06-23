<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Declarative Form</title>
<link rel="stylesheet" href="/dojotoolkit/dojo-1.8.3/dijit/themes/claro/claro.css" media="screen">
<link rel="stylesheet" href="/css/myCSS.css">
</head>
<body class="claro">
	<form id="myForm" data-dojo-type="dijit/form/Form" method="post" action="../form/formResult.jsp">
		
		<script type="dojo/on" data-dojo-event="submit">
			if(this.validate()) {
				return true;
			}
			else {
				return false;
			}
		</script>
		
		<table cellpadding="0" cellspacing="5">
			<tr>
				<!--<td valign="top"><strong>First Name </strong></td>-->
				<td><input id="fullname" name="fullname" type="text" required="true"
						   data-dojo-type="dijit/form/ValidationTextBox" placeholder="Name"
						   promptMessage="Name" missingMessage="Name is required!"/></td>				
			</tr>
			<tr>
				<!--<td valign="top"><strong>Website  </strong></td>-->
				<td><input id="website" name="website" type="text" required="true"
					       data-dojo-type="dijit/form/ValidationTextBox" validator="dojox.validate.isUrl"
					       placeholder="Website" promptMessage="Website" missingMessage="Website is required!"
					       invalidMessage="Incorrect website format!"/></td>
			</tr>
			<tr>
				<!--<td valign="top"><strong>Email  </strong></td>-->
				<td><input id="email" name="email" type="text" required="true"
						   data-dojo-type="dijit/form/ValidationTextBox" validator="dojox.validate.isEmailAddress"
					       placeholder="Email" promptMessage="Email" missingMessage="Email is required!"
					       invalidMessage="Incorrect email format!"/></td>
			</tr>
			<tr>
				<!--<td valign="top"><strong>Birthday  </strong></td>-->
				<td><input id="birthday" name="birthday" type="text" required="true"
						   data-dojo-type="dijit/form/DateTextBox" placeholder="Birthday" promptMessage="Birthday"
						   missingMessage="Birthday is required! Use the drop down to select your birthday"
						   invalidMessage="Incorrect birthday format!"/></td>
			</tr>
		</table>
		
		<button id="signup" data-dojo-type="dijit/form/Button" type="submit">Sign up</button>
		<button id="reset" data-dojo-type="dijit/form/Button" type="reset">Reset</button>
		
		<!-- 	
		    before: places tooltip to the left of the target node/widget, or to the right in the case of RTL scripts like Hebrew and Arabic
		    after: places tooltip to the right of the target node/widget, or to the left in the case of RTL scripts like Hebrew and Arabic
		    above: tooltip goes above target node
		    below: tooltip goes below target node		
		-->
		<div data-dojo-type="dijit/Tooltip" data-dojo-props="connectId:'signup',position:['below']">
	    	All fields are mandatory
		</div>			
	</form>
	
	<script data-dojo-config="async: true" src="/dojotoolkit/dojo-1.8.3/dojo/dojo.js"></script>
	
	<script>
		require(["dojo/parser", "dijit/form/Form", "dojox/validate/web", "dijit/form/ValidationTextBox", 
		         "dijit/form/DateTextBox", "dijit/form/Button", "dijit/Tooltip", "dojo/domReady!"], 
		         function(parser) {
	    	parser.parse(); 	
		});
	</script>
	
</body>
</html>