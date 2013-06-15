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
import java.util.ArrayList;
import java.util.List;

public class PhysicalObjectData {
    
    /**
      public var objectId_:int;
      public var pos_:Point;
      public var jibolu:Vector.<StatData>;
     */
    
    private final int objectId;
    private final Point position;
    private final List<StatData> stats;
    public PhysicalObjectData(int objectId, Point position, List<StatData> stats) {
        this.objectId = objectId;
        this.position = position;
        this.stats = stats;
    }
    
    public int getObjectId() {
        return objectId;
    }
    public Point getPosition() {
        return position;
    }
    public List<StatData> getStats() {
        return stats;
    }

    public static PhysicalObjectData fromBytes(DataInputStream din) throws IOException {
        int objectId = din.readInt();
        Point position = Point.fromBytes(din);
        int statsSize = din.readShort();
        List<StatData> stats = new ArrayList<>();
        for(int i = 0; i < statsSize; i++) {
            StatData sd = StatData.fromBytes(din);
            stats.add(sd);
        }
        return new PhysicalObjectData(objectId, position, stats);
    }
    
    @Override
    public String toString() {
        return "PhysicalObjectData [objectId=" + objectId + ", position="
                + position + ", stats=" + stats + "]";
    }
    
    
}
