<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Textarea</title>
<link rel="stylesheet" href="/dojotoolkit/dojo-1.8.3/dijit/themes/claro/claro.css" media="screen">
<link rel="stylesheet" href="/css/myCSS.css">
<style type="text/css">
	.dijitPlaceHolder {
	    font-style: normal;
	    left: 15px;
		color: #B8B8B8;
	    position: absolute;
	    top: 15px;
}
</style>
</head>
<body class="claro">
	<div id="mytextarea"></div>
	<script>
	    dojoConfig = {
	    	async: true,
	        parseOnLoad: false,
	        locale: 'en'	        
	    };
	</script>
	<script src="/dojotoolkit/dojo-1.8.3/dojo/dojo.js"></script>	
	
	<script>
		require(["dijit/form/Textarea", "dojo/domReady!"], function(Textarea) {
	        var textarea = new Textarea({
	        	id:"mytextarea",
	            name:"mytextarea",
	            type:"text",
	            style:"width:300px;"
	        }, "mytextarea");
	        
	        // The placeHolder is defined using the set method otherwise it does not work in ie
	        textarea.set("placeHolder", "What's on your mind?");
	        textarea.startup();	   
		});
	</script>
</body>
</html>