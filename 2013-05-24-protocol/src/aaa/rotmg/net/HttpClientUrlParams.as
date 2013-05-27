package aaa.rotmg.net
{
   import aaaa.rotmg.net.HttpClient;
   import tulunyno.Vobaqe;
   import flash.net.URLRequest;
   import flash.net.URLLoader;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   import flash.utils.getTimer;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.Event;
   import flash.net.URLLoaderDataFormat;
   import flash.utils.ByteArray;


   public class HttpClientUrlParams extends Object implements HttpClient
   {
      public function HttpClientUrlParams() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         this.pasyhumi=0;
         this.dataFormat=URLLoaderDataFormat.TEXT;
         return;
      }

      private const nymudez:Vobaqe = new Vobaqe(Boolean);

      private var pasyhumi:int;

      private var dataFormat:String;

      private var url:String;

      private var params:Object;

      private var lom:URLRequest;

      private var likefono:URLLoader;

      private var kysidoto:int;

      public function get complete() : Vobaqe {
         return this.nymudez;
      }

      public function sucunuj(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.dataFormat=param1;
         return;
      }

      public function fug(param1:int) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.pasyhumi=param1;
         return;
      }

      public function sendRequest(param1:String, param2:Object) : void {
         this.url=param1;
         this.params=param2;
         this.kysidoto=this.pasyhumi;
         this.gydacoqo();
         return;
      }

      private function gydacoqo() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.rijy();
         this.lom=this.lotogo();
         this.likefono=this.cel();
         this.likefono.load(this.lom);
         return;
      }

      private function lotogo() : URLRequest {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:URLRequest = new URLRequest(this.url);
         _loc1_.method=URLRequestMethod.POST;
         _loc1_.data=this.qojefyw();
         return _loc1_;
      }

      private function qojefyw() : URLVariables {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:String = null;
         var _loc1_:URLVariables = new URLVariables();
         _loc1_.ignore=getTimer();
         for (_loc2_ in this.params)
         {
            _loc1_[_loc2_]=this.params[_loc2_];
         }
         return _loc1_;
      }

      private function cel() : URLLoader {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:URLLoader = new URLLoader();
         _loc1_.dataFormat=this.dataFormat;
         _loc1_.addEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
         _loc1_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onSecurityError);
         _loc1_.addEventListener(Event.COMPLETE,this.onComplete);
         return _loc1_;
      }

      private function onIOError(param1:IOErrorEvent) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:String = this.likefono.data;
         if(_loc2_.length==0)
         {
            _loc2_="Unable to contact server";
         }
         this.taboleju(_loc2_);
         return;
      }

      private function onSecurityError(param1:SecurityErrorEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.habaqon(false,"Security Error");
         return;
      }

      private function taboleju(param1:String) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         if(this.kysidoto-->0)
         {
            this.gydacoqo();
         }
         else
         {
            this.habaqon(false,param1);
         }
         return;
      }

      private function onComplete(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.dataFormat==URLLoaderDataFormat.TEXT)
         {
            this.sonekut(this.likefono.data);
         }
         else
         {
            this.habaqon(true,ByteArray(this.likefono.data));
         }
         return;
      }

      private function sonekut(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(param1.substring(0,7)=="<Error>")
         {
            this.taboleju(param1);
         }
         else
         {
            if(param1.substring(0,12)=="<FatalError>")
            {
               this.habaqon(false,param1);
            }
            else
            {
               this.habaqon(true,param1);
            }
         }
         return;
      }

      private function habaqon(param1:Boolean, param2:*) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(!param1&&param2 is String)
         {
            param2=this.mewez(param2);
         }
         this.rijy();
         this.nymudez.dispatch(param1,param2);
         return;
      }

      private function mewez(param1:String) : String {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Array = param1.match("<.*>(.*)</.*>");
         return (_loc2_)&&_loc2_.length>1?_loc2_[1]:param1;
      }

      private function rijy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.likefono)
         {
            this.likefono.removeEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
            this.likefono.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onSecurityError);
            this.likefono.removeEventListener(Event.COMPLETE,this.onComplete);
            this.debe();
            this.likefono=null;
         }
         return;
      }

      private function debe() : void {
         try
         {
            this.likefono.close();
         }
         catch(e:Error)
         {
         }
         return;
      }
   }

}