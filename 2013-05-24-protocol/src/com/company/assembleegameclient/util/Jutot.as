package com.company.assembleegameclient.util
{
   import flash.utils.Dictionary;
   import __AS3__.vec.Vector;
   import flash.display.BitmapData;


   public class Jutot extends Object
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Jutot() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      private static var bybanaji:Dictionary = new Dictionary();

      public static function fyh(param1:String, param2:int) : Zuwomuguk {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:Vector.<Zuwomuguk> = bybanaji[param1];
         if(_loc3_==null||param2>=_loc3_.length)
         {
            return null;
         }
         return _loc3_[param2];
      }

      public static function add(param1:String, param2:BitmapData, param3:BitmapData, param4:int, param5:int, param6:int, param7:int, param8:int) : void {
         var _loc14_:* = true;
         var _loc15_:* = false;
         var _loc11_:Biloqu = null;
         var _loc9_:Vector.<Zuwomuguk> = new Vector.<Zuwomuguk>();
         var _loc10_:Viduw = new Viduw();
         _loc10_.addFromBitmapData(param2,param3,param6,param7);
         for each (_loc11_ in _loc10_.butymyres)
         {
            _loc9_.push(new Zuwomuguk(_loc11_,param4,param5,param8));
         }
         bybanaji[param1]=_loc9_;
         return;
      }
   }

}