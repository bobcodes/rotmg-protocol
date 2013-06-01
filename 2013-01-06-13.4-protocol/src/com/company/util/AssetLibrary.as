package com.company.util
{
[CLASS583]   import flash.utils.Dictionary;
   import flash.display.BitmapData;
   import flash.media.Sound;
   import flash.media.SoundTransform;


   public class AssetLibrary extends Object
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function AssetLibrary(param1:StaticEnforcer) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super();
         return;
      }

      private static var qulu:Dictionary = new Dictionary();

      private static var vovaqim:Dictionary = new Dictionary();

      private static var penusir:Dictionary = new Dictionary();

      private static var ketuhyfa:Dictionary = new Dictionary();

      public static function qonyqir(param1:String, param2:BitmapData) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         qulu[param1]=param2;
         ketuhyfa[param2]=param1;
         return;
      }

      public static function caqil(param1:String, param2:BitmapData, param3:int, param4:int) : void {
         var _loc7_:* = false;
         var _loc8_:* = true;
         qulu[param1]=param2;
         var _loc5_:Zymusyhi = new Zymusyhi();
         _loc5_.addFromBitmapData(param2,param3,param4);
         vovaqim[param1]=_loc5_;
         var _loc6_:* = 0;
         while(_loc6_<_loc5_.qulu.length)
         {
            ketuhyfa[_loc5_.qulu[_loc6_]]=[param1,_loc6_];
            _loc6_++;
         }
         return;
      }

      public static function hybub(param1:String, param2:BitmapData) : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc3_:Zymusyhi = vovaqim[param1];
         if(_loc3_==null)
         {
            _loc3_=new Zymusyhi();
            vovaqim[param1]=_loc3_;
         }
         _loc3_.add(param2);
         var _loc4_:int = _loc3_.qulu.length-1;
         ketuhyfa[_loc3_.qulu[_loc4_]]=[param1,_loc4_];
         return;
      }

      public static function quratuhok(param1:String, param2:Class) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:Array = penusir[param1];
         if(_loc3_==null)
         {
            penusir[param1]=new Array();
         }
         penusir[param1].push(param2);
         return;
      }

      public static function bedojoc(param1:BitmapData) : Object {
         return ketuhyfa[param1];
      }

      public static function getImage(param1:String) : BitmapData {
         return qulu[param1];
      }

      public static function lodi(param1:String) : Zymusyhi {
         return vovaqim[param1];
      }

      public static function zovy(param1:String, param2:int) : BitmapData {
         var _loc3_:Zymusyhi = vovaqim[param1];
         return _loc3_.qulu[param2];
      }

      public static function vimolatag(param1:String) : Sound {
         var _loc2_:Array = penusir[param1];
         var _loc3_:int = Math.random()*_loc2_.length;
         return new penusir[param1][_loc3_]();
      }

      public static function vuhubi(param1:String, param2:Number=1.0) : void {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc3_:Array = penusir[param1];
         var _loc4_:int = Math.random()*_loc3_.length;
         var _loc5_:Sound = new penusir[param1][_loc4_]();
         var _loc6_:SoundTransform = null;
         if(param2!=1)
         {
            _loc6_=new SoundTransform(param2);
         }
         _loc5_.play(0,0,_loc6_);
         return;
      }
   }
[/CLASS]
}[CLASS584]

   class StaticEnforcer extends Object
   {
      function StaticEnforcer() {
         super();
         return;
      }
   }
[/CLASS]