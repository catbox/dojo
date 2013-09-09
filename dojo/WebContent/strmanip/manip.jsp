<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>JS and Java String Manipulation</title>
</head>
<body>

<%
int value = 18;
out.println("Value: " + value + "<br>");
%>
<script type="text/javascript">
// Convert Java to JS
var jsValue = <%=value+1%>;
document.writeln("jsValue: " + jsValue + "<br>");

var jsHello = "Hello World";
var jsHello2 = "Call it!";
document.writeln(jsHello);

<% long time = new java.util.Date().getTime();
   int i = 999;
   String hello = "hello JS!";
%>
var jsTime = "<%= i %>";
document.writeln(jsTime);

// Conver a Java to JSON
var myJSONObject = JSON.stringify("<%= hello %>");             
document.writeln(myJSONObject);

</script>

<%
// Convert a JS to Java
String str = "<script>document.writeln(jsHello2)</script>";
out.println("String: " + str);
System.out.println("String: " + str);
%>


</body>
</html>