(function(registrationApp){
	var App = function(){
		var self = this;
		self.register = function(appName, appData){
			registrationApp.registerExtension(function(event, registrationApp){
				registrationApp.registerAppName(appName);
				(function(app){
					app.preRun = function(data){
						return (appData != undefined ? appData : data);
					}
					app.postRun = function(vm){
						if (!_.isUndefined(vm.spread)) {
							vm.spread.footnotesApp = app;
						}
						jQuery(window).on("load", vm.load);
						return true;
					};
				})(registrationApp.registeredApps[appName]);
				registrationApp.log(appName + ' App initialized.');
			});
			registrationApp.registerModels(appName, LifeCycle.Comments.Models);
			registrationApp.registerModels(appName, LifeCycle.SpreadFootnotes.Models);
			registrationApp.registerViewModel(appName, LifeCycle.SpreadFootnotes.ViewModel);
		};
		return self;
	};
	if(LifeCycle.SpreadFootnotes == undefined){
		LifeCycle.SpreadFootnotes = {};
	}
	if(LifeCycle.SpreadFootnotes.App == undefined){
		LifeCycle.SpreadFootnotes.App = App;
	}
})(LifeCycle.RegistrationApp);
