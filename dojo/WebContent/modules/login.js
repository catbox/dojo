define(["dojo/dom", "dojo/dom-construct", "dijit/layout/ContentPane", "dijit/form/ValidationTextBox", 
         "dijit/form/Button", "dojox/validate/web"], 
         function(dom, domConstruct, ContentPane, ValidationTextBox, Button) {
		
    return {
    	getLoginPane: function() {
    		
        	var loginPane = new ContentPane({
				id:"loginPane",	           
	            //splitter:false, 
	            //style:"width:750px;",
	            //content:"<div>hello world! wazup?</div>"
			}, "cp3");
        	
        	var somePane = new ContentPane({
				id:"somePane",	           
	            //splitter:false, 
	            style:"width:226px; height:100px; background-color:#D6EBFF;",
	            content:"<p>hello world! wazup?</p>"
			});
        	      	
    		// Email
    		var email2 = new ValidationTextBox({
    			id:"email2",
    			name:"email",
    			type:"text", 
    			required:true,
    			maxLength:"50",
            	trim:true,
            	lowercase:true,
            	regExp:"[a-z0-9._%+-]+@[a-z0-9-]+\.[a-z]{2,4}",
            	placeHolder:"Email",
            	promptMessage:"Email",
            	missingMessage:"Email is required!",
            	invalidMessage:"Incorrect email format!",
            	style:"margin:0px; padding:0px"});    		
    		
    		// Password
    		var password = new ValidationTextBox({
    			id:"password",
    			name:"password",
    			type:"password", 
    			required:true,
    			maxLength:"50",
            	trim:true,
            	lowercase:true,
            	//regExp:"[a-z0-9._%+-]",
            	placeHolder:"Password",
            	promptMessage:"Password",
            	missingMessage:"Password is required! Really :)",
            	invalidMessage:"Incorrect password format!",
            	style:"margin:0"});
    		
    		// Add the widgets to the main pane
    		//loginPane.addChild(somePane);		
    		loginPane.addChild(email2);
    		loginPane.addChild(password);
    				
    		var e  = dom.byId("widget_email2");
			var someNewNode = domConstruct.toDom("<br><br>");
			domConstruct.place(someNewNode, e, "after");
			
			//var somePaneBrk = dom.byId("somePane");
			//var someNewNode2 = domConstruct.toDom("<br>");
			//domConstruct.place(someNewNode2, somePaneBrk, "after");
			
        	return loginPane;
        	
        }
    };
});