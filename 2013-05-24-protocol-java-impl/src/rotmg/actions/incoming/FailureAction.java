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

import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.io.IOException;

import rotmg.actions.IncomingAction;

public class FailureAction implements IncomingAction {

    private int _errorId;
    private String _errorDescription;
    
    public FailureAction() {
        
    }
    
    public FailureAction(int errorId, String errorDescription) {
        this._errorId = errorId;
        this._errorDescription = errorDescription;
    }

    public int getErrorId() {
        return _errorId;
    }

    public String getErrorDescription() {
        return _errorDescription;
    }

    /**
      public var errorId_:int;

      public var errorDescription_:String;

      override public function parseFromInput(param1:IDataInput) : void {
         this.errorId_=param1.readInt();
         this.errorDescription_=param1.readUTF();
         return;
      }
     */
    @Override
    public IncomingAction fromBytes(byte[] bytes) throws IOException {
        try (   ByteArrayInputStream bin = new ByteArrayInputStream(bytes);
                DataInputStream din = new DataInputStream(bin)) {
            int errorId = din.readInt();
            String errorDesc = din.readUTF();
            return new FailureAction(errorId, errorDesc);
        }
    }

    @Override
    public int getMessageId() {
        return 0;
    }

    @Override
    public String toString() {
        return "FailureAction [errorId=" + _errorId + ", errorDescription="
                + _errorDescription + "]";
    }
}
