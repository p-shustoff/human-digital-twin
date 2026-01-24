import Toybox.Application;
import Toybox.Lang;
import Toybox.WatchUi;

class garmin_agentApp extends Application.AppBase {

    function initialize() {
        AppBase.initialize();
    }

    // onStart() is called on application start up
    function onStart(state as Dictionary?) as Void {
        //
    }

    // onStop() is called when your application is exiting
    function onStop(state as Dictionary?) as Void {
        //
    }

    // Return the initial view of your application here
    function getInitialView() as [Views] or [Views, InputDelegates] {
        return [ new garmin_agentView(), new garmin_agentDelegate() ];
    }

}

function getApp() as garmin_agentApp {
    return Application.getApp() as garmin_agentApp;
}