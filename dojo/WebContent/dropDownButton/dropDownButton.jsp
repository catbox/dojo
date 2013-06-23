<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Drop Down Button</title>
<link rel="stylesheet" href="/dojotoolkit/dojo-1.8.3/dijit/themes/claro/claro.css" media="screen">
<link rel="stylesheet" href="/css/myCSS.css">
</head>
<body class="claro">
	<div id="morningGreeting"></div>
	<div id="eveningGreeting"></div>
	<div id="nightGreeting"></div>
	<br>
    <div id="dropDownButton"></div>
    
   <script>
	    var ln = "en";
	    var languageSetting = getLanguage("language");
	    if(!(languageSetting == null || languageSetting == "")) {
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
		require(["dijit/form/DropDownButton", "dijit/DropDownMenu", "dijit/MenuItem", "dojo/i18n!nls/translation", "dojo/dom", "dojo/domReady!"],
		        function(DropDownButton, DropDownMenu, MenuItem, i18n, dom){
		    
			// Greeting Translations
			var morningGreeting = dom.byId("morningGreeting");
			morningGreeting.innerHTML = i18n.morningMessage;
			
			var eveningGreeting = dom.byId("eveningGreeting");
			eveningGreeting.innerHTML = i18n.eveningMessage;
			
			var nightGreeting = dom.byId("nightGreeting");
			nightGreeting.innerHTML = i18n.nightMessage;
			
			// Button with drop down menu
			var menu = new DropDownMenu({ style: "display: none;"});
		    
			var en = i18n.english;
		    var menuItem1 = new MenuItem({
		        label: en,
		        onClick: function() {
		        	 window.location.assign("dropDownButton.jsp?language=en");
		        }
		    });
		    menu.addChild(menuItem1);
		
		    var fr = i18n.french;
		    var menuItem2 = new MenuItem({
		        label: fr,
		        onClick: function(){
		        	window.location.assign("dropDownButton.jsp?language=fr");}
		    });
		    menu.addChild(menuItem2);
		    
		    var es = i18n.spanish;
		    var menuItem3 = new MenuItem({
		        label: es,
		        onClick: function(){
		        	window.location.assign("dropDownButton.jsp?language=es");
		        }
		    });
		    menu.addChild(menuItem3);
		
		    var button = new DropDownButton({
		        label: "Language",
		        name: "Language",
		        dropDown: menu,
		        id: "progButton"
		    });
		    dom.byId("dropDownButton").appendChild(button.domNode);
		    
		});
</script>
</body>
</html>