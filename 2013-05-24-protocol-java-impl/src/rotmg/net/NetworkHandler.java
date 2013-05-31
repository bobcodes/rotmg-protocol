package rotmg.net;

import java.io.IOException;

import rotmg.actions.OutgoingAction;

public interface NetworkHandler {

    void sendToNetwork(OutgoingAction outgoing) throws IOException ;
    
}
