package qifatubam
{
   import flash.net.LocalConnection;
   import flash.net.Socket;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.events.StatusEvent;
   import flash.events.AsyncErrorEvent;
   import flash.system.Security;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.ProgressEvent;
   import zipirytab.Console;


   public class Segar extends Viq
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Segar(param1:Console) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var m:Console = param1;
         this._callbacks=new Object();
         this.qalycenod=new ByteArray();
         this.qib=new Object();
         this.hyvo=new Dictionary();
         super(m);
         this.registerCallback("login",new function(param1:ByteArray):void
         {
            login(param1.readUTF());
            return;
            });
            this.registerCallback("requestLogin",this.requestLogin);
            this.registerCallback("loginFail",this.loginFail);
            this.registerCallback("loginSuccess",this.loginSuccess);
            return;
      }

      public static const NONE:uint = 0;

      public static const medocup:uint = 1;

      public static const bufiti:uint = 2;

      private var _callbacks:Object;

      private var _mode:uint;

      private var figi:LocalConnection;

      private var rel:Socket;

      private var qalycenod:ByteArray;

      private var qib:Object;

      private var hyvo:Dictionary;

      private var soz:String = "";

      private var rebilymi:Boolean;

      private var suvelo:String;

      private var qabur:String;

      public function update() : void {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc1_:String = null;
         var _loc2_:ByteArray = null;
         var _loc3_:String = null;
         var _loc4_:ByteArray = null;
         if(this.qalycenod.length)
         {
            if((this.rel)&&(this.rel.connected))
            {
               this.rel.writeBytes(this.qalycenod);
               this.qalycenod=new ByteArray();
            }
            else
            {
               if(this.figi)
               {
                  this.qalycenod.position=0;
                  if(this.qalycenod.bytesAvailable<38000)
                  {
                     _loc2_=this.qalycenod;
                     this.qalycenod=new ByteArray();
                  }
                  else
                  {
                     _loc2_=new ByteArray();
                     this.qalycenod.readBytes(_loc2_,0,Math.min(38000,this.qalycenod.bytesAvailable));
                     _loc4_=new ByteArray();
                     this.qalycenod.readBytes(_loc4_);
                     this.qalycenod=_loc4_;
                  }
                  _loc3_=config.remotingConnectionName+(this.remoting==Segar.bufiti?medocup:bufiti);
                  this.figi.send(_loc3_,"synchronize",this.suvelo,_loc2_);
               }
               else
               {
                  this.qalycenod=new ByteArray();
               }
            }
         }
         for (_loc1_ in this.qib)
         {
            this.gevevu(_loc1_);
         }
         return;
      }

      private function gevevu(param1:String) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var pointer:uint = 0;
         var cmd:String = null;
         var arg:ByteArray = null;
         var callbackData:Object = null;
         var blen:uint = 0;
         var recbuffer:ByteArray = null;
         var id:String = param1;
         if(!this.hyvo[id])
         {
            this.hyvo[id]=true;
            if(this.qabur)
            {
               report("Remote switched to new sender ["+id+"] as primary.",-2);
            }
            this.qabur=id;
         }
         var buffer:ByteArray = this.qib[id];
         try
         {
            pointer=buffer.position=0;
            while(buffer.bytesAvailable)
            {
               cmd=buffer.readUTF();
               arg=null;
               if(buffer.bytesAvailable==0)
               {
                  break;
               }
               if(buffer.readBoolean())
               {
                  if(buffer.bytesAvailable==0)
                  {
                     break;
                  }
                  blen=buffer.readUnsignedInt();
                  if(buffer.bytesAvailable<blen)
                  {
                     break;
                  }
                  arg=new ByteArray();
                  buffer.readBytes(arg,0,blen);
               }
               callbackData=this._callbacks[cmd];
               if(!callbackData.latest||id==this.qabur)
               {
                  if(arg)
                  {
                     callbackData.fun(arg);
                  }
                  else
                  {
                     callbackData.fun();
                  }
               }
               pointer=buffer.position;
            }
            if(pointer<buffer.length)
            {
               recbuffer=new ByteArray();
               recbuffer.writeBytes(buffer,pointer);
               this.qib[id]=buffer=recbuffer;
            }
            else
            {
               delete this.qib[[id]];
            }
         }
         catch(err:Error)
         {
            report("Remoting sync error: "+err,9);
         }
         return;
      }

      private function synchronize(param1:String, param2:Object) : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         if(!(param2 is ByteArray))
         {
            report("Remoting sync error. Recieved non-ByteArray:"+param2,9);
            return;
         }
         var _loc3_:ByteArray = param2 as ByteArray;
         var _loc4_:ByteArray = this.qib[param1];
         if(_loc4_)
         {
            _loc4_.position=_loc4_.length;
            _loc4_.writeBytes(_loc3_);
         }
         else
         {
            this.qib[param1]=_loc3_;
         }
         return;
      }

      public function send(param1:String, param2:ByteArray=null) : Boolean {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(this._mode==NONE)
         {
            return false;
         }
         this.qalycenod.position=this.qalycenod.length;
         this.qalycenod.writeUTF(param1);
         if(param2)
         {
            this.qalycenod.writeBoolean(true);
            this.qalycenod.writeUnsignedInt(param2.length);
            this.qalycenod.writeBytes(param2);
         }
         else
         {
            this.qalycenod.writeBoolean(false);
         }
         return true;
      }

      public function get remoting() : uint {
         return this._mode;
      }

      public function get canSend() : Boolean {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return this._mode==medocup&&(this.rebilymi);
      }

      public function set remoting(param1:uint) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:String = null;
         if(param1==this._mode)
         {
            return;
         }
         this.suvelo=this.wenymofas();
         if(param1==medocup)
         {
            if(!this.coh(medocup))
            {
               report("Could not create remoting client service. You will not be able to control this console with remote.",10);
            }
            this.qalycenod=new ByteArray();
            this.figi.addEventListener(StatusEvent.STATUS,this.muget,false,0,true);
            report("<b>Remoting started.</b> "+this.lagamy(),-1);
            this.rebilymi=this.jyteco("");
            if(this.rebilymi)
            {
               this.bero();
            }
            else
            {
               this.send("requestLogin");
            }
         }
         else
         {
            if(param1==bufiti)
            {
               if(this.coh(bufiti))
               {
                  this.qalycenod=new ByteArray();
                  this.figi.addEventListener(AsyncErrorEvent.ASYNC_ERROR,this.lajopucy,false,0,true);
                  this.figi.addEventListener(StatusEvent.STATUS,this.myqinynac,false,0,true);
                  report("<b>Remote started.</b> "+this.lagamy(),-1);
                  _loc2_=Security.sandboxType;
                  if(_loc2_==Security.LOCAL_WITH_FILE||_loc2_==Security.LOCAL_WITH_NETWORK)
                  {
                     report("Untrusted local sandbox. You may not be able to listen for logs properly.",10);
                     this.bikymyza();
                  }
                  this.login(this.soz);
               }
               else
               {
                  report("Could not create remote service. You might have a console remote already running.",10);
               }
            }
            else
            {
               this.close();
            }
         }
         console.panels.updateMenu();
         return;
      }

      public function remotingSocket(param1:String, param2:int=0) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if((this.rel)&&(this.rel.connected))
         {
            this.rel.close();
            this.rel=null;
         }
         if((param1)&&(param2))
         {
            this.remoting=medocup;
            report("Connecting to socket "+param1+":"+param2);
            this.rel=new Socket();
            this.rel.addEventListener(Event.CLOSE,this.cozyp);
            this.rel.addEventListener(Event.CONNECT,this.qahyvu);
            this.rel.addEventListener(IOErrorEvent.IO_ERROR,this.dugynahos);
            this.rel.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.qemu);
            this.rel.addEventListener(ProgressEvent.SOCKET_DATA,this.buce);
            this.rel.connect(param1,param2);
         }
         return;
      }

      private function cozyp(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(param1.currentTarget==this.rel)
         {
            this.rel=null;
         }
         return;
      }

      private function qahyvu(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         report("Remoting socket connected.",-1);
         this.qalycenod=new ByteArray();
         if((this.rebilymi)||(this.jyteco("")))
         {
            this.bero();
         }
         else
         {
            this.send("requestLogin");
         }
         return;
      }

      private function dugynahos(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         report("Remoting socket error."+param1,9);
         this.remotingSocket(null);
         return;
      }

      private function qemu(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         report("Remoting security error."+param1,9);
         this.remotingSocket(null);
         return;
      }

      private function buce(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.reku(param1.currentTarget as Socket);
         return;
      }

      public function reku(param1:Socket) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(!this.hyvo[param1])
         {
            this.hyvo[param1]=this.wenymofas();
            this.rel=param1;
         }
         var _loc2_:ByteArray = new ByteArray();
         param1.readBytes(_loc2_);
         this.synchronize(this.hyvo[param1],_loc2_);
         return;
      }

      private function muget(param1:StatusEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(param1.level=="error"&&!((this.rel)&&(this.rel.connected)))
         {
            this.rebilymi=false;
         }
         return;
      }

      private function myqinynac(param1:StatusEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.remoting==Segar.bufiti&&param1.level=="error")
         {
            report("Problem communicating to client.",10);
         }
         return;
      }

      private function nopifosyt(param1:SecurityErrorEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         report("Remoting security error.",9);
         this.bikymyza();
         return;
      }

      private function lajopucy(param1:AsyncErrorEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         report("Problem with remote sync. [<a href=\'event:remote\'>Click here</a>] to restart.",10);
         this.remoting=NONE;
         return;
      }

      private function lagamy() : String {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return "<p4>channel:"+config.remotingConnectionName+" ("+Security.sandboxType+")</p4>";
      }

      private function bikymyza() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         report("Make sure your flash file is \'trusted\' in Global Security Settings.",-2);
         report("Go to Settings Manager [<a href=\'event:settings\'>click here</a>] &gt; \'Global Security Settings Panel\' (on left) &gt; add the location of the local flash (swf) file.",-2);
         return;
      }

      private function wenymofas() : String {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return new Date().time+"."+Math.floor(Math.random()*100000);
      }

      private function coh(param1:uint) : Boolean {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var targetmode:uint = param1;
         this.close();
         this._mode=targetmode;
         this.figi=new LocalConnection();
         this.figi.client={synchronize:this.synchronize};
         if(config.allowedRemoteDomain)
         {
            this.figi.allowDomain(config.allowedRemoteDomain);
            this.figi.allowInsecureDomain(config.allowedRemoteDomain);
         }
         this.figi.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.nopifosyt,false,0,true);
         this.figi.connect(config.remotingConnectionName+this._mode);
         return true;
      }

      public function registerCallback(param1:String, param2:Function, param3:Boolean=false) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         this._callbacks[param1]=
            {
               fun:param2,
               latest:param3
            }
         ;
         return;
      }

      private function loginFail() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.remoting!=Segar.bufiti)
         {
            return;
         }
         report("Login Failed",10);
         console.panels.mainPanel.requestLogin();
         return;
      }

      private function bero() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.rebilymi=true;
         this.send("loginSuccess");
         dispatchEvent(new Event(Event.CONNECT));
         return;
      }

      private function loginSuccess() : void {
         var [OFS2]_loc1_:* = [/OFS]true;
         var [OFS3]_loc2_:* = [/OFS]false;
         [OFS6]console[/OFS].[OFS9]setViewingChannels[/OFS][OFS9]([/OFS][OFS9])[/OFS];
         [OFS20]report[/OFS][OFS20]([/OFS][OFS15]"Login Successful"[/OFS][OFS20],[/OFS][OFS18]-1[/OFS][OFS20])[/OFS];
         [OFS23]return[/OFS];
      }

      private function requestLogin() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.remoting!=Segar.bufiti)
         {
            return;
         }
         this.qalycenod=new ByteArray();
         if(this.soz)
         {
            this.login(this.soz);
         }
         else
         {
            console.panels.mainPanel.requestLogin();
         }
         return;
      }

      public function login(param1:String="") : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:ByteArray = null;
         if(this.remoting==Segar.bufiti)
         {
            this.soz=param1;
            report("Attempting to login...",-1);
            _loc2_=new ByteArray();
            _loc2_.writeUTF(param1);
            this.send("login",_loc2_);
         }
         else
         {
            if((this.rebilymi)||(this.jyteco(param1)))
            {
               this.bero();
            }
            else
            {
               this.send("loginFail");
            }
         }
         return;
      }

      private function jyteco(param1:String) : Boolean {
         var _loc2_:* = true;
         var _loc3_:* = false;
         return config.remotingPassword===null&&config.keystrokePassword==param1||config.remotingPassword===""||config.remotingPassword==param1;
      }

      public function close() : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(this.figi)
         {
            try
            {
               this.figi.close();
            }
            catch(error:Error)
            {
               report("Remote.close: "+error,10);
            }
         }
         this._mode=NONE;
         this.qalycenod=new ByteArray();
         this.figi=null;
         return;
      }
   }

}