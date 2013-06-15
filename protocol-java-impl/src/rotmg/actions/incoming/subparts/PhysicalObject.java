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
package rotmg.actions.incoming.subparts;

import java.io.DataInputStream;
import java.io.IOException;

public class PhysicalObject {

    /**
      public var objectType_:int;
      public var bil:PhysicalObjectData;
     */
    
    private final int objectType;
    private final PhysicalObjectData data;
    public PhysicalObject(int objectType, PhysicalObjectData data) {
        super();
        this.objectType = objectType;
        this.data = data;
    }
    
    public int getObjectType() {
        return objectType;
    }
    public PhysicalObjectData getData() {
        return data;
    }
    
    public static PhysicalObject fromBytes(DataInputStream din) throws IOException {
        int objectType = din.readShort();
        PhysicalObjectData data = PhysicalObjectData.fromBytes(din);
        return new PhysicalObject(objectType, data);
    }
    
    @Override
    public String toString() {
        return "PhysicalObject [objectType=" + objectType + ", data=" + data
                + "]";
    }
    
    
    
}
