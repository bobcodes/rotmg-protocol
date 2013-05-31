package rotmg.experiment;

import java.util.SortedMap;

import rotmg.actions.IncomingActionBroadcaster;
import rotmg.actions.IncomingActionListener;
import rotmg.actions.incoming.ReconnectAction;
import rotmg.net.AvailableServers;
import rotmg.net.RotmgNetworkHandler;
import rotmg.net.RotmgServer;

public class Main {

    
	public static void main(String[] args) throws Exception {
        SortedMap<String, RotmgServer> availableServers = AvailableServers.getAvailableServers();
	    System.out.println(availableServers);
	    
	    RotmgServer eunorth2 = availableServers.get("EUNorth2");
        System.out.println(eunorth2);
        
        try (RotmgNetworkHandler nwHandler = new RotmgNetworkHandler(eunorth2)) {
            IncomingActionBroadcaster.get().subscribe(ReconnectAction.class, new IncomingActionListener<ReconnectAction>() {
                @Override
                public void receive(ReconnectAction action) {
                    System.out.println(action);
                }
            });
            nwHandler.run();
        }
    }
	
}
