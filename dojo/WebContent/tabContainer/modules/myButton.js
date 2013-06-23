define(["dojo/dom", "dijit/form/Button"], function(dom, Button){
	
	return {
		getButton: function() {
			var myButton = new Button({
				id:"progButtonNode",
		        label:"Hello",
		        onClick: function() {
		            dom.byId("hello").innerHTML = "Hello world!";
		        }
		    }, "progButtonNode");
			
			return myButton;
		}
	};
});