package com.company.util
{
[CLASS1368]

   public class Vutem extends Object
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Vutem() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public static const jumu:RegExp = new RegExp("^[A-Z0-9._%+-]+@(?:[A-Z0-9-]+\\.)+[A-Z]{2,4}$","i");

      public static function hil(param1:String) : Boolean {
         return Boolean(param1.match(jumu));
      }
   }
[/CLASS]
}