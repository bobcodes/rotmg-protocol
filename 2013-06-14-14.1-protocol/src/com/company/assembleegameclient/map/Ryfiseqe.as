package com.company.assembleegameclient.map
{


   public class Ryfiseqe extends Object
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Ryfiseqe() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public static const bocijaha:int = 0;

      public static const meke:int = 1;

      public static const medyf:int = 2;

      public var type_:int = 0;

      public var dx_:Number = 0;

      public var dy_:Number = 0;

      public function gyhujecys(param1:XML) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         switch(null)
         {
            case "Wave":
               this.type_=meke;
               break;
            case "Flow":
               this.type_=medyf;
               break;
         }
         this.dx_=param1.@dx;
         this.dy_=param1.@dy;
         return;
      }
   }

}