package com.company.assembleegameclient.util
{
   import flash.display.DisplayObject;


   public class Kibaviv extends Object
   {
      public function Kibaviv() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public static function pihel(param1:DisplayObject, param2:Class) : DisplayObject {
         var _loc3_:* = true;
         var _loc4_:* = false;
         while((param1)&&!(param1 is param2))
         {
            param1=param1.parent;
         }
         return param1;
      }

      public static function bikymecup(param1:DisplayObject, ... rest) : DisplayObject {
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