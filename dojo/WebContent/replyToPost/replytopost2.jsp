<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Reply To Post 2</title>
<link rel="stylesheet" href="/dojotoolkit/dojo-1.8.3/dijit/themes/claro/claro.css">
<link rel="stylesheet" href="/css/myCSS.css">
<style type="text/css">
	html, body {
	    width:100%;
	    height:100%;
	    overflow:hidden;
	    background-color:#E0EBFF;
	}
</style>
</head>
<body class="claro">
	<%@page import="java.util.List, java.util.ArrayList, java.util.Iterator"%>
	
	<% 
	List<String> postList = new ArrayList<String>();
				
		postList.add("hello world");
		postList.add("how are you today?");
		postList.add("hello world. Long week-end coming up :)");
		
		Iterator listItr = postList.iterator();
		String title = "Some title";
		String post = null;
		String id = null;
		long timeId = 0;
		long timeOffSet = 0;
		
		while(listItr.hasNext()) {			
			timeId = System.currentTimeMillis() + timeOffSet;
			post = (String)listItr.next();						
			id = String.valueOf(timeId);
			//out.println("<fieldset id=" + id + " class='somePost' style='width:750px; background-color:#EBFAEB; border-top:0px; border-right:0px; border-bottom:5px solid #E0EBFF; border-left:0px;'>" +  "<b>" + title + "</b><br><br><div id=msg-" + id + ">" + post + "</div><br><button id=bnt-" + id + " class='rmsg'" + ">Reply</button></fieldset>");
			out.println("<fieldset id=" + id + " class='somePost' style='width:750px; background-color:#EBFAEB; border-top:0px; border-right:0px; border-bottom:5px solid #E0EBFF; border-left:0px;'>" +  "<b>" + title + "</b><br><br><div id=pmsg-" + id + ">" + post + "</div><br><div id=bnt-" + id + " class='rmsg' style='width:50px; font-size:12px'" + ">Reply</div></fieldset>");
			timeOffSet++;
		}		
	%>
  	
	<script>
	    dojoConfig = {
	    	async: true,
	        parseOnLoad: false,
	        locale: 'en'	        
	    };
	</script>
	<script src="/dojotoolkit/dojo-1.8.3/dojo/dojo.js" charset="utf-8" type="text/javascript"></script>		
	<script>	
		require(["dojo/on", "dojo/dom", "dojo/dom-construct", "dojo/_base/window", "dojo/dom-style", "dojo/mouse", "dojo/query", "dojo/domReady!"], 
				function(on, dom, domConstruct, win, domStyle, mouse) {
			
			on(win.doc, ".rmsg:mouseover", function(evt){		            
	        	var nodeId2 = evt.target.id;
	        	domStyle.set(nodeId2, "color", "black");
	        	
	        });
	        
	        on(win.doc, ".rmsg:mouseout", function(evt){		            
	        	var nodeId2 = evt.target.id;
	        	domStyle.set(nodeId2, "color", "#4D4D4D");
	        });
	        
	        on(win.doc, ".rmsg:click", function(evt){		            
	        	var nodeId = evt.target.id;
	        	
	        	var findEditorNode = dom.byId("editor-" + nodeId);
	        	
	        	if(findEditorNode==null) {					 		  
					  var editorNode = domConstruct.toDom("<div id='editor-" + nodeId + "'><p>Editor</p></div>");
					  domConstruct.place(editorNode, nodeId, "after");
				}
		     	
	        });
	        
		});	 	
	</script>	
</body>
</html>