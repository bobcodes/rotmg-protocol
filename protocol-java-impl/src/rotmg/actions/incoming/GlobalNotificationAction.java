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
package rotmg.actions.incoming;

import java.io.DataInputStream;
import java.io.IOException;

import rotmg.actions.IncomingAction;

public class GlobalNotificationAction implements IncomingAction {

    private final int type;
    private final String text;
    
    public GlobalNotificationAction() {
        this(-1,null);
    }
    
    public GlobalNotificationAction(int type, String text) {
        this.type = type;
        this.text = text;
    }

    public int getType() {
        return type;
    }

    public String getText() {
        return text;
    }

    @Override
    public IncomingAction fromBytes(DataInputStream din) throws IOException {
        int type = din.readInt();
        String text = din.readUTF();
        return new GlobalNotificationAction(type, text);
    }

    /**
     *  public static const GLOBAL_NOTIFICATION:int = 9;
     */
    @Override
    public int getMessageId() {
        return 9;
    }

    @Override
    public String toString() {
        return "GlobalNotificationAction [type=" + type + ", text=" + text
                + "]";
    }
}
