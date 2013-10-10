<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Editor 3</title>
<link rel="stylesheet" href="/dojotoolkit/dojo-1.8.3/dijit/themes/claro/claro.css">
<link rel="stylesheet" href="/css/myCSS.css">
</head>
<body class="claro">
	<div id="rmsg1" class="rmsg">Reply 1</div>
	<div id="rmsg2" class="rmsg">Reply 2</div>
	<div id="rmsg3" class="rmsg">Reply 3</div>
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
		require(["dojo/on", "dojo/_base/window", "dijit/layout/ContentPane", "dijit/Editor", "dijit/_editor/plugins/AlwaysShowToolbar", "dijit/form/Button", "dojo/dom", "dojo/dom-construct", "dojo/domReady!"], 
				function(on, win, ContentPane, Editor, AlwaysShowToolbar, Button, dom, domConstruct) {
			
			on(win.doc, ".rmsg:click", function(evt) {		            
	        	var replyMsgId = evt.target.id;	        	
	        	var editorPlaceHolderId = replyMsgId + "-editor-placeholder";
	        	var editorPlaceHolderStrNode = null;
	        	
	        	console.log("Editor Id: " + editorPlaceHolderId);
	        	
	        	if(dom.byId(editorPlaceHolderId) == null) {
	        		
	        		
	        		var editorPlaceHolderStrNode = "<div id=" + editorPlaceHolderId + ">test</div>";
	        		var editorPlaceHolderNode = domConstruct.toDom(editorPlaceHolderStrNode);
					
	        		
	        		domConstruct.place(editorPlaceHolderNode, replyMsgId, "after");
					
					//createEditor(editorNodeId);
					
					
	        	}
	        });
			
			function createEditor(nodeId) {
				
				// Editor Pane
				var editorPaneId = node + "pane";			
				var editorPane = new ContentPane({
					id:editorPaneId,	           
		            style:"width:750px;}",
				}, nodeId);
				
				// Editor
				var editorId = editorPaneId
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
		
				// Cancel Button
				var cancelBtn = new Button({
		        	id:"cancelBtn",
		            label:"Cancel",
		            style:"margin:0px 0px 0px 10px; padding:0px;",
		            onClick: function() { 
		            	var msgtosend = editor.get("value");	            
			            var msg = dom.byId("message");
						msg.innerHTML = "<h2>Message:</h2>" + msgtosend;	
		            }
		        });
				editorPane.addChild(cancelBtn);
				
				// Launch
			 	//editorPane.startup();
			}		 	
		});
		
	</script>	
</body>
</html>