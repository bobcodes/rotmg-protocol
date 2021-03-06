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
