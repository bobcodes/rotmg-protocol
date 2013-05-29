package rotmg.actions;

import java.util.Arrays;
import java.util.List;

import rotmg.actions.incoming.ReconnectAction;


public class Actions {

    public static final List<IncomingAction> INCOMING_ACTIONS =
            Arrays.asList(
                    (IncomingAction)new ReconnectAction()
                    );
    
    public static final List<OutgoingAction> OUTGOING_ACTIONS =
            Arrays.asList(
                    );
    
}
