package com.company.util
{
[CLASS1628]

   public class Niquz extends Object
   {
      public function Niquz() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         this.clear();
         return;
      }

      public var jywimak:Number;

      public var podumi:Number;

      public var pywodikep:Number;

      public var gatejatij:Number;

      public function add(param1:Number, param2:Number) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(param1<this.jywimak)
         {
            this.jywimak=param1;
         }
         if(param2<this.podumi)
         {
            this.podumi=param2;
         }
         if(param1>this.pywodikep)
         {
            this.pywodikep=param1;
         }
         if(param2>this.gatejatij)
         {
            this.gatejatij=param2;
         }
         return;
      }

      public function clear() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.jywimak=Number.MAX_VALUE;
         this.podumi=Number.MAX_VALUE;
         this.pywodikep=Number.MIN_VALUE;
         this.gatejatij=Number.MIN_VALUE;
         return;
      }

      public function toString() : String {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return "min:("+this.jywimak+", "+this.podumi+") max:("+this.pywodikep+", "+this.gatejatij+")";
      }
   }
[/CLASS]
}