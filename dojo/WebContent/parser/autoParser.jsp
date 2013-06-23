<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Auto Parser</title>
<link rel="stylesheet" href="/css/myCSS.css">
<link rel="stylesheet" href="/dojotoolkit/dojo-1.8.3/dijit/themes/claro/claro.css" media="screen">
</head>
<body class="claro">
	<form data-dojo-type="dijit/form/Form">
	  <table>
	    <tbody>
	      <tr>
	        <td><label for="field1">Name</label></td>
	        <td><input type="text" name="field1" data-dojo-type="dijit/form/TextBox" /></td>
	      </tr>
	      <tr>
	        <td><label for="field2">Password</label></td>
	        <td><input type="password" name="field2" data-dojo-type="dijit/form/TextBox" /></td>
	      </tr>
	    </tbody>
	  </table>
	  <button type="submit" data-dojo-type="dijit/form/Button">Login</button>
	</form>
	
	<!-- 
		Dojo's recommendation: parseOnLoad should be left to false (this is the default setting).
		Explicitly require dojo/parser and call parser.parse(). 
	 -->
	<script data-dojo-config="async: true, parseOnLoad: true" src="/dojotoolkit/dojo-1.8.3/dojo/dojo.js"></script>		
	
	<script>
		require(["dojo/parser", "dijit/form/Form", "dijit/form/TextBox", "dijit/form/Button", "dojo/domReady!"], function(){
		});
	</script>
	
</body>
</html>