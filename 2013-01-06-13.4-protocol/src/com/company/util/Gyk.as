package com.company.util
{
[CLASS1051]   import flash.display.DisplayObjectContainer;
   import flash.display.DisplayObject;


   public class Gyk extends Object
   {
      public function Gyk() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public static function bazeper(param1:DisplayObjectContainer, param2:DisplayObject) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(!(param1==null)&&!(param2==null)&&!param1.contains(param2))
         {
            param1.addChild(param2);
         }
         return;
      }

      public static function qekecebo(param1:DisplayObjectContainer, param2:DisplayObject) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(!(param1==null)&&!(param2==null)&&(param1.contains(param2)))
         {
            param1.removeChild(param2);
         }
         return;
      }
   }
[/CLASS]
}