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
package rotmg.actions.outgoing;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;

import rotmg.account.UserConfig;
import rotmg.actions.OutgoingAction;

public class LoadAction implements OutgoingAction {

    /**
     * TODO: pass this in dynamically
     */
    private final int charId;
    
    public LoadAction() {
        this(UserConfig.CHAR_ID);
    }
    
    public LoadAction(int charId) {
        this.charId = charId;
    }



    /**
       public var charId_:int;

      override public function writeToOutput(param1:IDataOutput) : void {
         param1.writeInt(this.charId_);
         return;
      }
     */
    @Override
    public byte[] toBytes() throws IOException {
        try (   ByteArrayOutputStream bout = new ByteArrayOutputStream();
                DataOutputStream dout = new DataOutputStream(bout)) {
            dout.writeInt(charId);
            return bout.toByteArray();   
        }
    }

    @Override
    public OutgoingAction fromBytes(byte[] bytes) throws IOException {
        try (ByteArrayInputStream bin = new ByteArrayInputStream(bytes);
                DataInputStream din = new DataInputStream(bin)){
            
            int charId = din.readInt();
            return new LoadAction(charId);
        }
    }

    /**
      public static const LOAD:int = 45;
     */
    @Override
    public int getMessageId() {
        return 45;
    }

    @Override
    public String toString() {
        return "LoadAction [charId=" + charId + "]";
    }
}
