package com.company.assembleegameclient.util
{


   public class Currency extends Object
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Currency() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public static const INVALID:int = -1;

      public static const win:int = 0;

      public static const FAME:int = 1;

      public static const huzekisep:int = 2;

      public static function tobizes(param1:int) : String {
         var _loc3_:* = true;
         var _loc4_:* = false;
         switch(null)
         {
            case win:
               return "Gold";
            case FAME:
               return "Fame";
            case huzekisep:
               return "Guild Fame";
            default:
               return "";
         }
      }
   }

}