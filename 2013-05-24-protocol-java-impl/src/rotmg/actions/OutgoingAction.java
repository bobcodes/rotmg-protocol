package rotmg.actions;

import java.io.IOException;

public interface OutgoingAction {

    /**
     * Records all information EXCEPT For the type. The NetworkHandler is responsible
     * for writing the type information.
     */
    public byte[] toBytes() throws IOException ;
    
    public int getMessageId() ;
}
