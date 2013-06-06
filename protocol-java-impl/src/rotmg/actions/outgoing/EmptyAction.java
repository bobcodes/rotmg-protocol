package rotmg.actions.outgoing;

import java.io.IOException;

import rotmg.actions.OutgoingAction;

public class EmptyAction implements OutgoingAction {

    @Override
    public byte[] toBytes() throws IOException {
        return new byte[0];
    }

    @Override
    public OutgoingAction fromBytes(byte[] bytes) throws IOException {
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
