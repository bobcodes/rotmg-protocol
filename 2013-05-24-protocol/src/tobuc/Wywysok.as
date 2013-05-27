package tobuc
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
   import lutyfopo.Console;


   public class Wywysok extends Zuby
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Wywysok(param1:Console) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var m:Console = param1;
         this._callbacks=new Object();
         this.wesu=new ByteArray();
         this.docy=new Object();
         this.dydozob=new Dictionary();
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

      public static const kuboruqi:uint = 1;

      public static const mysewe:uint = 2;

      private var _callbacks:Object;

      private var _mode:uint;

      private var meriwice:LocalConnection;

      private var quvu:Socket;

      private var wesu:ByteArray;

      private var docy:Object;

      private var dydozob:Dictionary;

      private var pimogaf:String = "";

      private var gimicacy:Boolean;

      private var mow:String;

      private var bobisu:String;

      public function update() : void {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc1_:String = null;
         var _loc2_:ByteArray = null;
         var _loc3_:String = null;
         var _loc4_:ByteArray = null;
         if(this.wesu.length)
         {
            if((this.quvu)&&(this.quvu.connected))
            {
               this.quvu.writeBytes(this.wesu);
               this.wesu=new ByteArray();
            }
            else
            {
               if(this.meriwice)
               {
                  this.wesu.position=0;
                  if(this.wesu.bytesAvailable<38000)
                  {
                     _loc2_=this.wesu;
                     this.wesu=new ByteArray();
                  }
                  else
                  {
                     _loc2_=new ByteArray();
                     this.wesu.readBytes(_loc2_,0,Math.min(38000,this.wesu.bytesAvailable));
                     _loc4_=new ByteArray();
                     this.wesu.readBytes(_loc4_);
                     this.wesu=_loc4_;
                  }
                  _loc3_=config.remotingConnectionName+(this.remoting==Wywysok.mysewe?kuboruqi:mysewe);
                  this.meriwice.send(_loc3_,"synchronize",this.mow,_loc2_);
               }
               else
               {
                  this.wesu=new ByteArray();
               }
            }
         }
         for (_loc1_ in this.docy)
         {
            this.wadivo(_loc1_);
         }
         return;
      }

      private function wadivo(param1:String) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var pointer:uint = 0;
         var cmd:String = null;
         var arg:ByteArray = null;
         var callbackData:Object = null;
         var blen:uint = 0;
         var recbuffer:ByteArray = null;
         var id:String = param1;
         if(!this.dydozob[id])
         {
            this.dydozob[id]=true;
            if(this.bobisu)
            {
               report("Remote switched to new sender ["+id+"] as primary.",-2);
            }
            this.bobisu=id;
         }
         var buffer:ByteArray = this.docy[id];
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
               if(!callbackData.latest||id==this.bobisu)
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
               this.docy[id]=buffer=recbuffer;
            }
            else
            {
               delete this.docy[[id]];
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
         var _loc4_:ByteArray = this.docy[param1];
         if(_loc4_)
         {
            _loc4_.position=_loc4_.length;
            _loc4_.writeBytes(_loc3_);
         }
         else
         {
            this.docy[param1]=_loc3_;
         }
         return;
      }

      public function send(param1:String, param2:ByteArray=null) : Boolean {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(this._mode==NONE)
         {
            return false;
         }
         this.wesu.position=this.wesu.length;
         this.wesu.writeUTF(param1);
         if(param2)
         {
            this.wesu.writeBoolean(true);
            this.wesu.writeUnsignedInt(param2.length);
            this.wesu.writeBytes(param2);
         }
         else
         {
            this.wesu.writeBoolean(false);
         }
         return true;
      }

      public function get remoting() : uint {
         return this._mode;
      }

      public function get canSend() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return this._mode==kuboruqi&&(this.gimicacy);
      }

      public function set remoting(param1:uint) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:String = null;
         if(param1==this._mode)
         {
            return;
         }
         this.mow=this.moco();
         if(param1==kuboruqi)
         {
            if(!this.nenarugu(kuboruqi))
            {
               report("Could not create remoting client service. You will not be able to control this console with remote.",10);
            }
            this.wesu=new ByteArray();
            this.meriwice.addEventListener(StatusEvent.STATUS,this.likuk,false,0,true);
            report("<b>Remoting started.</b> "+this.jewucozi(),-1);
            this.gimicacy=this.wihypyleh("");
            if(this.gimicacy)
            {
               this.tuwenuwip();
            }
            else
            {
               this.send("requestLogin");
            }
         }
         else
         {
            if(param1==mysewe)
            {
               if(this.nenarugu(mysewe))
               {
                  this.wesu=new ByteArray();
                  this.meriwice.addEventListener(AsyncErrorEvent.ASYNC_ERROR,this.wohaneci,false,0,true);
                  this.meriwice.addEventListener(StatusEvent.STATUS,this.syso,false,0,true);
                  report("<b>Remote started.</b> "+this.jewucozi(),-1);
                  _loc2_=Security.sandboxType;
                  if(_loc2_==Security.LOCAL_WITH_FILE||_loc2_==Security.LOCAL_WITH_NETWORK)
                  {
                     report("Untrusted local sandbox. You may not be able to listen for logs properly.",10);
                     this.nosyjyt();
                  }
                  this.login(this.pimogaf);
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
         if((this.quvu)&&(this.quvu.connected))
         {
            this.quvu.close();
            this.quvu=null;
         }
         if((param1)&&(param2))
         {
            this.remoting=kuboruqi;
            report("Connecting to socket "+param1+":"+param2);
            this.quvu=new Socket();
            this.quvu.addEventListener(Event.CLOSE,this.cud);
            this.quvu.addEventListener(Event.CONNECT,this.kog);
            this.quvu.addEventListener(IOErrorEvent.IO_ERROR,this.gygu);
            this.quvu.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.dagiqifa);
            this.quvu.addEventListener(ProgressEvent.SOCKET_DATA,this.sesydola);
            this.quvu.connect(param1,param2);
         }
         return;
      }

      private function cud(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(param1.currentTarget==this.quvu)
         {
            this.quvu=null;
         }
         return;
      }

      private function kog(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         report("Remoting socket connected.",-1);
         this.wesu=new ByteArray();
         if((this.gimicacy)||(this.wihypyleh("")))
         {
            this.tuwenuwip();
         }
         else
         {
            this.send("requestLogin");
         }
         return;
      }

      private function gygu(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         report("Remoting socket error."+param1,9);
         this.remotingSocket(null);
         return;
      }

      private function dagiqifa(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         report("Remoting security error."+param1,9);
         this.remotingSocket(null);
         return;
      }

      private function sesydola(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.lezijehic(param1.currentTarget as Socket);
         return;
      }

      public function lezijehic(param1:Socket) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(!this.dydozob[param1])
         {
            this.dydozob[param1]=this.moco();
            this.quvu=param1;
         }
         var _loc2_:ByteArray = new ByteArray();
         param1.readBytes(_loc2_);
         this.synchronize(this.dydozob[param1],_loc2_);
         return;
      }

      private function likuk(param1:StatusEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(param1.level=="error"&&!((this.quvu)&&(this.quvu.connected)))
         {
            this.gimicacy=false;
         }
         return;
      }

      private function syso(param1:StatusEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.remoting==Wywysok.mysewe&&param1.level=="error")
         {
            report("Problem communicating to client.",10);
         }
         return;
      }

      private function muko(param1:SecurityErrorEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         report("Remoting security error.",9);
         this.nosyjyt();
         return;
      }

      private function wohaneci(param1:AsyncErrorEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         report("Problem with remote sync. [<a href=\'event:remote\'>Click here</a>] to restart.",10);
         this.remoting=NONE;
         return;
      }

      private function jewucozi() : String {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return "<p4>channel:"+config.remotingConnectionName+" ("+Security.sandboxType+")</p4>";
      }

      private function nosyjyt() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         report("Make sure your flash file is \'trusted\' in Global Security Settings.",-2);
         report("Go to Settings Manager [<a href=\'event:settings\'>click here</a>] &gt; \'Global Security Settings Panel\' (on left) &gt; add the location of the local flash (swf) file.",-2);
         return;
      }

      private function moco() : String {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return new Date().time+"."+Math.floor(Math.random()*100000);
      }

      private function nenarugu(param1:uint) : Boolean {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var targetmode:uint = param1;
         this.close();
         this._mode=targetmode;
         this.meriwice=new LocalConnection();
         this.meriwice.client={synchronize:this.synchronize};
         if(config.allowedRemoteDomain)
         {
            this.meriwice.allowDomain(config.allowedRemoteDomain);
            this.meriwice.allowInsecureDomain(config.allowedRemoteDomain);
         }
         this.meriwice.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.muko,false,0,true);
         try
         {
            this.meriwice.connect(config.remotingConnectionName+this._mode);
         }
         catch(err:Error)
         {
            return false;
         }
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
         if(this.remoting!=Wywysok.mysewe)
         {
            return;
         }
         report("Login Failed",10);
         console.panels.mainPanel.requestLogin();
         return;
      }

      private function tuwenuwip() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.gimicacy=true;
         this.send("loginSuccess");
         dispatchEvent(new Event(Event.CONNECT));
         return;
      }

      private function loginSuccess() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         console.setViewingChannels();
         report("Login Successful",-1);
         return;
      }

      private function requestLogin() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.remoting!=Wywysok.mysewe)
         {
            return;
         }
         this.wesu=new ByteArray();
         if(this.pimogaf)
         {
            this.login(this.pimogaf);
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
         if(this.remoting==Wywysok.mysewe)
         {
            this.pimogaf=param1;
            report("Attempting to login...",-1);
            _loc2_=new ByteArray();
            _loc2_.writeUTF(param1);
            this.send("login",_loc2_);
         }
         else
         {
            if((this.gimicacy)||(this.wihypyleh(param1)))
            {
               this.tuwenuwip();
            }
            else
            {
               this.send("loginFail");
            }
         }
         return;
      }

      private function wihypyleh(param1:String) : Boolean {
         var _loc2_:* = false;
         var _loc3_:* = true;
         return config.remotingPassword===null&&config.keystrokePassword==param1||config.remotingPassword===""||config.remotingPassword==param1;
      }

      public function close() : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(this.meriwice)
         {
            try
            {
               this.meriwice.close();
            }
            catch(error:Error)
            {
               report("Remote.close: "+error,10);
            }
         }
         this._mode=NONE;
         this.wesu=new ByteArray();
         this.meriwice=null;
         return;
      }
   }

}