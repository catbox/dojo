define(function() {
	
	return {
		sayHello: function() {
			return "server says: hello :)";
		},
		
		sayBye: function() {
			return "server says: bye!";
		},
		
		sum: function(x,y) {
			return x+y;
		}
	};
});