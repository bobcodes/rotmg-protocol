package aaa
{
   import com.hurlant.crypto.symmetric.ICipher;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.Socket;
   import flash.utils.ByteArray;
   import flash.utils.Timer;
   import mukyrosu.Qanyduk;
   import zugevygam.Byty;


   public class NetworkHandler extends Object
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function NetworkHandler() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.ryvulavaj=this.cociki;
         this.qyr=this.cociki;
         super();
         return;
      }

      public static const muju:int = 4;

      public var bufaz:Byty;

      public var wemedimes:Socket;

      public var polejihu:Zonev;

      public const connected:Qanyduk = new Qanyduk();

      public const closed:Qanyduk = new Qanyduk();

      public const error:Qanyduk = new Qanyduk(String);

      public var domypoza:Timer;

      private const cociki:Qamyro = new Qamyro(0);

      private const data:ByteArray = new ByteArray();

      private var ryvulavaj:Qamyro;

      private var qyr:Qamyro;

      private var fepeb:int = -1;

      private var natelataq:ICipher;

      private var gywegu:ICipher;

      private var server:String;

      private var port:int;

      public function setOutgoingCipher(param1:ICipher) : NetworkHandler {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.natelataq=param1;
         return this;
      }

      public function setIncomingCipher(param1:ICipher) : NetworkHandler {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.gywegu=param1;
         return this;
      }

      public function connect(param1:String, param2:int) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.server=param1;
         this.port=param2;
         this.hupydyw();
         this.fepeb=-1;
         if(this.polejihu.cisud)
         {
            this.qama();
         }
         else
         {
            this.wemedimes.connect(param1,param2);
         }
         return;
      }

      private function hupydyw() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.wemedimes.addEventListener(Event.CONNECT,this.fura);
         this.wemedimes.addEventListener(Event.CLOSE,this.lyb);
         this.wemedimes.addEventListener(ProgressEvent.SOCKET_DATA,this.fid);
         this.wemedimes.addEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
         this.wemedimes.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onSecurityError);
         return;
      }

      private function qama() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.domypoza=new Timer(this.polejihu.cisud,1);
         this.domypoza.addEventListener(TimerEvent.TIMER_COMPLETE,this.rubozewo);
         this.domypoza.start();
         return;
      }

      private function rubozewo(param1:TimerEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.domypoza.removeEventListener(TimerEvent.TIMER_COMPLETE,this.rubozewo);
         this.wemedimes.connect(this.server,this.port);
         return;
      }

      public function disconnect() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.wemedimes.close();
         this.mykadezyn();
         this.closed.dispatch();
         return;
      }

      private function mykadezyn() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.wemedimes.removeEventListener(Event.CONNECT,this.fura);
         this.wemedimes.removeEventListener(Event.CLOSE,this.lyb);
         this.wemedimes.removeEventListener(ProgressEvent.SOCKET_DATA,this.fid);
         this.wemedimes.removeEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
         this.wemedimes.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onSecurityError);
         return;
      }

      public function sendMessage(param1:Qamyro) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.qyr.next=param1;
         this.qyr=param1;
         return;
      }

      private function sonaj() : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:Qamyro = this.ryvulavaj.next;
         var _loc2_:Qamyro = _loc1_;
         while(_loc2_)
         {
            this.data.clear();
            _loc2_.writeToOutput(this.data);
            this.data.position=0;
            if(this.natelataq!=null)
            {
               this.natelataq.encrypt(this.data);
               this.data.position=0;
            }
            this.wemedimes.writeInt(this.data.bytesAvailable+5);
            this.wemedimes.writeByte(_loc2_.id);
            this.wemedimes.writeBytes(this.data);
            _loc2_.consume();
            _loc2_=_loc2_.next;
         }
         this.wemedimes.flush();
         this.cociki.next=null;
         this.cociki.meqyfubyw=null;
         this.ryvulavaj=this.qyr=this.cociki;
         return;
      }

      private function fura(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.sonaj();
         this.connected.dispatch();
         return;
      }

      private function lyb(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.closed.dispatch();
         return;
      }

      private function onIOError(param1:IOErrorEvent) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:String = this.ludis("Socket-Server IO Error: {0}",[param1.text]);
         this.error.dispatch(_loc2_);
         this.closed.dispatch();
         return;
      }

      private function onSecurityError(param1:SecurityErrorEvent) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:String = this.ludis("Socket-Server Security Error: {0}",[param1.text]);
         this.error.dispatch(_loc2_);
         this.closed.dispatch();
         return;
      }

      private function fid(param1:ProgressEvent=null) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var messageId:uint = 0;
         var message:Qamyro = null;
         var data:ByteArray = null;
         var errorMessage:String = null;
         var _:ProgressEvent = param1;
         while(!(this.wemedimes==null||!this.wemedimes.connected))
         {
            if(this.fepeb==-1)
            {
               if(this.wemedimes.bytesAvailable<4)
               {
                  return;
               }
               try
               {
                  this.fepeb=this.wemedimes.readInt();
               }
               catch(e:Error)
               {
                  if(!_loc4_)
                  {
                  }
                  errorMessage=ludis("Socket-Server Data Error: {0}: {1}",[e.name,e.message]);
                  if(!(_loc4_&&(this)))
                  {
                     error.dispatch(errorMessage);
                     if(!_loc4_)
                     {
                     }
                     else
                     {
                        if(_loc5_)
                        {
                        }
                        return;
                     }
                  }
                  fepeb=-1;
                  if(_loc5_)
                  {
                  }
                  return;
               }
            }
            if(this.wemedimes.bytesAvailable<this.fepeb-muju)
            {
               return;
            }
            messageId=this.wemedimes.readUnsignedByte();
            message=this.bufaz.quseb(messageId);
            data=new ByteArray();
            if(this.fepeb-5>0)
            {
               this.wemedimes.readBytes(data,0,this.fepeb-5);
            }
            data.position=0;
            if(this.gywegu!=null)
            {
               this.gywegu.decrypt(data);
               data.position=0;
            }
            this.fepeb=-1;
            if(message==null)
            {
               this.wedikej("Socket-Server Protocol Error: Unknown message");
               return;
            }
            message.parseFromInput(data);
            message.consume();
         }
         return;
      }

      private function wedikej(param1:String, param2:Array=null) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.error.dispatch(this.ludis(param1,param2));
         this.disconnect();
         return;
      }

      private function ludis(param1:String, param2:Array) : String {
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
         return this.wemedimes.connected;
      }
   }

}