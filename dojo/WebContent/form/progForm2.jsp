<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Programmatic Form 2</title>
<link rel="stylesheet" href="/dojotoolkit/dojo-1.8.3/dijit/themes/claro/claro.css" media="screen">
<link rel="stylesheet" href="/css/myCSS.css">
</head>
<body class="claro">

<form id="myform">
	<input id="radioOne"/><label id="radioOneLabel" for="radioOne"></label>
    <input id="radioTwo"/><label id="radioTwoLabel" for="radioTwo"></label>
    <br>
    <button id="progButton" type="button"></button>
</form>

<script data-dojo-config="async: true" src="/dojotoolkit/dojo-1.8.3/dojo/dojo.js"></script>

<script>
	require(["dojo/dom", "dijit/form/RadioButton", "dijit/form/Button", "dojo/domReady!"], 
		function(dom, RadioButton, Button){

		// Radio Button - Tea
        var radioOne = new RadioButton({
        	id:"radioOne",
        	name:"drink",
        	type:"radio",
        	checked:true,     	
            value:"tea"
        }, "radioOne");
        radioOne.startup();
        
     	// Radio Button Label - Tea
        var radioOneLabel = dom.byId("radioOneLabel");
        radioOneLabel.innerHTML = "Tea";  
        
     	// Radio Button - Coffee
        var radioTwo = new RadioButton({
        	id:"radioTwo",
        	name:"drink",
        	type:"radio",
            checked:false,    
            value:"coffee"
        }, "radioTwo");
        radioTwo.startup();
        
     	// Radio Button Label - Coffee
        var radioTwoLabel = dom.byId("radioTwoLabel");
        radioTwoLabel.innerHTML = "Coffee";
        
     	// Button - Run
        var myButton = new Button({
        	id:"progButton",
            label: "Run",
            onClick: function(){              
                with(dom.byId('myform'))with(elements[0])with(elements[checked?0:1])alert(name+'='+value);
                return false;
            }
        }, "progButton");
        myButton.startup();
               
});
</script>

</body>
</html>