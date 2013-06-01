package com.company.assembleegameclient.appengine
{
   import flash.display.BitmapData;
   import com.company.util.AssetLibrary;
   import com.company.assembleegameclient.util.TextureRedrawer;


   public class Fuzileh extends Object
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Fuzileh(param1:String, param2:String, param3:String, param4:String, param5:int) {
         var _loc6_:* = true;
         var _loc7_:* = false;
         super();
         this.kyvel=param1;
         this.zaba=param2;
         this.fonyciza=param3;
         this.jyjesaqyp=param4;
         this.qanysem=param5;
         return;
      }

      private static const FAME:String = "fame";

      private static function luje() : BitmapData {
         var _loc1_:BitmapData = AssetLibrary.jeqycu("lofiInterface2",4);
         return TextureRedrawer.redraw(_loc1_,80,true,0,0);
      }

      private static function cyqosy() : BitmapData {
         var _loc1_:BitmapData = AssetLibrary.jeqycu("lofiObj3",224);
         return TextureRedrawer.redraw(_loc1_,80,true,0,0);
      }

      private var kyvel:String;

      public var zaba:String;

      public var fonyciza:String;

      public var jyjesaqyp:String;

      public var qanysem:int;

      public function getIcon() : BitmapData {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return this.kyvel==FAME?cyqosy():luje();
      }
   }

}