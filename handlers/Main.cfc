component {


	// Default Action
	function index(event, rc, prc) {
		
		// Get the message from our service and pass it to our view via the private request collection
		prc.message = "Hello Sai!!";
		
		
		// The view "/views/Main/index.cfm" will be run by convention  
	}

}