<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Tracker</title>
<link rel="stylesheet" href="/dojotoolkit/dojo-1.8.3/dijit/themes/claro/claro.css" media="screen">
<link rel="stylesheet" href="/css/myCSS.css">
</head>
<body class="claro">
	<%@ page import="java.io.*,java.util.*" %>
	<%
	   // Get session creation time.
	   Date createTime = new Date(session.getCreationTime());
	   // Get last access time of this web page.
	   Date lastAccessTime = new Date(session.getLastAccessedTime());
	
	   Integer visitCount = 0;;
	   String visitCountKey = "visitCount";
	   String userIDKey = "userID";
	   String userID = "The Madhatter";
	
	   // New visit
	   if(session.isNew()){
	      session.setAttribute(userIDKey, userID);
	      session.setAttribute(visitCountKey,  visitCount);
	      session.setAttribute("session",  "New");
	   } 
	   else {
		   session.setAttribute("session",  "Returning");		   
	   }
	   visitCount = (Integer)session.getAttribute(visitCountKey);
	   visitCount = visitCount + 1;
	   userID = (String)session.getAttribute(userIDKey);
	   session.setAttribute(visitCountKey, visitCount);
	%>
	<center>
	<h1>Session Tracking</h1>
	</center>
	<table border="1" align="center"> 
		<tr bgcolor="#949494">
		   <th>Session info</th>
		   <th>Value</th>
		</tr> 
		<tr>
		   <td>id</td>
		   <td><% out.print(session.getId()); %></td>
		</tr> 
		<tr>
		   <td>Creation Time</td>
		   <td><% out.print(createTime); %></td>
		</tr> 
		<tr>
		   <td>Time of Last Access</td>
		   <td><% out.print(lastAccessTime); %></td>
		</tr> 
		<tr>
		   <td>User ID</td>
		   <td><%out.print(userID); %></td>
		</tr> 
		<tr>
		   <td>Session</td>
		   <td><% out.print(session.getAttribute("session")); %></td>
		</tr> 
		<tr>
		   <td>Number of visits</td>
		   <td><% out.print(visitCount); %></td>
		</tr> 
	</table> 
	<script>
	    dojoConfig = {
	    	async: true,
	        parseOnLoad: false,
	        locale: 'en'	        
	    };
	</script>
	<script src="/dojotoolkit/dojo-1.8.3/dojo/dojo.js"></script>		
	<script>	
		require(["dojo/dom", "dojo/domReady!"], function(dom){
			// Anthing that is in this scope will not get executed until the whole DOM structure becomes available.		
		});
	</script>	
</body>
</html>