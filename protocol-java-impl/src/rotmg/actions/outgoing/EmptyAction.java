package rotmg.actions.outgoing;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;

import rotmg.actions.OutgoingAction;

public class EmptyAction implements OutgoingAction {

    @Override
    public void toBytes(DataOutputStream dout) throws IOException {
    }

    @Override
    public OutgoingAction fromBytes(DataInputStream din) throws IOException {
        return new EmptyAction();
    }

    @Override
    public int getMessageId() {
        return 11;
    }

    @Override
    public String toString() {
        return "EmptyAction []";
    }
}
