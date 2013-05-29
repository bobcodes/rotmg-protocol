package rotmg.actions;

/**
 * Contract where the implementing classes have a static method for
 * de-serializing the object
 * 
 * @author bobcodes
 */
public interface IncomingAction {
    
    public IncomingAction fromBytes(byte [] bytes) ;
    
    public int getMessageId() ;
}
