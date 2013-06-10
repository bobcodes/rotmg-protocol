/*
The MIT License (MIT)

Copyright (c) 2013 bobcodes

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
 */
package rotmg.experiment;

import java.io.IOException;
import java.util.SortedMap;

import rotmg.actions.IncomingActionBroadcaster;
import rotmg.actions.IncomingActionListener;
import rotmg.actions.incoming.MapInfoAction;
import rotmg.actions.outgoing.HelloAction;
import rotmg.actions.outgoing.LoadAction;
import rotmg.net.AvailableServers;
import rotmg.net.RotmgNetworkHandler;
import rotmg.net.RotmgServer;
import rotmg.net.layer.TcpNetworkLayer;

public class Main {

    
	public static void main(String[] args) throws Exception {
        SortedMap<String, RotmgServer> availableServers = AvailableServers.getAvailableServers();
	    System.out.println(availableServers);
	    
	    RotmgServer eunorth2 = availableServers.get("EUNorth2");
        System.out.println(eunorth2);
        
        try (RotmgNetworkHandler nwHandler = new RotmgNetworkHandler(new TcpNetworkLayer(eunorth2))) {
            /**
             *       private function bijyg(param1:MapInfoMsg) : void {
                     var _loc6_:* = false;
                     var _loc7_:* = true;
                     var _loc2_:String = null;
                     var _loc3_:String = null;
                     for each (_loc2_ in param1.clientXML_)
                     {
                        this.lahero(_loc2_);
                     }
                     for each (_loc3_ in param1.extraXML_)
                     {
                        this.lahero(_loc3_);
                     }
                     vepat.dispatch();
                     this.closeDialogs.dispatch();
                     gs_.applyMapInfo(param1);
                     this.byqu=new Random(param1.fp_);
                     if(kasyda)
                     {
                        this.create();
                     }
                     else
                     {
                        this.load();
                     }
                     return;
                  }
             */
            IncomingActionBroadcaster.get().subscribe(MapInfoAction.class, new IncomingActionListener<MapInfoAction>() {
                @Override
                public void receive(MapInfoAction action) {
                    try {
                        nwHandler.sendToNetwork(new LoadAction());
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
            });
            nwHandler.sendToNetwork(new HelloAction());
            nwHandler.run();
        }
    }
	
}
