package com.company.util
{


   public class Zutywapo extends Object
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Zutywapo() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public static const sihi:RegExp = new RegExp("^[A-Z0-9._%+-]+@(?:[A-Z0-9-]+\\.)+[A-Z]{2,4}$","i");

      public static function cuwuhuz(param1:String) : Boolean {
         return Boolean(param1.match(sihi));
      }
   }

}