<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Get Reload</title>
<link rel="stylesheet" href="/dojotoolkit/dojo-1.8.3/dijit/themes/claro/claro.css" media="screen">
<link rel="stylesheet" href="/css/myCSS.css">
<style>
	#myinline div {
		display: inline-block;
		width: 60px;
	}
</style>

</head>
<body class="claro">
	<div id="morningGreeting"></div>
	<div id="eveningGreeting"></div>
	<div id="nightGreeting"></div>
	<br>
	<div id="myinline">
		<div id="enlink"></div>
		<div id="frlink"></div>
		<div id="eslink"></div>
	</div>
	
	<script>
	    var ln = "en";
	    var languageSetting = getLanguage("language");
	    if (languageSetting != null) {
	      ln = languageSetting;
	    }
		
	    dojoConfig = {
	    	async: true,
	        parseOnLoad: false,
	        locale: ln,
	        packages: [ {
	    		name: 'nls',
	    		//location: location.pathname.replace(/\/[^/]+$/, '') + '/nls'
	    		location: "../../../dojo/i18n/nls"
	    	}]
	    };
	    
	    function getLanguage(name) {
	    	name = name.replace(/[\[]/,"\\\[").replace(/[\]]/,"\\\]");
	      	var regexS = "[\\?&]"+name+"=([^&#]*)";
	      	var regex = new RegExp(regexS);
	      	var results = regex.exec(window.location.href);
	      	if( results == null )
	        	return "";
	      	else
	        	return results[1];
	    }
	</script>
	
	<script src="/dojotoolkit/dojo-1.8.3/dojo/dojo.js"></script>	
	
	<script>	
		require(["dojo/dom", "dojo/dom-construct", "dojo/i18n!nls/translation", "dojo/domReady!"], function(dom, domConstruct, i18n){
			
			// Greeting Translations
			var morningGreeting = dom.byId("morningGreeting");
			morningGreeting.innerHTML = i18n.morningMessage;
			
			var eveningGreeting = dom.byId("eveningGreeting");
			eveningGreeting.innerHTML = i18n.eveningMessage;
			
			var nightGreeting = dom.byId("nightGreeting");
			nightGreeting.innerHTML = i18n.nightMessage;
			
			// Link Translations
			var enlink = dom.byId("enlink");
			var en = i18n.english;
			var enLinkNode = domConstruct.toDom("<a href='getreload.jsp?language=en'>" + en + "</a>");
			domConstruct.place(enLinkNode, enlink);

			var frlink = dom.byId("frlink");
			var fr = i18n.french;
			var frLinkNode = domConstruct.toDom("<a href='getreload.jsp?language=fr'>" + fr + "</a>");
			domConstruct.place(frLinkNode, frlink);

			var eslink = dom.byId("eslink");
			var es = i18n.spanish;
			var esLinkNode = domConstruct.toDom("<a href='getreload.jsp?language=es'>" + es + "</a>");
			domConstruct.place(esLinkNode, eslink);
		});
	</script>
	
</body>
</html>