<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Validate Web</title>
<link rel="stylesheet" href="/dojotoolkit/dojo-1.8.3/dijit/themes/claro/claro.css" media="screen">
<link rel="stylesheet" href="/css/myCSS.css">
</head>
<body class="claro">
	
	<h2>Validate email address:</h2>
	<div id="validEmail"></div>
	
	<h2>Validate url:</h2>
	<div id="validWebsite"></div>
	
	<script data-dojo-config="async: true" src="/dojotoolkit/dojo-1.8.3/dojo/dojo.js"></script>
	
	<script>	
		require(["dojo/dom", "dojox/validate/web", "dojo/domReady!"], function(dom, validate){
			
			var someEmail1 = "coco.go.com";
			var test1 = validate.isEmailAddress(someEmail1);
			var result1 = "Is " + someEmail1 + " valid? " + test1;
			
			var someEmail2 = "coco@go.com";
			var test2 = validate.isEmailAddress(someEmail2);
			var result2 = "Is " + someEmail2 + " valid? " + test2;
			
			var validEmail = dom.byId("validEmail");
			validEmail.innerHTML = result1 + "<br>" + result2;
			
			var someWebsite1 = "go";
			var test11 = validate.isUrl(someWebsite1);
			var result11 = "Is " + someWebsite1 + " valid? " + test11;
			
			var someWebsite2 = "www.go.com";
			var test12 = validate.isUrl(someWebsite2);
			var result12 = "Is " + someWebsite2 + " valid? " + test12;
			
			var someWebsite3 = "http://www.go.com";
			var test13 = validate.isUrl(someWebsite3);
			var result13 = "Is " + someWebsite3 + " valid? " + test13;
			
			var someWebsite4 = "https://www.go.com";
			var test14 = validate.isUrl(someWebsite4);
			var result14 = "Is " + someWebsite4 + " valid? " + test14;
			
			var validWebsite = dom.byId("validWebsite");
			validWebsite.innerHTML = result11 + "<br>" + result12 + "<br>" + result13 + "<br>" + result14;
		});
	</script>
	
</body>
</html>