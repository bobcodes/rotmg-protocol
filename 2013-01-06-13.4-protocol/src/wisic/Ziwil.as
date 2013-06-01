package wisic
{
[CLASS123]   import qiwyz.Pysyposy;
   import tinava.Busake;
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


   public class Ziwil extends Object implements Pysyposy
   {
      public function Ziwil() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         this.jelyha=0;
         this.dataFormat=URLLoaderDataFormat.TEXT;
         return;
      }

      private const tonuquwak:Busake = new Busake(Boolean);

      private var jelyha:int;

      private var dataFormat:String;

      private var url:String;

      private var params:Object;

      private var wyfo:URLRequest;

      private var kovadow:URLLoader;

      private var pupepum:int;

      public function get complete() : Busake {
         return this.tonuquwak;
      }

      public function sunomiz(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.dataFormat=param1;
         return;
      }

      public function casegyma(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.jelyha=param1;
         return;
      }

      public function sendRequest(param1:String, param2:Object) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.url=param1;
         this.params=param2;
         this.pupepum=this.jelyha;
         this.diby();
         return;
      }

      private function diby() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.viqyqe();
         this.wyfo=this.cyzehuca();
         this.kovadow=this.vilupefam();
         this.kovadow.load(this.wyfo);
         return;
      }

      private function cyzehuca() : URLRequest {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:URLRequest = new URLRequest(this.url);
         _loc1_.method=URLRequestMethod.POST;
         _loc1_.data=this.qynyn();
         return _loc1_;
      }

      private function qynyn() : URLVariables {
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

      private function vilupefam() : URLLoader {
         var _loc2_:* = true;
         var _loc3_:* = false;
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
         var _loc2_:String = this.kovadow.data;
         if(_loc2_.length==0)
         {
            _loc2_="Unable to contact server";
         }
         this.cavugah(_loc2_);
         return;
      }

      private function onSecurityError(param1:SecurityErrorEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.gyni(false,"Security Error");
         return;
      }

      private function cavugah(param1:String) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         if(this.pupepum-->0)
         {
            this.diby();
         }
         else
         {
            this.gyni(false,param1);
         }
         return;
      }

      private function onComplete(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.dataFormat==URLLoaderDataFormat.TEXT)
         {
            this.cynefavuf(this.kovadow.data);
         }
         else
         {
            this.gyni(true,ByteArray(this.kovadow.data));
         }
         return;
      }

      private function cynefavuf(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(param1.substring(0,7)=="<Error>")
         {
            this.cavugah(param1);
         }
         else
         {
            if(param1.substring(0,12)=="<FatalError>")
            {
               this.gyni(false,param1);
            }
            else
            {
               this.gyni(true,param1);
            }
         }
         return;
      }

      private function gyni(param1:Boolean, param2:*) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(!param1&&param2 is String)
         {
            param2=this.lahero(param2);
         }
         this.viqyqe();
         this.tonuquwak.dispatch(param1,param2);
         return;
      }

      private function lahero(param1:String) : String {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Array = param1.match("<.*>(.*)</.*>");
         return (_loc2_)&&_loc2_.length>1?_loc2_[1]:param1;
      }

      private function viqyqe() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.kovadow)
         {
            this.kovadow.removeEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
            this.kovadow.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onSecurityError);
            this.kovadow.removeEventListener(Event.COMPLETE,this.onComplete);
            this.nejifo();
            this.kovadow=null;
         }
         return;
      }

      private function nejifo() : void {
         try
         {
            this.kovadow.close();
         }
         catch(e:Error)
         {
         }
         return;
      }
   }
[/CLASS]
}