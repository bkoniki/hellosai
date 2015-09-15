component {
	
	// Configure ColdBox Application
	function configure(){
	
		// coldbox directives
		coldbox = {
			//Application Setup
			appName 				= "HelloSai",
			
			//Development Settings
			debugMode				= false,
			debugPassword			= "",
			reinitPassword			= "",
			handlersIndexAutoReload = true,
	
			//Application Aspects
			handlerCaching 			= false
		};
		
		// These are just settings I use for the layout of the Demo to make this sample app easier to reuse.
		settings = {
			demoTitle = 'Hello Sai',
			demoDescription = listChangeDelims( fileRead('#GetDirectoryFromPath(GetCurrentTemplatePath())#../readme.md'), '<p>', chr(13)&chr(10) ),
			demoDescriptionButtons = [
				{
					name = 'Shirdi',
					link = 'https://www.shrisaibabasansthan.org'
				}
			],
			demoSourceLink = 'https://github.com/cf-runnable/ColdBox_Hello_World',
			demoRelatedDocsLink = 'http://wiki.coldbox.org/wiki/ColdBox.cfm'
		};
		
		
	}

}