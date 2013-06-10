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

public class StatData {

    /**
      public static const tepawytej:int = 31;
      public static const kugol:int = 62;
      public static const riluc:int = 82;
     */
    public static final int tepawytej = 31;
    public static final int kugol = 62;
    public static final int riluc = 82;
    
    
    /**
      public var pocujotaz:uint = 0;  // type
      public var zuj:int;             // data for the above type
      public var dijy:String;         // string data for the above type
     */
    
    private final int type;
    private final int intData;
    private final String strData;
    
    public StatData(int type, int intData) {
        this(type, intData, null);
    }
    private StatData(int type,  String strData) {
        this(type, -1, null);
    }
    
    private StatData(int type, int intData, String strData) {
        super();
        this.type = type;
        this.intData = intData;
        this.strData = strData;
    }

    public int getType() {
        return type;
    }

    public int getIntData() {
        return intData;
    }

    public String getStrData() {
        return strData;
    }
    
    public boolean hasStringData() {
        return strData != null;
    }

    /**
         switch(pocujotaz)
         {
            case tepawytej:
            case kugol:
            case riluc:
               return true;
            default:
               return false;
         }
     */
    private static boolean hasStringData(int type) {
        switch(type) {
            case tepawytej:
            case kugol:
            case riluc:
               return true;
            default:
               return false;
        }
    }
    
    public static StatData fromBytes(DataInputStream din) throws IOException {
        int type = din.readUnsignedByte();
        if(hasStringData(type)){
            return new StatData(type, din.readUTF());
        } else {
            return new StatData(type, din.readInt());
        }
    }
    
    @Override
    public String toString() {
        return "StatData [type=" + type + ", intData=" + intData + ", strData="
                + strData + "]";
    }
}
