package vakere
{
   import gokyc.Cyn;
   import mukyrosu.Cisymifok;
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


   public class Moba extends Object implements Cyn
   {
      public function Moba() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         this.hyhaj=0;
         this.dataFormat=URLLoaderDataFormat.TEXT;
         return;
      }

      private const bin:Cisymifok = new Cisymifok(Boolean);

      private var hyhaj:int;

      private var dataFormat:String;

      private var url:String;

      private var params:Object;

      private var gow:URLRequest;

      private var zekugi:URLLoader;

      private var nuz:int;

      public function get complete() : Cisymifok {
         return this.bin;
      }

      public function dolutah(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.dataFormat=param1;
         return;
      }

      public function kesanij(param1:int) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.hyhaj=param1;
         return;
      }

      public function sendRequest(param1:String, param2:Object) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.url=param1;
         this.params=param2;
         this.nuz=this.hyhaj;
         this.kyjuvowul();
         return;
      }

      private function kyjuvowul() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.meziqivilu();
         this.gow=this.kyvohime();
         this.zekugi=this.dobiwaniv();
         this.zekugi.load(this.gow);
         return;
      }

      private function kyvohime() : URLRequest {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:URLRequest = new URLRequest(this.url);
         _loc1_.method=URLRequestMethod.POST;
         _loc1_.data=this.pazyfag();
         return _loc1_;
      }

      private function pazyfag() : URLVariables {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:String = null;
         var _loc1_:URLVariables = new URLVariables();
         _loc1_.ignore=getTimer();
         for (_loc2_ in this.params)
         {
            _loc1_[_loc2_]=this.params[_loc2_];
         }
         return _loc1_;
      }

      private function dobiwaniv() : URLLoader {
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
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:String = this.zekugi.data;
         if(_loc2_.length==0)
         {
            _loc2_="Unable to contact server";
         }
         this.narejicyr(_loc2_);
         return;
      }

      private function onSecurityError(param1:SecurityErrorEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.tonu(false,"Security Error");
         return;
      }

      private function narejicyr(param1:String) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         if(this.nuz-->0)
         {
            this.kyjuvowul();
         }
         else
         {
            this.tonu(false,param1);
         }
         return;
      }

      private function onComplete(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.dataFormat==URLLoaderDataFormat.TEXT)
         {
            this.mimabylip(this.zekugi.data);
         }
         else
         {
            this.tonu(true,ByteArray(this.zekugi.data));
         }
         return;
      }

      private function mimabylip(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(param1.substring(0,7)=="<Error>")
         {
            this.narejicyr(param1);
         }
         else
         {
            if(param1.substring(0,12)=="<FatalError>")
            {
               this.tonu(false,param1);
            }
            else
            {
               this.tonu(true,param1);
            }
         }
         return;
      }

      private function tonu(param1:Boolean, param2:*) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(!param1&&param2 is String)
         {
            param2=this.gyhujecys(param2);
         }
         this.meziqivilu();
         this.bin.dispatch(param1,param2);
         return;
      }

      private function gyhujecys(param1:String) : String {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Array = param1.match("<.*>(.*)</.*>");
         return (_loc2_)&&_loc2_.length>1?_loc2_[1]:param1;
      }

      private function meziqivilu() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.zekugi)
         {
            this.zekugi.removeEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
            this.zekugi.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onSecurityError);
            this.zekugi.removeEventListener(Event.COMPLETE,this.onComplete);
            this.wotu();
            this.zekugi=null;
         }
         return;
      }

      private function wotu() : void {
         try
         {
            this.zekugi.close();
         }
         catch(e:Error)
         {
         }
         return;
      }
   }

}