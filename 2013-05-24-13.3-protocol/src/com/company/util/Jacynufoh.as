package com.company.util
{


   public class Jacynufoh extends Object
   {
      public function Jacynufoh() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         this.clear();
         return;
      }

      public var pyk:Number;

      public var cycol:Number;

      public var voze:Number;

      public var hezo:Number;

      public function add(param1:Number, param2:Number) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(param1<this.pyk)
         {
            this.pyk=param1;
         }
         if(param2<this.cycol)
         {
            this.cycol=param2;
         }
         if(param1>this.voze)
         {
            this.voze=param1;
         }
         if(param2>this.hezo)
         {
            this.hezo=param2;
         }
         return;
      }

      public function clear() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.pyk=Number.MAX_VALUE;
         this.cycol=Number.MAX_VALUE;
         this.voze=Number.MIN_VALUE;
         this.hezo=Number.MIN_VALUE;
         return;
      }

      public function toString() : String {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return "min:("+this.pyk+", "+this.cycol+") max:("+this.voze+", "+this.hezo+")";
      }
   }

}