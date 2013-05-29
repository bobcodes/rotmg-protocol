package rotmg.actions;

import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public enum IncomingActionBroadcaster {

    SINGLETON;
    
    private final Map<Class<? extends IncomingAction>,
                      List<IncomingActionListener<? extends IncomingAction>>>
                      subscriptionMap = new HashMap<>();;
    
    public static IncomingActionBroadcaster get() {
        return SINGLETON;
    }
                      
    public <IA  extends IncomingAction> void subscribe(Class<IA> classToSubscribeTo, IncomingActionListener<IA> listener) {
        List<IncomingActionListener<? extends IncomingAction>> listeners = subscriptionMap.get(classToSubscribeTo);
        if(listeners == null) {
            listeners = new ArrayList<>();
        }
        listeners.add(listener);
    }

    public void broadcast(IncomingAction action) {
        List<IncomingActionListener<? extends IncomingAction>> listeners = subscriptionMap.get(action.getClass());
        if(listeners == null) {
            return;
        }
        
        for(IncomingActionListener<? extends IncomingAction> listener : listeners) {
            try {
                listener.getClass().getMethod("receive", action.getClass()).invoke(listener, action);
            } catch (IllegalAccessException | IllegalArgumentException
                    | InvocationTargetException | NoSuchMethodException
                    | SecurityException e) {
                throw new IllegalStateException("not the caller's fault. the person who coded this method wrote a bug.");
            }
        }
    }
    
    public void clear() {
        subscriptionMap.clear();
    }
}
