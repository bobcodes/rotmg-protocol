package com.company.assembleegameclient.appengine
{
[CLASS1675]   import bikyvym.Voduzak;
   import wisic.Ziwil;
   import qiwyz.Pysyposy;
   import flash.net.URLLoaderDataFormat;
   import flash.utils.ByteArray;
   import vos.Zosevov;
   import flash.display.BitmapData;
   import jutesesel.Qibigagal;
   import pogefeqeh.Wahovy;


   public class RemoteTexture extends Object
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function RemoteTexture(param1:String, param2:String, param3:Function) {
         var _loc5_:* = true;
         var _loc6_:* = false;
         super();
         this.id_=param1;
         this.jaco=param2;
         this.callback_=param3;
         var _loc4_:Wahovy = Qibigagal.husuha();
         this.wop=_loc4_.getInstance(Voduzak);
         return;
      }

      private static const lycahyvy:String = "http://{DOMAIN}/picture/get";

      private static const zyqywov:String = "Remote Texture Error: {ERROR} (id:{ID}, instance:{INSTANCE})";

      private static const fybemic:int = int(new Date().getTime());

      public var id_:String;

      public var jaco:String;

      public var callback_:Function;

      private var wop:Voduzak;

      public function run() : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc1_:String = this.jaco=="testing"?"rotmgtesting.appspot.com":"realmofthemadgod.appspot.com";
         var _loc2_:String = lycahyvy.replace("{DOMAIN}",_loc1_);
         var _loc3_:Object = {};
         _loc3_.id=this.id_;
         _loc3_.time=fybemic;
         var _loc4_:Pysyposy = new Ziwil();
         _loc4_.sunomiz(URLLoaderDataFormat.BINARY);
         _loc4_.complete.addOnce(this.onComplete);
         _loc4_.sendRequest(_loc2_,_loc3_);
         return;
      }

      private function onComplete(param1:Boolean, param2:*) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(param1)
         {
            this.vonamo(param2);
         }
         else
         {
            this.reportError(param2);
         }
         return;
      }

      public function vonamo(param1:ByteArray) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:BitmapData = Zosevov.gujocomi(param1);
         this.callback_(_loc2_);
         return;
      }

      public function reportError(param1:String) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var param1:String = zyqywov.replace("{ERROR}",param1).replace("{ID}",this.id_).replace("{INSTANCE}",this.jaco);
         this.wop.zygugoqi("RemoteTexture.reportError: {0}",[param1]);
         var _loc2_:BitmapData = new BitmapData(1,1);
         this.callback_(_loc2_);
         return;
      }
   }
[/CLASS]
}