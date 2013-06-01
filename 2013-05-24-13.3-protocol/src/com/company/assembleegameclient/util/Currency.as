package com.company.assembleegameclient.util
{


   public class Currency extends Object
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Currency() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public static const INVALID:int = -1;

      public static const fejubu:int = 0;

      public static const FAME:int = 1;

      public static const kizuz:int = 2;

      public static function jarycu(param1:int) : String {
         var _loc3_:* = false;
         var _loc4_:* = true;
         switch(param1)
         {
            case fejubu:
               return "Gold";
            case FAME:
               return "Fame";
            case kizuz:
               return "Guild Fame";
            default:
               return "";
         }
      }
   }

}