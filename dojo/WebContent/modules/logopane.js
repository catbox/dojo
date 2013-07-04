define(["dijit/layout/ContentPane"], function(ContentPane) {
    return {
    	getLogoPane: function() {	
			// Logo Pane
	        var logoPane = new ContentPane({
				id:"logopane",
				style:"width:200px; padding:0px; margin-left:10px;",
				content:'<img src =\"../images/logo.jpg\" width = \"200px\" height = \"95px\" alt = \"Google\"/>'
			}, "logopane");	
	        return logoPane;	            
        }
    };
});