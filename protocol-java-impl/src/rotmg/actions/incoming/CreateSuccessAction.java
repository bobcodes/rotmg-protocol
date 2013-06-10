package rotmg.actions.incoming;

import java.io.DataInputStream;
import java.io.IOException;

import rotmg.actions.IncomingAction;

public class CreateSuccessAction implements IncomingAction {
    /**
     * public var objectId_:int;
     * public var charId_:int;
     */
    private final int objectId;
    private final int charId;
    
    public CreateSuccessAction() {
        this(-1,-1);
    }
    
    public CreateSuccessAction(int objectId, int charId) {
        super();
        this.objectId = objectId;
        this.charId = charId;
    }

    public int getObjectId() {
        return objectId;
    }

    public int getCharId() {
        return charId;
    }

    /**
     * this.objectId_=param1.readInt();
     * this.charId_=param1.readInt();
     */
    @Override
    public IncomingAction fromBytes(DataInputStream din) throws IOException {
        int objectId = din.readInt();
        int charId = din.readInt();
        return new CreateSuccessAction(objectId, charId);
    }

    /**
     * public static const CREATE_SUCCESS:int = 31;
     */
    @Override
    public int getMessageId() {
        return 31;
    }

    @Override
    public String toString() {
        return "CreateSuccessAction [objectId=" + objectId + ", charId="
                + charId + "]";
    }
}
