package com.company.util
{


   public class Jyjoburib extends Object
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Jyjoburib() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public static const widog:RegExp = new RegExp("^[A-Z0-9._%+-]+@(?:[A-Z0-9-]+\\.)+[A-Z]{2,4}$","i");

      public static function mag(param1:String) : Boolean {
         return Boolean(param1.match(widog));
      }
   }

}