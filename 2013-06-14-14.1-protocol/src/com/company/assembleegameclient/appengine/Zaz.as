package com.company.assembleegameclient.appengine
{
   import flash.display.BitmapData;
   import com.company.util.AssetLibrary;
   import com.company.assembleegameclient.util.TextureRedrawer;


   public class Zaz extends Object
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Zaz(param1:String, param2:String, param3:String, param4:String, param5:int) {
         var _loc6_:* = false;
         var _loc7_:* = true;
         super();
         this.tut=param1;
         this.gehivyky=param2;
         this.rywyfeha=param3;
         this.zazybyg=param4;
         this.jodula=param5;
         return;
      }

      private static const FAME:String = "fame";

      private static function gowawa() : BitmapData {
         var _loc1_:BitmapData = AssetLibrary.tem("lofiInterface2",4);
         return TextureRedrawer.redraw(_loc1_,80,true,0,0);
      }

      private static function sotu() : BitmapData {
         var _loc1_:BitmapData = AssetLibrary.tem("lofiObj3",224);
         return TextureRedrawer.redraw(_loc1_,80,true,0,0);
      }

      private var tut:String;

      public var gehivyky:String;

      public var rywyfeha:String;

      public var zazybyg:String;

      public var jodula:int;

      public function getIcon() : BitmapData {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return this.tut==FAME?sotu():gowawa();
      }
   }

}