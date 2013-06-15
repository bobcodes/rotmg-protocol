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
import java.util.Arrays;

import rotmg.actions.IncomingAction;
import rotmg.util.BitsAndBytes;

/**
 *    public var name_:String;

      public var host_:String;

      public var port_:int;

      public var gameId_:int;

      public var keyTime_:int;

      public var key_:ByteArray;
 * @author bobcodes
 */
public class ReconnectAction implements IncomingAction {

    public final String name;
    public final String host;
    public final int port;
    public final int gameId;
    public final int keyTime;
    public final byte [] key;
    
    public ReconnectAction() {
        this(null,null,-1,-1,-1,null);
    }


    public ReconnectAction(String name, String host, int port, int gameId,
            int keyTime, byte [] key) {
        super();
        this.name = name;
        this.host = host;
        this.port = port;
        this.gameId = gameId;
        this.keyTime = keyTime;
        this.key = key;
    }

    public String getName() {
        return name;
    }


    public String getHost() {
        return host;
    }

    public int getPort() {
        return port;
    }


    public int getGameId() {
        return gameId;
    }


    public int getKeyTime() {
        return keyTime;
    }


    public byte [] getKey() {
        return key;
    }

    @Override
    public int getMessageId() {
        return 39;
    }

    /**
      override public function parseFromInput(param1:IDataInput) : void {
         this.name_=param1.readUTF();
         this.host_=param1.readUTF();
         this.port_=param1.readInt();
         this.gameId_=param1.readInt();
         this.keyTime_=param1.readInt();
         var _loc2_:int = param1.readShort();
         this.key_.length=0;
         param1.readBytes(this.key_,0,_loc2_);
         return;
      }
     */
    @Override
    public IncomingAction fromBytes(DataInputStream din) throws IOException {
        String name = din.readUTF();
        String host = din.readUTF();
        int port = din.readInt();
        int gameId = din.readInt();
        int keyTime = din.readInt();
        byte [] key = BitsAndBytes.readShortByteArray(din);
        
        return new ReconnectAction(name, host, port, gameId, keyTime, key);
    }


    @Override
    public String toString() {
        return "ReconnectAction [name=" + name + ", host=" + host + ", port="
                + port + ", gameId=" + gameId + ", keyTime=" + keyTime
                + ", key=" + Arrays.toString(key) + "]";
    }
}
