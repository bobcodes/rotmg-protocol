package losiba
{
[CLASS1850]   import flash.net.LocalConnection;
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
   import wacic.Console;


   public class Kelasydo extends Hubobag
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Kelasydo(param1:Console) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var m:Console = param1;
         this._callbacks=new Object();
         this.puk=new ByteArray();
         this.wihe=new Object();
         this.lohafycu=new Dictionary();
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

      public static const wes:uint = 1;

      public static const pabyry:uint = 2;

      private var _callbacks:Object;

      private var _mode:uint;

      private var quvudifyr:LocalConnection;

      private var juper:Socket;

      private var puk:ByteArray;

      private var wihe:Object;

      private var lohafycu:Dictionary;

      private var jes:String = "";

      private var cetamiwol:Boolean;

      private var vywyjo:String;

      private var rov:String;

      public function update() : void {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc1_:String = null;
         var _loc2_:ByteArray = null;
         var _loc3_:String = null;
         var _loc4_:ByteArray = null;
         if(this.puk.length)
         {
            if((this.juper)&&(this.juper.connected))
            {
               this.juper.writeBytes(this.puk);
               this.puk=new ByteArray();
            }
            else
            {
               if(this.quvudifyr)
               {
                  this.puk.position=0;
                  if(this.puk.bytesAvailable<38000)
                  {
                     _loc2_=this.puk;
                     this.puk=new ByteArray();
                  }
                  else
                  {
                     _loc2_=new ByteArray();
                     this.puk.readBytes(_loc2_,0,Math.min(38000,this.puk.bytesAvailable));
                     _loc4_=new ByteArray();
                     this.puk.readBytes(_loc4_);
                     this.puk=_loc4_;
                  }
                  _loc3_=config.remotingConnectionName+(this.remoting==Kelasydo.pabyry?wes:pabyry);
                  this.quvudifyr.send(_loc3_,"synchronize",this.vywyjo,_loc2_);
               }
               else
               {
                  this.puk=new ByteArray();
               }
            }
         }
         for (_loc1_ in this.wihe)
         {
            this.jeralu(_loc1_);
         }
         return;
      }

      private function jeralu(param1:String) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var pointer:uint = 0;
         var cmd:String = null;
         var arg:ByteArray = null;
         var callbackData:Object = null;
         var blen:uint = 0;
         var recbuffer:ByteArray = null;
         var id:String = param1;
         if(!this.lohafycu[id])
         {
            this.lohafycu[id]=true;
            if(this.rov)
            {
               report("Remote switched to new sender ["+id+"] as primary.",-2);
            }
            this.rov=id;
         }
         var buffer:ByteArray = this.wihe[id];
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
               if(!callbackData.latest||id==this.rov)
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
               this.wihe[id]=buffer=recbuffer;
            }
            else
            {
               delete this.wihe[[id]];
            }
         }
         catch(err:Error)
         {
            report("Remoting sync error: "+err,9);
         }
         return;
      }

      private function synchronize(param1:String, param2:Object) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         if(!(param2 is ByteArray))
         {
            report("Remoting sync error. Recieved non-ByteArray:"+param2,9);
            return;
         }
         var _loc3_:ByteArray = param2 as ByteArray;
         var _loc4_:ByteArray = this.wihe[param1];
         if(_loc4_)
         {
            _loc4_.position=_loc4_.length;
            _loc4_.writeBytes(_loc3_);
         }
         else
         {
            this.wihe[param1]=_loc3_;
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
         this.puk.position=this.puk.length;
         this.puk.writeUTF(param1);
         if(param2)
         {
            this.puk.writeBoolean(true);
            this.puk.writeUnsignedInt(param2.length);
            this.puk.writeBytes(param2);
         }
         else
         {
            this.puk.writeBoolean(false);
         }
         return true;
      }

      public function get remoting() : uint {
         return this._mode;
      }

      public function get canSend() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return this._mode==wes&&(this.cetamiwol);
      }

      public function set remoting(param1:uint) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:String = null;
         if(param1==this._mode)
         {
            return;
         }
         this.vywyjo=this.sed();
         if(param1==wes)
         {
            if(!this.hevydo(wes))
            {
               report("Could not create remoting client service. You will not be able to control this console with remote.",10);
            }
            this.puk=new ByteArray();
            this.quvudifyr.addEventListener(StatusEvent.STATUS,this.zywi,false,0,true);
            report("<b>Remoting started.</b> "+this.jitymyl(),-1);
            this.cetamiwol=this.nacalyquq("");
            if(this.cetamiwol)
            {
               this.zusotune();
            }
            else
            {
               this.send("requestLogin");
            }
         }
         else
         {
            if(param1==pabyry)
            {
               if(this.hevydo(pabyry))
               {
                  this.puk=new ByteArray();
                  this.quvudifyr.addEventListener(AsyncErrorEvent.ASYNC_ERROR,this.pegawa,false,0,true);
                  this.quvudifyr.addEventListener(StatusEvent.STATUS,this.qeroka,false,0,true);
                  report("<b>Remote started.</b> "+this.jitymyl(),-1);
                  _loc2_=Security.sandboxType;
                  if(_loc2_==Security.LOCAL_WITH_FILE||_loc2_==Security.LOCAL_WITH_NETWORK)
                  {
                     report("Untrusted local sandbox. You may not be able to listen for logs properly.",10);
                     this.widal();
                  }
                  this.login(this.jes);
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
         var _loc3_:* = true;
         var _loc4_:* = false;
         if((this.juper)&&(this.juper.connected))
         {
            this.juper.close();
            this.juper=null;
         }
         if((param1)&&(param2))
         {
            this.remoting=wes;
            report("Connecting to socket "+param1+":"+param2);
            this.juper=new Socket();
            this.juper.addEventListener(Event.CLOSE,this.lywo);
            this.juper.addEventListener(Event.CONNECT,this.vosibo);
            this.juper.addEventListener(IOErrorEvent.IO_ERROR,this.roq);
            this.juper.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.pojocona);
            this.juper.addEventListener(ProgressEvent.SOCKET_DATA,this.lehededi);
            this.juper.connect(param1,param2);
         }
         return;
      }

      private function lywo(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(param1.currentTarget==this.juper)
         {
            this.juper=null;
         }
         return;
      }

      private function vosibo(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         report("Remoting socket connected.",-1);
         this.puk=new ByteArray();
         if((this.cetamiwol)||(this.nacalyquq("")))
         {
            this.zusotune();
         }
         else
         {
            this.send("requestLogin");
         }
         return;
      }

      private function roq(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         report("Remoting socket error."+param1,9);
         this.remotingSocket(null);
         return;
      }

      private function pojocona(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         report("Remoting security error."+param1,9);
         this.remotingSocket(null);
         return;
      }

      private function lehededi(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.fyjoq(param1.currentTarget as Socket);
         return;
      }

      public function fyjoq(param1:Socket) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(!this.lohafycu[param1])
         {
            this.lohafycu[param1]=this.sed();
            this.juper=param1;
         }
         var _loc2_:ByteArray = new ByteArray();
         param1.readBytes(_loc2_);
         this.synchronize(this.lohafycu[param1],_loc2_);
         return;
      }

      private function zywi(param1:StatusEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(param1.level=="error"&&!((this.juper)&&(this.juper.connected)))
         {
            this.cetamiwol=false;
         }
         return;
      }

      private function qeroka(param1:StatusEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.remoting==Kelasydo.pabyry&&param1.level=="error")
         {
            report("Problem communicating to client.",10);
         }
         return;
      }

      private function hizujo(param1:SecurityErrorEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         report("Remoting security error.",9);
         this.widal();
         return;
      }

      private function pegawa(param1:AsyncErrorEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         report("Problem with remote sync. [<a href=\'event:remote\'>Click here</a>] to restart.",10);
         this.remoting=NONE;
         return;
      }

      private function jitymyl() : String {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return "<p4>channel:"+config.remotingConnectionName+" ("+Security.sandboxType+")</p4>";
      }

      private function widal() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         report("Make sure your flash file is \'trusted\' in Global Security Settings.",-2);
         report("Go to Settings Manager [<a href=\'event:settings\'>click here</a>] &gt; \'Global Security Settings Panel\' (on left) &gt; add the location of the local flash (swf) file.",-2);
         return;
      }

      private function sed() : String {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return new Date().time+"."+Math.floor(Math.random()*100000);
      }

      private function hevydo(param1:uint) : Boolean {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var targetmode:uint = param1;
         this.close();
         this._mode=targetmode;
         this.quvudifyr=new LocalConnection();
         this.quvudifyr.client={synchronize:this.synchronize};
         if(config.allowedRemoteDomain)
         {
            this.quvudifyr.allowDomain(config.allowedRemoteDomain);
            this.quvudifyr.allowInsecureDomain(config.allowedRemoteDomain);
         }
         this.quvudifyr.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.hizujo,false,0,true);
         this.quvudifyr.connect(config.remotingConnectionName+this._mode);
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
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.remoting!=Kelasydo.pabyry)
         {
            return;
         }
         report("Login Failed",10);
         console.panels.mainPanel.requestLogin();
         return;
      }

      private function zusotune() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.cetamiwol=true;
         this.send("loginSuccess");
         dispatchEvent(new Event(Event.CONNECT));
         return;
      }

      private function loginSuccess() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         console.setViewingChannels();
         report("Login Successful",-1);
         return;
      }

      private function requestLogin() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.remoting!=Kelasydo.pabyry)
         {
            return;
         }
         this.puk=new ByteArray();
         if(this.jes)
         {
            this.login(this.jes);
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
         if(this.remoting==Kelasydo.pabyry)
         {
            this.jes=param1;
            report("Attempting to login...",-1);
            _loc2_=new ByteArray();
            _loc2_.writeUTF(param1);
            this.send("login",_loc2_);
         }
         else
         {
            if((this.cetamiwol)||(this.nacalyquq(param1)))
            {
               this.zusotune();
            }
            else
            {
               this.send("loginFail");
            }
         }
         return;
      }

      private function nacalyquq(param1:String) : Boolean {
         var _loc2_:* = false;
         var _loc3_:* = true;
         return config.remotingPassword===null&&config.keystrokePassword==param1||config.remotingPassword===""||config.remotingPassword==param1;
      }

      public function close() : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(this.quvudifyr)
         {
            try
            {
               this.quvudifyr.close();
            }
            catch(error:Error)
            {
               report("Remote.close: "+error,10);
            }
         }
         this._mode=NONE;
         this.puk=new ByteArray();
         this.quvudifyr=null;
         return;
      }
   }
[/CLASS]
}