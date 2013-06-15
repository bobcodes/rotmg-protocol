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
import java.util.ArrayList;
import java.util.List;

import rotmg.actions.IncomingAction;
import rotmg.actions.incoming.subparts.PhysicalObject;
import rotmg.actions.incoming.subparts.Tile;
import rotmg.util.BitsAndBytes;

public class UpdateAction implements IncomingAction {

    /**
      public var tiles_:Vector.<Dogugot>;
      public var newObjs_:Vector.<Qetebe>;
      public var drops_:Vector.<int>;
     */
    private final List<Tile> tiles;
    private final List<PhysicalObject> physicalObjects;
    private final List<Integer> drops;
    
    public UpdateAction() {
        this(null,null,null);
    }
    
    public UpdateAction(List<Tile> tiles, List<PhysicalObject> physicalObjects, List<Integer> drops) {
        this.tiles = tiles;
        this.physicalObjects = physicalObjects;
        this.drops = drops;
    }

    public List<Tile> getTiles() {
        return tiles;
    }

    public List<PhysicalObject> getPhysicalObjects() {
        return physicalObjects;
    }

    public List<Integer> getDrops() {
        return drops;
    }

    @Override
    public IncomingAction fromBytes(DataInputStream din) throws IOException {
        int tilesSize = din.readShort();
        List<Tile> tiles = new ArrayList<Tile>();
        for (int i = 0; i < tilesSize; i++) {
            tiles.add(Tile.fromBytes(din));
        }
        
        int physicalObjectsSize = din.readShort();
        List<PhysicalObject> physicalObjects = new ArrayList<PhysicalObject>();
        for (int i = 0; i < physicalObjectsSize; i++) {
            PhysicalObject po = PhysicalObject.fromBytes(din);
            System.out.println(po);
            physicalObjects.add(po);
        }
        
        List<Integer> drops = BitsAndBytes.readIntList(din);
        
        return new UpdateAction(tiles, physicalObjects, drops);
    }

    @Override
    public int getMessageId() {
        return 26;
    }

    @Override
    public String toString() {
        return "UpdateAction [tiles=" + tiles + ", physicalObjects="
                + physicalObjects + ", drops=" + drops + "]";
    }
}
