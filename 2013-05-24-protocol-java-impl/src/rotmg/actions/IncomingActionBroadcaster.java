/*
The MIT License (MIT)

Copyright (c) 2013 bobcodes

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
 */
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
