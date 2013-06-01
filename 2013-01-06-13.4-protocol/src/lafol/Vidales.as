package lafol
{
[CLASS321]   import zun.Fyqyna;
   import flash.net.Socket;
   import tinava.Dab;
   import flash.utils.Timer;
   import flash.utils.ByteArray;
   import com.hurlant.crypto.symmetric.ICipher;
   import flash.events.Event;
   import flash.events.ProgressEvent;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;


   public class Vidales extends Object
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Vidales() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.bufitot=this.pon;
         this.tafumapoq=this.pon;
         super();
         return;
      }

      public static const wulipaf:int = 4;

      public var vivohasu:Fyqyna;

      public var vijehy:Socket;

      public var nyqyv:Becadoduq;

      public const connected:Dab = new Dab();

      public const closed:Dab = new Dab();

      public const error:Dab = new Dab(String);

      public var vedo:Timer;

      private const pon:Zufadazi = new Zufadazi(0);

      private const data:ByteArray = new ByteArray();

      private var bufitot:Zufadazi;

      private var tafumapoq:Zufadazi;

      private var sat:int = -1;

      private var saqibug:ICipher;

      private var jufeqo:ICipher;

      private var server:String;

      private var port:int;

      public function setOutgoingCipher(param1:ICipher) : Vidales {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.saqibug=param1;
         return this;
      }

      public function setIncomingCipher(param1:ICipher) : Vidales {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.jufeqo=param1;
         return this;
      }

      public function connect(param1:String, param2:int) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.server=param1;
         this.port=param2;
         this.kuqoquju();
         this.sat=-1;
         if(this.nyqyv.mumyp)
         {
            this.wyhy();
         }
         else
         {
            this.vijehy.connect(param1,param2);
         }
         return;
      }

      private function kuqoquju() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.vijehy.addEventListener(Event.CONNECT,this.qotite);
         this.vijehy.addEventListener(Event.CLOSE,this.pikymasa);
         this.vijehy.addEventListener(ProgressEvent.SOCKET_DATA,this.rijybohe);
         this.vijehy.addEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
         this.vijehy.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onSecurityError);
         return;
      }

      private function wyhy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.vedo=new Timer(this.nyqyv.mumyp,1);
         this.vedo.addEventListener(TimerEvent.TIMER_COMPLETE,this.wivygoni);
         this.vedo.start();
         return;
      }

      private function wivygoni(param1:TimerEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.vedo.removeEventListener(TimerEvent.TIMER_COMPLETE,this.wivygoni);
         this.vijehy.connect(this.server,this.port);
         return;
      }

      public function disconnect() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.vijehy.close();
         this.tamugucal();
         this.closed.dispatch();
         return;
      }

      private function tamugucal() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.vijehy.removeEventListener(Event.CONNECT,this.qotite);
         this.vijehy.removeEventListener(Event.CLOSE,this.pikymasa);
         this.vijehy.removeEventListener(ProgressEvent.SOCKET_DATA,this.rijybohe);
         this.vijehy.removeEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
         this.vijehy.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onSecurityError);
         return;
      }

      public function sendMessage(param1:Zufadazi) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.tafumapoq.next=param1;
         this.tafumapoq=param1;
         return;
      }

      private function nenatab() : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:Zufadazi = this.bufitot.next;
         var _loc2_:Zufadazi = _loc1_;
         while(_loc2_)
         {
            this.data.clear();
            _loc2_.writeToOutput(this.data);
            this.data.position=0;
            if(this.saqibug!=null)
            {
               this.saqibug.encrypt(this.data);
               this.data.position=0;
            }
            this.vijehy.writeInt(this.data.bytesAvailable+5);
            this.vijehy.writeByte(_loc2_.id);
            this.vijehy.writeBytes(this.data);
            _loc2_.consume();
            _loc2_=_loc2_.next;
         }
         this.vijehy.flush();
         this.pon.next=null;
         this.pon.syluget=null;
         this.bufitot=this.tafumapoq=this.pon;
         return;
      }

      private function qotite(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.nenatab();
         this.connected.dispatch();
         return;
      }

      private function pikymasa(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.closed.dispatch();
         return;
      }

      private function onIOError(param1:IOErrorEvent) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:String = this.cygu("Socket-Server IO Error: {0}",[param1.text]);
         this.error.dispatch(_loc2_);
         this.closed.dispatch();
         return;
      }

      private function onSecurityError(param1:SecurityErrorEvent) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:String = this.cygu("Socket-Server Security Error: {0}",[param1.text]);
         this.error.dispatch(_loc2_);
         this.closed.dispatch();
         return;
      }

      private function rijybohe(param1:ProgressEvent=null) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var messageId:uint = 0;
         var message:Zufadazi = null;
         var data:ByteArray = null;
         var errorMessage:String = null;
         var _:ProgressEvent = param1;
         for(;!(this.vijehy==null||!this.vijehy.connected);continue loop0)
         {
            if(this.sat==-1)
            {
               if(this.vijehy.bytesAvailable<4)
               {
                  return;
               }
               try
               {
                  this.sat=this.vijehy.readInt();
               }
               catch(e:Error)
               {
                  if(!(_loc5_&&(_loc2_)))
                  {
                  }
                  errorMessage=cygu("Socket-Server Data Error: {0}: {1}",[e.name,e.message]);
                  if(_loc4_||(param1))
                  {
                     error.dispatch(errorMessage);
                     if(!_loc5_)
                     {
                     }
                  }
                  sat=-1;
                  if(!_loc5_)
                  {
                  }
                  return;
               }
            }
            if(this.vijehy.bytesAvailable<this.sat-wulipaf)
            {
               return;
            }
            messageId=this.vijehy.readUnsignedByte();
            message=this.vivohasu.suqyz(messageId);
            data=new ByteArray();
            if(this.sat-5>0)
            {
               this.vijehy.readBytes(data,0,this.sat-5);
            }
            data.position=0;
            if(this.jufeqo!=null)
            {
               this.jufeqo.decrypt(data);
               data.position=0;
            }
            this.sat=-1;
            if(message==null)
            {
               this.carof("Socket-Server Protocol Error: Unknown message");
            }
            message.parseFromInput(data);
            message.consume();
         }
         return;
      }

      private function carof(param1:String, param2:Array=null) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.error.dispatch(this.cygu(param1,param2));
         this.disconnect();
         return;
      }

      private function cygu(param1:String, param2:Array) : String {
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
         return this.vijehy.connected;
      }
   }
[/CLASS]
}