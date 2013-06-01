package com.company.assembleegameclient.appengine
{
[CLASS1001]   import flash.display.BitmapData;
   import com.company.util.AssetLibrary;
   import com.company.assembleegameclient.util.TextureRedrawer;


   public class Ladiz extends Object
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Ladiz(param1:String, param2:String, param3:String, param4:String, param5:int) {
         var _loc6_:* = false;
         var _loc7_:* = true;
         super();
         this.med=param1;
         this.fyk=param2;
         this.jawerujew=param3;
         this.fydunapym=param4;
         this.myqyp=param5;
         return;
      }

      private static const FAME:String = "fame";

      private static function wiqe() : BitmapData {
         var _loc1_:BitmapData = AssetLibrary.zovy("lofiInterface2",4);
         return TextureRedrawer.redraw(_loc1_,80,true,0,0);
      }

      private static function numarijed() : BitmapData {
         var _loc1_:BitmapData = AssetLibrary.zovy("lofiObj3",224);
         return TextureRedrawer.redraw(_loc1_,80,true,0,0);
      }

      private var med:String;

      public var fyk:String;

      public var jawerujew:String;

      public var fydunapym:String;

      public var myqyp:int;

      public function getIcon() : BitmapData {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return this.med==FAME?numarijed():wiqe();
      }
   }
[/CLASS]
}