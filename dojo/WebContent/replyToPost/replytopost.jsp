<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Reply To Post</title>
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
			out.println("<fieldset id=" + id + " class='somePost' style='width:750px; background-color:#EBFAEB; border-top:0px; border-right:0px; border-bottom:5px solid #E0EBFF; border-left:0px;'>" +  "<b>" + title + "</b><br><br>" + post + "<br><br><button id=bnt-" + id + " class='postBtn'" + ">Reply</button></fieldset>");
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
		require(["dojo/on", "dojo/dom", "dojo/_base/window", "dojo/dom-style", "dojo/mouse", "dojo/query", "dojo/domReady!"], 
				function(on, dom, win, domStyle, mouse) {
			
			on(win.doc, ".somePost:mouseover", function(evt){		            
	        	var nodeId2 = evt.target.id;
	        	domStyle.set(nodeId2, "color", "blue");
	        	
	        });
	        
	        on(win.doc, ".somePost:mouseout", function(evt){		            
	        	var nodeId2 = evt.target.id;
	        	domStyle.set(nodeId2, "color", "#4D4D4D");
	        });
	        
	        on(win.doc, ".postBtn:click", function(evt){		            
	        	var nodeId = evt.target.id;
		     	alert("Node Id: " + nodeId);
	        });
	        
		});	 	
	</script>	
</body>
</html>