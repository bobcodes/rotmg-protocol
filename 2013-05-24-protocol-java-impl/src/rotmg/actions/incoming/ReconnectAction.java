package rotmg.actions.incoming;

import rotmg.actions.IncomingAction;

/**
 *    public var name_:String;

      public var host_:String;

      public var port_:int;

      public var gameId_:int;

      public var keyTime_:int;

      public var key_:ByteArray;

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
 * @author bobcodes
 */
public class ReconnectAction implements IncomingAction {

    public final String name;
    public final String host;
    public final int port;
    public final int gameId;
    public final int keyTime;
    public final String key;
    
    public ReconnectAction() {
        this(null,null,null,null,null,null);
    }
    
    
    
    public ReconnectAction(String name, String host, String port,
            String gameId, String keyTime, String key) {
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



    public String getPort() {
        return port;
    }



    public String getGameId() {
        return gameId;
    }



    public String getKeyTime() {
        return keyTime;
    }



    public String getKey() {
        return key;
    }



    @Override
    public IncomingAction fromBytes(byte[] bytes) {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    public int getMessageId() {
        return 39;
    }

}
