define(["dijit/layout/ContentPane"], function(ContentPane) {
    return {
    	getLogoPane: function() {	
			// Logo Pane
	        var logoPane = new ContentPane({
				id:"logoPaneModule-logoPane",
				style:"width:200px; padding:0px; margin-left:10px;",
				content:'<img src =\"../images/logo.jpg\" width = \"200px\" height = \"95px\" alt = \"Google\"/>'
			}, "logoPane"); 
	        // Do not use the startup() method, this will break the layout.
	        // There is not need to return the var since it is map to and HTML id
        }
    };
});