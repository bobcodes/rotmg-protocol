package com.company.assembleegameclient.appengine
{
   import hunavefeg.Depyrew;
   import vakere.Moba;
   import gokyc.Cyn;
   import flash.net.URLLoaderDataFormat;
   import flash.utils.ByteArray;
   import waquzav.Monuhyl;
   import flash.display.BitmapData;
   import sijizoh.Duq;
   import dyca.Mes;


   public class RemoteTexture extends Object
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function RemoteTexture(param1:String, param2:String, param3:Function) {
         var _loc5_:* = false;
         var _loc6_:* = true;
         super();
         this.id_=param1;
         this.medecipog=param2;
         this.callback_=param3;
         var _loc4_:Mes = Duq.pamazo();
         this.con=_loc4_.getInstance(Depyrew);
         return;
      }

      private static const donesef:String = "http://{DOMAIN}/picture/get";

      private static const qulesyjuk:String = "Remote Texture Error: {ERROR} (id:{ID}, instance:{INSTANCE})";

      private static const hyfyc:int = int(new Date().getTime());

      public var id_:String;

      public var medecipog:String;

      public var callback_:Function;

      private var con:Depyrew;

      public function run() : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc1_:String = this.medecipog=="testing"?"rotmgtesting.appspot.com":"realmofthemadgod.appspot.com";
         var _loc2_:String = donesef.replace("{DOMAIN}",_loc1_);
         var _loc3_:Object = {};
         _loc3_.id=this.id_;
         _loc3_.time=hyfyc;
         var _loc4_:Cyn = new Moba();
         _loc4_.dolutah(URLLoaderDataFormat.BINARY);
         _loc4_.complete.addOnce(this.onComplete);
         _loc4_.sendRequest(_loc2_,_loc3_);
         return;
      }

      private function onComplete(param1:Boolean, param2:*) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(param1)
         {
            this.kykego(param2);
         }
         else
         {
            this.reportError(param2);
         }
         return;
      }

      public function kykego(param1:ByteArray) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:BitmapData = Monuhyl.diwig(param1);
         this.callback_(_loc2_);
         return;
      }

      public function reportError(param1:String) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var param1:String = qulesyjuk.replace("{ERROR}",param1).replace("{ID}",this.id_).replace("{INSTANCE}",this.medecipog);
         this.con.bec("RemoteTexture.reportError: {0}",[param1]);
         var _loc2_:BitmapData = new BitmapData(1,1);
         this.callback_(_loc2_);
         return;
      }
   }

}