package com.company.assembleegameclient.util
{
   import flash.utils.Dictionary;
   import __AS3__.vec.Vector;
   import flash.display.BitmapData;


   public class Hekisona extends Object
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Hekisona() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      private static var puharogov:Dictionary = new Dictionary();

      public static function woseku(param1:String, param2:int) : Jiqefatok {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:Vector.<Jiqefatok> = puharogov[param1];
         if(_loc3_==null||param2>=_loc3_.length)
         {
            return null;
         }
         return _loc3_[param2];
      }

      public static function add(param1:String, param2:BitmapData, param3:BitmapData, param4:int, param5:int, param6:int, param7:int, param8:int) : void {
         var _loc14_:* = false;
         var _loc15_:* = true;
         var _loc11_:Kebinuhi = null;
         var _loc9_:Vector.<Jiqefatok> = new Vector.<Jiqefatok>();
         var _loc10_:Zijuq = new Zijuq();
         _loc10_.addFromBitmapData(param2,param3,param6,param7);
         for each (_loc11_ in _loc10_.gisydi)
         {
            _loc9_.push(new Jiqefatok(_loc11_,param4,param5,param8));
         }
         puharogov[param1]=_loc9_;
         return;
      }
   }

}