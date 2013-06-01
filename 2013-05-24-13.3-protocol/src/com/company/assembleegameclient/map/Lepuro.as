package com.company.assembleegameclient.map
{


   public class Lepuro extends Object
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Lepuro() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public static const bad:int = 0;

      public static const husuha:int = 1;

      public static const gukuja:int = 2;

      public var type_:int = 0;

      public var dx_:Number = 0;

      public var dy_:Number = 0;

      public function mewez(param1:XML) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         switch(String(param1))
         {
            case "Wave":
               this.type_=husuha;
               break;
            case "Flow":
               this.type_=gukuja;
               break;
         }
         this.dx_=param1.@dx;
         this.dy_=param1.@dy;
         return;
      }
   }

}