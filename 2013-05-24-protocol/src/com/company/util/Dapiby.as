package com.company.util
{
   import flash.utils.ByteArray;


   public class Dapiby extends Object
   {
      public function Dapiby() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public static function dahicamo(param1:String) : ByteArray {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:ByteArray = new ByteArray();
         var _loc3_:* = 0;
         while(_loc3_<param1.length)
         {
            _loc2_.writeByte(parseInt(param1.substr(_loc3_,2),16));
            _loc3_=_loc3_+2;
         }
         return _loc2_;
      }

      public static function hum(param1:String, param2:String) : Number {
         return param1.localeCompare(param2);
      }
   }

}