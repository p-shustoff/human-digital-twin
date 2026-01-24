import Toybox.Graphics;
import Toybox.WatchUi;
import Toybox.Sensor;
import Toybox.Lang;
import Toybox.System;
import Toybox.Timer;

class garmin_agentView extends WatchUi.View {

    var updateTimer as Timer.Timer?; 

    // Data to be displayed 
    var x as Float = 0.0;  
    var y as Float = 0.0;

    function initialize() {
        View.initialize();
    }

    function onShow() as Void {
        updateTimer = new Timer.Timer();  
        updateTimer.start(method(:onTimer), 1000, true);  
    }

    function onHide() as Void {
        if (updateTimer != null) {
            updateTimer.stop();
            updateTimer = null;
        }
    }

    function onTimer() as Void {  
        
        var sensorInfo = Sensor.getInfo();
        
        if (sensorInfo has :accelerometerData && sensorInfo.accelerometerData != null) {
            var accelData = sensorInfo.accelerometerData;
            if (accelData != null) {
                x = accelData.x;
                y = accelData.y;
                
                System.println("x: " + x + " y: " + y);
            }
        }
        
        WatchUi.requestUpdate();  
    }

    // Update the view
    function onUpdate(dc as Dc) as Void {  
     
        View.onUpdate(dc);
        
   
        dc.setColor(Graphics.COLOR_BLACK, Graphics.COLOR_BLACK);
        dc.clear();
        
    
        dc.setColor(Graphics.COLOR_WHITE, Graphics.COLOR_TRANSPARENT);
        
        var w = dc.getWidth();
        var h = dc.getHeight();
        

        dc.drawText(w/2, h/2 - 20, Graphics.FONT_MEDIUM, "Hello HDT!", Graphics.TEXT_JUSTIFY_CENTER);
        

        var xStr = x.format("%.2f");
        var yStr = y.format("%.2f");
        
        dc.drawText(w/2, h/2 + 10, Graphics.FONT_SMALL, "x: " + xStr, Graphics.TEXT_JUSTIFY_CENTER);
        dc.drawText(w/2, h/2 + 30, Graphics.FONT_SMALL, "y: " + yStr, Graphics.TEXT_JUSTIFY_CENTER);
    }
}