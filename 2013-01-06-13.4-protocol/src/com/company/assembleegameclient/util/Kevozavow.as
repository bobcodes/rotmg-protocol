package com.company.assembleegameclient.util
{
[CLASS1069]   import flash.display.DisplayObject;


   public class Kevozavow extends Object
   {
      public function Kevozavow() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public static function hajuwijir(param1:DisplayObject, param2:Class) : DisplayObject {
         var _loc3_:* = false;
         var _loc4_:* = true;
         while((param1)&&!(param1 is param2))
         {
            param1=param1.parent;
         }
         return param1;
      }

      public static function pojeni(param1:DisplayObject, ... rest) : DisplayObject {
         var _loc6_:* = false;
         var _loc7_:* = true;
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
[/CLASS]
}