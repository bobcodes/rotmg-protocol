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

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;

import rotmg.account.UserConfig;
import rotmg.actions.OutgoingAction;

public class LoadAction implements OutgoingAction {

    /**
     * TODO: pass this in dynamically
     */
    private final int _charId;
    private final boolean _isFromArena;
    
    public LoadAction() {
        this(UserConfig.CHAR_ID, false);
    }
    
    public LoadAction(int charId, boolean isFromArena) {
        _charId = charId;
        _isFromArena = isFromArena;
    }



    /**
       public var charId_:int;

      override public function writeToOutput(param1:IDataOutput) : void {
         param1.writeInt(this.charId_);
         return;
      }
      
      got outgoing  LoadAction  45  9   LoadAction [charId=-723486936]
     */
    @Override
    public void toBytes(DataOutputStream dout) throws IOException {
        dout.writeInt(_charId);
        dout.writeBoolean(_isFromArena);
    }

    @Override
    public OutgoingAction fromBytes(DataInputStream din) throws IOException {
        int charId = din.readInt();
        boolean isFromArena = din.readBoolean();
        return new LoadAction(charId, isFromArena);
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
        return "LoadAction [charId=" + _charId + ", isFromArena="
                + _isFromArena + "]";
    }

    
}
