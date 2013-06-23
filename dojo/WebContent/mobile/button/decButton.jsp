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
<title>button</title>
</head>
<body>
	<div id="buttons" data-dojo-type="dojox.mobile.View">
		<ul id="buttonsTabs" data-dojo-type="dojox.mobile.TabBar" barType="segmentedControl">
			<li data-dojo-type="dojox.mobile.TabBarButton" moveTo="colorBtnView" selected="true" transition="slide">Color</li>
			<li data-dojo-type="dojox.mobile.TabBarButton" moveTo="textureBtnView" transition="slide">Texture</li>
			<li data-dojo-type="dojox.mobile.TabBarButton" moveTo="shapeBtnView" transition="slide">Shape</li>
		</ul>
		<div data-dojo-type="dojox.mobile.View" selected="true">
			<div id="colorBtnView" data-dojo-type="dojox.mobile.ScrollableView" selected="true">
				<button data-dojo-type="dojox.mobile.Button" class="baseBtn whiteBtn" style="width: 240px;">White</button>
				<button data-dojo-type="dojox.mobile.Button" class="baseBtn navyBtn" style="width: 240px;">Blue</button>
				<button data-dojo-type="dojox.mobile.Button" class="baseBtn orangeBtn" style="width: 240px;">Orange</button>
				<button data-dojo-type="dojox.mobile.Button" class="baseBtn redBtn" style="width: 240px;">Red</button>
				<button data-dojo-type="dojox.mobile.Button" class="baseBtn blackBtn" style="width: 240px;">Black</button>		
			</div>
			<div id="textureBtnView" data-dojo-type="dojox.mobile.ScrollableView">
				<button data-dojo-type="dojox.mobile.Button" class="baseBtn navyBtn" style="width: 240px;">Matte</button>
				<button data-dojo-type="dojox.mobile.Button" class="baseBtn glossy navyBtn" style="width: 240px;">Glossy</button>
				<button data-dojo-type="dojox.mobile.Button" class="baseBtn candy navyBtn" style="width: 240px;">Candy</button>
				<button data-dojo-type="dojox.mobile.Button" class="baseBtn shadow navyBtn" style="width: 240px;">Shadow</button>			
			</div>
			<div id="shapeBtnView" data-dojo-type="dojox.mobile.ScrollableView">
				<button data-dojo-type="dojox.mobile.Button" class="baseBtn backBtn greyBtn" style="width: 240px;">Back to the hive</button>
				<button data-dojo-type="dojox.mobile.Button" class="baseBtn roundBtn navyBtn" style="width: 240px;">Round trip to the hive</button>
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
	<script src="/dojotoolkit/dojo-1.9.0/dojo/dojo.js"></script>	
	
	<script>	
		require(["dojox/mobile/parser", "dojox/mobile/deviceTheme", "dojox/mobile", "dojox/mobile/compat", "dojox/mobile/View", "dojox/mobile/TabBar", "dojox/mobile/TabBarButton", "dojox/mobile/ScrollableView", "dojox/mobile/Button", "dojo/domReady!"], function(parser){
			parser.parse();
		});
	</script>
</body>
</html>