package rotmg.actions;

public interface OutgoingAction {

    /**
     * Records all information EXCEPT For the type. The NetworkHandler is responsible
     * for writing the type information.
     */
    public byte[] toBytes();
    
    public int getMessageId() ;
}
