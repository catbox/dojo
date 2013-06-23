
function createUI() {
	var content = new dijit.layout.ContentPane({
	    id: "sub1.contentpane1",
	    content: "I am content pane#1",
	    style: "height:200px; width:200px; background-color:#ADD6FF;"
	});
	content.placeAt("targetID1");
	
	var content2 = new dijit.layout.ContentPane({
	    id: "sub1.contentpane2",
	    content: pane2(),
	    style: "height:200px; width:200px; background-color:#B2E0B2;"
	});
	content2.placeAt("targetID2");
}

function pane2() {
	var paneMsg = "I am content pane#2";
	return paneMsg;
}