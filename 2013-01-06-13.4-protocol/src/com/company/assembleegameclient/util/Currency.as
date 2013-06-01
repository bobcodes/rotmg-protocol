package com.company.assembleegameclient.util
{
[CLASS782]

   public class Currency extends Object
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Currency() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public static const INVALID:int = -1;

      public static const vusap:int = 0;

      public static const FAME:int = 1;

      public static const kecevy:int = 2;

      public static function vosuqi(param1:int) : String {
         var _loc3_:* = false;
         var _loc4_:* = true;
         switch(null)
         {
            case vusap:
               return "Gold";
            case FAME:
               return "Fame";
            case kecevy:
               return "Guild Fame";
            default:
               return "";
         }
      }
   }
[/CLASS]
}