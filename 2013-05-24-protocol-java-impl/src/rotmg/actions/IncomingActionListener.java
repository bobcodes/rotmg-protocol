package rotmg.actions;

public interface IncomingActionListener<ACTION extends IncomingAction> {
 
    public void receive(ACTION action);
    
}
