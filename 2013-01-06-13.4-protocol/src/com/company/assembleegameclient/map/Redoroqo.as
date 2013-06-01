package com.company.assembleegameclient.map
{
[CLASS1660]

   public class Redoroqo extends Object
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Redoroqo() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public static const saluf:int = 0;

      public static const wazozu:int = 1;

      public static const mypap:int = 2;

      public var type_:int = 0;

      public var dx_:Number = 0;

      public var dy_:Number = 0;

      public function lahero(param1:XML) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         switch(null)
         {
            case "Wave":
               this.type_=wazozu;
               break;
            case "Flow":
               this.type_=mypap;
               break;
         }
         this.dx_=param1.@dx;
         this.dy_=param1.@dy;
         return;
      }
   }
[/CLASS]
}