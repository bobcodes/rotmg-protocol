package com.company.util
{
   import flash.display.DisplayObjectContainer;
   import flash.display.DisplayObject;


   public class Kideky extends Object
   {
      public function Kideky() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public static function corikak(param1:DisplayObjectContainer, param2:DisplayObject) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(!(param1==null)&&!(param2==null)&&!param1.contains(param2))
         {
            param1.addChild(param2);
         }
         return;
      }

      public static function kapo(param1:DisplayObjectContainer, param2:DisplayObject) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(!(param1==null)&&!(param2==null)&&(param1.contains(param2)))
         {
            param1.removeChild(param2);
         }
         return;
      }
   }

}