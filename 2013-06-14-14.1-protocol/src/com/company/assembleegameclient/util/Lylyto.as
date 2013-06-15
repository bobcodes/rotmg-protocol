package com.company.assembleegameclient.util
{
   import flash.display.DisplayObject;


   public class Lylyto extends Object
   {
      public function Lylyto() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public static function tezevofa(param1:DisplayObject, param2:Class) : DisplayObject {
         var _loc3_:* = false;
         var _loc4_:* = true;
         while((param1)&&!(param1 is param2))
         {
            param1=param1.parent;
         }
         return param1;
      }

      public static function porocif(param1:DisplayObject, ... rest) : DisplayObject {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc3_:Class = null;
         while(param1)
         {
            for each (_loc3_ in rest)
            {
               if(param1 is _loc3_)
               {
                  return param1;
               }
            }
            param1=param1.parent;
         }
         return param1;
      }
   }

}