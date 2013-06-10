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

public class Tile {

    /** 
      public var x_:int;
      public var y_:int;
      public var type_:uint;
     */
    private final int x;
    private final int y;
    private final int type;
    
    
    
    public Tile(int x, int y, int type) {
        super();
        this.x = x;
        this.y = y;
        this.type = type;
    }

    

    public int getX() {
        return x;
    }



    public int getY() {
        return y;
    }

    public int getType() {
        return type;
    }

    /**
         this.x_=param1.readShort();
         this.y_=param1.readShort();
         this.type_=param1.readShort();
     * @throws IOException 
     */
    public static Tile fromBytes(DataInputStream din) throws IOException {
        return new Tile(
                din.readShort(),  // x
                din.readShort(),  // y
                din.readShort()); // type
    }

    @Override
    public String toString() {
        return "Tile [x=" + x + ", y=" + y + ", type=" + type + "]";
    }
}
