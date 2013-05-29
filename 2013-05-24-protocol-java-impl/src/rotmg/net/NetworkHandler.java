package rotmg.net;

import rotmg.actions.OutgoingAction;

public interface NetworkHandler {

    void sendToNetwork(OutgoingAction outgoing);
    
}
