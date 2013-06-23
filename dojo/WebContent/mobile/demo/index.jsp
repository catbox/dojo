<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,minimum-scale=1,user-scalable=no"/>
<meta name="apple-mobile-web-app-capable" content="yes" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<!-- Caching - caching is disabled for development but could be required in production -->
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="pragma" content="no-cache">
<title>TweetView</title>
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
	<!-- tweets view -->
	<div id="tweets" data-dojo-type="dojox.mobile.ScrollableView" data-dojo-props="selected: true">
		<h1 data-dojo-type="dojox.mobile.Heading" data-dojo-props="fixed: 'top'">
			<!-- the refresh button -->
			<div data-dojo-type="dojox.mobile.ToolBarButton" data-dojo-props="icon: 'images/refresh.png'" class="mblDomButton tweetviewRefresh" style="float:right;"></div>
			Tweets
		</h1>
		<ul data-dojo-type="dojox.mobile.RoundRectList">
			<li data-dojo-type="dojox.mobile.ListItem">
				Tweet item here....
			</li>
		</ul>
	</div>

	<!-- mentions view -->
	<div id="mentions" data-dojo-type="dojox.mobile.ScrollableView">
		<h1 data-dojo-type="dojox.mobile.Heading" data-dojo-props="fixed: 'top'">
			<!-- the refresh button -->
			<div data-dojo-type="dojox.mobile.ToolBarButton" data-dojo-props="icon: 'images/refresh.png'" class="mblDomButton tweetviewRefresh" style="float:right;"></div>
			Mentions
		</h1>
		<ul data-dojo-type="dojox.mobile.RoundRectList">
			<li data-dojo-type="dojox.mobile.ListItem">
				Mention tweet item here
			</li>
		</ul>
	</div>

	<!-- settings view -->
	<div id="settings" data-dojo-type="dojox.mobile.ScrollableView">
		<h1 data-dojo-type="dojox.mobile.Heading" data-dojo-props="fixed: 'top'">Settings</h1>
		<h2 data-dojo-type="dojox.mobile.RoundRectCategory">Show</h2>
		<ul data-dojo-type="dojox.mobile.RoundRectList">
			<li data-dojo-type="dojox.mobile.ListItem">
				Setting item here
			</li>
		</ul>
	</div>

	<!-- the bottom tabbar -->
	<ul data-dojo-type="dojox.mobile.TabBar" data-dojo-props="iconBase: 'images/iconStrip.png', fixed: 'bottom'">
		<!-- top left width height -->
		<li data-dojo-type="dojox.mobile.TabBarButton" data-dojo-props="iconPos1: '0,0,29,30', iconPos2: '29,0,29,30', selected: true, moveTo: 'tweets'">Tweets</li>
		<li data-dojo-type="dojox.mobile.TabBarButton" data-dojo-props="iconPos1: '0,29,29,30', iconPos2: '29,29,29,30', moveTo: 'mentions'">Mentions</li>
		<li data-dojo-type="dojox.mobile.TabBarButton" data-dojo-props="iconPos1: '0,58,29,30', iconPos2: '29,58,29,30', moveTo:'settings'">Settings</li>
	</ul>
		
	<script>
	    dojoConfig = {
	    	async: true,
	        parseOnLoad: false,
	        locale: 'en'	        
	    };
	</script>
	<script src="/dojotoolkit/dojo-1.9.0/dojo/dojo.js"></script>	
	<script>
		require(["dojo/parser", "dojo/_base/fx", "dojo/dom-style", "dojox/mobile/deviceTheme", "dojox/mobile", "dojox/mobile/ScrollableView", "dojox/mobile/TabBar", "dojox/mobile/compat", "dojo/domReady!"],
			function(parser, fx, style) {
			
			    // Called upopn load
			    var fadeArgsIntro = {
			   		 node: "introFlash",
			         duration: 3000,
			         onEnd: function() {
			        	 style.set("introFlash", "display", "none");
			         }
			        
			    };
			    fx.fadeOut(fadeArgsIntro).play();
			    
				parser.parse();
			}
		);
	</script>
</body>
</html>
