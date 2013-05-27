package aaa.rotmg.net
{
   import jypuq.Pyzokipu;
   import flash.net.Socket;
   import tulunyno.Hugyqufyq;
   import flash.utils.Timer;
   import flash.utils.ByteArray;
   import com.hurlant.crypto.symmetric.ICipher;
   import flash.events.Event;
   import flash.events.ProgressEvent;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;


   public class RotMGNetworkHandler extends Object
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function RotMGNetworkHandler() {
         this.naril=this.gutubyfad;
         this.wukycasew=this.gutubyfad;
         super();
         return;
      }

      public static const tyju:int = 4;

      public var govizupas:Pyzokipu;

      public var _tcpSocket:Socket;

      public var kod:Qyvasiz;

      public const connected:Hugyqufyq = new Hugyqufyq();

      public const closed:Hugyqufyq = new Hugyqufyq();

      public const error:Hugyqufyq = new Hugyqufyq(String);

      public var _reconnectTimer:Timer;

      private const gutubyfad:NetworkMessage = new NetworkMessage(0);

      private const data:ByteArray = new ByteArray();

      private var naril:NetworkMessage;

      private var wukycasew:NetworkMessage;

      private var dokywi:int = -1;

      private var _outgoingCipher:ICipher;

      private var _incomingCipher:ICipher;

      private var _server:String;

      private var _port:int;

      public function setOutgoingCipher(outgoingCipher:ICipher) : RotMGNetworkHandler {
         this._outgoingCipher=outgoingCipher;
         return this;
      }

      public function setIncomingCipher(incomingCipher:ICipher) : RotMGNetworkHandler {
         this._incomingCipher=incomingCipher;
         return this;
      }

      public function connect(server:String, port:int) : void {
         _server=param1;
         _port=param2;
         this.addListeners();
         this.dokywi=-1;
         if(this.kod.cikyzyba)
         {
            this.reconnect();
         }
         else
         {
            this._tcpSocket.connect(param1,param2);
         }
         return;
      }

      private function addListeners() : void {
         this._tcpSocket.addEventListener(Event.CONNECT,this.onConnect);
         this._tcpSocket.addEventListener(Event.CLOSE,this.onClose);
         this._tcpSocket.addEventListener(ProgressEvent.SOCKET_DATA,this.onSocketData);
         this._tcpSocket.addEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
         this._tcpSocket.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onSecurityError);
         return;
      }

      private function reconnect() : void {
         _reconnectTimer=new Timer(this.kod.cikyzyba,1);
         _reconnectTimer.addEventListener(TimerEvent.TIMER_COMPLETE,this.onReconnect);
         _reconnectTimer.start();
         return;
      }

      private function onReconnect(param1:TimerEvent) : void {
         this.mom.removeEventListener(TimerEvent.TIMER_COMPLETE,this.onReconnect);
         this._tcpSocket.connect(_server,_port);
         return;
      }

      public function disconnect() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this._tcpSocket.close();
         this.removeListeners();
         this.closed.dispatch();
         return;
      }

      private function removeListeners() : void {
         this._tcpSocket.removeEventListener(Event.CONNECT,this.onConnect);
         this._tcpSocket.removeEventListener(Event.CLOSE,this.onClose);
         this._tcpSocket.removeEventListener(ProgressEvent.SOCKET_DATA,this.onSocketData);
         this._tcpSocket.removeEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
         this._tcpSocket.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onSecurityError);
         return;
      }

      public function sendMessage(param1:NetworkMessage) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.wukycasew.next=param1;
         this.wukycasew=param1;
         return;
      }

      private function ritevi() : void {
         var _loc1_:NetworkMessage = this.naril.next;
         var _loc2_:NetworkMessage = _loc1_;
         while(_loc2_)
         {
            this.data.clear();
            _loc2_.writeToOutput(this.data);
            this.data.position=0;
            if(this._outgoingCipher!=null)
            {
               this._outgoingCipher.encrypt(this.data);
               this.data.position=0;
            }
            this._tcpSocket.writeInt(this.data.bytesAvailable+5);
            this._tcpSocket.writeByte(_loc2_.id);
            this._tcpSocket.writeBytes(this.data);
            _loc2_.consume();
            _loc2_=_loc2_.next;
         }
         this._tcpSocket.flush();
         this.gutubyfad.next=null;
         this.gutubyfad.wacumod=null;
         this.naril=this.wukycasew=this.gutubyfad;
         return;
      }

      private function onConnect(param1:Event) : void {
         this.ritevi();
         this.connected.dispatch();
         return;
      }

      private function onClose(param1:Event) : void {
         this.closed.dispatch();
         return;
      }

      private function onIOError(param1:IOErrorEvent) : void {
         var _loc2_:String = this.zis("Socket-Server IO Error: {0}",[param1.text]);
         this.error.dispatch(_loc2_);
         this.closed.dispatch();
         return;
      }

      private function onSecurityError(param1:SecurityErrorEvent) : void {
         var _loc2_:String = this.zis("Socket-Server Security Error: {0}",[param1.text]);
         this.error.dispatch(_loc2_);
         this.closed.dispatch();
         return;
      }

      private function onSocketData(param1:ProgressEvent=null) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var messageId:uint = 0;
         var message:NetworkMessage = null;
         var data:ByteArray = null;
         var errorMessage:String = null;
         var _:ProgressEvent = param1;
         for(;!(this._tcpSocket==null||!this._tcpSocket.connected);continue loop0)
         {
            if(this.dokywi==-1)
            {
               if(this._tcpSocket.bytesAvailable<4)
               {
                  return;
               }
               try
               {
                  this.dokywi=this._tcpSocket.readInt();
               }
               catch(e:Error)
               {
                  if(!(_loc5_&&(_loc3_)))
                  {
                  }
                  errorMessage=zis("Socket-Server Data Error: {0}: {1}",[e.name,e.message]);
                  if(!_loc5_)
                  {
                     error.dispatch(errorMessage);
                     if(_loc4_)
                     {
                     }
                  }
                  dokywi=-1;
                  if(!(_loc5_&&(this)))
                  {
                  }
                  return;
               }
            }
            if(this._tcpSocket.bytesAvailable<this.dokywi-tyju)
            {
               return;
            }
            messageId=this._tcpSocket.readUnsignedByte();
            message=this.govizupas.runozak(messageId);
            data=new ByteArray();
            if(this.dokywi-5>0)
            {
               this._tcpSocket.readBytes(data,0,this.dokywi-5);
            }
            data.position=0;
            if(this._incomingCipher!=null)
            {
               this._incomingCipher.decrypt(data);
               data.position=0;
            }
            this.dokywi=-1;
            if(message==null)
            {
               this.velo("Socket-Server Protocol Error: Unknown message");
            }
            try
            {
               message.parseFromInput(data);
            }
            catch(error:Error)
            {
               velo("Socket-Server Protocol Error: {0}",[error.toString()]);
               if(_loc4_)
               {
               }
               return;
            }
            message.consume();
         }
         return;
      }

      private function velo(param1:String, param2:Array=null) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.error.dispatch(this.zis(param1,param2));
         this.disconnect();
         return;
      }

      private function zis(param1:String, param2:Array) : String {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc3_:int = param2.length;
         var _loc4_:* = 0;
         while(_loc4_<_loc3_)
         {
            param1=param1.replace("{"+_loc4_+"}",param2[_loc4_]);
            _loc4_++;
         }
         return param1;
      }

      public function isConnected() : Boolean {
         return this._tcpSocket.connected;
      }
   }

}