<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Editor</title>
<link rel="stylesheet" href="/dojotoolkit/dojo-1.8.3/dijit/themes/claro/claro.css">
<link rel="stylesheet" href="/css/myCSS.css">
</head>
<body class="claro">
	<div id='editor'></div>
	<br>
	<div id='customedEditor'></div>
	<script>
	    dojoConfig = {
	    	async:true,
	        parseOnLoad:false,
	        locale:'en'	        
	    };
	</script>
	<script src="/dojotoolkit/dojo-1.8.3/dojo/dojo.js" charset="utf-8" type="text/javascript"></script>		
	<script>	
		require(["dijit/Editor", "dijit/_editor/plugins/AlwaysShowToolbar", "dojo/dom", "dojo/query", "dojo/domReady!"], 
				function(Editor, AlwaysShowToolbar, dom, query) {
			
			var editor = new Editor({
				id:'editor',
				name:'editor',
				height:'',
				style:'width:500px;',
	            extraPlugins:[AlwaysShowToolbar]
	        }, dom.byId('editor'));
			editor.startup();
			
			var editor = new Editor({
				id:'ceditor',
				name:'ceditor',
				height:'',
				style:'width:500px;',
				plugins:['undo', 'redo', '|', 'bold', 'italic', 'underline', 'removeFormat', '|', 'insertOrderedList', 'insertUnorderedList', '|', 'indent', 'outdent', '|', 'justifyLeft', 'justifyCenter', 'justifyRight', 'justifyFull', '|', 'delete'],
	            extraPlugins:[AlwaysShowToolbar]
	        }, dom.byId('customedEditor'));
			editor.startup();
		});
	</script>	
</body>
</html>