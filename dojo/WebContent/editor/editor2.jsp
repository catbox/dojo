<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Editor 2</title>
<link rel="stylesheet" href="/dojotoolkit/dojo-1.8.3/dijit/themes/claro/claro.css">
<link rel="stylesheet" href="/css/myCSS.css">
</head>
<body class="claro">
	<div id="editorPane"></div>
	<div id="message"></div>
	<script>
	    dojoConfig = {
	    	async:true,
	        parseOnLoad:false,
	        locale:'en'	        
	    };
	</script>
	<script src="/dojotoolkit/dojo-1.8.3/dojo/dojo.js" charset="utf-8" type="text/javascript"></script>		
	<script>	
		require(["dijit/layout/ContentPane", "dijit/Editor", "dijit/_editor/plugins/AlwaysShowToolbar", "dijit/form/Button", "dojo/dom", "dojo/domReady!"], 
				function(ContentPane, Editor, AlwaysShowToolbar, Button, dom) {
			
			// Editor Pane
			var editorPane = new ContentPane({
				id:"editorPane",	           
	            style:"width:750px;}",
			}, "editorPane");
			
			// Editor
			var editor = new Editor({
				id:'ceditor',
				name:'ceditormsg',
				height:'',
				style:'width:500px; margin:0px 0px 10px; 0px',
				plugins:['undo', 'redo', '|', 'bold', 'italic', 'underline', 'removeFormat', '|', 'insertOrderedList', 'insertUnorderedList', '|', 'indent', 'outdent', '|', 'justifyLeft', 'justifyCenter', 'justifyRight', 'justifyFull', '|', 'delete'],
	            extraPlugins:[AlwaysShowToolbar]
	        });
			editorPane.addChild(editor);
			
			// Send Button
			var sendBtn = new Button({
	        	id:"sendBtn",
	            label:"Send",
	            style:"margin:0; padding:0px;",
	            onClick: function() { 
	            	var msgtosend = editor.get("value");	            
		            var msg = dom.byId("message");
					msg.innerHTML = "<h2>Message:</h2>" + msgtosend;	
	            }
	        });
			editorPane.addChild(sendBtn);
	
			// Launch
		 	editorPane.startup();
				 	
		});
	</script>	
</body>
</html>