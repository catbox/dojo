<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Table Layout</title>
<style type = "text/css">
       
	html, body {
	    width:100%;
	    height:100%;
	    margin:0px;
	    padding:0px;
	    font-family: tahoma, helvetica, arial, sans-serif; 
	    background-color: #dddddd; 
	}

    table, tr, td { 
       font-size:.9em;
       border:3px groove;
       padding:5px;
       background-color:#dddddd; 
       width:100%;
    }
</style>
</head>
<body>
   <table>
      <tr>
         <td style = "width:15%; min-width:200px; vertical-align:top; background-color:white;">           
            <img src = "images/logo.jpg" 
               width = "200px" height = "95px" 
               alt = "Google" />
         </td> 
         <td style = "width:85%;">
            <%@ include file = "banner.html" %>
         </td>    
      </tr>

      <tr>
         <td style = "width:15%; min-width:200px; vertical-align:top;">
            <%@ include file = "toc.html" %>
         </td>
         <td style = "width:85%;">
         	<%@ include file = "content.html" %>
            <%@ include file = "clock.jsp" %>
         </td>
      </tr>

   </table>
</body>
</html>
