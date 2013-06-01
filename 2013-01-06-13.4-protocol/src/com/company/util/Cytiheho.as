package com.company.util
{
[CLASS1523]   import flash.utils.ByteArray;


   public class Cytiheho extends Object
   {
      public function Cytiheho() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public static function qagywa(param1:String) : ByteArray {
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

      public static function munapycy(param1:String, param2:String) : Number {
         return param1.localeCompare(param2);
      }
   }
[/CLASS]
}