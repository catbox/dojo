<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,minimum-scale=1,user-scalable=no"/>
<meta name="apple-mobile-web-app-capable" content="yes" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<!-- Caching - caching is disabled for development but could be required in production -->
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="pragma" content="no-cache"> 
<link rel="stylesheet" type="text/css" href="../mobile.css"></link>
<title>programmatic button</title>
<style type="text/css">
#introFlash {
	width: 100%;
	height: 100%;
	margin: 0;
	border: 0 none;
	padding: 0;			    
	background: #fff url('../../images/spinner.gif') no-repeat center center;
	position:absolute;	
	top:0px;
	left:0px;
	bottom:0px;
	right:0px;
	z-index: 1;
}
</style>
</head>
<body>
	<div id="introFlash"></div>
	<div id="mainView">
		<ul id="buttonsTabs">
			<li id="tb1"></li>
			<li id="tb2"></li>
			<li id="tb3"></li>
		</ul>
		<div id="tabView">
			<div id="scrollableView1">
				<button id="button1"></button>
			</div>		
		</div>
	</div>
	<script>
	    dojoConfig = {
	    	async: true,
	        parseOnLoad: false,
	        locale: 'en'	        
	    };
	</script>
	<script src="/dojotoolkit/dojo-1.8.3/dojo/dojo.js"></script>		
	<script>	
		require(["dojo/dom", "dojo/_base/fx", "dojo/dom-style", "dojo/on", "dojox/mobile/View", "dojox/mobile/TabBar", "dojox/mobile/TabBarButton", "dojox/mobile/ScrollableView", "dojox/mobile/Button", "dojox/mobile/deviceTheme", "dojox/mobile", "dojox/mobile/compat", "dojo/domReady!"], 
				function(dom, fx, style, on, View, TabBar, TabBarButton, ScrollableView, Button) {
			
			// Called upopn load
		    var fadeArgsIntro = {
		   		 node: "introFlash",
		         duration: 3000,
		         onEnd: function() {
		        	 style.set("introFlash", "display", "none");
		         }
		        
		    };
		    fx.fadeOut(fadeArgsIntro).play();
		    
			// Main view
			var mainView = new View({
				id:"mainView"}, "mainView");
			
			// Tab Bar
			var buttonsTabs = new TabBar({
				id:"buttonsTabs",
				barType:"segmentedControl"}, "buttonsTabs");
			buttonsTabs.startup();
			
			// Tab Bar Button#1
			var tb1 = new TabBarButton({
				id:"tb1",
				selected:"true",
				transition:"slide",
				label:"Color"
			}, "tb1");
			tb1.startup();
			
			// Tab Bar Button#2
			var tb2 = new TabBarButton({
				id:"tb2",
				transition:"slide",
				label:"Texture"
			}, "tb2");
			tb2.startup();
			
			// Tab Bar Button#3
			var tb3 = new TabBarButton({
				id:"tb3",
				transition:"slide",
				label:"Texture"
			}, "tb3");
			tb3.startup();
			
			// Tab view
			var tabView = new View({
				id:"tabView",
				selected:"true"}, "tabView");
			tabView.startup();
			
			// Scrollable View#1
			var scrollableView1 = new ScrollableView({
				id: "scrollableView1",
				selected:"true"
			}, "scrollableView1");
			scrollableView1.startup();
			
			// Button#1
			var button1 = new Button({
				id:"button1",
				label:"white",
				class:"baseBtn whiteBtn",
				style:"width: 200px;",
				onClick: function() {
	            	alert("hello superman!");
	            }
			}, "button1");
			button1.startup();
				
			// Add the widgets within the main view
			buttonsTabs.addChild(tb1, "tb1");
			buttonsTabs.addChild(tb2, "tb2");
			buttonsTabs.addChild(tb3, "tb3");
			
			scrollableView1.addChild(button1, "button1");
			tabView.addChild(scrollableView1, "scrollableView1");
			
			mainView.addChild(buttonsTabs, "buttonsTabs");
			mainView.addChild(tabView, "tabView");	
			mainView.startup();
			
			/*on(dom.byId("button1"), "click", greeting);
		    function greeting() {
		       alert("Hello World!");
		    }
		    */
		});
	</script>
</body>
</html>