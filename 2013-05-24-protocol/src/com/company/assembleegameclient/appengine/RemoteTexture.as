package com.company.assembleegameclient.appengine
{
   import komawowag.Becepog;
   import dopifo.Myg;
   import negirilu.Zufafymy;
   import flash.net.URLLoaderDataFormat;
   import flash.utils.ByteArray;
   import tamy.Rytova;
   import flash.display.BitmapData;
   import jag.Giq;
   import kyco.Nun;


   public class RemoteTexture extends Object
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function RemoteTexture(param1:String, param2:String, param3:Function) {
         var _loc5_:* = true;
         var _loc6_:* = false;
         super();
         this.id_=param1;
         this.posanene=param2;
         this.callback_=param3;
         var _loc4_:Nun = Giq.kid();
         this.qiqely=_loc4_.getInstance(Becepog);
         return;
      }

      private static const seca:String = "http://{DOMAIN}/picture/get";

      private static const pydova:String = "Remote Texture Error: {ERROR} (id:{ID}, instance:{INSTANCE})";

      private static const pirufirud:int = int(new Date().getTime());

      public var id_:String;

      public var posanene:String;

      public var callback_:Function;

      private var qiqely:Becepog;

      public function run() : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc1_:String = this.posanene=="testing"?"rotmgtesting.appspot.com":"realmofthemadgod.appspot.com";
         var _loc2_:String = seca.replace("{DOMAIN}",_loc1_);
         var _loc3_:Object = {};
         _loc3_.id=this.id_;
         _loc3_.time=pirufirud;
         var _loc4_:Zufafymy = new Myg();
         _loc4_.sucunuj(URLLoaderDataFormat.BINARY);
         _loc4_.complete.addOnce(this.onComplete);
         _loc4_.sendRequest(_loc2_,_loc3_);
         return;
      }

      private function onComplete(param1:Boolean, param2:*) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(param1)
         {
            this.zilobahi(param2);
         }
         else
         {
            this.reportError(param2);
         }
         return;
      }

      public function zilobahi(param1:ByteArray) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:BitmapData = Rytova.fav(param1);
         this.callback_(_loc2_);
         return;
      }

      public function reportError(param1:String) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var param1:String = pydova.replace("{ERROR}",param1).replace("{ID}",this.id_).replace("{INSTANCE}",this.posanene);
         this.qiqely.mywid("RemoteTexture.reportError: {0}",[param1]);
         var _loc2_:BitmapData = new BitmapData(1,1);
         this.callback_(_loc2_);
         return;
      }
   }

}